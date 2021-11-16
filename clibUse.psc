ScriptName clibUse Hidden

; Bool useSKSE = TRUE
; Bool usePO3 = False
; Bool usePapUtil = False
; Bool useConsoleUtil = False

Bool function cUseSKSE(Bool useSKSE = TRUE, Bool forceCheck = False) global
  {Requirements: None}
  if forceCheck
    return (SKSE.GetVersion() as Bool)
  endif
  return useSKSE
endfunction

Bool function cUsePapUtil(Bool usePapUtil = False, Bool forceCheck = False) global
  {Requirements: None}
  if forceCheck
    return (PapyrusUtil.GetVersion() as Bool)
  endif
  return usePapUtil
endfunction

Bool function cUsePO3(Bool usePO3 = False, Bool forceCheck = False) global
  {Requirements: None}
  if forceCheck
    return (PO3_SKSEFunctions.GetPapyrusExtenderVersion() as Bool)
  endif
  return usePO3
endfunction

Bool function cUseConsoleUtil(Bool useConsoleUtil = False, Bool forceCheck = False) global
  {Requirements: None}
  if forceCheck
    return (ConsoleUtil.GetVersion() as Bool)
  endif
  return useConsoleUtil
endfunction

Bool function cUseCLibESP() global
  {Requirements: None}
  return Game.GetFormFromFile(0x00000802, "cLibraries.esp") as Bool
endfunction

String function cGetScriptName() global
  {Requirements: None}
  return "clibUse"
endfunction  
