<#
.SYNOPSIS
  Compiles cLib's Papyrus sources to .pex.

.DESCRIPTION
  Single source of truth for the build, used both locally and by CI so the two
  cannot drift.

  Import-path order matters and is not arbitrary. The SSE install carries two
  script source trees that overlap heavily -- 284 filenames appear in both and
  174 of those differ in content. 'Data\Scripts\Source' MUST precede
  'Data\Source\Scripts': Art.psc, SoundDescriptor.psc, ConsoleUtil.psc and
  ArmorAddon.psc exist only in the former, and putting the latter first makes
  the compiler resolve stale copies and fail.

.PARAMETER SkyrimPath
  Root of the Skyrim Special Edition install. Defaults to $env:SKYRIM_SE_PATH.

.PARAMETER OutputPath
  Where .pex files are written. Default: .\dist\Scripts

.PARAMETER Variant
  Which packaging to build:
    Monolithic - clib + cArrayCreateBase + cGetCell + clibUse   (clib imports cArrayCreateBase)
    Split      - the per-type scripts under ArrayCreation\
    All        - both (default)
#>
[CmdletBinding()]
param(
    [string]$SkyrimPath = $env:SKYRIM_SE_PATH,
    [string]$OutputPath = "$PSScriptRoot\dist\Scripts",
    [ValidateSet('Monolithic', 'Split', 'All')]
    [string]$Variant = 'All'
)

$ErrorActionPreference = 'Stop'

if (-not $SkyrimPath) {
    throw "SkyrimPath not set. Pass -SkyrimPath or set the SKYRIM_SE_PATH environment variable."
}

$compiler = Join-Path $SkyrimPath 'Papyrus Compiler\PapyrusCompiler.exe'
$flags    = Join-Path $SkyrimPath 'Data\Source\scripts\TESV_Papyrus_Flags.flg'
$srcA     = Join-Path $SkyrimPath 'Data\Scripts\Source'   # must come first - see notes above
$srcB     = Join-Path $SkyrimPath 'Data\Source\Scripts'

foreach ($p in @($compiler, $flags, $srcA, $srcB)) {
    if (-not (Test-Path $p)) { throw "Required path not found: $p" }
}

$imports = @(
    $PSScriptRoot,
    (Join-Path $PSScriptRoot 'ArrayCreation'),
    $srcA,
    $srcB
) -join ';'

New-Item -ItemType Directory -Force -Path $OutputPath | Out-Null

$targets = @()
if ($Variant -in @('Monolithic', 'All')) { $targets += $PSScriptRoot }
if ($Variant -in @('Split', 'All'))      { $targets += (Join-Path $PSScriptRoot 'ArrayCreation') }

$failed = $false
foreach ($t in $targets) {
    Write-Host "==> Compiling $t"
    & $compiler $t -all -f="$flags" -i="$imports" -o="$OutputPath" 2>&1 |
        ForEach-Object {
            $_
            if ($_ -match 'compilation failed|\d+ error\(s\)' -and $_ -notmatch '0 error\(s\)') { $script:failed = $true }
            if ($_ -match '(\d+) succeeded, (\d+) failed' -and [int]$Matches[2] -gt 0)          { $script:failed = $true }
        }
}

$pex = Get-ChildItem -Path $OutputPath -Filter *.pex -ErrorAction SilentlyContinue
Write-Host ""
Write-Host "==> $($pex.Count) .pex written to $OutputPath"

if ($failed -or $pex.Count -eq 0) {
    throw "Build failed."
}
