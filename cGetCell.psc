ScriptName cGetCell Hidden

String function cGetScriptName() global
  return "cGetCell"
endfunction

function clibTrace(String msg, Int errorLevel, Bool condition = TRUE, Bool useConsoleUtil = TRUE) global
  if condition
    Debug.Trace(msg, errorLevel)
    if useConsoleUtil && ConsoleUtil.GetVersion()
      if errorLevel == 2
        msg = "Error! " + msg
      elseif errorLevel == 1
        msg = "Warning! " + msg
      elseif errorLevel == 0
        msg = "Info: " + msg
      endif
      ConsoleUtil.PrintMessage(msg)
    endif
  endif
endfunction

Bool function cIsBetweenFloat(Float aValue, Float minV, Float maxV) global
  {Requirements: None}
  if minV > maxV
    clibTrace("cIsBetweenFloat() Argument error! minV > maxV, Returning False", 2)
  else
    return minV <= maxV && aValue >= minV && aValue <= maxV
  endif
  return False
endfunction

Int[]   function cGetCKCoordsFromXY(Float xVar, Float yVar, ObjectReference aObjectRef = None) global
  {Requirements: None}
  ; If aObjectRef is provided then xVar and yVar are overwritten by its position
  ;Grid Map for reference
  ;https://docs.google.com/spreadsheets/d/1yhsNb12btLWpRNRIpZ2DfjVsWR946qEZTmVML_Wi9U8/edit?usp=sharing
  Int[] returnArray
  if !aObjectRef && !cIsBetweenFloat(xVar, -235520.0, 247808.0) 
    clibTrace("cGetCKCoordsFromXY():: !cIsBetweenFloat(xVar, -235520.0, 247808.0)", 2)
  elseif !aObjectRef && !cIsBetweenFloat(yVar, 206848.0, -178176.0)
    clibTrace("cGetCKCoordsFromXY():: !cIsBetweenFloat(yVar, 206848.0, -178176.0)", 2)
  else
    if aObjectRef
      xVar = aObjectRef.GetPositionX()
      yVar = aObjectRef.GetPositionY()
    endif
    returnArray = New Int[2]
    returnArray[0] = Math.Floor(xVar/4096)
    returnArray[1] = Math.Floor(yVar/4096)
  endif
  return returnArray
endfunction

Form function GetCellFromCoords(Int ckXVar, Int ckYVar, Float xVar = 0.0, Float yVar = 0.0) global
  return Game.GetForm(GetCellFormIDFromCoords(ckXVar, ckYVar, xVar, yVar))
endfunction
Int function  GetCellFormIDFromCoords(Int ckXVar, Int ckYVar, Float xVar = 0.0, Float yVar = 0.0) global
  if xVar != 0 || yVar != 0
    Int[] ckCoords = cGetCKCoordsFromXY(xVar, yVar)
    ckXVar = ckCoords[0]
    ckYVar = ckCoords[1]
  endif
  if ckXVar < -25
    if ckXVar <= -50
      if ckXVar == -57
        if ckYVar == -43
          return 0x0000CF31
        elseif ckYVar == -42
          return 0x0000CF12
        elseif ckYVar == -41
          return 0x0000CEF3
        elseif ckYVar == -40
          return 0x0000CED4
        elseif ckYVar == -39
          return 0x0000CEB5
        elseif ckYVar == -38
          return 0x0000CE96
        elseif ckYVar == -37
          return 0x0000CE77
        elseif ckYVar == -36
          return 0x0000CE58
        elseif ckYVar == -35
          return 0x0000CE39
        elseif ckYVar == -34
          return 0x0000CE1A
        elseif ckYVar == -33
          return 0x0000CDFB
        elseif ckYVar == -32
          return 0x00007995
        elseif ckYVar == -31
          return 0x00007994
        elseif ckYVar == -30
          return 0x0000795D
        elseif ckYVar == -29
          return 0x0000793E
        elseif ckYVar == -28
          return 0x0000791F
        elseif ckYVar == -27
          return 0x00007900
        elseif ckYVar == -26
          return 0x000078E1
        elseif ckYVar == -25
          return 0x000078C2
        elseif ckYVar == -24
          return 0x000078A3
        elseif ckYVar == -23
          return 0x00007884
        elseif ckYVar == -22
          return 0x00007865
        elseif ckYVar == -21
          return 0x00007846
        elseif ckYVar == -20
          return 0x00007827
        elseif ckYVar == -19
          return 0x00007808
        elseif ckYVar == -18
          return 0x000077E9
        elseif ckYVar == -17
          return 0x000077CA
        elseif ckYVar == -16
          return 0x000077AB
        elseif ckYVar == -15
          return 0x0000778C
        elseif ckYVar == -14
          return 0x0000776D
        elseif ckYVar == -13
          return 0x0000774E
        elseif ckYVar == -12
          return 0x0000772F
        elseif ckYVar == -11
          return 0x00007710
        elseif ckYVar == -10
          return 0x000076F1
        elseif ckYVar == -9
          return 0x000076D2
        elseif ckYVar == -8
          return 0x000076B3
        elseif ckYVar == -7
          return 0x00007694
        elseif ckYVar == -6
          return 0x00007675
        elseif ckYVar == -5
          return 0x00007656
        elseif ckYVar == -4
          return 0x00007637
        elseif ckYVar == -3
          return 0x00007618
        elseif ckYVar == -2
          return 0x000075F9
        elseif ckYVar == -1
          return 0x000075DA
        elseif ckYVar == 0
          return 0x000075BB
        elseif ckYVar == 1
          return 0x00007189
        elseif ckYVar == 2
          return 0x0000716A
        elseif ckYVar == 3
          return 0x0000714B
        elseif ckYVar == 4
          return 0x0000712C
        elseif ckYVar == 5
          return 0x0000710D
        elseif ckYVar == 6
          return 0x000070EE
        elseif ckYVar == 7
          return 0x000070CF
        elseif ckYVar == 8
          return 0x000070B0
        elseif ckYVar == 9
          return 0x00007091
        elseif ckYVar == 10
          return 0x00007072
        elseif ckYVar == 11
          return 0x00007053
        elseif ckYVar == 12
          return 0x00007034
        elseif ckYVar == 13
          return 0x00007015
        elseif ckYVar == 14
          return 0x00006FF6
        elseif ckYVar == 15
          return 0x00006FD7
        elseif ckYVar == 16
          return 0x00006FB8
        elseif ckYVar == 17
          return 0x00006F99
        elseif ckYVar == 18
          return 0x00006F7A
        elseif ckYVar == 19
          return 0x00006F5B
        elseif ckYVar == 20
          return 0x00006F3C
        elseif ckYVar == 21
          return 0x00006F1D
        elseif ckYVar == 22
          return 0x00006EFE
        elseif ckYVar == 23
          return 0x00006EDF
        elseif ckYVar == 24
          return 0x00006EC0
        elseif ckYVar == 25
          return 0x00006EA1
        elseif ckYVar == 26
          return 0x00006E82
        elseif ckYVar == 27
          return 0x00006E63
        elseif ckYVar == 28
          return 0x00006E44
        elseif ckYVar == 29
          return 0x00006E25
        elseif ckYVar == 30
          return 0x00006E06
        elseif ckYVar == 31
          return 0x00006DE7
        elseif ckYVar == 32
          return 0x00001981
        elseif ckYVar == 33
          return 0x00001980
        elseif ckYVar == 34
          return 0x00001949
        elseif ckYVar == 35
          return 0x0000192A
        elseif ckYVar == 36
          return 0x0000190B
        elseif ckYVar == 37
          return 0x000018EC
        elseif ckYVar == 38
          return 0x000018CD
        elseif ckYVar == 39
          return 0x000018AE
        elseif ckYVar == 40
          return 0x0000188F
        elseif ckYVar == 41
          return 0x00001870
        elseif ckYVar == 42
          return 0x00001851
        elseif ckYVar == 43
          return 0x00001832
        elseif ckYVar == 44
          return 0x00001813
        elseif ckYVar == 45
          return 0x000017F4
        elseif ckYVar == 46
          return 0x000017D5
        elseif ckYVar == 47
          return 0x000017B6
        elseif ckYVar == 48
          return 0x00001797
        elseif ckYVar == 49
          return 0x00001778
        elseif ckYVar == 50
          return 0x00001759
        endif
      elseif ckXVar == -56
        if ckYVar == -43
          return 0x0000CF30
        elseif ckYVar == -42
          return 0x0000CF11
        elseif ckYVar == -41
          return 0x0000CEF2
        elseif ckYVar == -40
          return 0x0000CED3
        elseif ckYVar == -39
          return 0x0000CEB4
        elseif ckYVar == -38
          return 0x0000CE95
        elseif ckYVar == -37
          return 0x0000CE76
        elseif ckYVar == -36
          return 0x0000CE57
        elseif ckYVar == -35
          return 0x0000CE38
        elseif ckYVar == -34
          return 0x0000CE19
        elseif ckYVar == -33
          return 0x0000CDFA
        elseif ckYVar == -32
          return 0x00007993
        elseif ckYVar == -31
          return 0x00007992
        elseif ckYVar == -30
          return 0x0000795C
        elseif ckYVar == -29
          return 0x0000793D
        elseif ckYVar == -28
          return 0x0000791E
        elseif ckYVar == -27
          return 0x000078FF
        elseif ckYVar == -26
          return 0x000078E0
        elseif ckYVar == -25
          return 0x000078C1
        elseif ckYVar == -24
          return 0x000078A2
        elseif ckYVar == -23
          return 0x00007883
        elseif ckYVar == -22
          return 0x00007864
        elseif ckYVar == -21
          return 0x00007845
        elseif ckYVar == -20
          return 0x00007826
        elseif ckYVar == -19
          return 0x00007807
        elseif ckYVar == -18
          return 0x000077E8
        elseif ckYVar == -17
          return 0x000077C9
        elseif ckYVar == -16
          return 0x000077AA
        elseif ckYVar == -15
          return 0x0000778B
        elseif ckYVar == -14
          return 0x0000776C
        elseif ckYVar == -13
          return 0x0000774D
        elseif ckYVar == -12
          return 0x0000772E
        elseif ckYVar == -11
          return 0x0000770F
        elseif ckYVar == -10
          return 0x000076F0
        elseif ckYVar == -9
          return 0x000076D1
        elseif ckYVar == -8
          return 0x000076B2
        elseif ckYVar == -7
          return 0x00007693
        elseif ckYVar == -6
          return 0x00007674
        elseif ckYVar == -5
          return 0x00007655
        elseif ckYVar == -4
          return 0x00007636
        elseif ckYVar == -3
          return 0x00007617
        elseif ckYVar == -2
          return 0x000075F8
        elseif ckYVar == -1
          return 0x000075D9
        elseif ckYVar == 0
          return 0x000075BA
        elseif ckYVar == 1
          return 0x00007188
        elseif ckYVar == 2
          return 0x00007169
        elseif ckYVar == 3
          return 0x0000714A
        elseif ckYVar == 4
          return 0x0000712B
        elseif ckYVar == 5
          return 0x0000710C
        elseif ckYVar == 6
          return 0x000070ED
        elseif ckYVar == 7
          return 0x000070CE
        elseif ckYVar == 8
          return 0x000070AF
        elseif ckYVar == 9
          return 0x00007090
        elseif ckYVar == 10
          return 0x00007071
        elseif ckYVar == 11
          return 0x00007052
        elseif ckYVar == 12
          return 0x00007033
        elseif ckYVar == 13
          return 0x00007014
        elseif ckYVar == 14
          return 0x00006FF5
        elseif ckYVar == 15
          return 0x00006FD6
        elseif ckYVar == 16
          return 0x00006FB7
        elseif ckYVar == 17
          return 0x00006F98
        elseif ckYVar == 18
          return 0x00006F79
        elseif ckYVar == 19
          return 0x00006F5A
        elseif ckYVar == 20
          return 0x00006F3B
        elseif ckYVar == 21
          return 0x00006F1C
        elseif ckYVar == 22
          return 0x00006EFD
        elseif ckYVar == 23
          return 0x00006EDE
        elseif ckYVar == 24
          return 0x00006EBF
        elseif ckYVar == 25
          return 0x00006EA0
        elseif ckYVar == 26
          return 0x00006E81
        elseif ckYVar == 27
          return 0x00006E62
        elseif ckYVar == 28
          return 0x00006E43
        elseif ckYVar == 29
          return 0x00006E24
        elseif ckYVar == 30
          return 0x00006E05
        elseif ckYVar == 31
          return 0x00006DE6
        elseif ckYVar == 32
          return 0x0000197F
        elseif ckYVar == 33
          return 0x0000197E
        elseif ckYVar == 34
          return 0x00001948
        elseif ckYVar == 35
          return 0x00001929
        elseif ckYVar == 36
          return 0x0000190A
        elseif ckYVar == 37
          return 0x000018EB
        elseif ckYVar == 38
          return 0x000018CC
        elseif ckYVar == 39
          return 0x000018AD
        elseif ckYVar == 40
          return 0x0000188E
        elseif ckYVar == 41
          return 0x0000186F
        elseif ckYVar == 42
          return 0x00001850
        elseif ckYVar == 43
          return 0x00001831
        elseif ckYVar == 44
          return 0x00001812
        elseif ckYVar == 45
          return 0x000017F3
        elseif ckYVar == 46
          return 0x000017D4
        elseif ckYVar == 47
          return 0x000017B5
        elseif ckYVar == 48
          return 0x00001796
        elseif ckYVar == 49
          return 0x00001777
        elseif ckYVar == 50
          return 0x00001758
        endif
      elseif ckXVar == -55
        if ckYVar == -43
          return 0x0000CF2F
        elseif ckYVar == -42
          return 0x0000CF10
        elseif ckYVar == -41
          return 0x0000CEF1
        elseif ckYVar == -40
          return 0x0000CED2
        elseif ckYVar == -39
          return 0x0000CEB3
        elseif ckYVar == -38
          return 0x0000CE94
        elseif ckYVar == -37
          return 0x0000CE75
        elseif ckYVar == -36
          return 0x0000CE56
        elseif ckYVar == -35
          return 0x0000CE37
        elseif ckYVar == -34
          return 0x0000CE18
        elseif ckYVar == -33
          return 0x0000CDF9
        elseif ckYVar == -32
          return 0x00007991
        elseif ckYVar == -31
          return 0x00007990
        elseif ckYVar == -30
          return 0x0000795B
        elseif ckYVar == -29
          return 0x0000793C
        elseif ckYVar == -28
          return 0x0000791D
        elseif ckYVar == -27
          return 0x000078FE
        elseif ckYVar == -26
          return 0x000078DF
        elseif ckYVar == -25
          return 0x000078C0
        elseif ckYVar == -24
          return 0x000078A1
        elseif ckYVar == -23
          return 0x00007882
        elseif ckYVar == -22
          return 0x00007863
        elseif ckYVar == -21
          return 0x00007844
        elseif ckYVar == -20
          return 0x00007825
        elseif ckYVar == -19
          return 0x00007806
        elseif ckYVar == -18
          return 0x000077E7
        elseif ckYVar == -17
          return 0x000077C8
        elseif ckYVar == -16
          return 0x000077A9
        elseif ckYVar == -15
          return 0x0000778A
        elseif ckYVar == -14
          return 0x0000776B
        elseif ckYVar == -13
          return 0x0000774C
        elseif ckYVar == -12
          return 0x0000772D
        elseif ckYVar == -11
          return 0x0000770E
        elseif ckYVar == -10
          return 0x000076EF
        elseif ckYVar == -9
          return 0x000076D0
        elseif ckYVar == -8
          return 0x000076B1
        elseif ckYVar == -7
          return 0x00007692
        elseif ckYVar == -6
          return 0x00007673
        elseif ckYVar == -5
          return 0x00007654
        elseif ckYVar == -4
          return 0x00007635
        elseif ckYVar == -3
          return 0x00007616
        elseif ckYVar == -2
          return 0x000075F7
        elseif ckYVar == -1
          return 0x000075D8
        elseif ckYVar == 0
          return 0x000075B9
        elseif ckYVar == 1
          return 0x00007187
        elseif ckYVar == 2
          return 0x00007168
        elseif ckYVar == 3
          return 0x00007149
        elseif ckYVar == 4
          return 0x0000712A
        elseif ckYVar == 5
          return 0x0000710B
        elseif ckYVar == 6
          return 0x000070EC
        elseif ckYVar == 7
          return 0x000070CD
        elseif ckYVar == 8
          return 0x000070AE
        elseif ckYVar == 9
          return 0x0000708F
        elseif ckYVar == 10
          return 0x00007070
        elseif ckYVar == 11
          return 0x00007051
        elseif ckYVar == 12
          return 0x00007032
        elseif ckYVar == 13
          return 0x00007013
        elseif ckYVar == 14
          return 0x00006FF4
        elseif ckYVar == 15
          return 0x00006FD5
        elseif ckYVar == 16
          return 0x00006FB6
        elseif ckYVar == 17
          return 0x00006F97
        elseif ckYVar == 18
          return 0x00006F78
        elseif ckYVar == 19
          return 0x00006F59
        elseif ckYVar == 20
          return 0x00006F3A
        elseif ckYVar == 21
          return 0x00006F1B
        elseif ckYVar == 22
          return 0x00006EFC
        elseif ckYVar == 23
          return 0x00006EDD
        elseif ckYVar == 24
          return 0x00006EBE
        elseif ckYVar == 25
          return 0x00006E9F
        elseif ckYVar == 26
          return 0x00006E80
        elseif ckYVar == 27
          return 0x00006E61
        elseif ckYVar == 28
          return 0x00006E42
        elseif ckYVar == 29
          return 0x00006E23
        elseif ckYVar == 30
          return 0x00006E04
        elseif ckYVar == 31
          return 0x00006DE5
        elseif ckYVar == 32
          return 0x0000197D
        elseif ckYVar == 33
          return 0x0000197C
        elseif ckYVar == 34
          return 0x00001947
        elseif ckYVar == 35
          return 0x00001928
        elseif ckYVar == 36
          return 0x00001909
        elseif ckYVar == 37
          return 0x000018EA
        elseif ckYVar == 38
          return 0x000018CB
        elseif ckYVar == 39
          return 0x000018AC
        elseif ckYVar == 40
          return 0x0000188D
        elseif ckYVar == 41
          return 0x0000186E
        elseif ckYVar == 42
          return 0x0000184F
        elseif ckYVar == 43
          return 0x00001830
        elseif ckYVar == 44
          return 0x00001811
        elseif ckYVar == 45
          return 0x000017F2
        elseif ckYVar == 46
          return 0x000017D3
        elseif ckYVar == 47
          return 0x000017B4
        elseif ckYVar == 48
          return 0x00001795
        elseif ckYVar == 49
          return 0x00001776
        elseif ckYVar == 50
          return 0x00001757
        endif
      elseif ckXVar == -54
        if ckYVar == -43
          return 0x0000CF2E
        elseif ckYVar == -42
          return 0x0000CF0F
        elseif ckYVar == -41
          return 0x0000CEF0
        elseif ckYVar == -40
          return 0x0000CED1
        elseif ckYVar == -39
          return 0x0000CEB2
        elseif ckYVar == -38
          return 0x0000CE93
        elseif ckYVar == -37
          return 0x0000CE74
        elseif ckYVar == -36
          return 0x0000CE55
        elseif ckYVar == -35
          return 0x0000CE36
        elseif ckYVar == -34
          return 0x0000CE17
        elseif ckYVar == -33
          return 0x0000CDF8
        elseif ckYVar == -32
          return 0x0000798F
        elseif ckYVar == -31
          return 0x0000798E
        elseif ckYVar == -30
          return 0x0000795A
        elseif ckYVar == -29
          return 0x0000793B
        elseif ckYVar == -28
          return 0x0000791C
        elseif ckYVar == -27
          return 0x000078FD
        elseif ckYVar == -26
          return 0x000078DE
        elseif ckYVar == -25
          return 0x000078BF
        elseif ckYVar == -24
          return 0x000078A0
        elseif ckYVar == -23
          return 0x00007881
        elseif ckYVar == -22
          return 0x00007862
        elseif ckYVar == -21
          return 0x00007843
        elseif ckYVar == -20
          return 0x00007824
        elseif ckYVar == -19
          return 0x00007805
        elseif ckYVar == -18
          return 0x000077E6
        elseif ckYVar == -17
          return 0x000077C7
        elseif ckYVar == -16
          return 0x000077A8
        elseif ckYVar == -15
          return 0x00007789
        elseif ckYVar == -14
          return 0x0000776A
        elseif ckYVar == -13
          return 0x0000774B
        elseif ckYVar == -12
          return 0x0000772C
        elseif ckYVar == -11
          return 0x0000770D
        elseif ckYVar == -10
          return 0x000076EE
        elseif ckYVar == -9
          return 0x000076CF
        elseif ckYVar == -8
          return 0x000076B0
        elseif ckYVar == -7
          return 0x00007691
        elseif ckYVar == -6
          return 0x00007672
        elseif ckYVar == -5
          return 0x00007653
        elseif ckYVar == -4
          return 0x00007634
        elseif ckYVar == -3
          return 0x00007615
        elseif ckYVar == -2
          return 0x000075F6
        elseif ckYVar == -1
          return 0x000075D7
        elseif ckYVar == 0
          return 0x000075B8
        elseif ckYVar == 1
          return 0x00007186
        elseif ckYVar == 2
          return 0x00007167
        elseif ckYVar == 3
          return 0x00007148
        elseif ckYVar == 4
          return 0x00007129
        elseif ckYVar == 5
          return 0x0000710A
        elseif ckYVar == 6
          return 0x000070EB
        elseif ckYVar == 7
          return 0x000070CC
        elseif ckYVar == 8
          return 0x000070AD
        elseif ckYVar == 9
          return 0x0000708E
        elseif ckYVar == 10
          return 0x0000706F
        elseif ckYVar == 11
          return 0x00007050
        elseif ckYVar == 12
          return 0x00007031
        elseif ckYVar == 13
          return 0x00007012
        elseif ckYVar == 14
          return 0x00006FF3
        elseif ckYVar == 15
          return 0x00006FD4
        elseif ckYVar == 16
          return 0x00006FB5
        elseif ckYVar == 17
          return 0x00006F96
        elseif ckYVar == 18
          return 0x00006F77
        elseif ckYVar == 19
          return 0x00006F58
        elseif ckYVar == 20
          return 0x00006F39
        elseif ckYVar == 21
          return 0x00006F1A
        elseif ckYVar == 22
          return 0x00006EFB
        elseif ckYVar == 23
          return 0x00006EDC
        elseif ckYVar == 24
          return 0x00006EBD
        elseif ckYVar == 25
          return 0x00006E9E
        elseif ckYVar == 26
          return 0x00006E7F
        elseif ckYVar == 27
          return 0x00006E60
        elseif ckYVar == 28
          return 0x00006E41
        elseif ckYVar == 29
          return 0x00006E22
        elseif ckYVar == 30
          return 0x00006E03
        elseif ckYVar == 31
          return 0x00006DE4
        elseif ckYVar == 32
          return 0x0000197B
        elseif ckYVar == 33
          return 0x0000197A
        elseif ckYVar == 34
          return 0x00001946
        elseif ckYVar == 35
          return 0x00001927
        elseif ckYVar == 36
          return 0x00001908
        elseif ckYVar == 37
          return 0x000018E9
        elseif ckYVar == 38
          return 0x000018CA
        elseif ckYVar == 39
          return 0x000018AB
        elseif ckYVar == 40
          return 0x0000188C
        elseif ckYVar == 41
          return 0x0000186D
        elseif ckYVar == 42
          return 0x0000184E
        elseif ckYVar == 43
          return 0x0000182F
        elseif ckYVar == 44
          return 0x00001810
        elseif ckYVar == 45
          return 0x000017F1
        elseif ckYVar == 46
          return 0x000017D2
        elseif ckYVar == 47
          return 0x000017B3
        elseif ckYVar == 48
          return 0x00001794
        elseif ckYVar == 49
          return 0x00001775
        elseif ckYVar == 50
          return 0x00001756
        endif
      elseif ckXVar == -53
        if ckYVar == -43
          return 0x0000CF2D
        elseif ckYVar == -42
          return 0x0000CF0E
        elseif ckYVar == -41
          return 0x0000CEEF
        elseif ckYVar == -40
          return 0x0000CED0
        elseif ckYVar == -39
          return 0x0000CEB1
        elseif ckYVar == -38
          return 0x0000CE92
        elseif ckYVar == -37
          return 0x0000CE73
        elseif ckYVar == -36
          return 0x0000CE54
        elseif ckYVar == -35
          return 0x0000CE35
        elseif ckYVar == -34
          return 0x0000CE16
        elseif ckYVar == -33
          return 0x0000CDF7
        elseif ckYVar == -32
          return 0x0000798D
        elseif ckYVar == -31
          return 0x0000798C
        elseif ckYVar == -30
          return 0x00007959
        elseif ckYVar == -29
          return 0x0000793A
        elseif ckYVar == -28
          return 0x0000791B
        elseif ckYVar == -27
          return 0x000078FC
        elseif ckYVar == -26
          return 0x000078DD
        elseif ckYVar == -25
          return 0x000078BE
        elseif ckYVar == -24
          return 0x0000789F
        elseif ckYVar == -23
          return 0x00007880
        elseif ckYVar == -22
          return 0x00007861
        elseif ckYVar == -21
          return 0x00007842
        elseif ckYVar == -20
          return 0x00007823
        elseif ckYVar == -19
          return 0x00007804
        elseif ckYVar == -18
          return 0x000077E5
        elseif ckYVar == -17
          return 0x000077C6
        elseif ckYVar == -16
          return 0x000077A7
        elseif ckYVar == -15
          return 0x00007788
        elseif ckYVar == -14
          return 0x00007769
        elseif ckYVar == -13
          return 0x0000774A
        elseif ckYVar == -12
          return 0x0000772B
        elseif ckYVar == -11
          return 0x0000770C
        elseif ckYVar == -10
          return 0x000076ED
        elseif ckYVar == -9
          return 0x000076CE
        elseif ckYVar == -8
          return 0x000076AF
        elseif ckYVar == -7
          return 0x00007690
        elseif ckYVar == -6
          return 0x00007671
        elseif ckYVar == -5
          return 0x00007652
        elseif ckYVar == -4
          return 0x00007633
        elseif ckYVar == -3
          return 0x00007614
        elseif ckYVar == -2
          return 0x000075F5
        elseif ckYVar == -1
          return 0x000075D6
        elseif ckYVar == 0
          return 0x000075B7
        elseif ckYVar == 1
          return 0x00007185
        elseif ckYVar == 2
          return 0x00007166
        elseif ckYVar == 3
          return 0x00007147
        elseif ckYVar == 4
          return 0x00007128
        elseif ckYVar == 5
          return 0x00007109
        elseif ckYVar == 6
          return 0x000070EA
        elseif ckYVar == 7
          return 0x000070CB
        elseif ckYVar == 8
          return 0x000070AC
        elseif ckYVar == 9
          return 0x0000708D
        elseif ckYVar == 10
          return 0x0000706E
        elseif ckYVar == 11
          return 0x0000704F
        elseif ckYVar == 12
          return 0x00007030
        elseif ckYVar == 13
          return 0x00007011
        elseif ckYVar == 14
          return 0x00006FF2
        elseif ckYVar == 15
          return 0x00006FD3
        elseif ckYVar == 16
          return 0x00006FB4
        elseif ckYVar == 17
          return 0x00006F95
        elseif ckYVar == 18
          return 0x00006F76
        elseif ckYVar == 19
          return 0x00006F57
        elseif ckYVar == 20
          return 0x00006F38
        elseif ckYVar == 21
          return 0x00006F19
        elseif ckYVar == 22
          return 0x00006EFA
        elseif ckYVar == 23
          return 0x00006EDB
        elseif ckYVar == 24
          return 0x00006EBC
        elseif ckYVar == 25
          return 0x00006E9D
        elseif ckYVar == 26
          return 0x00006E7E
        elseif ckYVar == 27
          return 0x00006E5F
        elseif ckYVar == 28
          return 0x00006E40
        elseif ckYVar == 29
          return 0x00006E21
        elseif ckYVar == 30
          return 0x00006E02
        elseif ckYVar == 31
          return 0x00006DE3
        elseif ckYVar == 32
          return 0x00001979
        elseif ckYVar == 33
          return 0x00001978
        elseif ckYVar == 34
          return 0x00001945
        elseif ckYVar == 35
          return 0x00001926
        elseif ckYVar == 36
          return 0x00001907
        elseif ckYVar == 37
          return 0x000018E8
        elseif ckYVar == 38
          return 0x000018C9
        elseif ckYVar == 39
          return 0x000018AA
        elseif ckYVar == 40
          return 0x0000188B
        elseif ckYVar == 41
          return 0x0000186C
        elseif ckYVar == 42
          return 0x0000184D
        elseif ckYVar == 43
          return 0x0000182E
        elseif ckYVar == 44
          return 0x0000180F
        elseif ckYVar == 45
          return 0x000017F0
        elseif ckYVar == 46
          return 0x000017D1
        elseif ckYVar == 47
          return 0x000017B2
        elseif ckYVar == 48
          return 0x00001793
        elseif ckYVar == 49
          return 0x00001774
        elseif ckYVar == 50
          return 0x00001755
        endif
      elseif ckXVar == -52
        if ckYVar == -43
          return 0x0000CF2C
        elseif ckYVar == -42
          return 0x0000CF0D
        elseif ckYVar == -41
          return 0x0000CEEE
        elseif ckYVar == -40
          return 0x0000CECF
        elseif ckYVar == -39
          return 0x0000CEB0
        elseif ckYVar == -38
          return 0x0000CE91
        elseif ckYVar == -37
          return 0x0000CE72
        elseif ckYVar == -36
          return 0x0000CE53
        elseif ckYVar == -35
          return 0x0000CE34
        elseif ckYVar == -34
          return 0x0000CE15
        elseif ckYVar == -33
          return 0x0000CDF6
        elseif ckYVar == -32
          return 0x0000798B
        elseif ckYVar == -31
          return 0x0000798A
        elseif ckYVar == -30
          return 0x00007958
        elseif ckYVar == -29
          return 0x00007939
        elseif ckYVar == -28
          return 0x0000791A
        elseif ckYVar == -27
          return 0x000078FB
        elseif ckYVar == -26
          return 0x000078DC
        elseif ckYVar == -25
          return 0x000078BD
        elseif ckYVar == -24
          return 0x0000789E
        elseif ckYVar == -23
          return 0x0000787F
        elseif ckYVar == -22
          return 0x00007860
        elseif ckYVar == -21
          return 0x00007841
        elseif ckYVar == -20
          return 0x00007822
        elseif ckYVar == -19
          return 0x00007803
        elseif ckYVar == -18
          return 0x000077E4
        elseif ckYVar == -17
          return 0x000077C5
        elseif ckYVar == -16
          return 0x000077A6
        elseif ckYVar == -15
          return 0x00007787
        elseif ckYVar == -14
          return 0x00007768
        elseif ckYVar == -13
          return 0x00007749
        elseif ckYVar == -12
          return 0x0000772A
        elseif ckYVar == -11
          return 0x0000770B
        elseif ckYVar == -10
          return 0x000076EC
        elseif ckYVar == -9
          return 0x000076CD
        elseif ckYVar == -8
          return 0x000076AE
        elseif ckYVar == -7
          return 0x0000768F
        elseif ckYVar == -6
          return 0x00007670
        elseif ckYVar == -5
          return 0x00007651
        elseif ckYVar == -4
          return 0x00007632
        elseif ckYVar == -3
          return 0x00007613
        elseif ckYVar == -2
          return 0x000075F4
        elseif ckYVar == -1
          return 0x000075D5
        elseif ckYVar == 0
          return 0x000075B6
        elseif ckYVar == 1
          return 0x00007184
        elseif ckYVar == 2
          return 0x00007165
        elseif ckYVar == 3
          return 0x00007146
        elseif ckYVar == 4
          return 0x00007127
        elseif ckYVar == 5
          return 0x00007108
        elseif ckYVar == 6
          return 0x000070E9
        elseif ckYVar == 7
          return 0x000070CA
        elseif ckYVar == 8
          return 0x000070AB
        elseif ckYVar == 9
          return 0x0000708C
        elseif ckYVar == 10
          return 0x0000706D
        elseif ckYVar == 11
          return 0x0000704E
        elseif ckYVar == 12
          return 0x0000702F
        elseif ckYVar == 13
          return 0x00007010
        elseif ckYVar == 14
          return 0x00006FF1
        elseif ckYVar == 15
          return 0x00006FD2
        elseif ckYVar == 16
          return 0x00006FB3
        elseif ckYVar == 17
          return 0x00006F94
        elseif ckYVar == 18
          return 0x00006F75
        elseif ckYVar == 19
          return 0x00006F56
        elseif ckYVar == 20
          return 0x00006F37
        elseif ckYVar == 21
          return 0x00006F18
        elseif ckYVar == 22
          return 0x00006EF9
        elseif ckYVar == 23
          return 0x00006EDA
        elseif ckYVar == 24
          return 0x00006EBB
        elseif ckYVar == 25
          return 0x00006E9C
        elseif ckYVar == 26
          return 0x00006E7D
        elseif ckYVar == 27
          return 0x00006E5E
        elseif ckYVar == 28
          return 0x00006E3F
        elseif ckYVar == 29
          return 0x00006E20
        elseif ckYVar == 30
          return 0x00006E01
        elseif ckYVar == 31
          return 0x00006DE2
        elseif ckYVar == 32
          return 0x00001977
        elseif ckYVar == 33
          return 0x00001976
        elseif ckYVar == 34
          return 0x00001944
        elseif ckYVar == 35
          return 0x00001925
        elseif ckYVar == 36
          return 0x00001906
        elseif ckYVar == 37
          return 0x000018E7
        elseif ckYVar == 38
          return 0x000018C8
        elseif ckYVar == 39
          return 0x000018A9
        elseif ckYVar == 40
          return 0x0000188A
        elseif ckYVar == 41
          return 0x0000186B
        elseif ckYVar == 42
          return 0x0000184C
        elseif ckYVar == 43
          return 0x0000182D
        elseif ckYVar == 44
          return 0x0000180E
        elseif ckYVar == 45
          return 0x000017EF
        elseif ckYVar == 46
          return 0x000017D0
        elseif ckYVar == 47
          return 0x000017B1
        elseif ckYVar == 48
          return 0x00001792
        elseif ckYVar == 49
          return 0x00001773
        elseif ckYVar == 50
          return 0x00001754
        endif
      elseif ckXVar == -51
        if ckYVar == -43
          return 0x0000CF2B
        elseif ckYVar == -42
          return 0x0000CF0C
        elseif ckYVar == -41
          return 0x0000CEED
        elseif ckYVar == -40
          return 0x0000CECE
        elseif ckYVar == -39
          return 0x0000CEAF
        elseif ckYVar == -38
          return 0x0000CE90
        elseif ckYVar == -37
          return 0x0000CE71
        elseif ckYVar == -36
          return 0x0000CE52
        elseif ckYVar == -35
          return 0x0000CE33
        elseif ckYVar == -34
          return 0x0000CE14
        elseif ckYVar == -33
          return 0x0000CDF5
        elseif ckYVar == -32
          return 0x00007989
        elseif ckYVar == -31
          return 0x00007988
        elseif ckYVar == -30
          return 0x00007957
        elseif ckYVar == -29
          return 0x00007938
        elseif ckYVar == -28
          return 0x00007919
        elseif ckYVar == -27
          return 0x000078FA
        elseif ckYVar == -26
          return 0x000078DB
        elseif ckYVar == -25
          return 0x000078BC
        elseif ckYVar == -24
          return 0x0000789D
        elseif ckYVar == -23
          return 0x0000787E
        elseif ckYVar == -22
          return 0x0000785F
        elseif ckYVar == -21
          return 0x00007840
        elseif ckYVar == -20
          return 0x00007821
        elseif ckYVar == -19
          return 0x00007802
        elseif ckYVar == -18
          return 0x000077E3
        elseif ckYVar == -17
          return 0x000077C4
        elseif ckYVar == -16
          return 0x000077A5
        elseif ckYVar == -15
          return 0x00007786
        elseif ckYVar == -14
          return 0x00007767
        elseif ckYVar == -13
          return 0x00007748
        elseif ckYVar == -12
          return 0x00007729
        elseif ckYVar == -11
          return 0x0000770A
        elseif ckYVar == -10
          return 0x000076EB
        elseif ckYVar == -9
          return 0x000076CC
        elseif ckYVar == -8
          return 0x000076AD
        elseif ckYVar == -7
          return 0x0000768E
        elseif ckYVar == -6
          return 0x0000766F
        elseif ckYVar == -5
          return 0x00007650
        elseif ckYVar == -4
          return 0x00007631
        elseif ckYVar == -3
          return 0x00007612
        elseif ckYVar == -2
          return 0x000075F3
        elseif ckYVar == -1
          return 0x000075D4
        elseif ckYVar == 0
          return 0x000075B5
        elseif ckYVar == 1
          return 0x00007183
        elseif ckYVar == 2
          return 0x00007164
        elseif ckYVar == 3
          return 0x00007145
        elseif ckYVar == 4
          return 0x00007126
        elseif ckYVar == 5
          return 0x00007107
        elseif ckYVar == 6
          return 0x000070E8
        elseif ckYVar == 7
          return 0x000070C9
        elseif ckYVar == 8
          return 0x000070AA
        elseif ckYVar == 9
          return 0x0000708B
        elseif ckYVar == 10
          return 0x0000706C
        elseif ckYVar == 11
          return 0x0000704D
        elseif ckYVar == 12
          return 0x0000702E
        elseif ckYVar == 13
          return 0x0000700F
        elseif ckYVar == 14
          return 0x00006FF0
        elseif ckYVar == 15
          return 0x00006FD1
        elseif ckYVar == 16
          return 0x00006FB2
        elseif ckYVar == 17
          return 0x00006F93
        elseif ckYVar == 18
          return 0x00006F74
        elseif ckYVar == 19
          return 0x00006F55
        elseif ckYVar == 20
          return 0x00006F36
        elseif ckYVar == 21
          return 0x00006F17
        elseif ckYVar == 22
          return 0x00006EF8
        elseif ckYVar == 23
          return 0x00006ED9
        elseif ckYVar == 24
          return 0x00006EBA
        elseif ckYVar == 25
          return 0x00006E9B
        elseif ckYVar == 26
          return 0x00006E7C
        elseif ckYVar == 27
          return 0x00006E5D
        elseif ckYVar == 28
          return 0x00006E3E
        elseif ckYVar == 29
          return 0x00006E1F
        elseif ckYVar == 30
          return 0x00006E00
        elseif ckYVar == 31
          return 0x00006DE1
        elseif ckYVar == 32
          return 0x00001975
        elseif ckYVar == 33
          return 0x00001974
        elseif ckYVar == 34
          return 0x00001943
        elseif ckYVar == 35
          return 0x00001924
        elseif ckYVar == 36
          return 0x00001905
        elseif ckYVar == 37
          return 0x000018E6
        elseif ckYVar == 38
          return 0x000018C7
        elseif ckYVar == 39
          return 0x000018A8
        elseif ckYVar == 40
          return 0x00001889
        elseif ckYVar == 41
          return 0x0000186A
        elseif ckYVar == 42
          return 0x0000184B
        elseif ckYVar == 43
          return 0x0000182C
        elseif ckYVar == 44
          return 0x0000180D
        elseif ckYVar == 45
          return 0x000017EE
        elseif ckYVar == 46
          return 0x000017CF
        elseif ckYVar == 47
          return 0x000017B0
        elseif ckYVar == 48
          return 0x00001791
        elseif ckYVar == 49
          return 0x00001772
        elseif ckYVar == 50
          return 0x00001753
        endif
      elseif ckXVar == -50
        if ckYVar == -43
          return 0x0000CF2A
        elseif ckYVar == -42
          return 0x0000CF0B
        elseif ckYVar == -41
          return 0x0000CEEC
        elseif ckYVar == -40
          return 0x0000CECD
        elseif ckYVar == -39
          return 0x0000CEAE
        elseif ckYVar == -38
          return 0x0000CE8F
        elseif ckYVar == -37
          return 0x0000CE70
        elseif ckYVar == -36
          return 0x0000CE51
        elseif ckYVar == -35
          return 0x0000CE32
        elseif ckYVar == -34
          return 0x0000CE13
        elseif ckYVar == -33
          return 0x0000CDF4
        elseif ckYVar == -32
          return 0x00007987
        elseif ckYVar == -31
          return 0x00007986
        elseif ckYVar == -30
          return 0x00007956
        elseif ckYVar == -29
          return 0x00007937
        elseif ckYVar == -28
          return 0x00007918
        elseif ckYVar == -27
          return 0x000078F9
        elseif ckYVar == -26
          return 0x000078DA
        elseif ckYVar == -25
          return 0x000078BB
        elseif ckYVar == -24
          return 0x0000789C
        elseif ckYVar == -23
          return 0x0000787D
        elseif ckYVar == -22
          return 0x0000785E
        elseif ckYVar == -21
          return 0x0000783F
        elseif ckYVar == -20
          return 0x00007820
        elseif ckYVar == -19
          return 0x00007801
        elseif ckYVar == -18
          return 0x000077E2
        elseif ckYVar == -17
          return 0x000077C3
        elseif ckYVar == -16
          return 0x000077A4
        elseif ckYVar == -15
          return 0x00007785
        elseif ckYVar == -14
          return 0x00007766
        elseif ckYVar == -13
          return 0x00007747
        elseif ckYVar == -12
          return 0x00007728
        elseif ckYVar == -11
          return 0x00007709
        elseif ckYVar == -10
          return 0x000076EA
        elseif ckYVar == -9
          return 0x000076CB
        elseif ckYVar == -8
          return 0x000076AC
        elseif ckYVar == -7
          return 0x0000768D
        elseif ckYVar == -6
          return 0x0000766E
        elseif ckYVar == -5
          return 0x0000764F
        elseif ckYVar == -4
          return 0x00007630
        elseif ckYVar == -3
          return 0x00007611
        elseif ckYVar == -2
          return 0x000075F2
        elseif ckYVar == -1
          return 0x000075D3
        elseif ckYVar == 0
          return 0x000075B4
        elseif ckYVar == 1
          return 0x00007182
        elseif ckYVar == 2
          return 0x00007163
        elseif ckYVar == 3
          return 0x00007144
        elseif ckYVar == 4
          return 0x00007125
        elseif ckYVar == 5
          return 0x00007106
        elseif ckYVar == 6
          return 0x000070E7
        elseif ckYVar == 7
          return 0x000070C8
        elseif ckYVar == 8
          return 0x000070A9
        elseif ckYVar == 9
          return 0x0000708A
        elseif ckYVar == 10
          return 0x0000706B
        elseif ckYVar == 11
          return 0x0000704C
        elseif ckYVar == 12
          return 0x0000702D
        elseif ckYVar == 13
          return 0x0000700E
        elseif ckYVar == 14
          return 0x00006FEF
        elseif ckYVar == 15
          return 0x00006FD0
        elseif ckYVar == 16
          return 0x00006FB1
        elseif ckYVar == 17
          return 0x00006F92
        elseif ckYVar == 18
          return 0x00006F73
        elseif ckYVar == 19
          return 0x00006F54
        elseif ckYVar == 20
          return 0x00006F35
        elseif ckYVar == 21
          return 0x00006F16
        elseif ckYVar == 22
          return 0x00006EF7
        elseif ckYVar == 23
          return 0x00006ED8
        elseif ckYVar == 24
          return 0x00006EB9
        elseif ckYVar == 25
          return 0x00006E9A
        elseif ckYVar == 26
          return 0x00006E7B
        elseif ckYVar == 27
          return 0x00006E5C
        elseif ckYVar == 28
          return 0x00006E3D
        elseif ckYVar == 29
          return 0x00006E1E
        elseif ckYVar == 30
          return 0x00006DFF
        elseif ckYVar == 31
          return 0x00006DE0
        elseif ckYVar == 32
          return 0x00001973
        elseif ckYVar == 33
          return 0x00001972
        elseif ckYVar == 34
          return 0x00001942
        elseif ckYVar == 35
          return 0x00001923
        elseif ckYVar == 36
          return 0x00001904
        elseif ckYVar == 37
          return 0x000018E5
        elseif ckYVar == 38
          return 0x000018C6
        elseif ckYVar == 39
          return 0x000018A7
        elseif ckYVar == 40
          return 0x00001888
        elseif ckYVar == 41
          return 0x00001869
        elseif ckYVar == 42
          return 0x0000184A
        elseif ckYVar == 43
          return 0x0000182B
        elseif ckYVar == 44
          return 0x0000180C
        elseif ckYVar == 45
          return 0x000017ED
        elseif ckYVar == 46
          return 0x000017CE
        elseif ckYVar == 47
          return 0x000017AF
        elseif ckYVar == 48
          return 0x00001790
        elseif ckYVar == 49
          return 0x00001771
        elseif ckYVar == 50
          return 0x00001752
        endif
      endif
    elseif ckXVar <= -40
      if ckXVar == -49
        if ckYVar == -43
          return 0x0000CF29
        elseif ckYVar == -42
          return 0x0000CF0A
        elseif ckYVar == -41
          return 0x0000CEEB
        elseif ckYVar == -40
          return 0x0000CECC
        elseif ckYVar == -39
          return 0x0000CEAD
        elseif ckYVar == -38
          return 0x0000CE8E
        elseif ckYVar == -37
          return 0x0000CE6F
        elseif ckYVar == -36
          return 0x0000CE50
        elseif ckYVar == -35
          return 0x0000CE31
        elseif ckYVar == -34
          return 0x0000CE12
        elseif ckYVar == -33
          return 0x0000CDF3
        elseif ckYVar == -32
          return 0x00007985
        elseif ckYVar == -31
          return 0x00007984
        elseif ckYVar == -30
          return 0x00007955
        elseif ckYVar == -29
          return 0x00007936
        elseif ckYVar == -28
          return 0x00007917
        elseif ckYVar == -27
          return 0x000078F8
        elseif ckYVar == -26
          return 0x000078D9
        elseif ckYVar == -25
          return 0x000078BA
        elseif ckYVar == -24
          return 0x0000789B
        elseif ckYVar == -23
          return 0x0000787C
        elseif ckYVar == -22
          return 0x0000785D
        elseif ckYVar == -21
          return 0x0000783E
        elseif ckYVar == -20
          return 0x0000781F
        elseif ckYVar == -19
          return 0x00007800
        elseif ckYVar == -18
          return 0x000077E1
        elseif ckYVar == -17
          return 0x000077C2
        elseif ckYVar == -16
          return 0x000077A3
        elseif ckYVar == -15
          return 0x00007784
        elseif ckYVar == -14
          return 0x00007765
        elseif ckYVar == -13
          return 0x00007746
        elseif ckYVar == -12
          return 0x00007727
        elseif ckYVar == -11
          return 0x00007708
        elseif ckYVar == -10
          return 0x000076E9
        elseif ckYVar == -9
          return 0x000076CA
        elseif ckYVar == -8
          return 0x000076AB
        elseif ckYVar == -7
          return 0x0000768C
        elseif ckYVar == -6
          return 0x0000766D
        elseif ckYVar == -5
          return 0x0000764E
        elseif ckYVar == -4
          return 0x0000762F
        elseif ckYVar == -3
          return 0x00007610
        elseif ckYVar == -2
          return 0x000075F1
        elseif ckYVar == -1
          return 0x000075D2
        elseif ckYVar == 0
          return 0x000075B3
        elseif ckYVar == 1
          return 0x00007181
        elseif ckYVar == 2
          return 0x00007162
        elseif ckYVar == 3
          return 0x00007143
        elseif ckYVar == 4
          return 0x00007124
        elseif ckYVar == 5
          return 0x00007105
        elseif ckYVar == 6
          return 0x000070E6
        elseif ckYVar == 7
          return 0x000070C7
        elseif ckYVar == 8
          return 0x000070A8
        elseif ckYVar == 9
          return 0x00007089
        elseif ckYVar == 10
          return 0x0000706A
        elseif ckYVar == 11
          return 0x0000704B
        elseif ckYVar == 12
          return 0x0000702C
        elseif ckYVar == 13
          return 0x0000700D
        elseif ckYVar == 14
          return 0x00006FEE
        elseif ckYVar == 15
          return 0x00006FCF
        elseif ckYVar == 16
          return 0x00006FB0
        elseif ckYVar == 17
          return 0x00006F91
        elseif ckYVar == 18
          return 0x00006F72
        elseif ckYVar == 19
          return 0x00006F53
        elseif ckYVar == 20
          return 0x00006F34
        elseif ckYVar == 21
          return 0x00006F15
        elseif ckYVar == 22
          return 0x00006EF6
        elseif ckYVar == 23
          return 0x00006ED7
        elseif ckYVar == 24
          return 0x00006EB8
        elseif ckYVar == 25
          return 0x00006E99
        elseif ckYVar == 26
          return 0x00006E7A
        elseif ckYVar == 27
          return 0x00006E5B
        elseif ckYVar == 28
          return 0x00006E3C
        elseif ckYVar == 29
          return 0x00006E1D
        elseif ckYVar == 30
          return 0x00006DFE
        elseif ckYVar == 31
          return 0x00006DDF
        elseif ckYVar == 32
          return 0x00001971
        elseif ckYVar == 33
          return 0x00001970
        elseif ckYVar == 34
          return 0x00001941
        elseif ckYVar == 35
          return 0x00001922
        elseif ckYVar == 36
          return 0x00001903
        elseif ckYVar == 37
          return 0x000018E4
        elseif ckYVar == 38
          return 0x000018C5
        elseif ckYVar == 39
          return 0x000018A6
        elseif ckYVar == 40
          return 0x00001887
        elseif ckYVar == 41
          return 0x00001868
        elseif ckYVar == 42
          return 0x00001849
        elseif ckYVar == 43
          return 0x0000182A
        elseif ckYVar == 44
          return 0x0000180B
        elseif ckYVar == 45
          return 0x000017EC
        elseif ckYVar == 46
          return 0x000017CD
        elseif ckYVar == 47
          return 0x000017AE
        elseif ckYVar == 48
          return 0x0000178F
        elseif ckYVar == 49
          return 0x00001770
        elseif ckYVar == 50
          return 0x00001751
        endif
      elseif ckXVar == -48
        if ckYVar == -43
          return 0x0000CF28
        elseif ckYVar == -42
          return 0x0000CF09
        elseif ckYVar == -41
          return 0x0000CEEA
        elseif ckYVar == -40
          return 0x0000CECB
        elseif ckYVar == -39
          return 0x0000CEAC
        elseif ckYVar == -38
          return 0x0000CE8D
        elseif ckYVar == -37
          return 0x0000CE6E
        elseif ckYVar == -36
          return 0x0000CE4F
        elseif ckYVar == -35
          return 0x0000CE30
        elseif ckYVar == -34
          return 0x0000CE11
        elseif ckYVar == -33
          return 0x0000CDF2
        elseif ckYVar == -32
          return 0x00007983
        elseif ckYVar == -31
          return 0x00007982
        elseif ckYVar == -30
          return 0x00007954
        elseif ckYVar == -29
          return 0x00007935
        elseif ckYVar == -28
          return 0x00007916
        elseif ckYVar == -27
          return 0x000078F7
        elseif ckYVar == -26
          return 0x000078D8
        elseif ckYVar == -25
          return 0x000078B9
        elseif ckYVar == -24
          return 0x0000789A
        elseif ckYVar == -23
          return 0x0000787B
        elseif ckYVar == -22
          return 0x0000785C
        elseif ckYVar == -21
          return 0x0000783D
        elseif ckYVar == -20
          return 0x0000781E
        elseif ckYVar == -19
          return 0x000077FF
        elseif ckYVar == -18
          return 0x000077E0
        elseif ckYVar == -17
          return 0x000077C1
        elseif ckYVar == -16
          return 0x000077A2
        elseif ckYVar == -15
          return 0x00007783
        elseif ckYVar == -14
          return 0x00007764
        elseif ckYVar == -13
          return 0x00007745
        elseif ckYVar == -12
          return 0x00007726
        elseif ckYVar == -11
          return 0x00007707
        elseif ckYVar == -10
          return 0x000076E8
        elseif ckYVar == -9
          return 0x000076C9
        elseif ckYVar == -8
          return 0x000076AA
        elseif ckYVar == -7
          return 0x0000768B
        elseif ckYVar == -6
          return 0x0000766C
        elseif ckYVar == -5
          return 0x0000764D
        elseif ckYVar == -4
          return 0x0000762E
        elseif ckYVar == -3
          return 0x0000760F
        elseif ckYVar == -2
          return 0x000075F0
        elseif ckYVar == -1
          return 0x000075D1
        elseif ckYVar == 0
          return 0x000075B2
        elseif ckYVar == 1
          return 0x00007180
        elseif ckYVar == 2
          return 0x00007161
        elseif ckYVar == 3
          return 0x00007142
        elseif ckYVar == 4
          return 0x00007123
        elseif ckYVar == 5
          return 0x00007104
        elseif ckYVar == 6
          return 0x000070E5
        elseif ckYVar == 7
          return 0x000070C6
        elseif ckYVar == 8
          return 0x000070A7
        elseif ckYVar == 9
          return 0x00007088
        elseif ckYVar == 10
          return 0x00007069
        elseif ckYVar == 11
          return 0x0000704A
        elseif ckYVar == 12
          return 0x0000702B
        elseif ckYVar == 13
          return 0x0000700C
        elseif ckYVar == 14
          return 0x00006FED
        elseif ckYVar == 15
          return 0x00006FCE
        elseif ckYVar == 16
          return 0x00006FAF
        elseif ckYVar == 17
          return 0x00006F90
        elseif ckYVar == 18
          return 0x00006F71
        elseif ckYVar == 19
          return 0x00006F52
        elseif ckYVar == 20
          return 0x00006F33
        elseif ckYVar == 21
          return 0x00006F14
        elseif ckYVar == 22
          return 0x00006EF5
        elseif ckYVar == 23
          return 0x00006ED6
        elseif ckYVar == 24
          return 0x00006EB7
        elseif ckYVar == 25
          return 0x00006E98
        elseif ckYVar == 26
          return 0x00006E79
        elseif ckYVar == 27
          return 0x00006E5A
        elseif ckYVar == 28
          return 0x00006E3B
        elseif ckYVar == 29
          return 0x00006E1C
        elseif ckYVar == 30
          return 0x00006DFD
        elseif ckYVar == 31
          return 0x00006DDE
        elseif ckYVar == 32
          return 0x0000196F
        elseif ckYVar == 33
          return 0x0000196E
        elseif ckYVar == 34
          return 0x00001940
        elseif ckYVar == 35
          return 0x00001921
        elseif ckYVar == 36
          return 0x00001902
        elseif ckYVar == 37
          return 0x000018E3
        elseif ckYVar == 38
          return 0x000018C4
        elseif ckYVar == 39
          return 0x000018A5
        elseif ckYVar == 40
          return 0x00001886
        elseif ckYVar == 41
          return 0x00001867
        elseif ckYVar == 42
          return 0x00001848
        elseif ckYVar == 43
          return 0x00001829
        elseif ckYVar == 44
          return 0x0000180A
        elseif ckYVar == 45
          return 0x000017EB
        elseif ckYVar == 46
          return 0x000017CC
        elseif ckYVar == 47
          return 0x000017AD
        elseif ckYVar == 48
          return 0x0000178E
        elseif ckYVar == 49
          return 0x0000176F
        elseif ckYVar == 50
          return 0x00001750
        endif
      elseif ckXVar == -47
        if ckYVar == -43
          return 0x0000CF27
        elseif ckYVar == -42
          return 0x0000CF08
        elseif ckYVar == -41
          return 0x0000CEE9
        elseif ckYVar == -40
          return 0x0000CECA
        elseif ckYVar == -39
          return 0x0000CEAB
        elseif ckYVar == -38
          return 0x0000CE8C
        elseif ckYVar == -37
          return 0x0000CE6D
        elseif ckYVar == -36
          return 0x0000CE4E
        elseif ckYVar == -35
          return 0x0000CE2F
        elseif ckYVar == -34
          return 0x0000CE10
        elseif ckYVar == -33
          return 0x0000CDF1
        elseif ckYVar == -32
          return 0x00007981
        elseif ckYVar == -31
          return 0x00007980
        elseif ckYVar == -30
          return 0x00007953
        elseif ckYVar == -29
          return 0x00007934
        elseif ckYVar == -28
          return 0x00007915
        elseif ckYVar == -27
          return 0x000078F6
        elseif ckYVar == -26
          return 0x000078D7
        elseif ckYVar == -25
          return 0x000078B8
        elseif ckYVar == -24
          return 0x00007899
        elseif ckYVar == -23
          return 0x0000787A
        elseif ckYVar == -22
          return 0x0000785B
        elseif ckYVar == -21
          return 0x0000783C
        elseif ckYVar == -20
          return 0x0000781D
        elseif ckYVar == -19
          return 0x000077FE
        elseif ckYVar == -18
          return 0x000077DF
        elseif ckYVar == -17
          return 0x000077C0
        elseif ckYVar == -16
          return 0x000077A1
        elseif ckYVar == -15
          return 0x00007782
        elseif ckYVar == -14
          return 0x00007763
        elseif ckYVar == -13
          return 0x00007744
        elseif ckYVar == -12
          return 0x00007725
        elseif ckYVar == -11
          return 0x00007706
        elseif ckYVar == -10
          return 0x000076E7
        elseif ckYVar == -9
          return 0x000076C8
        elseif ckYVar == -8
          return 0x000076A9
        elseif ckYVar == -7
          return 0x0000768A
        elseif ckYVar == -6
          return 0x0000766B
        elseif ckYVar == -5
          return 0x0000764C
        elseif ckYVar == -4
          return 0x0000762D
        elseif ckYVar == -3
          return 0x0000760E
        elseif ckYVar == -2
          return 0x000075EF
        elseif ckYVar == -1
          return 0x000075D0
        elseif ckYVar == 0
          return 0x000075B1
        elseif ckYVar == 1
          return 0x0000717F
        elseif ckYVar == 2
          return 0x00007160
        elseif ckYVar == 3
          return 0x00007141
        elseif ckYVar == 4
          return 0x00007122
        elseif ckYVar == 5
          return 0x00007103
        elseif ckYVar == 6
          return 0x000070E4
        elseif ckYVar == 7
          return 0x000070C5
        elseif ckYVar == 8
          return 0x000070A6
        elseif ckYVar == 9
          return 0x00007087
        elseif ckYVar == 10
          return 0x00007068
        elseif ckYVar == 11
          return 0x00007049
        elseif ckYVar == 12
          return 0x0000702A
        elseif ckYVar == 13
          return 0x0000700B
        elseif ckYVar == 14
          return 0x00006FEC
        elseif ckYVar == 15
          return 0x00006FCD
        elseif ckYVar == 16
          return 0x00006FAE
        elseif ckYVar == 17
          return 0x00006F8F
        elseif ckYVar == 18
          return 0x00006F70
        elseif ckYVar == 19
          return 0x00006F51
        elseif ckYVar == 20
          return 0x00006F32
        elseif ckYVar == 21
          return 0x00006F13
        elseif ckYVar == 22
          return 0x00006EF4
        elseif ckYVar == 23
          return 0x00006ED5
        elseif ckYVar == 24
          return 0x00006EB6
        elseif ckYVar == 25
          return 0x00006E97
        elseif ckYVar == 26
          return 0x00006E78
        elseif ckYVar == 27
          return 0x00006E59
        elseif ckYVar == 28
          return 0x00006E3A
        elseif ckYVar == 29
          return 0x00006E1B
        elseif ckYVar == 30
          return 0x00006DFC
        elseif ckYVar == 31
          return 0x00006DDD
        elseif ckYVar == 32
          return 0x0000196D
        elseif ckYVar == 33
          return 0x0000196C
        elseif ckYVar == 34
          return 0x0000193F
        elseif ckYVar == 35
          return 0x00001920
        elseif ckYVar == 36
          return 0x00001901
        elseif ckYVar == 37
          return 0x000018E2
        elseif ckYVar == 38
          return 0x000018C3
        elseif ckYVar == 39
          return 0x000018A4
        elseif ckYVar == 40
          return 0x00001885
        elseif ckYVar == 41
          return 0x00001866
        elseif ckYVar == 42
          return 0x00001847
        elseif ckYVar == 43
          return 0x00001828
        elseif ckYVar == 44
          return 0x00001809
        elseif ckYVar == 45
          return 0x000017EA
        elseif ckYVar == 46
          return 0x000017CB
        elseif ckYVar == 47
          return 0x000017AC
        elseif ckYVar == 48
          return 0x0000178D
        elseif ckYVar == 49
          return 0x0000176E
        elseif ckYVar == 50
          return 0x0000174F
        endif
      elseif ckXVar == -46
        if ckYVar == -43
          return 0x0000CF26
        elseif ckYVar == -42
          return 0x0000CF07
        elseif ckYVar == -41
          return 0x0000CEE8
        elseif ckYVar == -40
          return 0x0000CEC9
        elseif ckYVar == -39
          return 0x0000CEAA
        elseif ckYVar == -38
          return 0x0000CE8B
        elseif ckYVar == -37
          return 0x0000CE6C
        elseif ckYVar == -36
          return 0x0000CE4D
        elseif ckYVar == -35
          return 0x0000CE2E
        elseif ckYVar == -34
          return 0x0000CE0F
        elseif ckYVar == -33
          return 0x0000CDF0
        elseif ckYVar == -32
          return 0x0000797F
        elseif ckYVar == -31
          return 0x0000797E
        elseif ckYVar == -30
          return 0x00007952
        elseif ckYVar == -29
          return 0x00007933
        elseif ckYVar == -28
          return 0x00007914
        elseif ckYVar == -27
          return 0x000078F5
        elseif ckYVar == -26
          return 0x000078D6
        elseif ckYVar == -25
          return 0x000078B7
        elseif ckYVar == -24
          return 0x00007898
        elseif ckYVar == -23
          return 0x00007879
        elseif ckYVar == -22
          return 0x0000785A
        elseif ckYVar == -21
          return 0x0000783B
        elseif ckYVar == -20
          return 0x0000781C
        elseif ckYVar == -19
          return 0x000077FD
        elseif ckYVar == -18
          return 0x000077DE
        elseif ckYVar == -17
          return 0x000077BF
        elseif ckYVar == -16
          return 0x000077A0
        elseif ckYVar == -15
          return 0x00007781
        elseif ckYVar == -14
          return 0x00007762
        elseif ckYVar == -13
          return 0x00007743
        elseif ckYVar == -12
          return 0x00007724
        elseif ckYVar == -11
          return 0x00007705
        elseif ckYVar == -10
          return 0x000076E6
        elseif ckYVar == -9
          return 0x000076C7
        elseif ckYVar == -8
          return 0x000076A8
        elseif ckYVar == -7
          return 0x00007689
        elseif ckYVar == -6
          return 0x0000766A
        elseif ckYVar == -5
          return 0x0000764B
        elseif ckYVar == -4
          return 0x0000762C
        elseif ckYVar == -3
          return 0x0000760D
        elseif ckYVar == -2
          return 0x000075EE
        elseif ckYVar == -1
          return 0x000075CF
        elseif ckYVar == 0
          return 0x000075B0
        elseif ckYVar == 1
          return 0x0000717E
        elseif ckYVar == 2
          return 0x0000715F
        elseif ckYVar == 3
          return 0x00007140
        elseif ckYVar == 4
          return 0x00007121
        elseif ckYVar == 5
          return 0x00007102
        elseif ckYVar == 6
          return 0x000070E3
        elseif ckYVar == 7
          return 0x000070C4
        elseif ckYVar == 8
          return 0x000070A5
        elseif ckYVar == 9
          return 0x00007086
        elseif ckYVar == 10
          return 0x00007067
        elseif ckYVar == 11
          return 0x00007048
        elseif ckYVar == 12
          return 0x00007029
        elseif ckYVar == 13
          return 0x0000700A
        elseif ckYVar == 14
          return 0x00006FEB
        elseif ckYVar == 15
          return 0x00006FCC
        elseif ckYVar == 16
          return 0x00006FAD
        elseif ckYVar == 17
          return 0x00006F8E
        elseif ckYVar == 18
          return 0x00006F6F
        elseif ckYVar == 19
          return 0x00006F50
        elseif ckYVar == 20
          return 0x00006F31
        elseif ckYVar == 21
          return 0x00006F12
        elseif ckYVar == 22
          return 0x00006EF3
        elseif ckYVar == 23
          return 0x00006ED4
        elseif ckYVar == 24
          return 0x00006EB5
        elseif ckYVar == 25
          return 0x00006E96
        elseif ckYVar == 26
          return 0x00006E77
        elseif ckYVar == 27
          return 0x00006E58
        elseif ckYVar == 28
          return 0x00006E39
        elseif ckYVar == 29
          return 0x00006E1A
        elseif ckYVar == 30
          return 0x00006DFB
        elseif ckYVar == 31
          return 0x00006DDC
        elseif ckYVar == 32
          return 0x0000196B
        elseif ckYVar == 33
          return 0x0000196A
        elseif ckYVar == 34
          return 0x0000193E
        elseif ckYVar == 35
          return 0x0000191F
        elseif ckYVar == 36
          return 0x00001900
        elseif ckYVar == 37
          return 0x000018E1
        elseif ckYVar == 38
          return 0x000018C2
        elseif ckYVar == 39
          return 0x000018A3
        elseif ckYVar == 40
          return 0x00001884
        elseif ckYVar == 41
          return 0x00001865
        elseif ckYVar == 42
          return 0x00001846
        elseif ckYVar == 43
          return 0x00001827
        elseif ckYVar == 44
          return 0x00001808
        elseif ckYVar == 45
          return 0x000017E9
        elseif ckYVar == 46
          return 0x000017CA
        elseif ckYVar == 47
          return 0x000017AB
        elseif ckYVar == 48
          return 0x0000178C
        elseif ckYVar == 49
          return 0x0000176D
        elseif ckYVar == 50
          return 0x0000174E
        endif
      elseif ckXVar == -45
        if ckYVar == -43
          return 0x0000CF25
        elseif ckYVar == -42
          return 0x0000CF06
        elseif ckYVar == -41
          return 0x0000CEE7
        elseif ckYVar == -40
          return 0x0000CEC8
        elseif ckYVar == -39
          return 0x0000CEA9
        elseif ckYVar == -38
          return 0x0000CE8A
        elseif ckYVar == -37
          return 0x0000CE6B
        elseif ckYVar == -36
          return 0x0000CE4C
        elseif ckYVar == -35
          return 0x0000CE2D
        elseif ckYVar == -34
          return 0x0000CE0E
        elseif ckYVar == -33
          return 0x0000CDEF
        elseif ckYVar == -32
          return 0x0000797D
        elseif ckYVar == -31
          return 0x0000797C
        elseif ckYVar == -30
          return 0x00007951
        elseif ckYVar == -29
          return 0x00007932
        elseif ckYVar == -28
          return 0x00007913
        elseif ckYVar == -27
          return 0x000078F4
        elseif ckYVar == -26
          return 0x000078D5
        elseif ckYVar == -25
          return 0x000078B6
        elseif ckYVar == -24
          return 0x00007897
        elseif ckYVar == -23
          return 0x00007878
        elseif ckYVar == -22
          return 0x00007859
        elseif ckYVar == -21
          return 0x0000783A
        elseif ckYVar == -20
          return 0x0000781B
        elseif ckYVar == -19
          return 0x000077FC
        elseif ckYVar == -18
          return 0x000077DD
        elseif ckYVar == -17
          return 0x000077BE
        elseif ckYVar == -16
          return 0x0000779F
        elseif ckYVar == -15
          return 0x00007780
        elseif ckYVar == -14
          return 0x00007761
        elseif ckYVar == -13
          return 0x00007742
        elseif ckYVar == -12
          return 0x00007723
        elseif ckYVar == -11
          return 0x00007704
        elseif ckYVar == -10
          return 0x000076E5
        elseif ckYVar == -9
          return 0x000076C6
        elseif ckYVar == -8
          return 0x000076A7
        elseif ckYVar == -7
          return 0x00007688
        elseif ckYVar == -6
          return 0x00007669
        elseif ckYVar == -5
          return 0x0000764A
        elseif ckYVar == -4
          return 0x0000762B
        elseif ckYVar == -3
          return 0x0000760C
        elseif ckYVar == -2
          return 0x000075ED
        elseif ckYVar == -1
          return 0x000075CE
        elseif ckYVar == 0
          return 0x000075AF
        elseif ckYVar == 1
          return 0x0000717D
        elseif ckYVar == 2
          return 0x0000715E
        elseif ckYVar == 3
          return 0x0000713F
        elseif ckYVar == 4
          return 0x00007120
        elseif ckYVar == 5
          return 0x00007101
        elseif ckYVar == 6
          return 0x000070E2
        elseif ckYVar == 7
          return 0x000070C3
        elseif ckYVar == 8
          return 0x000070A4
        elseif ckYVar == 9
          return 0x00007085
        elseif ckYVar == 10
          return 0x00007066
        elseif ckYVar == 11
          return 0x00007047
        elseif ckYVar == 12
          return 0x00007028
        elseif ckYVar == 13
          return 0x00007009
        elseif ckYVar == 14
          return 0x00006FEA
        elseif ckYVar == 15
          return 0x00006FCB
        elseif ckYVar == 16
          return 0x00006FAC
        elseif ckYVar == 17
          return 0x00006F8D
        elseif ckYVar == 18
          return 0x00006F6E
        elseif ckYVar == 19
          return 0x00006F4F
        elseif ckYVar == 20
          return 0x00006F30
        elseif ckYVar == 21
          return 0x00006F11
        elseif ckYVar == 22
          return 0x00006EF2
        elseif ckYVar == 23
          return 0x00006ED3
        elseif ckYVar == 24
          return 0x00006EB4
        elseif ckYVar == 25
          return 0x00006E95
        elseif ckYVar == 26
          return 0x00006E76
        elseif ckYVar == 27
          return 0x00006E57
        elseif ckYVar == 28
          return 0x00006E38
        elseif ckYVar == 29
          return 0x00006E19
        elseif ckYVar == 30
          return 0x00006DFA
        elseif ckYVar == 31
          return 0x00006DDB
        elseif ckYVar == 32
          return 0x00001969
        elseif ckYVar == 33
          return 0x00001968
        elseif ckYVar == 34
          return 0x0000193D
        elseif ckYVar == 35
          return 0x0000191E
        elseif ckYVar == 36
          return 0x000018FF
        elseif ckYVar == 37
          return 0x000018E0
        elseif ckYVar == 38
          return 0x000018C1
        elseif ckYVar == 39
          return 0x000018A2
        elseif ckYVar == 40
          return 0x00001883
        elseif ckYVar == 41
          return 0x00001864
        elseif ckYVar == 42
          return 0x00001845
        elseif ckYVar == 43
          return 0x00001826
        elseif ckYVar == 44
          return 0x00001807
        elseif ckYVar == 45
          return 0x000017E8
        elseif ckYVar == 46
          return 0x000017C9
        elseif ckYVar == 47
          return 0x000017AA
        elseif ckYVar == 48
          return 0x0000178B
        elseif ckYVar == 49
          return 0x0000176C
        elseif ckYVar == 50
          return 0x0000174D
        endif
      elseif ckXVar == -44
        if ckYVar == -43
          return 0x0000CF24
        elseif ckYVar == -42
          return 0x0000CF05
        elseif ckYVar == -41
          return 0x0000CEE6
        elseif ckYVar == -40
          return 0x0000CEC7
        elseif ckYVar == -39
          return 0x0000CEA8
        elseif ckYVar == -38
          return 0x0000CE89
        elseif ckYVar == -37
          return 0x0000CE6A
        elseif ckYVar == -36
          return 0x0000CE4B
        elseif ckYVar == -35
          return 0x0000CE2C
        elseif ckYVar == -34
          return 0x0000CE0D
        elseif ckYVar == -33
          return 0x0000CDEE
        elseif ckYVar == -32
          return 0x0000797B
        elseif ckYVar == -31
          return 0x0000797A
        elseif ckYVar == -30
          return 0x00007950
        elseif ckYVar == -29
          return 0x00007931
        elseif ckYVar == -28
          return 0x00007912
        elseif ckYVar == -27
          return 0x000078F3
        elseif ckYVar == -26
          return 0x000078D4
        elseif ckYVar == -25
          return 0x000078B5
        elseif ckYVar == -24
          return 0x00007896
        elseif ckYVar == -23
          return 0x00007877
        elseif ckYVar == -22
          return 0x00007858
        elseif ckYVar == -21
          return 0x00007839
        elseif ckYVar == -20
          return 0x0000781A
        elseif ckYVar == -19
          return 0x000077FB
        elseif ckYVar == -18
          return 0x000077DC
        elseif ckYVar == -17
          return 0x000077BD
        elseif ckYVar == -16
          return 0x0000779E
        elseif ckYVar == -15
          return 0x0000777F
        elseif ckYVar == -14
          return 0x00007760
        elseif ckYVar == -13
          return 0x00007741
        elseif ckYVar == -12
          return 0x00007722
        elseif ckYVar == -11
          return 0x00007703
        elseif ckYVar == -10
          return 0x000076E4
        elseif ckYVar == -9
          return 0x000076C5
        elseif ckYVar == -8
          return 0x000076A6
        elseif ckYVar == -7
          return 0x00007687
        elseif ckYVar == -6
          return 0x00007668
        elseif ckYVar == -5
          return 0x00007649
        elseif ckYVar == -4
          return 0x0000762A
        elseif ckYVar == -3
          return 0x0000760B
        elseif ckYVar == -2
          return 0x000075EC
        elseif ckYVar == -1
          return 0x000075CD
        elseif ckYVar == 0
          return 0x000075AE
        elseif ckYVar == 1
          return 0x0000717C
        elseif ckYVar == 2
          return 0x0000715D
        elseif ckYVar == 3
          return 0x0000713E
        elseif ckYVar == 4
          return 0x0000711F
        elseif ckYVar == 5
          return 0x00007100
        elseif ckYVar == 6
          return 0x000070E1
        elseif ckYVar == 7
          return 0x000070C2
        elseif ckYVar == 8
          return 0x000070A3
        elseif ckYVar == 9
          return 0x00007084
        elseif ckYVar == 10
          return 0x00007065
        elseif ckYVar == 11
          return 0x00007046
        elseif ckYVar == 12
          return 0x00007027
        elseif ckYVar == 13
          return 0x00007008
        elseif ckYVar == 14
          return 0x00006FE9
        elseif ckYVar == 15
          return 0x00006FCA
        elseif ckYVar == 16
          return 0x00006FAB
        elseif ckYVar == 17
          return 0x00006F8C
        elseif ckYVar == 18
          return 0x00006F6D
        elseif ckYVar == 19
          return 0x00006F4E
        elseif ckYVar == 20
          return 0x00006F2F
        elseif ckYVar == 21
          return 0x00006F10
        elseif ckYVar == 22
          return 0x00006EF1
        elseif ckYVar == 23
          return 0x00006ED2
        elseif ckYVar == 24
          return 0x00006EB3
        elseif ckYVar == 25
          return 0x00006E94
        elseif ckYVar == 26
          return 0x00006E75
        elseif ckYVar == 27
          return 0x00006E56
        elseif ckYVar == 28
          return 0x00006E37
        elseif ckYVar == 29
          return 0x00006E18
        elseif ckYVar == 30
          return 0x00006DF9
        elseif ckYVar == 31
          return 0x00006DDA
        elseif ckYVar == 32
          return 0x00001967
        elseif ckYVar == 33
          return 0x00001966
        elseif ckYVar == 34
          return 0x0000193C
        elseif ckYVar == 35
          return 0x0000191D
        elseif ckYVar == 36
          return 0x000018FE
        elseif ckYVar == 37
          return 0x000018DF
        elseif ckYVar == 38
          return 0x000018C0
        elseif ckYVar == 39
          return 0x000018A1
        elseif ckYVar == 40
          return 0x00001882
        elseif ckYVar == 41
          return 0x00001863
        elseif ckYVar == 42
          return 0x00001844
        elseif ckYVar == 43
          return 0x00001825
        elseif ckYVar == 44
          return 0x00001806
        elseif ckYVar == 45
          return 0x000017E7
        elseif ckYVar == 46
          return 0x000017C8
        elseif ckYVar == 47
          return 0x000017A9
        elseif ckYVar == 48
          return 0x0000178A
        elseif ckYVar == 49
          return 0x0000176B
        elseif ckYVar == 50
          return 0x0000174C
        endif
      elseif ckXVar == -43
        if ckYVar == -43
          return 0x0000CF23
        elseif ckYVar == -42
          return 0x0000CF04
        elseif ckYVar == -41
          return 0x0000CEE5
        elseif ckYVar == -40
          return 0x0000CEC6
        elseif ckYVar == -39
          return 0x0000CEA7
        elseif ckYVar == -38
          return 0x0000CE88
        elseif ckYVar == -37
          return 0x0000CE69
        elseif ckYVar == -36
          return 0x0000CE4A
        elseif ckYVar == -35
          return 0x0000CE2B
        elseif ckYVar == -34
          return 0x0000CE0C
        elseif ckYVar == -33
          return 0x0000CDED
        elseif ckYVar == -32
          return 0x00007979
        elseif ckYVar == -31
          return 0x00007978
        elseif ckYVar == -30
          return 0x0000794F
        elseif ckYVar == -29
          return 0x00007930
        elseif ckYVar == -28
          return 0x00007911
        elseif ckYVar == -27
          return 0x000078F2
        elseif ckYVar == -26
          return 0x000078D3
        elseif ckYVar == -25
          return 0x000078B4
        elseif ckYVar == -24
          return 0x00007895
        elseif ckYVar == -23
          return 0x00007876
        elseif ckYVar == -22
          return 0x00007857
        elseif ckYVar == -21
          return 0x00007838
        elseif ckYVar == -20
          return 0x00007819
        elseif ckYVar == -19
          return 0x000077FA
        elseif ckYVar == -18
          return 0x000077DB
        elseif ckYVar == -17
          return 0x000077BC
        elseif ckYVar == -16
          return 0x0000779D
        elseif ckYVar == -15
          return 0x0000777E
        elseif ckYVar == -14
          return 0x0000775F
        elseif ckYVar == -13
          return 0x00007740
        elseif ckYVar == -12
          return 0x00007721
        elseif ckYVar == -11
          return 0x00007702
        elseif ckYVar == -10
          return 0x000076E3
        elseif ckYVar == -9
          return 0x000076C4
        elseif ckYVar == -8
          return 0x000076A5
        elseif ckYVar == -7
          return 0x00007686
        elseif ckYVar == -6
          return 0x00007667
        elseif ckYVar == -5
          return 0x00007648
        elseif ckYVar == -4
          return 0x00007629
        elseif ckYVar == -3
          return 0x0000760A
        elseif ckYVar == -2
          return 0x000075EB
        elseif ckYVar == -1
          return 0x000075CC
        elseif ckYVar == 0
          return 0x000075AD
        elseif ckYVar == 1
          return 0x0000717B
        elseif ckYVar == 2
          return 0x0000715C
        elseif ckYVar == 3
          return 0x0000713D
        elseif ckYVar == 4
          return 0x0000711E
        elseif ckYVar == 5
          return 0x000070FF
        elseif ckYVar == 6
          return 0x000070E0
        elseif ckYVar == 7
          return 0x000070C1
        elseif ckYVar == 8
          return 0x000070A2
        elseif ckYVar == 9
          return 0x00007083
        elseif ckYVar == 10
          return 0x00007064
        elseif ckYVar == 11
          return 0x00007045
        elseif ckYVar == 12
          return 0x00007026
        elseif ckYVar == 13
          return 0x00007007
        elseif ckYVar == 14
          return 0x00006FE8
        elseif ckYVar == 15
          return 0x00006FC9
        elseif ckYVar == 16
          return 0x00006FAA
        elseif ckYVar == 17
          return 0x00006F8B
        elseif ckYVar == 18
          return 0x00006F6C
        elseif ckYVar == 19
          return 0x00006F4D
        elseif ckYVar == 20
          return 0x00006F2E
        elseif ckYVar == 21
          return 0x00006F0F
        elseif ckYVar == 22
          return 0x00006EF0
        elseif ckYVar == 23
          return 0x00006ED1
        elseif ckYVar == 24
          return 0x00006EB2
        elseif ckYVar == 25
          return 0x00006E93
        elseif ckYVar == 26
          return 0x00006E74
        elseif ckYVar == 27
          return 0x00006E55
        elseif ckYVar == 28
          return 0x00006E36
        elseif ckYVar == 29
          return 0x00006E17
        elseif ckYVar == 30
          return 0x00006DF8
        elseif ckYVar == 31
          return 0x00006DD9
        elseif ckYVar == 32
          return 0x00001965
        elseif ckYVar == 33
          return 0x00001964
        elseif ckYVar == 34
          return 0x0000193B
        elseif ckYVar == 35
          return 0x0000191C
        elseif ckYVar == 36
          return 0x000018FD
        elseif ckYVar == 37
          return 0x000018DE
        elseif ckYVar == 38
          return 0x000018BF
        elseif ckYVar == 39
          return 0x000018A0
        elseif ckYVar == 40
          return 0x00001881
        elseif ckYVar == 41
          return 0x00001862
        elseif ckYVar == 42
          return 0x00001843
        elseif ckYVar == 43
          return 0x00001824
        elseif ckYVar == 44
          return 0x00001805
        elseif ckYVar == 45
          return 0x000017E6
        elseif ckYVar == 46
          return 0x000017C7
        elseif ckYVar == 47
          return 0x000017A8
        elseif ckYVar == 48
          return 0x00001789
        elseif ckYVar == 49
          return 0x0000176A
        elseif ckYVar == 50
          return 0x0000174B
        endif
      elseif ckXVar == -42
        if ckYVar == -43
          return 0x0000CF22
        elseif ckYVar == -42
          return 0x0000CF03
        elseif ckYVar == -41
          return 0x0000CEE4
        elseif ckYVar == -40
          return 0x0000CEC5
        elseif ckYVar == -39
          return 0x0000CEA6
        elseif ckYVar == -38
          return 0x0000CE87
        elseif ckYVar == -37
          return 0x0000CE68
        elseif ckYVar == -36
          return 0x0000CE49
        elseif ckYVar == -35
          return 0x0000CE2A
        elseif ckYVar == -34
          return 0x0000CE0B
        elseif ckYVar == -33
          return 0x0000CDEC
        elseif ckYVar == -32
          return 0x00007977
        elseif ckYVar == -31
          return 0x00007976
        elseif ckYVar == -30
          return 0x0000794E
        elseif ckYVar == -29
          return 0x0000792F
        elseif ckYVar == -28
          return 0x00007910
        elseif ckYVar == -27
          return 0x000078F1
        elseif ckYVar == -26
          return 0x000078D2
        elseif ckYVar == -25
          return 0x000078B3
        elseif ckYVar == -24
          return 0x00007894
        elseif ckYVar == -23
          return 0x00007875
        elseif ckYVar == -22
          return 0x00007856
        elseif ckYVar == -21
          return 0x00007837
        elseif ckYVar == -20
          return 0x00007818
        elseif ckYVar == -19
          return 0x000077F9
        elseif ckYVar == -18
          return 0x000077DA
        elseif ckYVar == -17
          return 0x000077BB
        elseif ckYVar == -16
          return 0x0000779C
        elseif ckYVar == -15
          return 0x0000777D
        elseif ckYVar == -14
          return 0x0000775E
        elseif ckYVar == -13
          return 0x0000773F
        elseif ckYVar == -12
          return 0x00007720
        elseif ckYVar == -11
          return 0x00007701
        elseif ckYVar == -10
          return 0x000076E2
        elseif ckYVar == -9
          return 0x000076C3
        elseif ckYVar == -8
          return 0x000076A4
        elseif ckYVar == -7
          return 0x00007685
        elseif ckYVar == -6
          return 0x00007666
        elseif ckYVar == -5
          return 0x00007647
        elseif ckYVar == -4
          return 0x00007628
        elseif ckYVar == -3
          return 0x00007609
        elseif ckYVar == -2
          return 0x000075EA
        elseif ckYVar == -1
          return 0x000075CB
        elseif ckYVar == 0
          return 0x000075AC
        elseif ckYVar == 1
          return 0x0000717A
        elseif ckYVar == 2
          return 0x0000715B
        elseif ckYVar == 3
          return 0x0000713C
        elseif ckYVar == 4
          return 0x0000711D
        elseif ckYVar == 5
          return 0x000070FE
        elseif ckYVar == 6
          return 0x000070DF
        elseif ckYVar == 7
          return 0x000070C0
        elseif ckYVar == 8
          return 0x000070A1
        elseif ckYVar == 9
          return 0x00007082
        elseif ckYVar == 10
          return 0x00007063
        elseif ckYVar == 11
          return 0x00007044
        elseif ckYVar == 12
          return 0x00007025
        elseif ckYVar == 13
          return 0x00007006
        elseif ckYVar == 14
          return 0x00006FE7
        elseif ckYVar == 15
          return 0x00006FC8
        elseif ckYVar == 16
          return 0x00006FA9
        elseif ckYVar == 17
          return 0x00006F8A
        elseif ckYVar == 18
          return 0x00006F6B
        elseif ckYVar == 19
          return 0x00006F4C
        elseif ckYVar == 20
          return 0x00006F2D
        elseif ckYVar == 21
          return 0x00006F0E
        elseif ckYVar == 22
          return 0x00006EEF
        elseif ckYVar == 23
          return 0x00006ED0
        elseif ckYVar == 24
          return 0x00006EB1
        elseif ckYVar == 25
          return 0x00006E92
        elseif ckYVar == 26
          return 0x00006E73
        elseif ckYVar == 27
          return 0x00006E54
        elseif ckYVar == 28
          return 0x00006E35
        elseif ckYVar == 29
          return 0x00006E16
        elseif ckYVar == 30
          return 0x00006DF7
        elseif ckYVar == 31
          return 0x00006DD8
        elseif ckYVar == 32
          return 0x00001963
        elseif ckYVar == 33
          return 0x00001962
        elseif ckYVar == 34
          return 0x0000193A
        elseif ckYVar == 35
          return 0x0000191B
        elseif ckYVar == 36
          return 0x000018FC
        elseif ckYVar == 37
          return 0x000018DD
        elseif ckYVar == 38
          return 0x000018BE
        elseif ckYVar == 39
          return 0x0000189F
        elseif ckYVar == 40
          return 0x00001880
        elseif ckYVar == 41
          return 0x00001861
        elseif ckYVar == 42
          return 0x00001842
        elseif ckYVar == 43
          return 0x00001823
        elseif ckYVar == 44
          return 0x00001804
        elseif ckYVar == 45
          return 0x000017E5
        elseif ckYVar == 46
          return 0x000017C6
        elseif ckYVar == 47
          return 0x000017A7
        elseif ckYVar == 48
          return 0x00001788
        elseif ckYVar == 49
          return 0x00001769
        elseif ckYVar == 50
          return 0x0000174A
        endif
      elseif ckXVar == -41
        if ckYVar == -43
          return 0x0000CF21
        elseif ckYVar == -42
          return 0x0000CF02
        elseif ckYVar == -41
          return 0x0000CEE3
        elseif ckYVar == -40
          return 0x0000CEC4
        elseif ckYVar == -39
          return 0x0000CEA5
        elseif ckYVar == -38
          return 0x0000CE86
        elseif ckYVar == -37
          return 0x0000CE67
        elseif ckYVar == -36
          return 0x0000CE48
        elseif ckYVar == -35
          return 0x0000CE29
        elseif ckYVar == -34
          return 0x0000CE0A
        elseif ckYVar == -33
          return 0x0000CDEB
        elseif ckYVar == -32
          return 0x00007975
        elseif ckYVar == -31
          return 0x00007974
        elseif ckYVar == -30
          return 0x0000794D
        elseif ckYVar == -29
          return 0x0000792E
        elseif ckYVar == -28
          return 0x0000790F
        elseif ckYVar == -27
          return 0x000078F0
        elseif ckYVar == -26
          return 0x000078D1
        elseif ckYVar == -25
          return 0x000078B2
        elseif ckYVar == -24
          return 0x00007893
        elseif ckYVar == -23
          return 0x00007874
        elseif ckYVar == -22
          return 0x00007855
        elseif ckYVar == -21
          return 0x00007836
        elseif ckYVar == -20
          return 0x00007817
        elseif ckYVar == -19
          return 0x000077F8
        elseif ckYVar == -18
          return 0x000077D9
        elseif ckYVar == -17
          return 0x000077BA
        elseif ckYVar == -16
          return 0x0000779B
        elseif ckYVar == -15
          return 0x0000777C
        elseif ckYVar == -14
          return 0x0000775D
        elseif ckYVar == -13
          return 0x0000773E
        elseif ckYVar == -12
          return 0x0000771F
        elseif ckYVar == -11
          return 0x00007700
        elseif ckYVar == -10
          return 0x000076E1
        elseif ckYVar == -9
          return 0x000076C2
        elseif ckYVar == -8
          return 0x000076A3
        elseif ckYVar == -7
          return 0x00007684
        elseif ckYVar == -6
          return 0x00007665
        elseif ckYVar == -5
          return 0x00007646
        elseif ckYVar == -4
          return 0x00007627
        elseif ckYVar == -3
          return 0x00007608
        elseif ckYVar == -2
          return 0x000075E9
        elseif ckYVar == -1
          return 0x000075CA
        elseif ckYVar == 0
          return 0x000075AB
        elseif ckYVar == 1
          return 0x00007179
        elseif ckYVar == 2
          return 0x0000715A
        elseif ckYVar == 3
          return 0x0000713B
        elseif ckYVar == 4
          return 0x0000711C
        elseif ckYVar == 5
          return 0x000070FD
        elseif ckYVar == 6
          return 0x000070DE
        elseif ckYVar == 7
          return 0x000070BF
        elseif ckYVar == 8
          return 0x000070A0
        elseif ckYVar == 9
          return 0x00007081
        elseif ckYVar == 10
          return 0x00007062
        elseif ckYVar == 11
          return 0x00007043
        elseif ckYVar == 12
          return 0x00007024
        elseif ckYVar == 13
          return 0x00007005
        elseif ckYVar == 14
          return 0x00006FE6
        elseif ckYVar == 15
          return 0x00006FC7
        elseif ckYVar == 16
          return 0x00006FA8
        elseif ckYVar == 17
          return 0x00006F89
        elseif ckYVar == 18
          return 0x00006F6A
        elseif ckYVar == 19
          return 0x00006F4B
        elseif ckYVar == 20
          return 0x00006F2C
        elseif ckYVar == 21
          return 0x00006F0D
        elseif ckYVar == 22
          return 0x00006EEE
        elseif ckYVar == 23
          return 0x00006ECF
        elseif ckYVar == 24
          return 0x00006EB0
        elseif ckYVar == 25
          return 0x00006E91
        elseif ckYVar == 26
          return 0x00006E72
        elseif ckYVar == 27
          return 0x00006E53
        elseif ckYVar == 28
          return 0x00006E34
        elseif ckYVar == 29
          return 0x00006E15
        elseif ckYVar == 30
          return 0x00006DF6
        elseif ckYVar == 31
          return 0x00006DD7
        elseif ckYVar == 32
          return 0x00001961
        elseif ckYVar == 33
          return 0x00001960
        elseif ckYVar == 34
          return 0x00001939
        elseif ckYVar == 35
          return 0x0000191A
        elseif ckYVar == 36
          return 0x000018FB
        elseif ckYVar == 37
          return 0x000018DC
        elseif ckYVar == 38
          return 0x000018BD
        elseif ckYVar == 39
          return 0x0000189E
        elseif ckYVar == 40
          return 0x0000187F
        elseif ckYVar == 41
          return 0x00001860
        elseif ckYVar == 42
          return 0x00001841
        elseif ckYVar == 43
          return 0x00001822
        elseif ckYVar == 44
          return 0x00001803
        elseif ckYVar == 45
          return 0x000017E4
        elseif ckYVar == 46
          return 0x000017C5
        elseif ckYVar == 47
          return 0x000017A6
        elseif ckYVar == 48
          return 0x00001787
        elseif ckYVar == 49
          return 0x00001768
        elseif ckYVar == 50
          return 0x00001749
        endif
      elseif ckXVar == -40
        if ckYVar == -43
          return 0x0000CF20
        elseif ckYVar == -42
          return 0x0000CF01
        elseif ckYVar == -41
          return 0x0000CEE2
        elseif ckYVar == -40
          return 0x0000CEC3
        elseif ckYVar == -39
          return 0x0000CEA4
        elseif ckYVar == -38
          return 0x0000CE85
        elseif ckYVar == -37
          return 0x0000CE66
        elseif ckYVar == -36
          return 0x0000CE47
        elseif ckYVar == -35
          return 0x0000CE28
        elseif ckYVar == -34
          return 0x0000CE09
        elseif ckYVar == -33
          return 0x0000CDEA
        elseif ckYVar == -32
          return 0x00007973
        elseif ckYVar == -31
          return 0x00007972
        elseif ckYVar == -30
          return 0x0000794C
        elseif ckYVar == -29
          return 0x0000792D
        elseif ckYVar == -28
          return 0x0000790E
        elseif ckYVar == -27
          return 0x000078EF
        elseif ckYVar == -26
          return 0x000078D0
        elseif ckYVar == -25
          return 0x000078B1
        elseif ckYVar == -24
          return 0x00007892
        elseif ckYVar == -23
          return 0x00007873
        elseif ckYVar == -22
          return 0x00007854
        elseif ckYVar == -21
          return 0x00007835
        elseif ckYVar == -20
          return 0x00007816
        elseif ckYVar == -19
          return 0x000077F7
        elseif ckYVar == -18
          return 0x000077D8
        elseif ckYVar == -17
          return 0x000077B9
        elseif ckYVar == -16
          return 0x0000779A
        elseif ckYVar == -15
          return 0x0000777B
        elseif ckYVar == -14
          return 0x0000775C
        elseif ckYVar == -13
          return 0x0000773D
        elseif ckYVar == -12
          return 0x0000771E
        elseif ckYVar == -11
          return 0x000076FF
        elseif ckYVar == -10
          return 0x000076E0
        elseif ckYVar == -9
          return 0x000076C1
        elseif ckYVar == -8
          return 0x000076A2
        elseif ckYVar == -7
          return 0x00007683
        elseif ckYVar == -6
          return 0x00007664
        elseif ckYVar == -5
          return 0x00007645
        elseif ckYVar == -4
          return 0x00007626
        elseif ckYVar == -3
          return 0x00007607
        elseif ckYVar == -2
          return 0x000075E8
        elseif ckYVar == -1
          return 0x000075C9
        elseif ckYVar == 0
          return 0x000075AA
        elseif ckYVar == 1
          return 0x00007178
        elseif ckYVar == 2
          return 0x00007159
        elseif ckYVar == 3
          return 0x0000713A
        elseif ckYVar == 4
          return 0x0000711B
        elseif ckYVar == 5
          return 0x000070FC
        elseif ckYVar == 6
          return 0x000070DD
        elseif ckYVar == 7
          return 0x000070BE
        elseif ckYVar == 8
          return 0x0000709F
        elseif ckYVar == 9
          return 0x00007080
        elseif ckYVar == 10
          return 0x00007061
        elseif ckYVar == 11
          return 0x00007042
        elseif ckYVar == 12
          return 0x00007023
        elseif ckYVar == 13
          return 0x00007004
        elseif ckYVar == 14
          return 0x00006FE5
        elseif ckYVar == 15
          return 0x00006FC6
        elseif ckYVar == 16
          return 0x00006FA7
        elseif ckYVar == 17
          return 0x00006F88
        elseif ckYVar == 18
          return 0x00006F69
        elseif ckYVar == 19
          return 0x00006F4A
        elseif ckYVar == 20
          return 0x00006F2B
        elseif ckYVar == 21
          return 0x00006F0C
        elseif ckYVar == 22
          return 0x00006EED
        elseif ckYVar == 23
          return 0x00006ECE
        elseif ckYVar == 24
          return 0x00006EAF
        elseif ckYVar == 25
          return 0x00006E90
        elseif ckYVar == 26
          return 0x00006E71
        elseif ckYVar == 27
          return 0x00006E52
        elseif ckYVar == 28
          return 0x00006E33
        elseif ckYVar == 29
          return 0x00006E14
        elseif ckYVar == 30
          return 0x00006DF5
        elseif ckYVar == 31
          return 0x00006DD6
        elseif ckYVar == 32
          return 0x0000195F
        elseif ckYVar == 33
          return 0x0000195E
        elseif ckYVar == 34
          return 0x00001938
        elseif ckYVar == 35
          return 0x00001919
        elseif ckYVar == 36
          return 0x000018FA
        elseif ckYVar == 37
          return 0x000018DB
        elseif ckYVar == 38
          return 0x000018BC
        elseif ckYVar == 39
          return 0x0000189D
        elseif ckYVar == 40
          return 0x0000187E
        elseif ckYVar == 41
          return 0x0000185F
        elseif ckYVar == 42
          return 0x00001840
        elseif ckYVar == 43
          return 0x00001821
        elseif ckYVar == 44
          return 0x00001802
        elseif ckYVar == 45
          return 0x000017E3
        elseif ckYVar == 46
          return 0x000017C4
        elseif ckYVar == 47
          return 0x000017A5
        elseif ckYVar == 48
          return 0x00001786
        elseif ckYVar == 49
          return 0x00001767
        elseif ckYVar == 50
          return 0x00001748
        endif
      endif
    elseif ckXVar <= -30
      if ckXVar == -39
        if ckYVar == -43
          return 0x0000CF1F
        elseif ckYVar == -42
          return 0x0000CF00
        elseif ckYVar == -41
          return 0x0000CEE1
        elseif ckYVar == -40
          return 0x0000CEC2
        elseif ckYVar == -39
          return 0x0000CEA3
        elseif ckYVar == -38
          return 0x0000CE84
        elseif ckYVar == -37
          return 0x0000CE65
        elseif ckYVar == -36
          return 0x0000CE46
        elseif ckYVar == -35
          return 0x0000CE27
        elseif ckYVar == -34
          return 0x0000CE08
        elseif ckYVar == -33
          return 0x0000CDE9
        elseif ckYVar == -32
          return 0x00007971
        elseif ckYVar == -31
          return 0x00007970
        elseif ckYVar == -30
          return 0x0000794B
        elseif ckYVar == -29
          return 0x0000792C
        elseif ckYVar == -28
          return 0x0000790D
        elseif ckYVar == -27
          return 0x000078EE
        elseif ckYVar == -26
          return 0x000078CF
        elseif ckYVar == -25
          return 0x000078B0
        elseif ckYVar == -24
          return 0x00007891
        elseif ckYVar == -23
          return 0x00007872
        elseif ckYVar == -22
          return 0x00007853
        elseif ckYVar == -21
          return 0x00007834
        elseif ckYVar == -20
          return 0x00007815
        elseif ckYVar == -19
          return 0x000077F6
        elseif ckYVar == -18
          return 0x000077D7
        elseif ckYVar == -17
          return 0x000077B8
        elseif ckYVar == -16
          return 0x00007799
        elseif ckYVar == -15
          return 0x0000777A
        elseif ckYVar == -14
          return 0x0000775B
        elseif ckYVar == -13
          return 0x0000773C
        elseif ckYVar == -12
          return 0x0000771D
        elseif ckYVar == -11
          return 0x000076FE
        elseif ckYVar == -10
          return 0x000076DF
        elseif ckYVar == -9
          return 0x000076C0
        elseif ckYVar == -8
          return 0x000076A1
        elseif ckYVar == -7
          return 0x00007682
        elseif ckYVar == -6
          return 0x00007663
        elseif ckYVar == -5
          return 0x00007644
        elseif ckYVar == -4
          return 0x00007625
        elseif ckYVar == -3
          return 0x00007606
        elseif ckYVar == -2
          return 0x000075E7
        elseif ckYVar == -1
          return 0x000075C8
        elseif ckYVar == 0
          return 0x000075A9
        elseif ckYVar == 1
          return 0x00007177
        elseif ckYVar == 2
          return 0x00007158
        elseif ckYVar == 3
          return 0x00007139
        elseif ckYVar == 4
          return 0x0000711A
        elseif ckYVar == 5
          return 0x000070FB
        elseif ckYVar == 6
          return 0x000070DC
        elseif ckYVar == 7
          return 0x000070BD
        elseif ckYVar == 8
          return 0x0000709E
        elseif ckYVar == 9
          return 0x0000707F
        elseif ckYVar == 10
          return 0x00007060
        elseif ckYVar == 11
          return 0x00007041
        elseif ckYVar == 12
          return 0x00007022
        elseif ckYVar == 13
          return 0x00007003
        elseif ckYVar == 14
          return 0x00006FE4
        elseif ckYVar == 15
          return 0x00006FC5
        elseif ckYVar == 16
          return 0x00006FA6
        elseif ckYVar == 17
          return 0x00006F87
        elseif ckYVar == 18
          return 0x00006F68
        elseif ckYVar == 19
          return 0x00006F49
        elseif ckYVar == 20
          return 0x00006F2A
        elseif ckYVar == 21
          return 0x00006F0B
        elseif ckYVar == 22
          return 0x00006EEC
        elseif ckYVar == 23
          return 0x00006ECD
        elseif ckYVar == 24
          return 0x00006EAE
        elseif ckYVar == 25
          return 0x00006E8F
        elseif ckYVar == 26
          return 0x00006E70
        elseif ckYVar == 27
          return 0x00006E51
        elseif ckYVar == 28
          return 0x00006E32
        elseif ckYVar == 29
          return 0x00006E13
        elseif ckYVar == 30
          return 0x00006DF4
        elseif ckYVar == 31
          return 0x00006DD5
        elseif ckYVar == 32
          return 0x0000195D
        elseif ckYVar == 33
          return 0x0000195C
        elseif ckYVar == 34
          return 0x00001937
        elseif ckYVar == 35
          return 0x00001918
        elseif ckYVar == 36
          return 0x000018F9
        elseif ckYVar == 37
          return 0x000018DA
        elseif ckYVar == 38
          return 0x000018BB
        elseif ckYVar == 39
          return 0x0000189C
        elseif ckYVar == 40
          return 0x0000187D
        elseif ckYVar == 41
          return 0x0000185E
        elseif ckYVar == 42
          return 0x0000183F
        elseif ckYVar == 43
          return 0x00001820
        elseif ckYVar == 44
          return 0x00001801
        elseif ckYVar == 45
          return 0x000017E2
        elseif ckYVar == 46
          return 0x000017C3
        elseif ckYVar == 47
          return 0x000017A4
        elseif ckYVar == 48
          return 0x00001785
        elseif ckYVar == 49
          return 0x00001766
        elseif ckYVar == 50
          return 0x00001747
        endif
      elseif ckXVar == -38
        if ckYVar == -43
          return 0x0000CF1E
        elseif ckYVar == -42
          return 0x0000CEFF
        elseif ckYVar == -41
          return 0x0000CEE0
        elseif ckYVar == -40
          return 0x0000CEC1
        elseif ckYVar == -39
          return 0x0000CEA2
        elseif ckYVar == -38
          return 0x0000CE83
        elseif ckYVar == -37
          return 0x0000CE64
        elseif ckYVar == -36
          return 0x0000CE45
        elseif ckYVar == -35
          return 0x0000CE26
        elseif ckYVar == -34
          return 0x0000CE07
        elseif ckYVar == -33
          return 0x0000CDE8
        elseif ckYVar == -32
          return 0x0000796F
        elseif ckYVar == -31
          return 0x0000796E
        elseif ckYVar == -30
          return 0x0000794A
        elseif ckYVar == -29
          return 0x0000792B
        elseif ckYVar == -28
          return 0x0000790C
        elseif ckYVar == -27
          return 0x000078ED
        elseif ckYVar == -26
          return 0x000078CE
        elseif ckYVar == -25
          return 0x000078AF
        elseif ckYVar == -24
          return 0x00007890
        elseif ckYVar == -23
          return 0x00007871
        elseif ckYVar == -22
          return 0x00007852
        elseif ckYVar == -21
          return 0x00007833
        elseif ckYVar == -20
          return 0x00007814
        elseif ckYVar == -19
          return 0x000077F5
        elseif ckYVar == -18
          return 0x000077D6
        elseif ckYVar == -17
          return 0x000077B7
        elseif ckYVar == -16
          return 0x00007798
        elseif ckYVar == -15
          return 0x00007779
        elseif ckYVar == -14
          return 0x0000775A
        elseif ckYVar == -13
          return 0x0000773B
        elseif ckYVar == -12
          return 0x0000771C
        elseif ckYVar == -11
          return 0x000076FD
        elseif ckYVar == -10
          return 0x000076DE
        elseif ckYVar == -9
          return 0x000076BF
        elseif ckYVar == -8
          return 0x000076A0
        elseif ckYVar == -7
          return 0x00007681
        elseif ckYVar == -6
          return 0x00007662
        elseif ckYVar == -5
          return 0x00007643
        elseif ckYVar == -4
          return 0x00007624
        elseif ckYVar == -3
          return 0x00007605
        elseif ckYVar == -2
          return 0x000075E6
        elseif ckYVar == -1
          return 0x000075C7
        elseif ckYVar == 0
          return 0x000075A8
        elseif ckYVar == 1
          return 0x00007176
        elseif ckYVar == 2
          return 0x00007157
        elseif ckYVar == 3
          return 0x00007138
        elseif ckYVar == 4
          return 0x00007119
        elseif ckYVar == 5
          return 0x000070FA
        elseif ckYVar == 6
          return 0x000070DB
        elseif ckYVar == 7
          return 0x000070BC
        elseif ckYVar == 8
          return 0x0000709D
        elseif ckYVar == 9
          return 0x0000707E
        elseif ckYVar == 10
          return 0x0000705F
        elseif ckYVar == 11
          return 0x00007040
        elseif ckYVar == 12
          return 0x00007021
        elseif ckYVar == 13
          return 0x00007002
        elseif ckYVar == 14
          return 0x00006FE3
        elseif ckYVar == 15
          return 0x00006FC4
        elseif ckYVar == 16
          return 0x00006FA5
        elseif ckYVar == 17
          return 0x00006F86
        elseif ckYVar == 18
          return 0x00006F67
        elseif ckYVar == 19
          return 0x00006F48
        elseif ckYVar == 20
          return 0x00006F29
        elseif ckYVar == 21
          return 0x00006F0A
        elseif ckYVar == 22
          return 0x00006EEB
        elseif ckYVar == 23
          return 0x00006ECC
        elseif ckYVar == 24
          return 0x00006EAD
        elseif ckYVar == 25
          return 0x00006E8E
        elseif ckYVar == 26
          return 0x00006E6F
        elseif ckYVar == 27
          return 0x00006E50
        elseif ckYVar == 28
          return 0x00006E31
        elseif ckYVar == 29
          return 0x00006E12
        elseif ckYVar == 30
          return 0x00006DF3
        elseif ckYVar == 31
          return 0x00006DD4
        elseif ckYVar == 32
          return 0x0000195B
        elseif ckYVar == 33
          return 0x0000195A
        elseif ckYVar == 34
          return 0x00001936
        elseif ckYVar == 35
          return 0x00001917
        elseif ckYVar == 36
          return 0x000018F8
        elseif ckYVar == 37
          return 0x000018D9
        elseif ckYVar == 38
          return 0x000018BA
        elseif ckYVar == 39
          return 0x0000189B
        elseif ckYVar == 40
          return 0x0000187C
        elseif ckYVar == 41
          return 0x0000185D
        elseif ckYVar == 42
          return 0x0000183E
        elseif ckYVar == 43
          return 0x0000181F
        elseif ckYVar == 44
          return 0x00001800
        elseif ckYVar == 45
          return 0x000017E1
        elseif ckYVar == 46
          return 0x000017C2
        elseif ckYVar == 47
          return 0x000017A3
        elseif ckYVar == 48
          return 0x00001784
        elseif ckYVar == 49
          return 0x00001765
        elseif ckYVar == 50
          return 0x00001746
        endif
      elseif ckXVar == -37
        if ckYVar == -43
          return 0x0000CF1D
        elseif ckYVar == -42
          return 0x0000CEFE
        elseif ckYVar == -41
          return 0x0000CEDF
        elseif ckYVar == -40
          return 0x0000CEC0
        elseif ckYVar == -39
          return 0x0000CEA1
        elseif ckYVar == -38
          return 0x0000CE82
        elseif ckYVar == -37
          return 0x0000CE63
        elseif ckYVar == -36
          return 0x0000CE44
        elseif ckYVar == -35
          return 0x0000CE25
        elseif ckYVar == -34
          return 0x0000CE06
        elseif ckYVar == -33
          return 0x0000CDE7
        elseif ckYVar == -32
          return 0x0000796D
        elseif ckYVar == -31
          return 0x0000796C
        elseif ckYVar == -30
          return 0x00007949
        elseif ckYVar == -29
          return 0x0000792A
        elseif ckYVar == -28
          return 0x0000790B
        elseif ckYVar == -27
          return 0x000078EC
        elseif ckYVar == -26
          return 0x000078CD
        elseif ckYVar == -25
          return 0x000078AE
        elseif ckYVar == -24
          return 0x0000788F
        elseif ckYVar == -23
          return 0x00007870
        elseif ckYVar == -22
          return 0x00007851
        elseif ckYVar == -21
          return 0x00007832
        elseif ckYVar == -20
          return 0x00007813
        elseif ckYVar == -19
          return 0x000077F4
        elseif ckYVar == -18
          return 0x000077D5
        elseif ckYVar == -17
          return 0x000077B6
        elseif ckYVar == -16
          return 0x00007797
        elseif ckYVar == -15
          return 0x00007778
        elseif ckYVar == -14
          return 0x00007759
        elseif ckYVar == -13
          return 0x0000773A
        elseif ckYVar == -12
          return 0x0000771B
        elseif ckYVar == -11
          return 0x000076FC
        elseif ckYVar == -10
          return 0x000076DD
        elseif ckYVar == -9
          return 0x000076BE
        elseif ckYVar == -8
          return 0x0000769F
        elseif ckYVar == -7
          return 0x00007680
        elseif ckYVar == -6
          return 0x00007661
        elseif ckYVar == -5
          return 0x00007642
        elseif ckYVar == -4
          return 0x00007623
        elseif ckYVar == -3
          return 0x00007604
        elseif ckYVar == -2
          return 0x000075E5
        elseif ckYVar == -1
          return 0x000075C6
        elseif ckYVar == 0
          return 0x000075A7
        elseif ckYVar == 1
          return 0x00007175
        elseif ckYVar == 2
          return 0x00007156
        elseif ckYVar == 3
          return 0x00007137
        elseif ckYVar == 4
          return 0x00007118
        elseif ckYVar == 5
          return 0x000070F9
        elseif ckYVar == 6
          return 0x000070DA
        elseif ckYVar == 7
          return 0x000070BB
        elseif ckYVar == 8
          return 0x0000709C
        elseif ckYVar == 9
          return 0x0000707D
        elseif ckYVar == 10
          return 0x0000705E
        elseif ckYVar == 11
          return 0x0000703F
        elseif ckYVar == 12
          return 0x00007020
        elseif ckYVar == 13
          return 0x00007001
        elseif ckYVar == 14
          return 0x00006FE2
        elseif ckYVar == 15
          return 0x00006FC3
        elseif ckYVar == 16
          return 0x00006FA4
        elseif ckYVar == 17
          return 0x00006F85
        elseif ckYVar == 18
          return 0x00006F66
        elseif ckYVar == 19
          return 0x00006F47
        elseif ckYVar == 20
          return 0x00006F28
        elseif ckYVar == 21
          return 0x00006F09
        elseif ckYVar == 22
          return 0x00006EEA
        elseif ckYVar == 23
          return 0x00006ECB
        elseif ckYVar == 24
          return 0x00006EAC
        elseif ckYVar == 25
          return 0x00006E8D
        elseif ckYVar == 26
          return 0x00006E6E
        elseif ckYVar == 27
          return 0x00006E4F
        elseif ckYVar == 28
          return 0x00006E30
        elseif ckYVar == 29
          return 0x00006E11
        elseif ckYVar == 30
          return 0x00006DF2
        elseif ckYVar == 31
          return 0x00006DD3
        elseif ckYVar == 32
          return 0x00001959
        elseif ckYVar == 33
          return 0x00001958
        elseif ckYVar == 34
          return 0x00001935
        elseif ckYVar == 35
          return 0x00001916
        elseif ckYVar == 36
          return 0x000018F7
        elseif ckYVar == 37
          return 0x000018D8
        elseif ckYVar == 38
          return 0x000018B9
        elseif ckYVar == 39
          return 0x0000189A
        elseif ckYVar == 40
          return 0x0000187B
        elseif ckYVar == 41
          return 0x0000185C
        elseif ckYVar == 42
          return 0x0000183D
        elseif ckYVar == 43
          return 0x0000181E
        elseif ckYVar == 44
          return 0x000017FF
        elseif ckYVar == 45
          return 0x000017E0
        elseif ckYVar == 46
          return 0x000017C1
        elseif ckYVar == 47
          return 0x000017A2
        elseif ckYVar == 48
          return 0x00001783
        elseif ckYVar == 49
          return 0x00001764
        elseif ckYVar == 50
          return 0x00001745
        endif
      elseif ckXVar == -36
        if ckYVar == -43
          return 0x0000CF1C
        elseif ckYVar == -42
          return 0x0000CEFD
        elseif ckYVar == -41
          return 0x0000CEDE
        elseif ckYVar == -40
          return 0x0000CEBF
        elseif ckYVar == -39
          return 0x0000CEA0
        elseif ckYVar == -38
          return 0x0000CE81
        elseif ckYVar == -37
          return 0x0000CE62
        elseif ckYVar == -36
          return 0x0000CE43
        elseif ckYVar == -35
          return 0x0000CE24
        elseif ckYVar == -34
          return 0x0000CE05
        elseif ckYVar == -33
          return 0x0000CDE6
        elseif ckYVar == -32
          return 0x0000796B
        elseif ckYVar == -31
          return 0x0000796A
        elseif ckYVar == -30
          return 0x00007948
        elseif ckYVar == -29
          return 0x00007929
        elseif ckYVar == -28
          return 0x0000790A
        elseif ckYVar == -27
          return 0x000078EB
        elseif ckYVar == -26
          return 0x000078CC
        elseif ckYVar == -25
          return 0x000078AD
        elseif ckYVar == -24
          return 0x0000788E
        elseif ckYVar == -23
          return 0x0000786F
        elseif ckYVar == -22
          return 0x00007850
        elseif ckYVar == -21
          return 0x00007831
        elseif ckYVar == -20
          return 0x00007812
        elseif ckYVar == -19
          return 0x000077F3
        elseif ckYVar == -18
          return 0x000077D4
        elseif ckYVar == -17
          return 0x000077B5
        elseif ckYVar == -16
          return 0x00007796
        elseif ckYVar == -15
          return 0x00007777
        elseif ckYVar == -14
          return 0x00007758
        elseif ckYVar == -13
          return 0x00007739
        elseif ckYVar == -12
          return 0x0000771A
        elseif ckYVar == -11
          return 0x000076FB
        elseif ckYVar == -10
          return 0x000076DC
        elseif ckYVar == -9
          return 0x000076BD
        elseif ckYVar == -8
          return 0x0000769E
        elseif ckYVar == -7
          return 0x0000767F
        elseif ckYVar == -6
          return 0x00007660
        elseif ckYVar == -5
          return 0x00007641
        elseif ckYVar == -4
          return 0x00007622
        elseif ckYVar == -3
          return 0x00007603
        elseif ckYVar == -2
          return 0x000075E4
        elseif ckYVar == -1
          return 0x000075C5
        elseif ckYVar == 0
          return 0x000075A6
        elseif ckYVar == 1
          return 0x00007174
        elseif ckYVar == 2
          return 0x00007155
        elseif ckYVar == 3
          return 0x00007136
        elseif ckYVar == 4
          return 0x00007117
        elseif ckYVar == 5
          return 0x000070F8
        elseif ckYVar == 6
          return 0x000070D9
        elseif ckYVar == 7
          return 0x000070BA
        elseif ckYVar == 8
          return 0x0000709B
        elseif ckYVar == 9
          return 0x0000707C
        elseif ckYVar == 10
          return 0x0000705D
        elseif ckYVar == 11
          return 0x0000703E
        elseif ckYVar == 12
          return 0x0000701F
        elseif ckYVar == 13
          return 0x00007000
        elseif ckYVar == 14
          return 0x00006FE1
        elseif ckYVar == 15
          return 0x00006FC2
        elseif ckYVar == 16
          return 0x00006FA3
        elseif ckYVar == 17
          return 0x00006F84
        elseif ckYVar == 18
          return 0x00006F65
        elseif ckYVar == 19
          return 0x00006F46
        elseif ckYVar == 20
          return 0x00006F27
        elseif ckYVar == 21
          return 0x00006F08
        elseif ckYVar == 22
          return 0x00006EE9
        elseif ckYVar == 23
          return 0x00006ECA
        elseif ckYVar == 24
          return 0x00006EAB
        elseif ckYVar == 25
          return 0x00006E8C
        elseif ckYVar == 26
          return 0x00006E6D
        elseif ckYVar == 27
          return 0x00006E4E
        elseif ckYVar == 28
          return 0x00006E2F
        elseif ckYVar == 29
          return 0x00006E10
        elseif ckYVar == 30
          return 0x00006DF1
        elseif ckYVar == 31
          return 0x00006DD2
        elseif ckYVar == 32
          return 0x00001957
        elseif ckYVar == 33
          return 0x00001956
        elseif ckYVar == 34
          return 0x00001934
        elseif ckYVar == 35
          return 0x00001915
        elseif ckYVar == 36
          return 0x000018F6
        elseif ckYVar == 37
          return 0x000018D7
        elseif ckYVar == 38
          return 0x000018B8
        elseif ckYVar == 39
          return 0x00001899
        elseif ckYVar == 40
          return 0x0000187A
        elseif ckYVar == 41
          return 0x0000185B
        elseif ckYVar == 42
          return 0x0000183C
        elseif ckYVar == 43
          return 0x0000181D
        elseif ckYVar == 44
          return 0x000017FE
        elseif ckYVar == 45
          return 0x000017DF
        elseif ckYVar == 46
          return 0x000017C0
        elseif ckYVar == 47
          return 0x000017A1
        elseif ckYVar == 48
          return 0x00001782
        elseif ckYVar == 49
          return 0x00001763
        elseif ckYVar == 50
          return 0x00001744
        endif
      elseif ckXVar == -35
        if ckYVar == -43
          return 0x0000CF1B
        elseif ckYVar == -42
          return 0x0000CEFC
        elseif ckYVar == -41
          return 0x0000CEDD
        elseif ckYVar == -40
          return 0x0000CEBE
        elseif ckYVar == -39
          return 0x0000CE9F
        elseif ckYVar == -38
          return 0x0000CE80
        elseif ckYVar == -37
          return 0x0000CE61
        elseif ckYVar == -36
          return 0x0000CE42
        elseif ckYVar == -35
          return 0x0000CE23
        elseif ckYVar == -34
          return 0x0000CE04
        elseif ckYVar == -33
          return 0x0000CDE5
        elseif ckYVar == -32
          return 0x00007969
        elseif ckYVar == -31
          return 0x00007968
        elseif ckYVar == -30
          return 0x00007947
        elseif ckYVar == -29
          return 0x00007928
        elseif ckYVar == -28
          return 0x00007909
        elseif ckYVar == -27
          return 0x000078EA
        elseif ckYVar == -26
          return 0x000078CB
        elseif ckYVar == -25
          return 0x000078AC
        elseif ckYVar == -24
          return 0x0000788D
        elseif ckYVar == -23
          return 0x0000786E
        elseif ckYVar == -22
          return 0x0000784F
        elseif ckYVar == -21
          return 0x00007830
        elseif ckYVar == -20
          return 0x00007811
        elseif ckYVar == -19
          return 0x000077F2
        elseif ckYVar == -18
          return 0x000077D3
        elseif ckYVar == -17
          return 0x000077B4
        elseif ckYVar == -16
          return 0x00007795
        elseif ckYVar == -15
          return 0x00007776
        elseif ckYVar == -14
          return 0x00007757
        elseif ckYVar == -13
          return 0x00007738
        elseif ckYVar == -12
          return 0x00007719
        elseif ckYVar == -11
          return 0x000076FA
        elseif ckYVar == -10
          return 0x000076DB
        elseif ckYVar == -9
          return 0x000076BC
        elseif ckYVar == -8
          return 0x0000769D
        elseif ckYVar == -7
          return 0x0000767E
        elseif ckYVar == -6
          return 0x0000765F
        elseif ckYVar == -5
          return 0x00007640
        elseif ckYVar == -4
          return 0x00007621
        elseif ckYVar == -3
          return 0x00007602
        elseif ckYVar == -2
          return 0x000075E3
        elseif ckYVar == -1
          return 0x000075C4
        elseif ckYVar == 0
          return 0x000075A5
        elseif ckYVar == 1
          return 0x00007173
        elseif ckYVar == 2
          return 0x00007154
        elseif ckYVar == 3
          return 0x00007135
        elseif ckYVar == 4
          return 0x00007116
        elseif ckYVar == 5
          return 0x000070F7
        elseif ckYVar == 6
          return 0x000070D8
        elseif ckYVar == 7
          return 0x000070B9
        elseif ckYVar == 8
          return 0x0000709A
        elseif ckYVar == 9
          return 0x0000707B
        elseif ckYVar == 10
          return 0x0000705C
        elseif ckYVar == 11
          return 0x0000703D
        elseif ckYVar == 12
          return 0x0000701E
        elseif ckYVar == 13
          return 0x00006FFF
        elseif ckYVar == 14
          return 0x00006FE0
        elseif ckYVar == 15
          return 0x00006FC1
        elseif ckYVar == 16
          return 0x00006FA2
        elseif ckYVar == 17
          return 0x00006F83
        elseif ckYVar == 18
          return 0x00006F64
        elseif ckYVar == 19
          return 0x00006F45
        elseif ckYVar == 20
          return 0x00006F26
        elseif ckYVar == 21
          return 0x00006F07
        elseif ckYVar == 22
          return 0x00006EE8
        elseif ckYVar == 23
          return 0x00006EC9
        elseif ckYVar == 24
          return 0x00006EAA
        elseif ckYVar == 25
          return 0x00006E8B
        elseif ckYVar == 26
          return 0x00006E6C
        elseif ckYVar == 27
          return 0x00006E4D
        elseif ckYVar == 28
          return 0x00006E2E
        elseif ckYVar == 29
          return 0x00006E0F
        elseif ckYVar == 30
          return 0x00006DF0
        elseif ckYVar == 31
          return 0x00006DD1
        elseif ckYVar == 32
          return 0x00001955
        elseif ckYVar == 33
          return 0x00001954
        elseif ckYVar == 34
          return 0x00001933
        elseif ckYVar == 35
          return 0x00001914
        elseif ckYVar == 36
          return 0x000018F5
        elseif ckYVar == 37
          return 0x000018D6
        elseif ckYVar == 38
          return 0x000018B7
        elseif ckYVar == 39
          return 0x00001898
        elseif ckYVar == 40
          return 0x00001879
        elseif ckYVar == 41
          return 0x0000185A
        elseif ckYVar == 42
          return 0x0000183B
        elseif ckYVar == 43
          return 0x0000181C
        elseif ckYVar == 44
          return 0x000017FD
        elseif ckYVar == 45
          return 0x000017DE
        elseif ckYVar == 46
          return 0x000017BF
        elseif ckYVar == 47
          return 0x000017A0
        elseif ckYVar == 48
          return 0x00001781
        elseif ckYVar == 49
          return 0x00001762
        elseif ckYVar == 50
          return 0x00001743
        endif
      elseif ckXVar == -34
        if ckYVar == -43
          return 0x0000CF1A
        elseif ckYVar == -42
          return 0x0000CEFB
        elseif ckYVar == -41
          return 0x0000CEDC
        elseif ckYVar == -40
          return 0x0000CEBD
        elseif ckYVar == -39
          return 0x0000CE9E
        elseif ckYVar == -38
          return 0x0000CE7F
        elseif ckYVar == -37
          return 0x0000CE60
        elseif ckYVar == -36
          return 0x0000CE41
        elseif ckYVar == -35
          return 0x0000CE22
        elseif ckYVar == -34
          return 0x0000CE03
        elseif ckYVar == -33
          return 0x0000CDE4
        elseif ckYVar == -32
          return 0x00007967
        elseif ckYVar == -31
          return 0x00007966
        elseif ckYVar == -30
          return 0x00007946
        elseif ckYVar == -29
          return 0x00007927
        elseif ckYVar == -28
          return 0x00007908
        elseif ckYVar == -27
          return 0x000078E9
        elseif ckYVar == -26
          return 0x000078CA
        elseif ckYVar == -25
          return 0x000078AB
        elseif ckYVar == -24
          return 0x0000788C
        elseif ckYVar == -23
          return 0x0000786D
        elseif ckYVar == -22
          return 0x0000784E
        elseif ckYVar == -21
          return 0x0000782F
        elseif ckYVar == -20
          return 0x00007810
        elseif ckYVar == -19
          return 0x000077F1
        elseif ckYVar == -18
          return 0x000077D2
        elseif ckYVar == -17
          return 0x000077B3
        elseif ckYVar == -16
          return 0x00007794
        elseif ckYVar == -15
          return 0x00007775
        elseif ckYVar == -14
          return 0x00007756
        elseif ckYVar == -13
          return 0x00007737
        elseif ckYVar == -12
          return 0x00007718
        elseif ckYVar == -11
          return 0x000076F9
        elseif ckYVar == -10
          return 0x000076DA
        elseif ckYVar == -9
          return 0x000076BB
        elseif ckYVar == -8
          return 0x0000769C
        elseif ckYVar == -7
          return 0x0000767D
        elseif ckYVar == -6
          return 0x0000765E
        elseif ckYVar == -5
          return 0x0000763F
        elseif ckYVar == -4
          return 0x00007620
        elseif ckYVar == -3
          return 0x00007601
        elseif ckYVar == -2
          return 0x000075E2
        elseif ckYVar == -1
          return 0x000075C3
        elseif ckYVar == 0
          return 0x000075A4
        elseif ckYVar == 1
          return 0x00007172
        elseif ckYVar == 2
          return 0x00007153
        elseif ckYVar == 3
          return 0x00007134
        elseif ckYVar == 4
          return 0x00007115
        elseif ckYVar == 5
          return 0x000070F6
        elseif ckYVar == 6
          return 0x000070D7
        elseif ckYVar == 7
          return 0x000070B8
        elseif ckYVar == 8
          return 0x00007099
        elseif ckYVar == 9
          return 0x0000707A
        elseif ckYVar == 10
          return 0x0000705B
        elseif ckYVar == 11
          return 0x0000703C
        elseif ckYVar == 12
          return 0x0000701D
        elseif ckYVar == 13
          return 0x00006FFE
        elseif ckYVar == 14
          return 0x00006FDF
        elseif ckYVar == 15
          return 0x00006FC0
        elseif ckYVar == 16
          return 0x00006FA1
        elseif ckYVar == 17
          return 0x00006F82
        elseif ckYVar == 18
          return 0x00006F63
        elseif ckYVar == 19
          return 0x00006F44
        elseif ckYVar == 20
          return 0x00006F25
        elseif ckYVar == 21
          return 0x00006F06
        elseif ckYVar == 22
          return 0x00006EE7
        elseif ckYVar == 23
          return 0x00006EC8
        elseif ckYVar == 24
          return 0x00006EA9
        elseif ckYVar == 25
          return 0x00006E8A
        elseif ckYVar == 26
          return 0x00006E6B
        elseif ckYVar == 27
          return 0x00006E4C
        elseif ckYVar == 28
          return 0x00006E2D
        elseif ckYVar == 29
          return 0x00006E0E
        elseif ckYVar == 30
          return 0x00006DEF
        elseif ckYVar == 31
          return 0x00006DD0
        elseif ckYVar == 32
          return 0x00001953
        elseif ckYVar == 33
          return 0x00001952
        elseif ckYVar == 34
          return 0x00001932
        elseif ckYVar == 35
          return 0x00001913
        elseif ckYVar == 36
          return 0x000018F4
        elseif ckYVar == 37
          return 0x000018D5
        elseif ckYVar == 38
          return 0x000018B6
        elseif ckYVar == 39
          return 0x00001897
        elseif ckYVar == 40
          return 0x00001878
        elseif ckYVar == 41
          return 0x00001859
        elseif ckYVar == 42
          return 0x0000183A
        elseif ckYVar == 43
          return 0x0000181B
        elseif ckYVar == 44
          return 0x000017FC
        elseif ckYVar == 45
          return 0x000017DD
        elseif ckYVar == 46
          return 0x000017BE
        elseif ckYVar == 47
          return 0x0000179F
        elseif ckYVar == 48
          return 0x00001780
        elseif ckYVar == 49
          return 0x00001761
        elseif ckYVar == 50
          return 0x00001742
        endif
      elseif ckXVar == -33
        if ckYVar == -43
          return 0x0000CF19
        elseif ckYVar == -42
          return 0x0000CEFA
        elseif ckYVar == -41
          return 0x0000CEDB
        elseif ckYVar == -40
          return 0x0000CEBC
        elseif ckYVar == -39
          return 0x0000CE9D
        elseif ckYVar == -38
          return 0x0000CE7E
        elseif ckYVar == -37
          return 0x0000CE5F
        elseif ckYVar == -36
          return 0x0000CE40
        elseif ckYVar == -35
          return 0x0000CE21
        elseif ckYVar == -34
          return 0x0000CE02
        elseif ckYVar == -33
          return 0x0000CDE3
        elseif ckYVar == -32
          return 0x00007965
        elseif ckYVar == -31
          return 0x00007964
        elseif ckYVar == -30
          return 0x00007945
        elseif ckYVar == -29
          return 0x00007926
        elseif ckYVar == -28
          return 0x00007907
        elseif ckYVar == -27
          return 0x000078E8
        elseif ckYVar == -26
          return 0x000078C9
        elseif ckYVar == -25
          return 0x000078AA
        elseif ckYVar == -24
          return 0x0000788B
        elseif ckYVar == -23
          return 0x0000786C
        elseif ckYVar == -22
          return 0x0000784D
        elseif ckYVar == -21
          return 0x0000782E
        elseif ckYVar == -20
          return 0x0000780F
        elseif ckYVar == -19
          return 0x000077F0
        elseif ckYVar == -18
          return 0x000077D1
        elseif ckYVar == -17
          return 0x000077B2
        elseif ckYVar == -16
          return 0x00007793
        elseif ckYVar == -15
          return 0x00007774
        elseif ckYVar == -14
          return 0x00007755
        elseif ckYVar == -13
          return 0x00007736
        elseif ckYVar == -12
          return 0x00007717
        elseif ckYVar == -11
          return 0x000076F8
        elseif ckYVar == -10
          return 0x000076D9
        elseif ckYVar == -9
          return 0x000076BA
        elseif ckYVar == -8
          return 0x0000769B
        elseif ckYVar == -7
          return 0x0000767C
        elseif ckYVar == -6
          return 0x0000765D
        elseif ckYVar == -5
          return 0x0000763E
        elseif ckYVar == -4
          return 0x0000761F
        elseif ckYVar == -3
          return 0x00007600
        elseif ckYVar == -2
          return 0x000075E1
        elseif ckYVar == -1
          return 0x000075C2
        elseif ckYVar == 0
          return 0x000075A3
        elseif ckYVar == 1
          return 0x00007171
        elseif ckYVar == 2
          return 0x00007152
        elseif ckYVar == 3
          return 0x00007133
        elseif ckYVar == 4
          return 0x00007114
        elseif ckYVar == 5
          return 0x000070F5
        elseif ckYVar == 6
          return 0x000070D6
        elseif ckYVar == 7
          return 0x000070B7
        elseif ckYVar == 8
          return 0x00007098
        elseif ckYVar == 9
          return 0x00007079
        elseif ckYVar == 10
          return 0x0000705A
        elseif ckYVar == 11
          return 0x0000703B
        elseif ckYVar == 12
          return 0x0000701C
        elseif ckYVar == 13
          return 0x00006FFD
        elseif ckYVar == 14
          return 0x00006FDE
        elseif ckYVar == 15
          return 0x00006FBF
        elseif ckYVar == 16
          return 0x00006FA0
        elseif ckYVar == 17
          return 0x00006F81
        elseif ckYVar == 18
          return 0x00006F62
        elseif ckYVar == 19
          return 0x00006F43
        elseif ckYVar == 20
          return 0x00006F24
        elseif ckYVar == 21
          return 0x00006F05
        elseif ckYVar == 22
          return 0x00006EE6
        elseif ckYVar == 23
          return 0x00006EC7
        elseif ckYVar == 24
          return 0x00006EA8
        elseif ckYVar == 25
          return 0x00006E89
        elseif ckYVar == 26
          return 0x00006E6A
        elseif ckYVar == 27
          return 0x00006E4B
        elseif ckYVar == 28
          return 0x00006E2C
        elseif ckYVar == 29
          return 0x00006E0D
        elseif ckYVar == 30
          return 0x00006DEE
        elseif ckYVar == 31
          return 0x00006DCF
        elseif ckYVar == 32
          return 0x00001951
        elseif ckYVar == 33
          return 0x00001950
        elseif ckYVar == 34
          return 0x00001931
        elseif ckYVar == 35
          return 0x00001912
        elseif ckYVar == 36
          return 0x000018F3
        elseif ckYVar == 37
          return 0x000018D4
        elseif ckYVar == 38
          return 0x000018B5
        elseif ckYVar == 39
          return 0x00001896
        elseif ckYVar == 40
          return 0x00001877
        elseif ckYVar == 41
          return 0x00001858
        elseif ckYVar == 42
          return 0x00001839
        elseif ckYVar == 43
          return 0x0000181A
        elseif ckYVar == 44
          return 0x000017FB
        elseif ckYVar == 45
          return 0x000017DC
        elseif ckYVar == 46
          return 0x000017BD
        elseif ckYVar == 47
          return 0x0000179E
        elseif ckYVar == 48
          return 0x0000177F
        elseif ckYVar == 49
          return 0x00001760
        elseif ckYVar == 50
          return 0x00001741
        endif
      elseif ckXVar == -32
        if ckYVar == -43
          return 0x0000F30E
        elseif ckYVar == -42
          return 0x0000F2ED
        elseif ckYVar == -41
          return 0x0000F2CC
        elseif ckYVar == -40
          return 0x0000F2AB
        elseif ckYVar == -39
          return 0x0000F28A
        elseif ckYVar == -38
          return 0x0000F269
        elseif ckYVar == -37
          return 0x0000F248
        elseif ckYVar == -36
          return 0x0000F227
        elseif ckYVar == -35
          return 0x0000F206
        elseif ckYVar == -34
          return 0x0000F1E5
        elseif ckYVar == -33
          return 0x0000F1C4
        elseif ckYVar == -32
          return 0x00009DE2
        elseif ckYVar == -31
          return 0x00009DE0
        elseif ckYVar == -30
          return 0x00009DA0
        elseif ckYVar == -29
          return 0x00009D7F
        elseif ckYVar == -28
          return 0x00009D5E
        elseif ckYVar == -27
          return 0x00009D3D
        elseif ckYVar == -26
          return 0x00009D1C
        elseif ckYVar == -25
          return 0x00009CFB
        elseif ckYVar == -24
          return 0x00009CDA
        elseif ckYVar == -23
          return 0x00009CB9
        elseif ckYVar == -22
          return 0x00009C98
        elseif ckYVar == -21
          return 0x00009C77
        elseif ckYVar == -20
          return 0x00009C56
        elseif ckYVar == -19
          return 0x00009C35
        elseif ckYVar == -18
          return 0x00009C14
        elseif ckYVar == -17
          return 0x00009BF3
        elseif ckYVar == -16
          return 0x00009BD2
        elseif ckYVar == -15
          return 0x00009BB1
        elseif ckYVar == -14
          return 0x00009B90
        elseif ckYVar == -13
          return 0x00009B6F
        elseif ckYVar == -12
          return 0x00009B4E
        elseif ckYVar == -11
          return 0x00009B2D
        elseif ckYVar == -10
          return 0x00009B0C
        elseif ckYVar == -9
          return 0x00009AEB
        elseif ckYVar == -8
          return 0x00009ACA
        elseif ckYVar == -7
          return 0x00009AA9
        elseif ckYVar == -6
          return 0x00009A88
        elseif ckYVar == -5
          return 0x00009A67
        elseif ckYVar == -4
          return 0x00009A46
        elseif ckYVar == -3
          return 0x00009A25
        elseif ckYVar == -2
          return 0x00009A04
        elseif ckYVar == -1
          return 0x000099E3
        elseif ckYVar == 0
          return 0x000099C2
        elseif ckYVar == 1
          return 0x000095A2
        elseif ckYVar == 2
          return 0x00009581
        elseif ckYVar == 3
          return 0x00009560
        elseif ckYVar == 4
          return 0x0000953F
        elseif ckYVar == 5
          return 0x0000951E
        elseif ckYVar == 6
          return 0x000094FD
        elseif ckYVar == 7
          return 0x000094DC
        elseif ckYVar == 8
          return 0x000094BB
        elseif ckYVar == 9
          return 0x0000949A
        elseif ckYVar == 10
          return 0x00009479
        elseif ckYVar == 11
          return 0x00009458
        elseif ckYVar == 12
          return 0x00009437
        elseif ckYVar == 13
          return 0x00009416
        elseif ckYVar == 14
          return 0x000093F5
        elseif ckYVar == 15
          return 0x000093D4
        elseif ckYVar == 16
          return 0x000093B3
        elseif ckYVar == 17
          return 0x00009392
        elseif ckYVar == 18
          return 0x00009371
        elseif ckYVar == 19
          return 0x00009350
        elseif ckYVar == 20
          return 0x0000932F
        elseif ckYVar == 21
          return 0x0000930E
        elseif ckYVar == 22
          return 0x000092ED
        elseif ckYVar == 23
          return 0x000092CC
        elseif ckYVar == 24
          return 0x000092AB
        elseif ckYVar == 25
          return 0x0000928A
        elseif ckYVar == 26
          return 0x00009269
        elseif ckYVar == 27
          return 0x00009248
        elseif ckYVar == 28
          return 0x00009227
        elseif ckYVar == 29
          return 0x00009206
        elseif ckYVar == 30
          return 0x000091E5
        elseif ckYVar == 31
          return 0x000091C4
        elseif ckYVar == 32
          return 0x00003DCE
        elseif ckYVar == 33
          return 0x00003DCC
        elseif ckYVar == 34
          return 0x00003D8C
        elseif ckYVar == 35
          return 0x00003D6B
        elseif ckYVar == 36
          return 0x00003D4A
        elseif ckYVar == 37
          return 0x00003D29
        elseif ckYVar == 38
          return 0x00003D08
        elseif ckYVar == 39
          return 0x00003CE7
        elseif ckYVar == 40
          return 0x00003CC6
        elseif ckYVar == 41
          return 0x00003CA5
        elseif ckYVar == 42
          return 0x00003C84
        elseif ckYVar == 43
          return 0x00003C63
        elseif ckYVar == 44
          return 0x00003C42
        elseif ckYVar == 45
          return 0x00003C21
        elseif ckYVar == 46
          return 0x00003C00
        elseif ckYVar == 47
          return 0x00003BDF
        elseif ckYVar == 48
          return 0x00003BBE
        elseif ckYVar == 49
          return 0x00003B9D
        elseif ckYVar == 50
          return 0x00003B7C
        endif
      elseif ckXVar == -31
        if ckYVar == -43
          return 0x0000F30D
        elseif ckYVar == -42
          return 0x0000F2EC
        elseif ckYVar == -41
          return 0x0000F2CB
        elseif ckYVar == -40
          return 0x0000F2AA
        elseif ckYVar == -39
          return 0x0000F289
        elseif ckYVar == -38
          return 0x0000F268
        elseif ckYVar == -37
          return 0x0000F247
        elseif ckYVar == -36
          return 0x0000F226
        elseif ckYVar == -35
          return 0x0000F205
        elseif ckYVar == -34
          return 0x0000F1E4
        elseif ckYVar == -33
          return 0x0000F1C3
        elseif ckYVar == -32
          return 0x00009DE1
        elseif ckYVar == -31
          return 0x00009DDF
        elseif ckYVar == -30
          return 0x00009D9F
        elseif ckYVar == -29
          return 0x00009D7E
        elseif ckYVar == -28
          return 0x00009D5D
        elseif ckYVar == -27
          return 0x00009D3C
        elseif ckYVar == -26
          return 0x00009D1B
        elseif ckYVar == -25
          return 0x00009CFA
        elseif ckYVar == -24
          return 0x00009CD9
        elseif ckYVar == -23
          return 0x00009CB8
        elseif ckYVar == -22
          return 0x00009C97
        elseif ckYVar == -21
          return 0x00009C76
        elseif ckYVar == -20
          return 0x00009C55
        elseif ckYVar == -19
          return 0x00009C34
        elseif ckYVar == -18
          return 0x00009C13
        elseif ckYVar == -17
          return 0x00009BF2
        elseif ckYVar == -16
          return 0x00009BD1
        elseif ckYVar == -15
          return 0x00009BB0
        elseif ckYVar == -14
          return 0x00009B8F
        elseif ckYVar == -13
          return 0x00009B6E
        elseif ckYVar == -12
          return 0x00009B4D
        elseif ckYVar == -11
          return 0x00009B2C
        elseif ckYVar == -10
          return 0x00009B0B
        elseif ckYVar == -9
          return 0x00009AEA
        elseif ckYVar == -8
          return 0x00009AC9
        elseif ckYVar == -7
          return 0x00009AA8
        elseif ckYVar == -6
          return 0x00009A87
        elseif ckYVar == -5
          return 0x00009A66
        elseif ckYVar == -4
          return 0x00009A45
        elseif ckYVar == -3
          return 0x00009A24
        elseif ckYVar == -2
          return 0x00009A03
        elseif ckYVar == -1
          return 0x000099E2
        elseif ckYVar == 0
          return 0x000099C1
        elseif ckYVar == 1
          return 0x000095A1
        elseif ckYVar == 2
          return 0x00009580
        elseif ckYVar == 3
          return 0x0000955F
        elseif ckYVar == 4
          return 0x0000953E
        elseif ckYVar == 5
          return 0x0000951D
        elseif ckYVar == 6
          return 0x000094FC
        elseif ckYVar == 7
          return 0x000094DB
        elseif ckYVar == 8
          return 0x000094BA
        elseif ckYVar == 9
          return 0x00009499
        elseif ckYVar == 10
          return 0x00009478
        elseif ckYVar == 11
          return 0x00009457
        elseif ckYVar == 12
          return 0x00009436
        elseif ckYVar == 13
          return 0x00009415
        elseif ckYVar == 14
          return 0x000093F4
        elseif ckYVar == 15
          return 0x000093D3
        elseif ckYVar == 16
          return 0x000093B2
        elseif ckYVar == 17
          return 0x00009391
        elseif ckYVar == 18
          return 0x00009370
        elseif ckYVar == 19
          return 0x0000934F
        elseif ckYVar == 20
          return 0x0000932E
        elseif ckYVar == 21
          return 0x0000930D
        elseif ckYVar == 22
          return 0x000092EC
        elseif ckYVar == 23
          return 0x000092CB
        elseif ckYVar == 24
          return 0x000092AA
        elseif ckYVar == 25
          return 0x00009289
        elseif ckYVar == 26
          return 0x00009268
        elseif ckYVar == 27
          return 0x00009247
        elseif ckYVar == 28
          return 0x00009226
        elseif ckYVar == 29
          return 0x00009205
        elseif ckYVar == 30
          return 0x000091E4
        elseif ckYVar == 31
          return 0x000091C3
        elseif ckYVar == 32
          return 0x00003DCD
        elseif ckYVar == 33
          return 0x00003DCB
        elseif ckYVar == 34
          return 0x00003D8B
        elseif ckYVar == 35
          return 0x00003D6A
        elseif ckYVar == 36
          return 0x00003D49
        elseif ckYVar == 37
          return 0x00003D28
        elseif ckYVar == 38
          return 0x00003D07
        elseif ckYVar == 39
          return 0x00003CE6
        elseif ckYVar == 40
          return 0x00003CC5
        elseif ckYVar == 41
          return 0x00003CA4
        elseif ckYVar == 42
          return 0x00003C83
        elseif ckYVar == 43
          return 0x00003C62
        elseif ckYVar == 44
          return 0x00003C41
        elseif ckYVar == 45
          return 0x00003C20
        elseif ckYVar == 46
          return 0x00003BFF
        elseif ckYVar == 47
          return 0x00003BDE
        elseif ckYVar == 48
          return 0x00003BBD
        elseif ckYVar == 49
          return 0x00003B9C
        elseif ckYVar == 50
          return 0x00003B7B
        endif
      elseif ckXVar == -30
        if ckYVar == -43
          return 0x0000F30C
        elseif ckYVar == -42
          return 0x0000F2EB
        elseif ckYVar == -41
          return 0x0000F2CA
        elseif ckYVar == -40
          return 0x0000F2A9
        elseif ckYVar == -39
          return 0x0000F288
        elseif ckYVar == -38
          return 0x0000F267
        elseif ckYVar == -37
          return 0x0000F246
        elseif ckYVar == -36
          return 0x0000F225
        elseif ckYVar == -35
          return 0x0000F204
        elseif ckYVar == -34
          return 0x0000F1E3
        elseif ckYVar == -33
          return 0x0000F1C2
        elseif ckYVar == -32
          return 0x00009DDE
        elseif ckYVar == -31
          return 0x00009DDD
        elseif ckYVar == -30
          return 0x00009D9E
        elseif ckYVar == -29
          return 0x00009D7D
        elseif ckYVar == -28
          return 0x00009D5C
        elseif ckYVar == -27
          return 0x00009D3B
        elseif ckYVar == -26
          return 0x00009D1A
        elseif ckYVar == -25
          return 0x00009CF9
        elseif ckYVar == -24
          return 0x00009CD8
        elseif ckYVar == -23
          return 0x00009CB7
        elseif ckYVar == -22
          return 0x00009C96
        elseif ckYVar == -21
          return 0x00009C75
        elseif ckYVar == -20
          return 0x00009C54
        elseif ckYVar == -19
          return 0x00009C33
        elseif ckYVar == -18
          return 0x00009C12
        elseif ckYVar == -17
          return 0x00009BF1
        elseif ckYVar == -16
          return 0x00009BD0
        elseif ckYVar == -15
          return 0x00009BAF
        elseif ckYVar == -14
          return 0x00009B8E
        elseif ckYVar == -13
          return 0x00009B6D
        elseif ckYVar == -12
          return 0x00009B4C
        elseif ckYVar == -11
          return 0x00009B2B
        elseif ckYVar == -10
          return 0x00009B0A
        elseif ckYVar == -9
          return 0x00009AE9
        elseif ckYVar == -8
          return 0x00009AC8
        elseif ckYVar == -7
          return 0x00009AA7
        elseif ckYVar == -6
          return 0x00009A86
        elseif ckYVar == -5
          return 0x00009A65
        elseif ckYVar == -4
          return 0x00009A44
        elseif ckYVar == -3
          return 0x00009A23
        elseif ckYVar == -2
          return 0x00009A02
        elseif ckYVar == -1
          return 0x000099E1
        elseif ckYVar == 0
          return 0x000099C0
        elseif ckYVar == 1
          return 0x000095A0
        elseif ckYVar == 2
          return 0x0000957F
        elseif ckYVar == 3
          return 0x0000955E
        elseif ckYVar == 4
          return 0x0000953D
        elseif ckYVar == 5
          return 0x0000951C
        elseif ckYVar == 6
          return 0x000094FB
        elseif ckYVar == 7
          return 0x000094DA
        elseif ckYVar == 8
          return 0x000094B9
        elseif ckYVar == 9
          return 0x00009498
        elseif ckYVar == 10
          return 0x00009477
        elseif ckYVar == 11
          return 0x00009456
        elseif ckYVar == 12
          return 0x00009435
        elseif ckYVar == 13
          return 0x00009414
        elseif ckYVar == 14
          return 0x000093F3
        elseif ckYVar == 15
          return 0x000093D2
        elseif ckYVar == 16
          return 0x000093B1
        elseif ckYVar == 17
          return 0x00009390
        elseif ckYVar == 18
          return 0x0000936F
        elseif ckYVar == 19
          return 0x0000934E
        elseif ckYVar == 20
          return 0x0000932D
        elseif ckYVar == 21
          return 0x0000930C
        elseif ckYVar == 22
          return 0x000092EB
        elseif ckYVar == 23
          return 0x000092CA
        elseif ckYVar == 24
          return 0x000092A9
        elseif ckYVar == 25
          return 0x00009288
        elseif ckYVar == 26
          return 0x00009267
        elseif ckYVar == 27
          return 0x00009246
        elseif ckYVar == 28
          return 0x00009225
        elseif ckYVar == 29
          return 0x00009204
        elseif ckYVar == 30
          return 0x000091E3
        elseif ckYVar == 31
          return 0x000091C2
        elseif ckYVar == 32
          return 0x00003DCA
        elseif ckYVar == 33
          return 0x00003DC9
        elseif ckYVar == 34
          return 0x00003D8A
        elseif ckYVar == 35
          return 0x00003D69
        elseif ckYVar == 36
          return 0x00003D48
        elseif ckYVar == 37
          return 0x00003D27
        elseif ckYVar == 38
          return 0x00003D06
        elseif ckYVar == 39
          return 0x00003CE5
        elseif ckYVar == 40
          return 0x00003CC4
        elseif ckYVar == 41
          return 0x00003CA3
        elseif ckYVar == 42
          return 0x00003C82
        elseif ckYVar == 43
          return 0x00003C61
        elseif ckYVar == 44
          return 0x00003C40
        elseif ckYVar == 45
          return 0x00003C1F
        elseif ckYVar == 46
          return 0x00003BFE
        elseif ckYVar == 47
          return 0x00003BDD
        elseif ckYVar == 48
          return 0x00003BBC
        elseif ckYVar == 49
          return 0x00003B9B
        elseif ckYVar == 50
          return 0x00003B7A
        endif
      endif
    elseif ckXVar <= -20
      if ckXVar == -29
        if ckYVar == -43
          return 0x0000F30B
        elseif ckYVar == -42
          return 0x0000F2EA
        elseif ckYVar == -41
          return 0x0000F2C9
        elseif ckYVar == -40
          return 0x0000F2A8
        elseif ckYVar == -39
          return 0x0000F287
        elseif ckYVar == -38
          return 0x0000F266
        elseif ckYVar == -37
          return 0x0000F245
        elseif ckYVar == -36
          return 0x0000F224
        elseif ckYVar == -35
          return 0x0000F203
        elseif ckYVar == -34
          return 0x0000F1E2
        elseif ckYVar == -33
          return 0x0000F1C1
        elseif ckYVar == -32
          return 0x00009DDC
        elseif ckYVar == -31
          return 0x00009DDB
        elseif ckYVar == -30
          return 0x00009D9D
        elseif ckYVar == -29
          return 0x00009D7C
        elseif ckYVar == -28
          return 0x00009D5B
        elseif ckYVar == -27
          return 0x00009D3A
        elseif ckYVar == -26
          return 0x00009D19
        elseif ckYVar == -25
          return 0x00009CF8
        elseif ckYVar == -24
          return 0x00009CD7
        elseif ckYVar == -23
          return 0x00009CB6
        elseif ckYVar == -22
          return 0x00009C95
        elseif ckYVar == -21
          return 0x00009C74
        elseif ckYVar == -20
          return 0x00009C53
        elseif ckYVar == -19
          return 0x00009C32
        elseif ckYVar == -18
          return 0x00009C11
        elseif ckYVar == -17
          return 0x00009BF0
        elseif ckYVar == -16
          return 0x00009BCF
        elseif ckYVar == -15
          return 0x00009BAE
        elseif ckYVar == -14
          return 0x00009B8D
        elseif ckYVar == -13
          return 0x00009B6C
        elseif ckYVar == -12
          return 0x00009B4B
        elseif ckYVar == -11
          return 0x00009B2A
        elseif ckYVar == -10
          return 0x00009B09
        elseif ckYVar == -9
          return 0x00009AE8
        elseif ckYVar == -8
          return 0x00009AC7
        elseif ckYVar == -7
          return 0x00009AA6
        elseif ckYVar == -6
          return 0x00009A85
        elseif ckYVar == -5
          return 0x00009A64
        elseif ckYVar == -4
          return 0x00009A43
        elseif ckYVar == -3
          return 0x00009A22
        elseif ckYVar == -2
          return 0x00009A01
        elseif ckYVar == -1
          return 0x000099E0
        elseif ckYVar == 0
          return 0x000099BF
        elseif ckYVar == 1
          return 0x0000959F
        elseif ckYVar == 2
          return 0x0000957E
        elseif ckYVar == 3
          return 0x0000955D
        elseif ckYVar == 4
          return 0x0000953C
        elseif ckYVar == 5
          return 0x0000951B
        elseif ckYVar == 6
          return 0x000094FA
        elseif ckYVar == 7
          return 0x000094D9
        elseif ckYVar == 8
          return 0x000094B8
        elseif ckYVar == 9
          return 0x00009497
        elseif ckYVar == 10
          return 0x00009476
        elseif ckYVar == 11
          return 0x00009455
        elseif ckYVar == 12
          return 0x00009434
        elseif ckYVar == 13
          return 0x00009413
        elseif ckYVar == 14
          return 0x000093F2
        elseif ckYVar == 15
          return 0x000093D1
        elseif ckYVar == 16
          return 0x000093B0
        elseif ckYVar == 17
          return 0x0000938F
        elseif ckYVar == 18
          return 0x0000936E
        elseif ckYVar == 19
          return 0x0000934D
        elseif ckYVar == 20
          return 0x0000932C
        elseif ckYVar == 21
          return 0x0000930B
        elseif ckYVar == 22
          return 0x000092EA
        elseif ckYVar == 23
          return 0x000092C9
        elseif ckYVar == 24
          return 0x000092A8
        elseif ckYVar == 25
          return 0x00009287
        elseif ckYVar == 26
          return 0x00009266
        elseif ckYVar == 27
          return 0x00009245
        elseif ckYVar == 28
          return 0x00009224
        elseif ckYVar == 29
          return 0x00009203
        elseif ckYVar == 30
          return 0x000091E2
        elseif ckYVar == 31
          return 0x000091C1
        elseif ckYVar == 32
          return 0x00003DC8
        elseif ckYVar == 33
          return 0x00003DC7
        elseif ckYVar == 34
          return 0x00003D89
        elseif ckYVar == 35
          return 0x00003D68
        elseif ckYVar == 36
          return 0x00003D47
        elseif ckYVar == 37
          return 0x00003D26
        elseif ckYVar == 38
          return 0x00003D05
        elseif ckYVar == 39
          return 0x00003CE4
        elseif ckYVar == 40
          return 0x00003CC3
        elseif ckYVar == 41
          return 0x00003CA2
        elseif ckYVar == 42
          return 0x00003C81
        elseif ckYVar == 43
          return 0x00003C60
        elseif ckYVar == 44
          return 0x00003C3F
        elseif ckYVar == 45
          return 0x00003C1E
        elseif ckYVar == 46
          return 0x00003BFD
        elseif ckYVar == 47
          return 0x00003BDC
        elseif ckYVar == 48
          return 0x00003BBB
        elseif ckYVar == 49
          return 0x00003B9A
        elseif ckYVar == 50
          return 0x00003B79
        endif
      elseif ckXVar == -28
        if ckYVar == -43
          return 0x0000F30A
        elseif ckYVar == -42
          return 0x0000F2E9
        elseif ckYVar == -41
          return 0x0000F2C8
        elseif ckYVar == -40
          return 0x0000F2A7
        elseif ckYVar == -39
          return 0x0000F286
        elseif ckYVar == -38
          return 0x0000F265
        elseif ckYVar == -37
          return 0x0000F244
        elseif ckYVar == -36
          return 0x0000F223
        elseif ckYVar == -35
          return 0x0000F202
        elseif ckYVar == -34
          return 0x0000F1E1
        elseif ckYVar == -33
          return 0x0000F1C0
        elseif ckYVar == -32
          return 0x00009DDA
        elseif ckYVar == -31
          return 0x00009DD9
        elseif ckYVar == -30
          return 0x00009D9C
        elseif ckYVar == -29
          return 0x00009D7B
        elseif ckYVar == -28
          return 0x00009D5A
        elseif ckYVar == -27
          return 0x00009D39
        elseif ckYVar == -26
          return 0x00009D18
        elseif ckYVar == -25
          return 0x00009CF7
        elseif ckYVar == -24
          return 0x00009CD6
        elseif ckYVar == -23
          return 0x00009CB5
        elseif ckYVar == -22
          return 0x00009C94
        elseif ckYVar == -21
          return 0x00009C73
        elseif ckYVar == -20
          return 0x00009C52
        elseif ckYVar == -19
          return 0x00009C31
        elseif ckYVar == -18
          return 0x00009C10
        elseif ckYVar == -17
          return 0x00009BEF
        elseif ckYVar == -16
          return 0x00009BCE
        elseif ckYVar == -15
          return 0x00009BAD
        elseif ckYVar == -14
          return 0x00009B8C
        elseif ckYVar == -13
          return 0x00009B6B
        elseif ckYVar == -12
          return 0x00009B4A
        elseif ckYVar == -11
          return 0x00009B29
        elseif ckYVar == -10
          return 0x00009B08
        elseif ckYVar == -9
          return 0x00009AE7
        elseif ckYVar == -8
          return 0x00009AC6
        elseif ckYVar == -7
          return 0x00009AA5
        elseif ckYVar == -6
          return 0x00009A84
        elseif ckYVar == -5
          return 0x00009A63
        elseif ckYVar == -4
          return 0x00009A42
        elseif ckYVar == -3
          return 0x00009A21
        elseif ckYVar == -2
          return 0x00009A00
        elseif ckYVar == -1
          return 0x000099DF
        elseif ckYVar == 0
          return 0x000099BE
        elseif ckYVar == 1
          return 0x0000959E
        elseif ckYVar == 2
          return 0x0000957D
        elseif ckYVar == 3
          return 0x0000955C
        elseif ckYVar == 4
          return 0x0000953B
        elseif ckYVar == 5
          return 0x0000951A
        elseif ckYVar == 6
          return 0x000094F9
        elseif ckYVar == 7
          return 0x000094D8
        elseif ckYVar == 8
          return 0x000094B7
        elseif ckYVar == 9
          return 0x00009496
        elseif ckYVar == 10
          return 0x00009475
        elseif ckYVar == 11
          return 0x00009454
        elseif ckYVar == 12
          return 0x00009433
        elseif ckYVar == 13
          return 0x00009412
        elseif ckYVar == 14
          return 0x000093F1
        elseif ckYVar == 15
          return 0x000093D0
        elseif ckYVar == 16
          return 0x000093AF
        elseif ckYVar == 17
          return 0x0000938E
        elseif ckYVar == 18
          return 0x0000936D
        elseif ckYVar == 19
          return 0x0000934C
        elseif ckYVar == 20
          return 0x0000932B
        elseif ckYVar == 21
          return 0x0000930A
        elseif ckYVar == 22
          return 0x000092E9
        elseif ckYVar == 23
          return 0x000092C8
        elseif ckYVar == 24
          return 0x000092A7
        elseif ckYVar == 25
          return 0x00009286
        elseif ckYVar == 26
          return 0x00009265
        elseif ckYVar == 27
          return 0x00009244
        elseif ckYVar == 28
          return 0x00009223
        elseif ckYVar == 29
          return 0x00009202
        elseif ckYVar == 30
          return 0x000091E1
        elseif ckYVar == 31
          return 0x000091C0
        elseif ckYVar == 32
          return 0x00003DC6
        elseif ckYVar == 33
          return 0x00003DC5
        elseif ckYVar == 34
          return 0x00003D88
        elseif ckYVar == 35
          return 0x00003D67
        elseif ckYVar == 36
          return 0x00003D46
        elseif ckYVar == 37
          return 0x00003D25
        elseif ckYVar == 38
          return 0x00003D04
        elseif ckYVar == 39
          return 0x00003CE3
        elseif ckYVar == 40
          return 0x00003CC2
        elseif ckYVar == 41
          return 0x00003CA1
        elseif ckYVar == 42
          return 0x00003C80
        elseif ckYVar == 43
          return 0x00003C5F
        elseif ckYVar == 44
          return 0x00003C3E
        elseif ckYVar == 45
          return 0x00003C1D
        elseif ckYVar == 46
          return 0x00003BFC
        elseif ckYVar == 47
          return 0x00003BDB
        elseif ckYVar == 48
          return 0x00003BBA
        elseif ckYVar == 49
          return 0x00003B99
        elseif ckYVar == 50
          return 0x00003B78
        endif
      elseif ckXVar == -27
        if ckYVar == -43
          return 0x0000F309
        elseif ckYVar == -42
          return 0x0000F2E8
        elseif ckYVar == -41
          return 0x0000F2C7
        elseif ckYVar == -40
          return 0x0000F2A6
        elseif ckYVar == -39
          return 0x0000F285
        elseif ckYVar == -38
          return 0x0000F264
        elseif ckYVar == -37
          return 0x0000F243
        elseif ckYVar == -36
          return 0x0000F222
        elseif ckYVar == -35
          return 0x0000F201
        elseif ckYVar == -34
          return 0x0000F1E0
        elseif ckYVar == -33
          return 0x0000F1BF
        elseif ckYVar == -32
          return 0x00009DD8
        elseif ckYVar == -31
          return 0x00009DD7
        elseif ckYVar == -30
          return 0x00009D9B
        elseif ckYVar == -29
          return 0x00009D7A
        elseif ckYVar == -28
          return 0x00009D59
        elseif ckYVar == -27
          return 0x00009D38
        elseif ckYVar == -26
          return 0x00009D17
        elseif ckYVar == -25
          return 0x00009CF6
        elseif ckYVar == -24
          return 0x00009CD5
        elseif ckYVar == -23
          return 0x00009CB4
        elseif ckYVar == -22
          return 0x00009C93
        elseif ckYVar == -21
          return 0x00009C72
        elseif ckYVar == -20
          return 0x00009C51
        elseif ckYVar == -19
          return 0x00009C30
        elseif ckYVar == -18
          return 0x00009C0F
        elseif ckYVar == -17
          return 0x00009BEE
        elseif ckYVar == -16
          return 0x00009BCD
        elseif ckYVar == -15
          return 0x00009BAC
        elseif ckYVar == -14
          return 0x00009B8B
        elseif ckYVar == -13
          return 0x00009B6A
        elseif ckYVar == -12
          return 0x00009B49
        elseif ckYVar == -11
          return 0x00009B28
        elseif ckYVar == -10
          return 0x00009B07
        elseif ckYVar == -9
          return 0x00009AE6
        elseif ckYVar == -8
          return 0x00009AC5
        elseif ckYVar == -7
          return 0x00009AA4
        elseif ckYVar == -6
          return 0x00009A83
        elseif ckYVar == -5
          return 0x00009A62
        elseif ckYVar == -4
          return 0x00009A41
        elseif ckYVar == -3
          return 0x00009A20
        elseif ckYVar == -2
          return 0x000099FF
        elseif ckYVar == -1
          return 0x000099DE
        elseif ckYVar == 0
          return 0x000099BD
        elseif ckYVar == 1
          return 0x0000959D
        elseif ckYVar == 2
          return 0x0000957C
        elseif ckYVar == 3
          return 0x0000955B
        elseif ckYVar == 4
          return 0x0000953A
        elseif ckYVar == 5
          return 0x00009519
        elseif ckYVar == 6
          return 0x000094F8
        elseif ckYVar == 7
          return 0x000094D7
        elseif ckYVar == 8
          return 0x000094B6
        elseif ckYVar == 9
          return 0x00009495
        elseif ckYVar == 10
          return 0x00009474
        elseif ckYVar == 11
          return 0x00009453
        elseif ckYVar == 12
          return 0x00009432
        elseif ckYVar == 13
          return 0x00009411
        elseif ckYVar == 14
          return 0x000093F0
        elseif ckYVar == 15
          return 0x000093CF
        elseif ckYVar == 16
          return 0x000093AE
        elseif ckYVar == 17
          return 0x0000938D
        elseif ckYVar == 18
          return 0x0000936C
        elseif ckYVar == 19
          return 0x0000934B
        elseif ckYVar == 20
          return 0x0000932A
        elseif ckYVar == 21
          return 0x00009309
        elseif ckYVar == 22
          return 0x000092E8
        elseif ckYVar == 23
          return 0x000092C7
        elseif ckYVar == 24
          return 0x000092A6
        elseif ckYVar == 25
          return 0x00009285
        elseif ckYVar == 26
          return 0x00009264
        elseif ckYVar == 27
          return 0x00009243
        elseif ckYVar == 28
          return 0x00009222
        elseif ckYVar == 29
          return 0x00009201
        elseif ckYVar == 30
          return 0x000091E0
        elseif ckYVar == 31
          return 0x000091BF
        elseif ckYVar == 32
          return 0x00003DC4
        elseif ckYVar == 33
          return 0x00003DC3
        elseif ckYVar == 34
          return 0x00003D87
        elseif ckYVar == 35
          return 0x00003D66
        elseif ckYVar == 36
          return 0x00003D45
        elseif ckYVar == 37
          return 0x00003D24
        elseif ckYVar == 38
          return 0x00003D03
        elseif ckYVar == 39
          return 0x00003CE2
        elseif ckYVar == 40
          return 0x00003CC1
        elseif ckYVar == 41
          return 0x00003CA0
        elseif ckYVar == 42
          return 0x00003C7F
        elseif ckYVar == 43
          return 0x00003C5E
        elseif ckYVar == 44
          return 0x00003C3D
        elseif ckYVar == 45
          return 0x00003C1C
        elseif ckYVar == 46
          return 0x00003BFB
        elseif ckYVar == 47
          return 0x00003BDA
        elseif ckYVar == 48
          return 0x00003BB9
        elseif ckYVar == 49
          return 0x00003B98
        elseif ckYVar == 50
          return 0x00003B77
        endif
      elseif ckXVar == -26
        if ckYVar == -43
          return 0x0000F308
        elseif ckYVar == -42
          return 0x0000F2E7
        elseif ckYVar == -41
          return 0x0000F2C6
        elseif ckYVar == -40
          return 0x0000F2A5
        elseif ckYVar == -39
          return 0x0000F284
        elseif ckYVar == -38
          return 0x0000F263
        elseif ckYVar == -37
          return 0x0000F242
        elseif ckYVar == -36
          return 0x0000F221
        elseif ckYVar == -35
          return 0x0000F200
        elseif ckYVar == -34
          return 0x0000F1DF
        elseif ckYVar == -33
          return 0x0000F1BE
        elseif ckYVar == -32
          return 0x00009DD6
        elseif ckYVar == -31
          return 0x00009DD5
        elseif ckYVar == -30
          return 0x00009D9A
        elseif ckYVar == -29
          return 0x00009D79
        elseif ckYVar == -28
          return 0x00009D58
        elseif ckYVar == -27
          return 0x00009D37
        elseif ckYVar == -26
          return 0x00009D16
        elseif ckYVar == -25
          return 0x00009CF5
        elseif ckYVar == -24
          return 0x00009CD4
        elseif ckYVar == -23
          return 0x00009CB3
        elseif ckYVar == -22
          return 0x00009C92
        elseif ckYVar == -21
          return 0x00009C71
        elseif ckYVar == -20
          return 0x00009C50
        elseif ckYVar == -19
          return 0x00009C2F
        elseif ckYVar == -18
          return 0x00009C0E
        elseif ckYVar == -17
          return 0x00009BED
        elseif ckYVar == -16
          return 0x00009BCC
        elseif ckYVar == -15
          return 0x00009BAB
        elseif ckYVar == -14
          return 0x00009B8A
        elseif ckYVar == -13
          return 0x00009B69
        elseif ckYVar == -12
          return 0x00009B48
        elseif ckYVar == -11
          return 0x00009B27
        elseif ckYVar == -10
          return 0x00009B06
        elseif ckYVar == -9
          return 0x00009AE5
        elseif ckYVar == -8
          return 0x00009AC4
        elseif ckYVar == -7
          return 0x00009AA3
        elseif ckYVar == -6
          return 0x00009A82
        elseif ckYVar == -5
          return 0x00009A61
        elseif ckYVar == -4
          return 0x00009A40
        elseif ckYVar == -3
          return 0x00009A1F
        elseif ckYVar == -2
          return 0x000099FE
        elseif ckYVar == -1
          return 0x000099DD
        elseif ckYVar == 0
          return 0x000099BC
        elseif ckYVar == 1
          return 0x0000959C
        elseif ckYVar == 2
          return 0x0000957B
        elseif ckYVar == 3
          return 0x0000955A
        elseif ckYVar == 4
          return 0x00009539
        elseif ckYVar == 5
          return 0x00009518
        elseif ckYVar == 6
          return 0x000094F7
        elseif ckYVar == 7
          return 0x000094D6
        elseif ckYVar == 8
          return 0x000094B5
        elseif ckYVar == 9
          return 0x00009494
        elseif ckYVar == 10
          return 0x00009473
        elseif ckYVar == 11
          return 0x00009452
        elseif ckYVar == 12
          return 0x00009431
        elseif ckYVar == 13
          return 0x00009410
        elseif ckYVar == 14
          return 0x000093EF
        elseif ckYVar == 15
          return 0x000093CE
        elseif ckYVar == 16
          return 0x000093AD
        elseif ckYVar == 17
          return 0x0000938C
        elseif ckYVar == 18
          return 0x0000936B
        elseif ckYVar == 19
          return 0x0000934A
        elseif ckYVar == 20
          return 0x00009329
        elseif ckYVar == 21
          return 0x00009308
        elseif ckYVar == 22
          return 0x000092E7
        elseif ckYVar == 23
          return 0x000092C6
        elseif ckYVar == 24
          return 0x000092A5
        elseif ckYVar == 25
          return 0x00009284
        elseif ckYVar == 26
          return 0x00009263
        elseif ckYVar == 27
          return 0x00009242
        elseif ckYVar == 28
          return 0x00009221
        elseif ckYVar == 29
          return 0x00009200
        elseif ckYVar == 30
          return 0x000091DF
        elseif ckYVar == 31
          return 0x000091BE
        elseif ckYVar == 32
          return 0x00003DC2
        elseif ckYVar == 33
          return 0x00003DC1
        elseif ckYVar == 34
          return 0x00003D86
        elseif ckYVar == 35
          return 0x00003D65
        elseif ckYVar == 36
          return 0x00003D44
        elseif ckYVar == 37
          return 0x00003D23
        elseif ckYVar == 38
          return 0x00003D02
        elseif ckYVar == 39
          return 0x00003CE1
        elseif ckYVar == 40
          return 0x00003CC0
        elseif ckYVar == 41
          return 0x00003C9F
        elseif ckYVar == 42
          return 0x00003C7E
        elseif ckYVar == 43
          return 0x00003C5D
        elseif ckYVar == 44
          return 0x00003C3C
        elseif ckYVar == 45
          return 0x00003C1B
        elseif ckYVar == 46
          return 0x00003BFA
        elseif ckYVar == 47
          return 0x00003BD9
        elseif ckYVar == 48
          return 0x00003BB8
        elseif ckYVar == 49
          return 0x00003B97
        elseif ckYVar == 50
          return 0x00003B76
        endif
      elseif ckXVar == -25
        if ckYVar == -43
          return 0x0000F307
        elseif ckYVar == -42
          return 0x0000F2E6
        elseif ckYVar == -41
          return 0x0000F2C5
        elseif ckYVar == -40
          return 0x0000F2A4
        elseif ckYVar == -39
          return 0x0000F283
        elseif ckYVar == -38
          return 0x0000F262
        elseif ckYVar == -37
          return 0x0000F241
        elseif ckYVar == -36
          return 0x0000F220
        elseif ckYVar == -35
          return 0x0000F1FF
        elseif ckYVar == -34
          return 0x0000F1DE
        elseif ckYVar == -33
          return 0x0000F1BD
        elseif ckYVar == -32
          return 0x00009DD4
        elseif ckYVar == -31
          return 0x00009DD3
        elseif ckYVar == -30
          return 0x00009D99
        elseif ckYVar == -29
          return 0x00009D78
        elseif ckYVar == -28
          return 0x00009D57
        elseif ckYVar == -27
          return 0x00009D36
        elseif ckYVar == -26
          return 0x00009D15
        elseif ckYVar == -25
          return 0x00009CF4
        elseif ckYVar == -24
          return 0x00009CD3
        elseif ckYVar == -23
          return 0x00009CB2
        elseif ckYVar == -22
          return 0x00009C91
        elseif ckYVar == -21
          return 0x00009C70
        elseif ckYVar == -20
          return 0x00009C4F
        elseif ckYVar == -19
          return 0x00009C2E
        elseif ckYVar == -18
          return 0x00009C0D
        elseif ckYVar == -17
          return 0x00009BEC
        elseif ckYVar == -16
          return 0x00009BCB
        elseif ckYVar == -15
          return 0x00009BAA
        elseif ckYVar == -14
          return 0x00009B89
        elseif ckYVar == -13
          return 0x00009B68
        elseif ckYVar == -12
          return 0x00009B47
        elseif ckYVar == -11
          return 0x00009B26
        elseif ckYVar == -10
          return 0x00009B05
        elseif ckYVar == -9
          return 0x00009AE4
        elseif ckYVar == -8
          return 0x00009AC3
        elseif ckYVar == -7
          return 0x00009AA2
        elseif ckYVar == -6
          return 0x00009A81
        elseif ckYVar == -5
          return 0x00009A60
        elseif ckYVar == -4
          return 0x00009A3F
        elseif ckYVar == -3
          return 0x00009A1E
        elseif ckYVar == -2
          return 0x000099FD
        elseif ckYVar == -1
          return 0x000099DC
        elseif ckYVar == 0
          return 0x000099BB
        elseif ckYVar == 1
          return 0x0000959B
        elseif ckYVar == 2
          return 0x0000957A
        elseif ckYVar == 3
          return 0x00009559
        elseif ckYVar == 4
          return 0x00009538
        elseif ckYVar == 5
          return 0x00009517
        elseif ckYVar == 6
          return 0x000094F6
        elseif ckYVar == 7
          return 0x000094D5
        elseif ckYVar == 8
          return 0x000094B4
        elseif ckYVar == 9
          return 0x00009493
        elseif ckYVar == 10
          return 0x00009472
        elseif ckYVar == 11
          return 0x00009451
        elseif ckYVar == 12
          return 0x00009430
        elseif ckYVar == 13
          return 0x0000940F
        elseif ckYVar == 14
          return 0x000093EE
        elseif ckYVar == 15
          return 0x000093CD
        elseif ckYVar == 16
          return 0x000093AC
        elseif ckYVar == 17
          return 0x0000938B
        elseif ckYVar == 18
          return 0x0000936A
        elseif ckYVar == 19
          return 0x00009349
        elseif ckYVar == 20
          return 0x00009328
        elseif ckYVar == 21
          return 0x00009307
        elseif ckYVar == 22
          return 0x000092E6
        elseif ckYVar == 23
          return 0x000092C5
        elseif ckYVar == 24
          return 0x000092A4
        elseif ckYVar == 25
          return 0x00009283
        elseif ckYVar == 26
          return 0x00009262
        elseif ckYVar == 27
          return 0x00009241
        elseif ckYVar == 28
          return 0x00009220
        elseif ckYVar == 29
          return 0x000091FF
        elseif ckYVar == 30
          return 0x000091DE
        elseif ckYVar == 31
          return 0x000091BD
        elseif ckYVar == 32
          return 0x00003DC0
        elseif ckYVar == 33
          return 0x00003DBF
        elseif ckYVar == 34
          return 0x00003D85
        elseif ckYVar == 35
          return 0x00003D64
        elseif ckYVar == 36
          return 0x00003D43
        elseif ckYVar == 37
          return 0x00003D22
        elseif ckYVar == 38
          return 0x00003D01
        elseif ckYVar == 39
          return 0x00003CE0
        elseif ckYVar == 40
          return 0x00003CBF
        elseif ckYVar == 41
          return 0x00003C9E
        elseif ckYVar == 42
          return 0x00003C7D
        elseif ckYVar == 43
          return 0x00003C5C
        elseif ckYVar == 44
          return 0x00003C3B
        elseif ckYVar == 45
          return 0x00003C1A
        elseif ckYVar == 46
          return 0x00003BF9
        elseif ckYVar == 47
          return 0x00003BD8
        elseif ckYVar == 48
          return 0x00003BB7
        elseif ckYVar == 49
          return 0x00003B96
        elseif ckYVar == 50
          return 0x00003B75
        endif
      elseif ckXVar == -24
        if ckYVar == -43
          return 0x0000F306
        elseif ckYVar == -42
          return 0x0000F2E5
        elseif ckYVar == -41
          return 0x0000F2C4
        elseif ckYVar == -40
          return 0x0000F2A3
        elseif ckYVar == -39
          return 0x0000F282
        elseif ckYVar == -38
          return 0x0000F261
        elseif ckYVar == -37
          return 0x0000F240
        elseif ckYVar == -36
          return 0x0000F21F
        elseif ckYVar == -35
          return 0x0000F1FE
        elseif ckYVar == -34
          return 0x0000F1DD
        elseif ckYVar == -33
          return 0x0000F1BC
        elseif ckYVar == -32
          return 0x00009DD2
        elseif ckYVar == -31
          return 0x00009DD1
        elseif ckYVar == -30
          return 0x00009D98
        elseif ckYVar == -29
          return 0x00009D77
        elseif ckYVar == -28
          return 0x00009D56
        elseif ckYVar == -27
          return 0x00009D35
        elseif ckYVar == -26
          return 0x00009D14
        elseif ckYVar == -25
          return 0x00009CF3
        elseif ckYVar == -24
          return 0x00009CD2
        elseif ckYVar == -23
          return 0x00009CB1
        elseif ckYVar == -22
          return 0x00009C90
        elseif ckYVar == -21
          return 0x00009C6F
        elseif ckYVar == -20
          return 0x00009C4E
        elseif ckYVar == -19
          return 0x00009C2D
        elseif ckYVar == -18
          return 0x00009C0C
        elseif ckYVar == -17
          return 0x00009BEB
        elseif ckYVar == -16
          return 0x00009BCA
        elseif ckYVar == -15
          return 0x00009BA9
        elseif ckYVar == -14
          return 0x00009B88
        elseif ckYVar == -13
          return 0x00009B67
        elseif ckYVar == -12
          return 0x00009B46
        elseif ckYVar == -11
          return 0x00009B25
        elseif ckYVar == -10
          return 0x00009B04
        elseif ckYVar == -9
          return 0x00009AE3
        elseif ckYVar == -8
          return 0x00009AC2
        elseif ckYVar == -7
          return 0x00009AA1
        elseif ckYVar == -6
          return 0x00009A80
        elseif ckYVar == -5
          return 0x00009A5F
        elseif ckYVar == -4
          return 0x00009A3E
        elseif ckYVar == -3
          return 0x00009A1D
        elseif ckYVar == -2
          return 0x000099FC
        elseif ckYVar == -1
          return 0x000099DB
        elseif ckYVar == 0
          return 0x000099BA
        elseif ckYVar == 1
          return 0x0000959A
        elseif ckYVar == 2
          return 0x00009579
        elseif ckYVar == 3
          return 0x00009558
        elseif ckYVar == 4
          return 0x00009537
        elseif ckYVar == 5
          return 0x00009516
        elseif ckYVar == 6
          return 0x000094F5
        elseif ckYVar == 7
          return 0x000094D4
        elseif ckYVar == 8
          return 0x000094B3
        elseif ckYVar == 9
          return 0x00009492
        elseif ckYVar == 10
          return 0x00009471
        elseif ckYVar == 11
          return 0x00009450
        elseif ckYVar == 12
          return 0x0000942F
        elseif ckYVar == 13
          return 0x0000940E
        elseif ckYVar == 14
          return 0x000093ED
        elseif ckYVar == 15
          return 0x000093CC
        elseif ckYVar == 16
          return 0x000093AB
        elseif ckYVar == 17
          return 0x0000938A
        elseif ckYVar == 18
          return 0x00009369
        elseif ckYVar == 19
          return 0x00009348
        elseif ckYVar == 20
          return 0x00009327
        elseif ckYVar == 21
          return 0x00009306
        elseif ckYVar == 22
          return 0x000092E5
        elseif ckYVar == 23
          return 0x000092C4
        elseif ckYVar == 24
          return 0x000092A3
        elseif ckYVar == 25
          return 0x00009282
        elseif ckYVar == 26
          return 0x00009261
        elseif ckYVar == 27
          return 0x00009240
        elseif ckYVar == 28
          return 0x0000921F
        elseif ckYVar == 29
          return 0x000091FE
        elseif ckYVar == 30
          return 0x000091DD
        elseif ckYVar == 31
          return 0x000091BC
        elseif ckYVar == 32
          return 0x00003DBE
        elseif ckYVar == 33
          return 0x00003DBD
        elseif ckYVar == 34
          return 0x00003D84
        elseif ckYVar == 35
          return 0x00003D63
        elseif ckYVar == 36
          return 0x00003D42
        elseif ckYVar == 37
          return 0x00003D21
        elseif ckYVar == 38
          return 0x00003D00
        elseif ckYVar == 39
          return 0x00003CDF
        elseif ckYVar == 40
          return 0x00003CBE
        elseif ckYVar == 41
          return 0x00003C9D
        elseif ckYVar == 42
          return 0x00003C7C
        elseif ckYVar == 43
          return 0x00003C5B
        elseif ckYVar == 44
          return 0x00003C3A
        elseif ckYVar == 45
          return 0x00003C19
        elseif ckYVar == 46
          return 0x00003BF8
        elseif ckYVar == 47
          return 0x00003BD7
        elseif ckYVar == 48
          return 0x00003BB6
        elseif ckYVar == 49
          return 0x00003B95
        elseif ckYVar == 50
          return 0x00003B74
        endif
      elseif ckXVar == -23
        if ckYVar == -43
          return 0x0000F305
        elseif ckYVar == -42
          return 0x0000F2E4
        elseif ckYVar == -41
          return 0x0000F2C3
        elseif ckYVar == -40
          return 0x0000F2A2
        elseif ckYVar == -39
          return 0x0000F281
        elseif ckYVar == -38
          return 0x0000F260
        elseif ckYVar == -37
          return 0x0000F23F
        elseif ckYVar == -36
          return 0x0000F21E
        elseif ckYVar == -35
          return 0x0000F1FD
        elseif ckYVar == -34
          return 0x0000F1DC
        elseif ckYVar == -33
          return 0x0000F1BB
        elseif ckYVar == -32
          return 0x00009DD0
        elseif ckYVar == -31
          return 0x00009DCF
        elseif ckYVar == -30
          return 0x00009D97
        elseif ckYVar == -29
          return 0x00009D76
        elseif ckYVar == -28
          return 0x00009D55
        elseif ckYVar == -27
          return 0x00009D34
        elseif ckYVar == -26
          return 0x00009D13
        elseif ckYVar == -25
          return 0x00009CF2
        elseif ckYVar == -24
          return 0x00009CD1
        elseif ckYVar == -23
          return 0x00009CB0
        elseif ckYVar == -22
          return 0x00009C8F
        elseif ckYVar == -21
          return 0x00009C6E
        elseif ckYVar == -20
          return 0x00009C4D
        elseif ckYVar == -19
          return 0x00009C2C
        elseif ckYVar == -18
          return 0x00009C0B
        elseif ckYVar == -17
          return 0x00009BEA
        elseif ckYVar == -16
          return 0x00009BC9
        elseif ckYVar == -15
          return 0x00009BA8
        elseif ckYVar == -14
          return 0x00009B87
        elseif ckYVar == -13
          return 0x00009B66
        elseif ckYVar == -12
          return 0x00009B45
        elseif ckYVar == -11
          return 0x00009B24
        elseif ckYVar == -10
          return 0x00009B03
        elseif ckYVar == -9
          return 0x00009AE2
        elseif ckYVar == -8
          return 0x00009AC1
        elseif ckYVar == -7
          return 0x00009AA0
        elseif ckYVar == -6
          return 0x00009A7F
        elseif ckYVar == -5
          return 0x00009A5E
        elseif ckYVar == -4
          return 0x00009A3D
        elseif ckYVar == -3
          return 0x00009A1C
        elseif ckYVar == -2
          return 0x000099FB
        elseif ckYVar == -1
          return 0x000099DA
        elseif ckYVar == 0
          return 0x000099B9
        elseif ckYVar == 1
          return 0x00009599
        elseif ckYVar == 2
          return 0x00009578
        elseif ckYVar == 3
          return 0x00009557
        elseif ckYVar == 4
          return 0x00009536
        elseif ckYVar == 5
          return 0x00009515
        elseif ckYVar == 6
          return 0x000094F4
        elseif ckYVar == 7
          return 0x000094D3
        elseif ckYVar == 8
          return 0x000094B2
        elseif ckYVar == 9
          return 0x00009491
        elseif ckYVar == 10
          return 0x00009470
        elseif ckYVar == 11
          return 0x0000944F
        elseif ckYVar == 12
          return 0x0000942E
        elseif ckYVar == 13
          return 0x0000940D
        elseif ckYVar == 14
          return 0x000093EC
        elseif ckYVar == 15
          return 0x000093CB
        elseif ckYVar == 16
          return 0x000093AA
        elseif ckYVar == 17
          return 0x00009389
        elseif ckYVar == 18
          return 0x00009368
        elseif ckYVar == 19
          return 0x00009347
        elseif ckYVar == 20
          return 0x00009326
        elseif ckYVar == 21
          return 0x00009305
        elseif ckYVar == 22
          return 0x000092E4
        elseif ckYVar == 23
          return 0x000092C3
        elseif ckYVar == 24
          return 0x000092A2
        elseif ckYVar == 25
          return 0x00009281
        elseif ckYVar == 26
          return 0x00009260
        elseif ckYVar == 27
          return 0x0000923F
        elseif ckYVar == 28
          return 0x0000921E
        elseif ckYVar == 29
          return 0x000091FD
        elseif ckYVar == 30
          return 0x000091DC
        elseif ckYVar == 31
          return 0x000091BB
        elseif ckYVar == 32
          return 0x00003DBC
        elseif ckYVar == 33
          return 0x00003DBB
        elseif ckYVar == 34
          return 0x00003D83
        elseif ckYVar == 35
          return 0x00003D62
        elseif ckYVar == 36
          return 0x00003D41
        elseif ckYVar == 37
          return 0x00003D20
        elseif ckYVar == 38
          return 0x00003CFF
        elseif ckYVar == 39
          return 0x00003CDE
        elseif ckYVar == 40
          return 0x00003CBD
        elseif ckYVar == 41
          return 0x00003C9C
        elseif ckYVar == 42
          return 0x00003C7B
        elseif ckYVar == 43
          return 0x00003C5A
        elseif ckYVar == 44
          return 0x00003C39
        elseif ckYVar == 45
          return 0x00003C18
        elseif ckYVar == 46
          return 0x00003BF7
        elseif ckYVar == 47
          return 0x00003BD6
        elseif ckYVar == 48
          return 0x00003BB5
        elseif ckYVar == 49
          return 0x00003B94
        elseif ckYVar == 50
          return 0x00003B73
        endif
      elseif ckXVar == -22
        if ckYVar == -43
          return 0x0000F304
        elseif ckYVar == -42
          return 0x0000F2E3
        elseif ckYVar == -41
          return 0x0000F2C2
        elseif ckYVar == -40
          return 0x0000F2A1
        elseif ckYVar == -39
          return 0x0000F280
        elseif ckYVar == -38
          return 0x0000F25F
        elseif ckYVar == -37
          return 0x0000F23E
        elseif ckYVar == -36
          return 0x0000F21D
        elseif ckYVar == -35
          return 0x0000F1FC
        elseif ckYVar == -34
          return 0x0000F1DB
        elseif ckYVar == -33
          return 0x0000F1BA
        elseif ckYVar == -32
          return 0x00009DCE
        elseif ckYVar == -31
          return 0x00009DCD
        elseif ckYVar == -30
          return 0x00009D96
        elseif ckYVar == -29
          return 0x00009D75
        elseif ckYVar == -28
          return 0x00009D54
        elseif ckYVar == -27
          return 0x00009D33
        elseif ckYVar == -26
          return 0x00009D12
        elseif ckYVar == -25
          return 0x00009CF1
        elseif ckYVar == -24
          return 0x00009CD0
        elseif ckYVar == -23
          return 0x00009CAF
        elseif ckYVar == -22
          return 0x00009C8E
        elseif ckYVar == -21
          return 0x00009C6D
        elseif ckYVar == -20
          return 0x00009C4C
        elseif ckYVar == -19
          return 0x00009C2B
        elseif ckYVar == -18
          return 0x00009C0A
        elseif ckYVar == -17
          return 0x00009BE9
        elseif ckYVar == -16
          return 0x00009BC8
        elseif ckYVar == -15
          return 0x00009BA7
        elseif ckYVar == -14
          return 0x00009B86
        elseif ckYVar == -13
          return 0x00009B65
        elseif ckYVar == -12
          return 0x00009B44
        elseif ckYVar == -11
          return 0x00009B23
        elseif ckYVar == -10
          return 0x00009B02
        elseif ckYVar == -9
          return 0x00009AE1
        elseif ckYVar == -8
          return 0x00009AC0
        elseif ckYVar == -7
          return 0x00009A9F
        elseif ckYVar == -6
          return 0x00009A7E
        elseif ckYVar == -5
          return 0x00009A5D
        elseif ckYVar == -4
          return 0x00009A3C
        elseif ckYVar == -3
          return 0x00009A1B
        elseif ckYVar == -2
          return 0x000099FA
        elseif ckYVar == -1
          return 0x000099D9
        elseif ckYVar == 0
          return 0x000099B8
        elseif ckYVar == 1
          return 0x00009598
        elseif ckYVar == 2
          return 0x00009577
        elseif ckYVar == 3
          return 0x00009556
        elseif ckYVar == 4
          return 0x00009535
        elseif ckYVar == 5
          return 0x00009514
        elseif ckYVar == 6
          return 0x000094F3
        elseif ckYVar == 7
          return 0x000094D2
        elseif ckYVar == 8
          return 0x000094B1
        elseif ckYVar == 9
          return 0x00009490
        elseif ckYVar == 10
          return 0x0000946F
        elseif ckYVar == 11
          return 0x0000944E
        elseif ckYVar == 12
          return 0x0000942D
        elseif ckYVar == 13
          return 0x0000940C
        elseif ckYVar == 14
          return 0x000093EB
        elseif ckYVar == 15
          return 0x000093CA
        elseif ckYVar == 16
          return 0x000093A9
        elseif ckYVar == 17
          return 0x00009388
        elseif ckYVar == 18
          return 0x00009367
        elseif ckYVar == 19
          return 0x00009346
        elseif ckYVar == 20
          return 0x00009325
        elseif ckYVar == 21
          return 0x00009304
        elseif ckYVar == 22
          return 0x000092E3
        elseif ckYVar == 23
          return 0x000092C2
        elseif ckYVar == 24
          return 0x000092A1
        elseif ckYVar == 25
          return 0x00009280
        elseif ckYVar == 26
          return 0x0000925F
        elseif ckYVar == 27
          return 0x0000923E
        elseif ckYVar == 28
          return 0x0000921D
        elseif ckYVar == 29
          return 0x000091FC
        elseif ckYVar == 30
          return 0x000091DB
        elseif ckYVar == 31
          return 0x000091BA
        elseif ckYVar == 32
          return 0x00003DBA
        elseif ckYVar == 33
          return 0x00003DB9
        elseif ckYVar == 34
          return 0x00003D82
        elseif ckYVar == 35
          return 0x00003D61
        elseif ckYVar == 36
          return 0x00003D40
        elseif ckYVar == 37
          return 0x00003D1F
        elseif ckYVar == 38
          return 0x00003CFE
        elseif ckYVar == 39
          return 0x00003CDD
        elseif ckYVar == 40
          return 0x00003CBC
        elseif ckYVar == 41
          return 0x00003C9B
        elseif ckYVar == 42
          return 0x00003C7A
        elseif ckYVar == 43
          return 0x00003C59
        elseif ckYVar == 44
          return 0x00003C38
        elseif ckYVar == 45
          return 0x00003C17
        elseif ckYVar == 46
          return 0x00003BF6
        elseif ckYVar == 47
          return 0x00003BD5
        elseif ckYVar == 48
          return 0x00003BB4
        elseif ckYVar == 49
          return 0x00003B93
        elseif ckYVar == 50
          return 0x00003B72
        endif
      elseif ckXVar == -21
        if ckYVar == -43
          return 0x0000F303
        elseif ckYVar == -42
          return 0x0000F2E2
        elseif ckYVar == -41
          return 0x0000F2C1
        elseif ckYVar == -40
          return 0x0000F2A0
        elseif ckYVar == -39
          return 0x0000F27F
        elseif ckYVar == -38
          return 0x0000F25E
        elseif ckYVar == -37
          return 0x0000F23D
        elseif ckYVar == -36
          return 0x0000F21C
        elseif ckYVar == -35
          return 0x0000F1FB
        elseif ckYVar == -34
          return 0x0000F1DA
        elseif ckYVar == -33
          return 0x0000F1B9
        elseif ckYVar == -32
          return 0x00009DCC
        elseif ckYVar == -31
          return 0x00009DCB
        elseif ckYVar == -30
          return 0x00009D95
        elseif ckYVar == -29
          return 0x00009D74
        elseif ckYVar == -28
          return 0x00009D53
        elseif ckYVar == -27
          return 0x00009D32
        elseif ckYVar == -26
          return 0x00009D11
        elseif ckYVar == -25
          return 0x00009CF0
        elseif ckYVar == -24
          return 0x00009CCF
        elseif ckYVar == -23
          return 0x00009CAE
        elseif ckYVar == -22
          return 0x00009C8D
        elseif ckYVar == -21
          return 0x00009C6C
        elseif ckYVar == -20
          return 0x00009C4B
        elseif ckYVar == -19
          return 0x00009C2A
        elseif ckYVar == -18
          return 0x00009C09
        elseif ckYVar == -17
          return 0x00009BE8
        elseif ckYVar == -16
          return 0x00009BC7
        elseif ckYVar == -15
          return 0x00009BA6
        elseif ckYVar == -14
          return 0x00009B85
        elseif ckYVar == -13
          return 0x00009B64
        elseif ckYVar == -12
          return 0x00009B43
        elseif ckYVar == -11
          return 0x00009B22
        elseif ckYVar == -10
          return 0x00009B01
        elseif ckYVar == -9
          return 0x00009AE0
        elseif ckYVar == -8
          return 0x00009ABF
        elseif ckYVar == -7
          return 0x00009A9E
        elseif ckYVar == -6
          return 0x00009A7D
        elseif ckYVar == -5
          return 0x00009A5C
        elseif ckYVar == -4
          return 0x00009A3B
        elseif ckYVar == -3
          return 0x00009A1A
        elseif ckYVar == -2
          return 0x000099F9
        elseif ckYVar == -1
          return 0x000099D8
        elseif ckYVar == 0
          return 0x000099B7
        elseif ckYVar == 1
          return 0x00009597
        elseif ckYVar == 2
          return 0x00009576
        elseif ckYVar == 3
          return 0x00009555
        elseif ckYVar == 4
          return 0x00009534
        elseif ckYVar == 5
          return 0x00009513
        elseif ckYVar == 6
          return 0x000094F2
        elseif ckYVar == 7
          return 0x000094D1
        elseif ckYVar == 8
          return 0x000094B0
        elseif ckYVar == 9
          return 0x0000948F
        elseif ckYVar == 10
          return 0x0000946E
        elseif ckYVar == 11
          return 0x0000944D
        elseif ckYVar == 12
          return 0x0000942C
        elseif ckYVar == 13
          return 0x0000940B
        elseif ckYVar == 14
          return 0x000093EA
        elseif ckYVar == 15
          return 0x000093C9
        elseif ckYVar == 16
          return 0x000093A8
        elseif ckYVar == 17
          return 0x00009387
        elseif ckYVar == 18
          return 0x00009366
        elseif ckYVar == 19
          return 0x00009345
        elseif ckYVar == 20
          return 0x00009324
        elseif ckYVar == 21
          return 0x00009303
        elseif ckYVar == 22
          return 0x000092E2
        elseif ckYVar == 23
          return 0x000092C1
        elseif ckYVar == 24
          return 0x000092A0
        elseif ckYVar == 25
          return 0x0000927F
        elseif ckYVar == 26
          return 0x0000925E
        elseif ckYVar == 27
          return 0x0000923D
        elseif ckYVar == 28
          return 0x0000921C
        elseif ckYVar == 29
          return 0x000091FB
        elseif ckYVar == 30
          return 0x000091DA
        elseif ckYVar == 31
          return 0x000091B9
        elseif ckYVar == 32
          return 0x00003DB8
        elseif ckYVar == 33
          return 0x00003DB7
        elseif ckYVar == 34
          return 0x00003D81
        elseif ckYVar == 35
          return 0x00003D60
        elseif ckYVar == 36
          return 0x00003D3F
        elseif ckYVar == 37
          return 0x00003D1E
        elseif ckYVar == 38
          return 0x00003CFD
        elseif ckYVar == 39
          return 0x00003CDC
        elseif ckYVar == 40
          return 0x00003CBB
        elseif ckYVar == 41
          return 0x00003C9A
        elseif ckYVar == 42
          return 0x00003C79
        elseif ckYVar == 43
          return 0x00003C58
        elseif ckYVar == 44
          return 0x00003C37
        elseif ckYVar == 45
          return 0x00003C16
        elseif ckYVar == 46
          return 0x00003BF5
        elseif ckYVar == 47
          return 0x00003BD4
        elseif ckYVar == 48
          return 0x00003BB3
        elseif ckYVar == 49
          return 0x00003B92
        elseif ckYVar == 50
          return 0x00003B71
        endif
      elseif ckXVar == -20
        if ckYVar == -43
          return 0x0000F302
        elseif ckYVar == -42
          return 0x0000F2E1
        elseif ckYVar == -41
          return 0x0000F2C0
        elseif ckYVar == -40
          return 0x0000F29F
        elseif ckYVar == -39
          return 0x0000F27E
        elseif ckYVar == -38
          return 0x0000F25D
        elseif ckYVar == -37
          return 0x0000F23C
        elseif ckYVar == -36
          return 0x0000F21B
        elseif ckYVar == -35
          return 0x0000F1FA
        elseif ckYVar == -34
          return 0x0000F1D9
        elseif ckYVar == -33
          return 0x0000F1B8
        elseif ckYVar == -32
          return 0x00009DCA
        elseif ckYVar == -31
          return 0x00009DC9
        elseif ckYVar == -30
          return 0x00009D94
        elseif ckYVar == -29
          return 0x00009D73
        elseif ckYVar == -28
          return 0x00009D52
        elseif ckYVar == -27
          return 0x00009D31
        elseif ckYVar == -26
          return 0x00009D10
        elseif ckYVar == -25
          return 0x00009CEF
        elseif ckYVar == -24
          return 0x00009CCE
        elseif ckYVar == -23
          return 0x00009CAD
        elseif ckYVar == -22
          return 0x00009C8C
        elseif ckYVar == -21
          return 0x00009C6B
        elseif ckYVar == -20
          return 0x00009C4A
        elseif ckYVar == -19
          return 0x00009C29
        elseif ckYVar == -18
          return 0x00009C08
        elseif ckYVar == -17
          return 0x00009BE7
        elseif ckYVar == -16
          return 0x00009BC6
        elseif ckYVar == -15
          return 0x00009BA5
        elseif ckYVar == -14
          return 0x00009B84
        elseif ckYVar == -13
          return 0x00009B63
        elseif ckYVar == -12
          return 0x00009B42
        elseif ckYVar == -11
          return 0x00009B21
        elseif ckYVar == -10
          return 0x00009B00
        elseif ckYVar == -9
          return 0x00009ADF
        elseif ckYVar == -8
          return 0x00009ABE
        elseif ckYVar == -7
          return 0x00009A9D
        elseif ckYVar == -6
          return 0x00009A7C
        elseif ckYVar == -5
          return 0x00009A5B
        elseif ckYVar == -4
          return 0x00009A3A
        elseif ckYVar == -3
          return 0x00009A19
        elseif ckYVar == -2
          return 0x000099F8
        elseif ckYVar == -1
          return 0x000099D7
        elseif ckYVar == 0
          return 0x000099B6
        elseif ckYVar == 1
          return 0x00009596
        elseif ckYVar == 2
          return 0x00009575
        elseif ckYVar == 3
          return 0x00009554
        elseif ckYVar == 4
          return 0x00009533
        elseif ckYVar == 5
          return 0x00009512
        elseif ckYVar == 6
          return 0x000094F1
        elseif ckYVar == 7
          return 0x000094D0
        elseif ckYVar == 8
          return 0x000094AF
        elseif ckYVar == 9
          return 0x0000948E
        elseif ckYVar == 10
          return 0x0000946D
        elseif ckYVar == 11
          return 0x0000944C
        elseif ckYVar == 12
          return 0x0000942B
        elseif ckYVar == 13
          return 0x0000940A
        elseif ckYVar == 14
          return 0x000093E9
        elseif ckYVar == 15
          return 0x000093C8
        elseif ckYVar == 16
          return 0x000093A7
        elseif ckYVar == 17
          return 0x00009386
        elseif ckYVar == 18
          return 0x00009365
        elseif ckYVar == 19
          return 0x00009344
        elseif ckYVar == 20
          return 0x00009323
        elseif ckYVar == 21
          return 0x00009302
        elseif ckYVar == 22
          return 0x000092E1
        elseif ckYVar == 23
          return 0x000092C0
        elseif ckYVar == 24
          return 0x0000929F
        elseif ckYVar == 25
          return 0x0000927E
        elseif ckYVar == 26
          return 0x0000925D
        elseif ckYVar == 27
          return 0x0000923C
        elseif ckYVar == 28
          return 0x0000921B
        elseif ckYVar == 29
          return 0x000091FA
        elseif ckYVar == 30
          return 0x000091D9
        elseif ckYVar == 31
          return 0x000091B8
        elseif ckYVar == 32
          return 0x00003DB6
        elseif ckYVar == 33
          return 0x00003DB5
        elseif ckYVar == 34
          return 0x00003D80
        elseif ckYVar == 35
          return 0x00003D5F
        elseif ckYVar == 36
          return 0x00003D3E
        elseif ckYVar == 37
          return 0x00003D1D
        elseif ckYVar == 38
          return 0x00003CFC
        elseif ckYVar == 39
          return 0x00003CDB
        elseif ckYVar == 40
          return 0x00003CBA
        elseif ckYVar == 41
          return 0x00003C99
        elseif ckYVar == 42
          return 0x00003C78
        elseif ckYVar == 43
          return 0x00003C57
        elseif ckYVar == 44
          return 0x00003C36
        elseif ckYVar == 45
          return 0x00003C15
        elseif ckYVar == 46
          return 0x00003BF4
        elseif ckYVar == 47
          return 0x00003BD3
        elseif ckYVar == 48
          return 0x00003BB2
        elseif ckYVar == 49
          return 0x00003B91
        elseif ckYVar == 50
          return 0x00003B70
        endif
      endif
    elseif ckXVar <= -10
      if ckXVar == -19
        if ckYVar == -43
          return 0x0000F301
        elseif ckYVar == -42
          return 0x0000F2E0
        elseif ckYVar == -41
          return 0x0000F2BF
        elseif ckYVar == -40
          return 0x0000F29E
        elseif ckYVar == -39
          return 0x0000F27D
        elseif ckYVar == -38
          return 0x0000F25C
        elseif ckYVar == -37
          return 0x0000F23B
        elseif ckYVar == -36
          return 0x0000F21A
        elseif ckYVar == -35
          return 0x0000F1F9
        elseif ckYVar == -34
          return 0x0000F1D8
        elseif ckYVar == -33
          return 0x0000F1B7
        elseif ckYVar == -32
          return 0x00009DC8
        elseif ckYVar == -31
          return 0x00009DC7
        elseif ckYVar == -30
          return 0x00009D93
        elseif ckYVar == -29
          return 0x00009D72
        elseif ckYVar == -28
          return 0x00009D51
        elseif ckYVar == -27
          return 0x00009D30
        elseif ckYVar == -26
          return 0x00009D0F
        elseif ckYVar == -25
          return 0x00009CEE
        elseif ckYVar == -24
          return 0x00009CCD
        elseif ckYVar == -23
          return 0x00009CAC
        elseif ckYVar == -22
          return 0x00009C8B
        elseif ckYVar == -21
          return 0x00009C6A
        elseif ckYVar == -20
          return 0x00009C49
        elseif ckYVar == -19
          return 0x00009C28
        elseif ckYVar == -18
          return 0x00009C07
        elseif ckYVar == -17
          return 0x00009BE6
        elseif ckYVar == -16
          return 0x00009BC5
        elseif ckYVar == -15
          return 0x00009BA4
        elseif ckYVar == -14
          return 0x00009B83
        elseif ckYVar == -13
          return 0x00009B62
        elseif ckYVar == -12
          return 0x00009B41
        elseif ckYVar == -11
          return 0x00009B20
        elseif ckYVar == -10
          return 0x00009AFF
        elseif ckYVar == -9
          return 0x00009ADE
        elseif ckYVar == -8
          return 0x00009ABD
        elseif ckYVar == -7
          return 0x00009A9C
        elseif ckYVar == -6
          return 0x00009A7B
        elseif ckYVar == -5
          return 0x00009A5A
        elseif ckYVar == -4
          return 0x00009A39
        elseif ckYVar == -3
          return 0x00009A18
        elseif ckYVar == -2
          return 0x000099F7
        elseif ckYVar == -1
          return 0x000099D6
        elseif ckYVar == 0
          return 0x000099B5
        elseif ckYVar == 1
          return 0x00009595
        elseif ckYVar == 2
          return 0x00009574
        elseif ckYVar == 3
          return 0x00009553
        elseif ckYVar == 4
          return 0x00009532
        elseif ckYVar == 5
          return 0x00009511
        elseif ckYVar == 6
          return 0x000094F0
        elseif ckYVar == 7
          return 0x000094CF
        elseif ckYVar == 8
          return 0x000094AE
        elseif ckYVar == 9
          return 0x0000948D
        elseif ckYVar == 10
          return 0x0000946C
        elseif ckYVar == 11
          return 0x0000944B
        elseif ckYVar == 12
          return 0x0000942A
        elseif ckYVar == 13
          return 0x00009409
        elseif ckYVar == 14
          return 0x000093E8
        elseif ckYVar == 15
          return 0x000093C7
        elseif ckYVar == 16
          return 0x000093A6
        elseif ckYVar == 17
          return 0x00009385
        elseif ckYVar == 18
          return 0x00009364
        elseif ckYVar == 19
          return 0x00009343
        elseif ckYVar == 20
          return 0x00009322
        elseif ckYVar == 21
          return 0x00009301
        elseif ckYVar == 22
          return 0x000092E0
        elseif ckYVar == 23
          return 0x000092BF
        elseif ckYVar == 24
          return 0x0000929E
        elseif ckYVar == 25
          return 0x0000927D
        elseif ckYVar == 26
          return 0x0000925C
        elseif ckYVar == 27
          return 0x0000923B
        elseif ckYVar == 28
          return 0x0000921A
        elseif ckYVar == 29
          return 0x000091F9
        elseif ckYVar == 30
          return 0x000091D8
        elseif ckYVar == 31
          return 0x000091B7
        elseif ckYVar == 32
          return 0x00003DB4
        elseif ckYVar == 33
          return 0x00003DB3
        elseif ckYVar == 34
          return 0x00003D7F
        elseif ckYVar == 35
          return 0x00003D5E
        elseif ckYVar == 36
          return 0x00003D3D
        elseif ckYVar == 37
          return 0x00003D1C
        elseif ckYVar == 38
          return 0x00003CFB
        elseif ckYVar == 39
          return 0x00003CDA
        elseif ckYVar == 40
          return 0x00003CB9
        elseif ckYVar == 41
          return 0x00003C98
        elseif ckYVar == 42
          return 0x00003C77
        elseif ckYVar == 43
          return 0x00003C56
        elseif ckYVar == 44
          return 0x00003C35
        elseif ckYVar == 45
          return 0x00003C14
        elseif ckYVar == 46
          return 0x00003BF3
        elseif ckYVar == 47
          return 0x00003BD2
        elseif ckYVar == 48
          return 0x00003BB1
        elseif ckYVar == 49
          return 0x00003B90
        elseif ckYVar == 50
          return 0x00003B6F
        endif
      elseif ckXVar == -18
        if ckYVar == -43
          return 0x0000F300
        elseif ckYVar == -42
          return 0x0000F2DF
        elseif ckYVar == -41
          return 0x0000F2BE
        elseif ckYVar == -40
          return 0x0000F29D
        elseif ckYVar == -39
          return 0x0000F27C
        elseif ckYVar == -38
          return 0x0000F25B
        elseif ckYVar == -37
          return 0x0000F23A
        elseif ckYVar == -36
          return 0x0000F219
        elseif ckYVar == -35
          return 0x0000F1F8
        elseif ckYVar == -34
          return 0x0000F1D7
        elseif ckYVar == -33
          return 0x0000F1B6
        elseif ckYVar == -32
          return 0x00009DC6
        elseif ckYVar == -31
          return 0x00009DC5
        elseif ckYVar == -30
          return 0x00009D92
        elseif ckYVar == -29
          return 0x00009D71
        elseif ckYVar == -28
          return 0x00009D50
        elseif ckYVar == -27
          return 0x00009D2F
        elseif ckYVar == -26
          return 0x00009D0E
        elseif ckYVar == -25
          return 0x00009CED
        elseif ckYVar == -24
          return 0x00009CCC
        elseif ckYVar == -23
          return 0x00009CAB
        elseif ckYVar == -22
          return 0x00009C8A
        elseif ckYVar == -21
          return 0x00009C69
        elseif ckYVar == -20
          return 0x00009C48
        elseif ckYVar == -19
          return 0x00009C27
        elseif ckYVar == -18
          return 0x00009C06
        elseif ckYVar == -17
          return 0x00009BE5
        elseif ckYVar == -16
          return 0x00009BC4
        elseif ckYVar == -15
          return 0x00009BA3
        elseif ckYVar == -14
          return 0x00009B82
        elseif ckYVar == -13
          return 0x00009B61
        elseif ckYVar == -12
          return 0x00009B40
        elseif ckYVar == -11
          return 0x00009B1F
        elseif ckYVar == -10
          return 0x00009AFE
        elseif ckYVar == -9
          return 0x00009ADD
        elseif ckYVar == -8
          return 0x00009ABC
        elseif ckYVar == -7
          return 0x00009A9B
        elseif ckYVar == -6
          return 0x00009A7A
        elseif ckYVar == -5
          return 0x00009A59
        elseif ckYVar == -4
          return 0x00009A38
        elseif ckYVar == -3
          return 0x00009A17
        elseif ckYVar == -2
          return 0x000099F6
        elseif ckYVar == -1
          return 0x000099D5
        elseif ckYVar == 0
          return 0x000099B4
        elseif ckYVar == 1
          return 0x00009594
        elseif ckYVar == 2
          return 0x00009573
        elseif ckYVar == 3
          return 0x00009552
        elseif ckYVar == 4
          return 0x00009531
        elseif ckYVar == 5
          return 0x00009510
        elseif ckYVar == 6
          return 0x000094EF
        elseif ckYVar == 7
          return 0x000094CE
        elseif ckYVar == 8
          return 0x000094AD
        elseif ckYVar == 9
          return 0x0000948C
        elseif ckYVar == 10
          return 0x0000946B
        elseif ckYVar == 11
          return 0x0000944A
        elseif ckYVar == 12
          return 0x00009429
        elseif ckYVar == 13
          return 0x00009408
        elseif ckYVar == 14
          return 0x000093E7
        elseif ckYVar == 15
          return 0x000093C6
        elseif ckYVar == 16
          return 0x000093A5
        elseif ckYVar == 17
          return 0x00009384
        elseif ckYVar == 18
          return 0x00009363
        elseif ckYVar == 19
          return 0x00009342
        elseif ckYVar == 20
          return 0x00009321
        elseif ckYVar == 21
          return 0x00009300
        elseif ckYVar == 22
          return 0x000092DF
        elseif ckYVar == 23
          return 0x000092BE
        elseif ckYVar == 24
          return 0x0000929D
        elseif ckYVar == 25
          return 0x0000927C
        elseif ckYVar == 26
          return 0x0000925B
        elseif ckYVar == 27
          return 0x0000923A
        elseif ckYVar == 28
          return 0x00009219
        elseif ckYVar == 29
          return 0x000091F8
        elseif ckYVar == 30
          return 0x000091D7
        elseif ckYVar == 31
          return 0x000091B6
        elseif ckYVar == 32
          return 0x00003DB2
        elseif ckYVar == 33
          return 0x00003DB1
        elseif ckYVar == 34
          return 0x00003D7E
        elseif ckYVar == 35
          return 0x00003D5D
        elseif ckYVar == 36
          return 0x00003D3C
        elseif ckYVar == 37
          return 0x00003D1B
        elseif ckYVar == 38
          return 0x00003CFA
        elseif ckYVar == 39
          return 0x00003CD9
        elseif ckYVar == 40
          return 0x00003CB8
        elseif ckYVar == 41
          return 0x00003C97
        elseif ckYVar == 42
          return 0x00003C76
        elseif ckYVar == 43
          return 0x00003C55
        elseif ckYVar == 44
          return 0x00003C34
        elseif ckYVar == 45
          return 0x00003C13
        elseif ckYVar == 46
          return 0x00003BF2
        elseif ckYVar == 47
          return 0x00003BD1
        elseif ckYVar == 48
          return 0x00003BB0
        elseif ckYVar == 49
          return 0x00003B8F
        elseif ckYVar == 50
          return 0x00003B6E
        endif
      elseif ckXVar == -17
        if ckYVar == -43
          return 0x0000F2FF
        elseif ckYVar == -42
          return 0x0000F2DE
        elseif ckYVar == -41
          return 0x0000F2BD
        elseif ckYVar == -40
          return 0x0000F29C
        elseif ckYVar == -39
          return 0x0000F27B
        elseif ckYVar == -38
          return 0x0000F25A
        elseif ckYVar == -37
          return 0x0000F239
        elseif ckYVar == -36
          return 0x0000F218
        elseif ckYVar == -35
          return 0x0000F1F7
        elseif ckYVar == -34
          return 0x0000F1D6
        elseif ckYVar == -33
          return 0x0000F1B5
        elseif ckYVar == -32
          return 0x00009DC4
        elseif ckYVar == -31
          return 0x00009DC3
        elseif ckYVar == -30
          return 0x00009D91
        elseif ckYVar == -29
          return 0x00009D70
        elseif ckYVar == -28
          return 0x00009D4F
        elseif ckYVar == -27
          return 0x00009D2E
        elseif ckYVar == -26
          return 0x00009D0D
        elseif ckYVar == -25
          return 0x00009CEC
        elseif ckYVar == -24
          return 0x00009CCB
        elseif ckYVar == -23
          return 0x00009CAA
        elseif ckYVar == -22
          return 0x00009C89
        elseif ckYVar == -21
          return 0x00009C68
        elseif ckYVar == -20
          return 0x00009C47
        elseif ckYVar == -19
          return 0x00009C26
        elseif ckYVar == -18
          return 0x00009C05
        elseif ckYVar == -17
          return 0x00009BE4
        elseif ckYVar == -16
          return 0x00009BC3
        elseif ckYVar == -15
          return 0x00009BA2
        elseif ckYVar == -14
          return 0x00009B81
        elseif ckYVar == -13
          return 0x00009B60
        elseif ckYVar == -12
          return 0x00009B3F
        elseif ckYVar == -11
          return 0x00009B1E
        elseif ckYVar == -10
          return 0x00009AFD
        elseif ckYVar == -9
          return 0x00009ADC
        elseif ckYVar == -8
          return 0x00009ABB
        elseif ckYVar == -7
          return 0x00009A9A
        elseif ckYVar == -6
          return 0x00009A79
        elseif ckYVar == -5
          return 0x00009A58
        elseif ckYVar == -4
          return 0x00009A37
        elseif ckYVar == -3
          return 0x00009A16
        elseif ckYVar == -2
          return 0x000099F5
        elseif ckYVar == -1
          return 0x000099D4
        elseif ckYVar == 0
          return 0x000099B3
        elseif ckYVar == 1
          return 0x00009593
        elseif ckYVar == 2
          return 0x00009572
        elseif ckYVar == 3
          return 0x00009551
        elseif ckYVar == 4
          return 0x00009530
        elseif ckYVar == 5
          return 0x0000950F
        elseif ckYVar == 6
          return 0x000094EE
        elseif ckYVar == 7
          return 0x000094CD
        elseif ckYVar == 8
          return 0x000094AC
        elseif ckYVar == 9
          return 0x0000948B
        elseif ckYVar == 10
          return 0x0000946A
        elseif ckYVar == 11
          return 0x00009449
        elseif ckYVar == 12
          return 0x00009428
        elseif ckYVar == 13
          return 0x00009407
        elseif ckYVar == 14
          return 0x000093E6
        elseif ckYVar == 15
          return 0x000093C5
        elseif ckYVar == 16
          return 0x000093A4
        elseif ckYVar == 17
          return 0x00009383
        elseif ckYVar == 18
          return 0x00009362
        elseif ckYVar == 19
          return 0x00009341
        elseif ckYVar == 20
          return 0x00009320
        elseif ckYVar == 21
          return 0x000092FF
        elseif ckYVar == 22
          return 0x000092DE
        elseif ckYVar == 23
          return 0x000092BD
        elseif ckYVar == 24
          return 0x0000929C
        elseif ckYVar == 25
          return 0x0000927B
        elseif ckYVar == 26
          return 0x0000925A
        elseif ckYVar == 27
          return 0x00009239
        elseif ckYVar == 28
          return 0x00009218
        elseif ckYVar == 29
          return 0x000091F7
        elseif ckYVar == 30
          return 0x000091D6
        elseif ckYVar == 31
          return 0x000091B5
        elseif ckYVar == 32
          return 0x00003DB0
        elseif ckYVar == 33
          return 0x00003DAF
        elseif ckYVar == 34
          return 0x00003D7D
        elseif ckYVar == 35
          return 0x00003D5C
        elseif ckYVar == 36
          return 0x00003D3B
        elseif ckYVar == 37
          return 0x00003D1A
        elseif ckYVar == 38
          return 0x00003CF9
        elseif ckYVar == 39
          return 0x00003CD8
        elseif ckYVar == 40
          return 0x00003CB7
        elseif ckYVar == 41
          return 0x00003C96
        elseif ckYVar == 42
          return 0x00003C75
        elseif ckYVar == 43
          return 0x00003C54
        elseif ckYVar == 44
          return 0x00003C33
        elseif ckYVar == 45
          return 0x00003C12
        elseif ckYVar == 46
          return 0x00003BF1
        elseif ckYVar == 47
          return 0x00003BD0
        elseif ckYVar == 48
          return 0x00003BAF
        elseif ckYVar == 49
          return 0x00003B8E
        elseif ckYVar == 50
          return 0x00003B6D
        endif
      elseif ckXVar == -16
        if ckYVar == -43
          return 0x0000F2FE
        elseif ckYVar == -42
          return 0x0000F2DD
        elseif ckYVar == -41
          return 0x0000F2BC
        elseif ckYVar == -40
          return 0x0000F29B
        elseif ckYVar == -39
          return 0x0000F27A
        elseif ckYVar == -38
          return 0x0000F259
        elseif ckYVar == -37
          return 0x0000F238
        elseif ckYVar == -36
          return 0x0000F217
        elseif ckYVar == -35
          return 0x0000F1F6
        elseif ckYVar == -34
          return 0x0000F1D5
        elseif ckYVar == -33
          return 0x0000F1B4
        elseif ckYVar == -32
          return 0x00009DC2
        elseif ckYVar == -31
          return 0x00009DC1
        elseif ckYVar == -30
          return 0x00009D90
        elseif ckYVar == -29
          return 0x00009D6F
        elseif ckYVar == -28
          return 0x00009D4E
        elseif ckYVar == -27
          return 0x00009D2D
        elseif ckYVar == -26
          return 0x00009D0C
        elseif ckYVar == -25
          return 0x00009CEB
        elseif ckYVar == -24
          return 0x00009CCA
        elseif ckYVar == -23
          return 0x00009CA9
        elseif ckYVar == -22
          return 0x00009C88
        elseif ckYVar == -21
          return 0x00009C67
        elseif ckYVar == -20
          return 0x00009C46
        elseif ckYVar == -19
          return 0x00009C25
        elseif ckYVar == -18
          return 0x00009C04
        elseif ckYVar == -17
          return 0x00009BE3
        elseif ckYVar == -16
          return 0x00009BC2
        elseif ckYVar == -15
          return 0x00009BA1
        elseif ckYVar == -14
          return 0x00009B80
        elseif ckYVar == -13
          return 0x00009B5F
        elseif ckYVar == -12
          return 0x00009B3E
        elseif ckYVar == -11
          return 0x00009B1D
        elseif ckYVar == -10
          return 0x00009AFC
        elseif ckYVar == -9
          return 0x00009ADB
        elseif ckYVar == -8
          return 0x00009ABA
        elseif ckYVar == -7
          return 0x00009A99
        elseif ckYVar == -6
          return 0x00009A78
        elseif ckYVar == -5
          return 0x00009A57
        elseif ckYVar == -4
          return 0x00009A36
        elseif ckYVar == -3
          return 0x00009A15
        elseif ckYVar == -2
          return 0x000099F4
        elseif ckYVar == -1
          return 0x000099D3
        elseif ckYVar == 0
          return 0x000099B2
        elseif ckYVar == 1
          return 0x00009592
        elseif ckYVar == 2
          return 0x00009571
        elseif ckYVar == 3
          return 0x00009550
        elseif ckYVar == 4
          return 0x0000952F
        elseif ckYVar == 5
          return 0x0000950E
        elseif ckYVar == 6
          return 0x000094ED
        elseif ckYVar == 7
          return 0x000094CC
        elseif ckYVar == 8
          return 0x000094AB
        elseif ckYVar == 9
          return 0x0000948A
        elseif ckYVar == 10
          return 0x00009469
        elseif ckYVar == 11
          return 0x00009448
        elseif ckYVar == 12
          return 0x00009427
        elseif ckYVar == 13
          return 0x00009406
        elseif ckYVar == 14
          return 0x000093E5
        elseif ckYVar == 15
          return 0x000093C4
        elseif ckYVar == 16
          return 0x000093A3
        elseif ckYVar == 17
          return 0x00009382
        elseif ckYVar == 18
          return 0x00009361
        elseif ckYVar == 19
          return 0x00009340
        elseif ckYVar == 20
          return 0x0000931F
        elseif ckYVar == 21
          return 0x000092FE
        elseif ckYVar == 22
          return 0x000092DD
        elseif ckYVar == 23
          return 0x000092BC
        elseif ckYVar == 24
          return 0x0000929B
        elseif ckYVar == 25
          return 0x0000927A
        elseif ckYVar == 26
          return 0x00009259
        elseif ckYVar == 27
          return 0x00009238
        elseif ckYVar == 28
          return 0x00009217
        elseif ckYVar == 29
          return 0x000091F6
        elseif ckYVar == 30
          return 0x000091D5
        elseif ckYVar == 31
          return 0x000091B4
        elseif ckYVar == 32
          return 0x00003DAE
        elseif ckYVar == 33
          return 0x00003DAD
        elseif ckYVar == 34
          return 0x00003D7C
        elseif ckYVar == 35
          return 0x00003D5B
        elseif ckYVar == 36
          return 0x00003D3A
        elseif ckYVar == 37
          return 0x00003D19
        elseif ckYVar == 38
          return 0x00003CF8
        elseif ckYVar == 39
          return 0x00003CD7
        elseif ckYVar == 40
          return 0x00003CB6
        elseif ckYVar == 41
          return 0x00003C95
        elseif ckYVar == 42
          return 0x00003C74
        elseif ckYVar == 43
          return 0x00003C53
        elseif ckYVar == 44
          return 0x00003C32
        elseif ckYVar == 45
          return 0x00003C11
        elseif ckYVar == 46
          return 0x00003BF0
        elseif ckYVar == 47
          return 0x00003BCF
        elseif ckYVar == 48
          return 0x00003BAE
        elseif ckYVar == 49
          return 0x00003B8D
        elseif ckYVar == 50
          return 0x00003B6C
        endif
      elseif ckXVar == -15
        if ckYVar == -43
          return 0x0000F2FD
        elseif ckYVar == -42
          return 0x0000F2DC
        elseif ckYVar == -41
          return 0x0000F2BB
        elseif ckYVar == -40
          return 0x0000F29A
        elseif ckYVar == -39
          return 0x0000F279
        elseif ckYVar == -38
          return 0x0000F258
        elseif ckYVar == -37
          return 0x0000F237
        elseif ckYVar == -36
          return 0x0000F216
        elseif ckYVar == -35
          return 0x0000F1F5
        elseif ckYVar == -34
          return 0x0000F1D4
        elseif ckYVar == -33
          return 0x0000F1B3
        elseif ckYVar == -32
          return 0x00009DC0
        elseif ckYVar == -31
          return 0x00009DBF
        elseif ckYVar == -30
          return 0x00009D8F
        elseif ckYVar == -29
          return 0x00009D6E
        elseif ckYVar == -28
          return 0x00009D4D
        elseif ckYVar == -27
          return 0x00009D2C
        elseif ckYVar == -26
          return 0x00009D0B
        elseif ckYVar == -25
          return 0x00009CEA
        elseif ckYVar == -24
          return 0x00009CC9
        elseif ckYVar == -23
          return 0x00009CA8
        elseif ckYVar == -22
          return 0x00009C87
        elseif ckYVar == -21
          return 0x00009C66
        elseif ckYVar == -20
          return 0x00009C45
        elseif ckYVar == -19
          return 0x00009C24
        elseif ckYVar == -18
          return 0x00009C03
        elseif ckYVar == -17
          return 0x00009BE2
        elseif ckYVar == -16
          return 0x00009BC1
        elseif ckYVar == -15
          return 0x00009BA0
        elseif ckYVar == -14
          return 0x00009B7F
        elseif ckYVar == -13
          return 0x00009B5E
        elseif ckYVar == -12
          return 0x00009B3D
        elseif ckYVar == -11
          return 0x00009B1C
        elseif ckYVar == -10
          return 0x00009AFB
        elseif ckYVar == -9
          return 0x00009ADA
        elseif ckYVar == -8
          return 0x00009AB9
        elseif ckYVar == -7
          return 0x00009A98
        elseif ckYVar == -6
          return 0x00009A77
        elseif ckYVar == -5
          return 0x00009A56
        elseif ckYVar == -4
          return 0x00009A35
        elseif ckYVar == -3
          return 0x00009A14
        elseif ckYVar == -2
          return 0x000099F3
        elseif ckYVar == -1
          return 0x000099D2
        elseif ckYVar == 0
          return 0x000099B1
        elseif ckYVar == 1
          return 0x00009591
        elseif ckYVar == 2
          return 0x00009570
        elseif ckYVar == 3
          return 0x0000954F
        elseif ckYVar == 4
          return 0x0000952E
        elseif ckYVar == 5
          return 0x0000950D
        elseif ckYVar == 6
          return 0x000094EC
        elseif ckYVar == 7
          return 0x000094CB
        elseif ckYVar == 8
          return 0x000094AA
        elseif ckYVar == 9
          return 0x00009489
        elseif ckYVar == 10
          return 0x00009468
        elseif ckYVar == 11
          return 0x00009447
        elseif ckYVar == 12
          return 0x00009426
        elseif ckYVar == 13
          return 0x00009405
        elseif ckYVar == 14
          return 0x000093E4
        elseif ckYVar == 15
          return 0x000093C3
        elseif ckYVar == 16
          return 0x000093A2
        elseif ckYVar == 17
          return 0x00009381
        elseif ckYVar == 18
          return 0x00009360
        elseif ckYVar == 19
          return 0x0000933F
        elseif ckYVar == 20
          return 0x0000931E
        elseif ckYVar == 21
          return 0x000092FD
        elseif ckYVar == 22
          return 0x000092DC
        elseif ckYVar == 23
          return 0x000092BB
        elseif ckYVar == 24
          return 0x0000929A
        elseif ckYVar == 25
          return 0x00009279
        elseif ckYVar == 26
          return 0x00009258
        elseif ckYVar == 27
          return 0x00009237
        elseif ckYVar == 28
          return 0x00009216
        elseif ckYVar == 29
          return 0x000091F5
        elseif ckYVar == 30
          return 0x000091D4
        elseif ckYVar == 31
          return 0x000091B3
        elseif ckYVar == 32
          return 0x00003DAC
        elseif ckYVar == 33
          return 0x00003DAB
        elseif ckYVar == 34
          return 0x00003D7B
        elseif ckYVar == 35
          return 0x00003D5A
        elseif ckYVar == 36
          return 0x00003D39
        elseif ckYVar == 37
          return 0x00003D18
        elseif ckYVar == 38
          return 0x00003CF7
        elseif ckYVar == 39
          return 0x00003CD6
        elseif ckYVar == 40
          return 0x00003CB5
        elseif ckYVar == 41
          return 0x00003C94
        elseif ckYVar == 42
          return 0x00003C73
        elseif ckYVar == 43
          return 0x00003C52
        elseif ckYVar == 44
          return 0x00003C31
        elseif ckYVar == 45
          return 0x00003C10
        elseif ckYVar == 46
          return 0x00003BEF
        elseif ckYVar == 47
          return 0x00003BCE
        elseif ckYVar == 48
          return 0x00003BAD
        elseif ckYVar == 49
          return 0x00003B8C
        elseif ckYVar == 50
          return 0x00003B6B
        endif
      elseif ckXVar == -14
        if ckYVar == -43
          return 0x0000F2FC
        elseif ckYVar == -42
          return 0x0000F2DB
        elseif ckYVar == -41
          return 0x0000F2BA
        elseif ckYVar == -40
          return 0x0000F299
        elseif ckYVar == -39
          return 0x0000F278
        elseif ckYVar == -38
          return 0x0000F257
        elseif ckYVar == -37
          return 0x0000F236
        elseif ckYVar == -36
          return 0x0000F215
        elseif ckYVar == -35
          return 0x0000F1F4
        elseif ckYVar == -34
          return 0x0000F1D3
        elseif ckYVar == -33
          return 0x0000F1B2
        elseif ckYVar == -32
          return 0x00009DBE
        elseif ckYVar == -31
          return 0x00009DBD
        elseif ckYVar == -30
          return 0x00009D8E
        elseif ckYVar == -29
          return 0x00009D6D
        elseif ckYVar == -28
          return 0x00009D4C
        elseif ckYVar == -27
          return 0x00009D2B
        elseif ckYVar == -26
          return 0x00009D0A
        elseif ckYVar == -25
          return 0x00009CE9
        elseif ckYVar == -24
          return 0x00009CC8
        elseif ckYVar == -23
          return 0x00009CA7
        elseif ckYVar == -22
          return 0x00009C86
        elseif ckYVar == -21
          return 0x00009C65
        elseif ckYVar == -20
          return 0x00009C44
        elseif ckYVar == -19
          return 0x00009C23
        elseif ckYVar == -18
          return 0x00009C02
        elseif ckYVar == -17
          return 0x00009BE1
        elseif ckYVar == -16
          return 0x00009BC0
        elseif ckYVar == -15
          return 0x00009B9F
        elseif ckYVar == -14
          return 0x00009B7E
        elseif ckYVar == -13
          return 0x00009B5D
        elseif ckYVar == -12
          return 0x00009B3C
        elseif ckYVar == -11
          return 0x00009B1B
        elseif ckYVar == -10
          return 0x00009AFA
        elseif ckYVar == -9
          return 0x00009AD9
        elseif ckYVar == -8
          return 0x00009AB8
        elseif ckYVar == -7
          return 0x00009A97
        elseif ckYVar == -6
          return 0x00009A76
        elseif ckYVar == -5
          return 0x00009A55
        elseif ckYVar == -4
          return 0x00009A34
        elseif ckYVar == -3
          return 0x00009A13
        elseif ckYVar == -2
          return 0x000099F2
        elseif ckYVar == -1
          return 0x000099D1
        elseif ckYVar == 0
          return 0x000099B0
        elseif ckYVar == 1
          return 0x00009590
        elseif ckYVar == 2
          return 0x0000956F
        elseif ckYVar == 3
          return 0x0000954E
        elseif ckYVar == 4
          return 0x0000952D
        elseif ckYVar == 5
          return 0x0000950C
        elseif ckYVar == 6
          return 0x000094EB
        elseif ckYVar == 7
          return 0x000094CA
        elseif ckYVar == 8
          return 0x000094A9
        elseif ckYVar == 9
          return 0x00009488
        elseif ckYVar == 10
          return 0x00009467
        elseif ckYVar == 11
          return 0x00009446
        elseif ckYVar == 12
          return 0x00009425
        elseif ckYVar == 13
          return 0x00009404
        elseif ckYVar == 14
          return 0x000093E3
        elseif ckYVar == 15
          return 0x000093C2
        elseif ckYVar == 16
          return 0x000093A1
        elseif ckYVar == 17
          return 0x00009380
        elseif ckYVar == 18
          return 0x0000935F
        elseif ckYVar == 19
          return 0x0000933E
        elseif ckYVar == 20
          return 0x0000931D
        elseif ckYVar == 21
          return 0x000092FC
        elseif ckYVar == 22
          return 0x000092DB
        elseif ckYVar == 23
          return 0x000092BA
        elseif ckYVar == 24
          return 0x00009299
        elseif ckYVar == 25
          return 0x00009278
        elseif ckYVar == 26
          return 0x00009257
        elseif ckYVar == 27
          return 0x00009236
        elseif ckYVar == 28
          return 0x00009215
        elseif ckYVar == 29
          return 0x000091F4
        elseif ckYVar == 30
          return 0x000091D3
        elseif ckYVar == 31
          return 0x000091B2
        elseif ckYVar == 32
          return 0x00003DAA
        elseif ckYVar == 33
          return 0x00003DA9
        elseif ckYVar == 34
          return 0x00003D7A
        elseif ckYVar == 35
          return 0x00003D59
        elseif ckYVar == 36
          return 0x00003D38
        elseif ckYVar == 37
          return 0x00003D17
        elseif ckYVar == 38
          return 0x00003CF6
        elseif ckYVar == 39
          return 0x00003CD5
        elseif ckYVar == 40
          return 0x00003CB4
        elseif ckYVar == 41
          return 0x00003C93
        elseif ckYVar == 42
          return 0x00003C72
        elseif ckYVar == 43
          return 0x00003C51
        elseif ckYVar == 44
          return 0x00003C30
        elseif ckYVar == 45
          return 0x00003C0F
        elseif ckYVar == 46
          return 0x00003BEE
        elseif ckYVar == 47
          return 0x00003BCD
        elseif ckYVar == 48
          return 0x00003BAC
        elseif ckYVar == 49
          return 0x00003B8B
        elseif ckYVar == 50
          return 0x00003B6A
        endif
      elseif ckXVar == -13
        if ckYVar == -43
          return 0x0000F2FB
        elseif ckYVar == -42
          return 0x0000F2DA
        elseif ckYVar == -41
          return 0x0000F2B9
        elseif ckYVar == -40
          return 0x0000F298
        elseif ckYVar == -39
          return 0x0000F277
        elseif ckYVar == -38
          return 0x0000F256
        elseif ckYVar == -37
          return 0x0000F235
        elseif ckYVar == -36
          return 0x0000F214
        elseif ckYVar == -35
          return 0x0000F1F3
        elseif ckYVar == -34
          return 0x0000F1D2
        elseif ckYVar == -33
          return 0x0000F1B1
        elseif ckYVar == -32
          return 0x00009DBC
        elseif ckYVar == -31
          return 0x00009DBB
        elseif ckYVar == -30
          return 0x00009D8D
        elseif ckYVar == -29
          return 0x00009D6C
        elseif ckYVar == -28
          return 0x00009D4B
        elseif ckYVar == -27
          return 0x00009D2A
        elseif ckYVar == -26
          return 0x00009D09
        elseif ckYVar == -25
          return 0x00009CE8
        elseif ckYVar == -24
          return 0x00009CC7
        elseif ckYVar == -23
          return 0x00009CA6
        elseif ckYVar == -22
          return 0x00009C85
        elseif ckYVar == -21
          return 0x00009C64
        elseif ckYVar == -20
          return 0x00009C43
        elseif ckYVar == -19
          return 0x00009C22
        elseif ckYVar == -18
          return 0x00009C01
        elseif ckYVar == -17
          return 0x00009BE0
        elseif ckYVar == -16
          return 0x00009BBF
        elseif ckYVar == -15
          return 0x00009B9E
        elseif ckYVar == -14
          return 0x00009B7D
        elseif ckYVar == -13
          return 0x00009B5C
        elseif ckYVar == -12
          return 0x00009B3B
        elseif ckYVar == -11
          return 0x00009B1A
        elseif ckYVar == -10
          return 0x00009AF9
        elseif ckYVar == -9
          return 0x00009AD8
        elseif ckYVar == -8
          return 0x00009AB7
        elseif ckYVar == -7
          return 0x00009A96
        elseif ckYVar == -6
          return 0x00009A75
        elseif ckYVar == -5
          return 0x00009A54
        elseif ckYVar == -4
          return 0x00009A33
        elseif ckYVar == -3
          return 0x00009A12
        elseif ckYVar == -2
          return 0x000099F1
        elseif ckYVar == -1
          return 0x000099D0
        elseif ckYVar == 0
          return 0x000099AF
        elseif ckYVar == 1
          return 0x0000958F
        elseif ckYVar == 2
          return 0x0000956E
        elseif ckYVar == 3
          return 0x0000954D
        elseif ckYVar == 4
          return 0x0000952C
        elseif ckYVar == 5
          return 0x0000950B
        elseif ckYVar == 6
          return 0x000094EA
        elseif ckYVar == 7
          return 0x000094C9
        elseif ckYVar == 8
          return 0x000094A8
        elseif ckYVar == 9
          return 0x00009487
        elseif ckYVar == 10
          return 0x00009466
        elseif ckYVar == 11
          return 0x00009445
        elseif ckYVar == 12
          return 0x00009424
        elseif ckYVar == 13
          return 0x00009403
        elseif ckYVar == 14
          return 0x000093E2
        elseif ckYVar == 15
          return 0x000093C1
        elseif ckYVar == 16
          return 0x000093A0
        elseif ckYVar == 17
          return 0x0000937F
        elseif ckYVar == 18
          return 0x0000935E
        elseif ckYVar == 19
          return 0x0000933D
        elseif ckYVar == 20
          return 0x0000931C
        elseif ckYVar == 21
          return 0x000092FB
        elseif ckYVar == 22
          return 0x000092DA
        elseif ckYVar == 23
          return 0x000092B9
        elseif ckYVar == 24
          return 0x00009298
        elseif ckYVar == 25
          return 0x00009277
        elseif ckYVar == 26
          return 0x00009256
        elseif ckYVar == 27
          return 0x00009235
        elseif ckYVar == 28
          return 0x00009214
        elseif ckYVar == 29
          return 0x000091F3
        elseif ckYVar == 30
          return 0x000091D2
        elseif ckYVar == 31
          return 0x000091B1
        elseif ckYVar == 32
          return 0x00003DA8
        elseif ckYVar == 33
          return 0x00003DA7
        elseif ckYVar == 34
          return 0x00003D79
        elseif ckYVar == 35
          return 0x00003D58
        elseif ckYVar == 36
          return 0x00003D37
        elseif ckYVar == 37
          return 0x00003D16
        elseif ckYVar == 38
          return 0x00003CF5
        elseif ckYVar == 39
          return 0x00003CD4
        elseif ckYVar == 40
          return 0x00003CB3
        elseif ckYVar == 41
          return 0x00003C92
        elseif ckYVar == 42
          return 0x00003C71
        elseif ckYVar == 43
          return 0x00003C50
        elseif ckYVar == 44
          return 0x00003C2F
        elseif ckYVar == 45
          return 0x00003C0E
        elseif ckYVar == 46
          return 0x00003BED
        elseif ckYVar == 47
          return 0x00003BCC
        elseif ckYVar == 48
          return 0x00003BAB
        elseif ckYVar == 49
          return 0x00003B8A
        elseif ckYVar == 50
          return 0x00003B69
        endif
      elseif ckXVar == -12
        if ckYVar == -43
          return 0x0000F2FA
        elseif ckYVar == -42
          return 0x0000F2D9
        elseif ckYVar == -41
          return 0x0000F2B8
        elseif ckYVar == -40
          return 0x0000F297
        elseif ckYVar == -39
          return 0x0000F276
        elseif ckYVar == -38
          return 0x0000F255
        elseif ckYVar == -37
          return 0x0000F234
        elseif ckYVar == -36
          return 0x0000F213
        elseif ckYVar == -35
          return 0x0000F1F2
        elseif ckYVar == -34
          return 0x0000F1D1
        elseif ckYVar == -33
          return 0x0000F1B0
        elseif ckYVar == -32
          return 0x00009DBA
        elseif ckYVar == -31
          return 0x00009DB9
        elseif ckYVar == -30
          return 0x00009D8C
        elseif ckYVar == -29
          return 0x00009D6B
        elseif ckYVar == -28
          return 0x00009D4A
        elseif ckYVar == -27
          return 0x00009D29
        elseif ckYVar == -26
          return 0x00009D08
        elseif ckYVar == -25
          return 0x00009CE7
        elseif ckYVar == -24
          return 0x00009CC6
        elseif ckYVar == -23
          return 0x00009CA5
        elseif ckYVar == -22
          return 0x00009C84
        elseif ckYVar == -21
          return 0x00009C63
        elseif ckYVar == -20
          return 0x00009C42
        elseif ckYVar == -19
          return 0x00009C21
        elseif ckYVar == -18
          return 0x00009C00
        elseif ckYVar == -17
          return 0x00009BDF
        elseif ckYVar == -16
          return 0x00009BBE
        elseif ckYVar == -15
          return 0x00009B9D
        elseif ckYVar == -14
          return 0x00009B7C
        elseif ckYVar == -13
          return 0x00009B5B
        elseif ckYVar == -12
          return 0x00009B3A
        elseif ckYVar == -11
          return 0x00009B19
        elseif ckYVar == -10
          return 0x00009AF8
        elseif ckYVar == -9
          return 0x00009AD7
        elseif ckYVar == -8
          return 0x00009AB6
        elseif ckYVar == -7
          return 0x00009A95
        elseif ckYVar == -6
          return 0x00009A74
        elseif ckYVar == -5
          return 0x00009A53
        elseif ckYVar == -4
          return 0x00009A32
        elseif ckYVar == -3
          return 0x00009A11
        elseif ckYVar == -2
          return 0x000099F0
        elseif ckYVar == -1
          return 0x000099CF
        elseif ckYVar == 0
          return 0x000099AE
        elseif ckYVar == 1
          return 0x0000958E
        elseif ckYVar == 2
          return 0x0000956D
        elseif ckYVar == 3
          return 0x0000954C
        elseif ckYVar == 4
          return 0x0000952B
        elseif ckYVar == 5
          return 0x0000950A
        elseif ckYVar == 6
          return 0x000094E9
        elseif ckYVar == 7
          return 0x000094C8
        elseif ckYVar == 8
          return 0x000094A7
        elseif ckYVar == 9
          return 0x00009486
        elseif ckYVar == 10
          return 0x00009465
        elseif ckYVar == 11
          return 0x00009444
        elseif ckYVar == 12
          return 0x00009423
        elseif ckYVar == 13
          return 0x00009402
        elseif ckYVar == 14
          return 0x000093E1
        elseif ckYVar == 15
          return 0x000093C0
        elseif ckYVar == 16
          return 0x0000939F
        elseif ckYVar == 17
          return 0x0000937E
        elseif ckYVar == 18
          return 0x0000935D
        elseif ckYVar == 19
          return 0x0000933C
        elseif ckYVar == 20
          return 0x0000931B
        elseif ckYVar == 21
          return 0x000092FA
        elseif ckYVar == 22
          return 0x000092D9
        elseif ckYVar == 23
          return 0x000092B8
        elseif ckYVar == 24
          return 0x00009297
        elseif ckYVar == 25
          return 0x00009276
        elseif ckYVar == 26
          return 0x00009255
        elseif ckYVar == 27
          return 0x00009234
        elseif ckYVar == 28
          return 0x00009213
        elseif ckYVar == 29
          return 0x000091F2
        elseif ckYVar == 30
          return 0x000091D1
        elseif ckYVar == 31
          return 0x000091B0
        elseif ckYVar == 32
          return 0x00003DA6
        elseif ckYVar == 33
          return 0x00003DA5
        elseif ckYVar == 34
          return 0x00003D78
        elseif ckYVar == 35
          return 0x00003D57
        elseif ckYVar == 36
          return 0x00003D36
        elseif ckYVar == 37
          return 0x00003D15
        elseif ckYVar == 38
          return 0x00003CF4
        elseif ckYVar == 39
          return 0x00003CD3
        elseif ckYVar == 40
          return 0x00003CB2
        elseif ckYVar == 41
          return 0x00003C91
        elseif ckYVar == 42
          return 0x00003C70
        elseif ckYVar == 43
          return 0x00003C4F
        elseif ckYVar == 44
          return 0x00003C2E
        elseif ckYVar == 45
          return 0x00003C0D
        elseif ckYVar == 46
          return 0x00003BEC
        elseif ckYVar == 47
          return 0x00003BCB
        elseif ckYVar == 48
          return 0x00003BAA
        elseif ckYVar == 49
          return 0x00003B89
        elseif ckYVar == 50
          return 0x00003B68
        endif
      elseif ckXVar == -11
        if ckYVar == -43
          return 0x0000F2F9
        elseif ckYVar == -42
          return 0x0000F2D8
        elseif ckYVar == -41
          return 0x0000F2B7
        elseif ckYVar == -40
          return 0x0000F296
        elseif ckYVar == -39
          return 0x0000F275
        elseif ckYVar == -38
          return 0x0000F254
        elseif ckYVar == -37
          return 0x0000F233
        elseif ckYVar == -36
          return 0x0000F212
        elseif ckYVar == -35
          return 0x0000F1F1
        elseif ckYVar == -34
          return 0x0000F1D0
        elseif ckYVar == -33
          return 0x0000F1AF
        elseif ckYVar == -32
          return 0x00009DB8
        elseif ckYVar == -31
          return 0x00009DB7
        elseif ckYVar == -30
          return 0x00009D8B
        elseif ckYVar == -29
          return 0x00009D6A
        elseif ckYVar == -28
          return 0x00009D49
        elseif ckYVar == -27
          return 0x00009D28
        elseif ckYVar == -26
          return 0x00009D07
        elseif ckYVar == -25
          return 0x00009CE6
        elseif ckYVar == -24
          return 0x00009CC5
        elseif ckYVar == -23
          return 0x00009CA4
        elseif ckYVar == -22
          return 0x00009C83
        elseif ckYVar == -21
          return 0x00009C62
        elseif ckYVar == -20
          return 0x00009C41
        elseif ckYVar == -19
          return 0x00009C20
        elseif ckYVar == -18
          return 0x00009BFF
        elseif ckYVar == -17
          return 0x00009BDE
        elseif ckYVar == -16
          return 0x00009BBD
        elseif ckYVar == -15
          return 0x00009B9C
        elseif ckYVar == -14
          return 0x00009B7B
        elseif ckYVar == -13
          return 0x00009B5A
        elseif ckYVar == -12
          return 0x00009B39
        elseif ckYVar == -11
          return 0x00009B18
        elseif ckYVar == -10
          return 0x00009AF7
        elseif ckYVar == -9
          return 0x00009AD6
        elseif ckYVar == -8
          return 0x00009AB5
        elseif ckYVar == -7
          return 0x00009A94
        elseif ckYVar == -6
          return 0x00009A73
        elseif ckYVar == -5
          return 0x00009A52
        elseif ckYVar == -4
          return 0x00009A31
        elseif ckYVar == -3
          return 0x00009A10
        elseif ckYVar == -2
          return 0x000099EF
        elseif ckYVar == -1
          return 0x000099CE
        elseif ckYVar == 0
          return 0x000099AD
        elseif ckYVar == 1
          return 0x0000958D
        elseif ckYVar == 2
          return 0x0000956C
        elseif ckYVar == 3
          return 0x0000954B
        elseif ckYVar == 4
          return 0x0000952A
        elseif ckYVar == 5
          return 0x00009509
        elseif ckYVar == 6
          return 0x000094E8
        elseif ckYVar == 7
          return 0x000094C7
        elseif ckYVar == 8
          return 0x000094A6
        elseif ckYVar == 9
          return 0x00009485
        elseif ckYVar == 10
          return 0x00009464
        elseif ckYVar == 11
          return 0x00009443
        elseif ckYVar == 12
          return 0x00009422
        elseif ckYVar == 13
          return 0x00009401
        elseif ckYVar == 14
          return 0x000093E0
        elseif ckYVar == 15
          return 0x000093BF
        elseif ckYVar == 16
          return 0x0000939E
        elseif ckYVar == 17
          return 0x0000937D
        elseif ckYVar == 18
          return 0x0000935C
        elseif ckYVar == 19
          return 0x0000933B
        elseif ckYVar == 20
          return 0x0000931A
        elseif ckYVar == 21
          return 0x000092F9
        elseif ckYVar == 22
          return 0x000092D8
        elseif ckYVar == 23
          return 0x000092B7
        elseif ckYVar == 24
          return 0x00009296
        elseif ckYVar == 25
          return 0x00009275
        elseif ckYVar == 26
          return 0x00009254
        elseif ckYVar == 27
          return 0x00009233
        elseif ckYVar == 28
          return 0x00009212
        elseif ckYVar == 29
          return 0x000091F1
        elseif ckYVar == 30
          return 0x000091D0
        elseif ckYVar == 31
          return 0x000091AF
        elseif ckYVar == 32
          return 0x00003DA4
        elseif ckYVar == 33
          return 0x00003DA3
        elseif ckYVar == 34
          return 0x00003D77
        elseif ckYVar == 35
          return 0x00003D56
        elseif ckYVar == 36
          return 0x00003D35
        elseif ckYVar == 37
          return 0x00003D14
        elseif ckYVar == 38
          return 0x00003CF3
        elseif ckYVar == 39
          return 0x00003CD2
        elseif ckYVar == 40
          return 0x00003CB1
        elseif ckYVar == 41
          return 0x00003C90
        elseif ckYVar == 42
          return 0x00003C6F
        elseif ckYVar == 43
          return 0x00003C4E
        elseif ckYVar == 44
          return 0x00003C2D
        elseif ckYVar == 45
          return 0x00003C0C
        elseif ckYVar == 46
          return 0x00003BEB
        elseif ckYVar == 47
          return 0x00003BCA
        elseif ckYVar == 48
          return 0x00003BA9
        elseif ckYVar == 49
          return 0x00003B88
        elseif ckYVar == 50
          return 0x00003B67
        endif
      elseif ckXVar == -10
        if ckYVar == -43
          return 0x0000F2F8
        elseif ckYVar == -42
          return 0x0000F2D7
        elseif ckYVar == -41
          return 0x0000F2B6
        elseif ckYVar == -40
          return 0x0000F295
        elseif ckYVar == -39
          return 0x0000F274
        elseif ckYVar == -38
          return 0x0000F253
        elseif ckYVar == -37
          return 0x0000F232
        elseif ckYVar == -36
          return 0x0000F211
        elseif ckYVar == -35
          return 0x0000F1F0
        elseif ckYVar == -34
          return 0x0000F1CF
        elseif ckYVar == -33
          return 0x0000F1AE
        elseif ckYVar == -32
          return 0x00009DB6
        elseif ckYVar == -31
          return 0x00009DB5
        elseif ckYVar == -30
          return 0x00009D8A
        elseif ckYVar == -29
          return 0x00009D69
        elseif ckYVar == -28
          return 0x00009D48
        elseif ckYVar == -27
          return 0x00009D27
        elseif ckYVar == -26
          return 0x00009D06
        elseif ckYVar == -25
          return 0x00009CE5
        elseif ckYVar == -24
          return 0x00009CC4
        elseif ckYVar == -23
          return 0x00009CA3
        elseif ckYVar == -22
          return 0x00009C82
        elseif ckYVar == -21
          return 0x00009C61
        elseif ckYVar == -20
          return 0x00009C40
        elseif ckYVar == -19
          return 0x00009C1F
        elseif ckYVar == -18
          return 0x00009BFE
        elseif ckYVar == -17
          return 0x00009BDD
        elseif ckYVar == -16
          return 0x00009BBC
        elseif ckYVar == -15
          return 0x00009B9B
        elseif ckYVar == -14
          return 0x00009B7A
        elseif ckYVar == -13
          return 0x00009B59
        elseif ckYVar == -12
          return 0x00009B38
        elseif ckYVar == -11
          return 0x00009B17
        elseif ckYVar == -10
          return 0x00009AF6
        elseif ckYVar == -9
          return 0x00009AD5
        elseif ckYVar == -8
          return 0x00009AB4
        elseif ckYVar == -7
          return 0x00009A93
        elseif ckYVar == -6
          return 0x00009A72
        elseif ckYVar == -5
          return 0x00009A51
        elseif ckYVar == -4
          return 0x00009A30
        elseif ckYVar == -3
          return 0x00009A0F
        elseif ckYVar == -2
          return 0x000099EE
        elseif ckYVar == -1
          return 0x000099CD
        elseif ckYVar == 0
          return 0x000099AC
        elseif ckYVar == 1
          return 0x0000958C
        elseif ckYVar == 2
          return 0x0000956B
        elseif ckYVar == 3
          return 0x0000954A
        elseif ckYVar == 4
          return 0x00009529
        elseif ckYVar == 5
          return 0x00009508
        elseif ckYVar == 6
          return 0x000094E7
        elseif ckYVar == 7
          return 0x000094C6
        elseif ckYVar == 8
          return 0x000094A5
        elseif ckYVar == 9
          return 0x00009484
        elseif ckYVar == 10
          return 0x00009463
        elseif ckYVar == 11
          return 0x00009442
        elseif ckYVar == 12
          return 0x00009421
        elseif ckYVar == 13
          return 0x00009400
        elseif ckYVar == 14
          return 0x000093DF
        elseif ckYVar == 15
          return 0x000093BE
        elseif ckYVar == 16
          return 0x0000939D
        elseif ckYVar == 17
          return 0x0000937C
        elseif ckYVar == 18
          return 0x0000935B
        elseif ckYVar == 19
          return 0x0000933A
        elseif ckYVar == 20
          return 0x00009319
        elseif ckYVar == 21
          return 0x000092F8
        elseif ckYVar == 22
          return 0x000092D7
        elseif ckYVar == 23
          return 0x000092B6
        elseif ckYVar == 24
          return 0x00009295
        elseif ckYVar == 25
          return 0x00009274
        elseif ckYVar == 26
          return 0x00009253
        elseif ckYVar == 27
          return 0x00009232
        elseif ckYVar == 28
          return 0x00009211
        elseif ckYVar == 29
          return 0x000091F0
        elseif ckYVar == 30
          return 0x000091CF
        elseif ckYVar == 31
          return 0x000091AE
        elseif ckYVar == 32
          return 0x00003DA2
        elseif ckYVar == 33
          return 0x00003DA1
        elseif ckYVar == 34
          return 0x00003D76
        elseif ckYVar == 35
          return 0x00003D55
        elseif ckYVar == 36
          return 0x00003D34
        elseif ckYVar == 37
          return 0x00003D13
        elseif ckYVar == 38
          return 0x00003CF2
        elseif ckYVar == 39
          return 0x00003CD1
        elseif ckYVar == 40
          return 0x00003CB0
        elseif ckYVar == 41
          return 0x00003C8F
        elseif ckYVar == 42
          return 0x00003C6E
        elseif ckYVar == 43
          return 0x00003C4D
        elseif ckYVar == 44
          return 0x00003C2C
        elseif ckYVar == 45
          return 0x00003C0B
        elseif ckYVar == 46
          return 0x00003BEA
        elseif ckYVar == 47
          return 0x00003BC9
        elseif ckYVar == 48
          return 0x00003BA8
        elseif ckYVar == 49
          return 0x00003B87
        elseif ckYVar == 50
          return 0x00003B66
        endif
      endif
    elseif ckXVar < 0
      if ckXVar == -9
        if ckYVar == -43
          return 0x0000F2F7
        elseif ckYVar == -42
          return 0x0000F2D6
        elseif ckYVar == -41
          return 0x0000F2B5
        elseif ckYVar == -40
          return 0x0000F294
        elseif ckYVar == -39
          return 0x0000F273
        elseif ckYVar == -38
          return 0x0000F252
        elseif ckYVar == -37
          return 0x0000F231
        elseif ckYVar == -36
          return 0x0000F210
        elseif ckYVar == -35
          return 0x0000F1EF
        elseif ckYVar == -34
          return 0x0000F1CE
        elseif ckYVar == -33
          return 0x0000F1AD
        elseif ckYVar == -32
          return 0x00009DB4
        elseif ckYVar == -31
          return 0x00009DB3
        elseif ckYVar == -30
          return 0x00009D89
        elseif ckYVar == -29
          return 0x00009D68
        elseif ckYVar == -28
          return 0x00009D47
        elseif ckYVar == -27
          return 0x00009D26
        elseif ckYVar == -26
          return 0x00009D05
        elseif ckYVar == -25
          return 0x00009CE4
        elseif ckYVar == -24
          return 0x00009CC3
        elseif ckYVar == -23
          return 0x00009CA2
        elseif ckYVar == -22
          return 0x00009C81
        elseif ckYVar == -21
          return 0x00009C60
        elseif ckYVar == -20
          return 0x00009C3F
        elseif ckYVar == -19
          return 0x00009C1E
        elseif ckYVar == -18
          return 0x00009BFD
        elseif ckYVar == -17
          return 0x00009BDC
        elseif ckYVar == -16
          return 0x00009BBB
        elseif ckYVar == -15
          return 0x00009B9A
        elseif ckYVar == -14
          return 0x00009B79
        elseif ckYVar == -13
          return 0x00009B58
        elseif ckYVar == -12
          return 0x00009B37
        elseif ckYVar == -11
          return 0x00009B16
        elseif ckYVar == -10
          return 0x00009AF5
        elseif ckYVar == -9
          return 0x00009AD4
        elseif ckYVar == -8
          return 0x00009AB3
        elseif ckYVar == -7
          return 0x00009A92
        elseif ckYVar == -6
          return 0x00009A71
        elseif ckYVar == -5
          return 0x00009A50
        elseif ckYVar == -4
          return 0x00009A2F
        elseif ckYVar == -3
          return 0x00009A0E
        elseif ckYVar == -2
          return 0x000099ED
        elseif ckYVar == -1
          return 0x000099CC
        elseif ckYVar == 0
          return 0x000099AB
        elseif ckYVar == 1
          return 0x0000958B
        elseif ckYVar == 2
          return 0x0000956A
        elseif ckYVar == 3
          return 0x00009549
        elseif ckYVar == 4
          return 0x00009528
        elseif ckYVar == 5
          return 0x00009507
        elseif ckYVar == 6
          return 0x000094E6
        elseif ckYVar == 7
          return 0x000094C5
        elseif ckYVar == 8
          return 0x000094A4
        elseif ckYVar == 9
          return 0x00009483
        elseif ckYVar == 10
          return 0x00009462
        elseif ckYVar == 11
          return 0x00009441
        elseif ckYVar == 12
          return 0x00009420
        elseif ckYVar == 13
          return 0x000093FF
        elseif ckYVar == 14
          return 0x000093DE
        elseif ckYVar == 15
          return 0x000093BD
        elseif ckYVar == 16
          return 0x0000939C
        elseif ckYVar == 17
          return 0x0000937B
        elseif ckYVar == 18
          return 0x0000935A
        elseif ckYVar == 19
          return 0x00009339
        elseif ckYVar == 20
          return 0x00009318
        elseif ckYVar == 21
          return 0x000092F7
        elseif ckYVar == 22
          return 0x000092D6
        elseif ckYVar == 23
          return 0x000092B5
        elseif ckYVar == 24
          return 0x00009294
        elseif ckYVar == 25
          return 0x00009273
        elseif ckYVar == 26
          return 0x00009252
        elseif ckYVar == 27
          return 0x00009231
        elseif ckYVar == 28
          return 0x00009210
        elseif ckYVar == 29
          return 0x000091EF
        elseif ckYVar == 30
          return 0x000091CE
        elseif ckYVar == 31
          return 0x000091AD
        elseif ckYVar == 32
          return 0x00003DA0
        elseif ckYVar == 33
          return 0x00003D9F
        elseif ckYVar == 34
          return 0x00003D75
        elseif ckYVar == 35
          return 0x00003D54
        elseif ckYVar == 36
          return 0x00003D33
        elseif ckYVar == 37
          return 0x00003D12
        elseif ckYVar == 38
          return 0x00003CF1
        elseif ckYVar == 39
          return 0x00003CD0
        elseif ckYVar == 40
          return 0x00003CAF
        elseif ckYVar == 41
          return 0x00003C8E
        elseif ckYVar == 42
          return 0x00003C6D
        elseif ckYVar == 43
          return 0x00003C4C
        elseif ckYVar == 44
          return 0x00003C2B
        elseif ckYVar == 45
          return 0x00003C0A
        elseif ckYVar == 46
          return 0x00003BE9
        elseif ckYVar == 47
          return 0x00003BC8
        elseif ckYVar == 48
          return 0x00003BA7
        elseif ckYVar == 49
          return 0x00003B86
        elseif ckYVar == 50
          return 0x00003B65
        endif
      elseif ckXVar == -8
        if ckYVar == -43
          return 0x0000F2F6
        elseif ckYVar == -42
          return 0x0000F2D5
        elseif ckYVar == -41
          return 0x0000F2B4
        elseif ckYVar == -40
          return 0x0000F293
        elseif ckYVar == -39
          return 0x0000F272
        elseif ckYVar == -38
          return 0x0000F251
        elseif ckYVar == -37
          return 0x0000F230
        elseif ckYVar == -36
          return 0x0000F20F
        elseif ckYVar == -35
          return 0x0000F1EE
        elseif ckYVar == -34
          return 0x0000F1CD
        elseif ckYVar == -33
          return 0x0000F1AC
        elseif ckYVar == -32
          return 0x00009DB2
        elseif ckYVar == -31
          return 0x00009DB1
        elseif ckYVar == -30
          return 0x00009D88
        elseif ckYVar == -29
          return 0x00009D67
        elseif ckYVar == -28
          return 0x00009D46
        elseif ckYVar == -27
          return 0x00009D25
        elseif ckYVar == -26
          return 0x00009D04
        elseif ckYVar == -25
          return 0x00009CE3
        elseif ckYVar == -24
          return 0x00009CC2
        elseif ckYVar == -23
          return 0x00009CA1
        elseif ckYVar == -22
          return 0x00009C80
        elseif ckYVar == -21
          return 0x00009C5F
        elseif ckYVar == -20
          return 0x00009C3E
        elseif ckYVar == -19
          return 0x00009C1D
        elseif ckYVar == -18
          return 0x00009BFC
        elseif ckYVar == -17
          return 0x00009BDB
        elseif ckYVar == -16
          return 0x00009BBA
        elseif ckYVar == -15
          return 0x00009B99
        elseif ckYVar == -14
          return 0x00009B78
        elseif ckYVar == -13
          return 0x00009B57
        elseif ckYVar == -12
          return 0x00009B36
        elseif ckYVar == -11
          return 0x00009B15
        elseif ckYVar == -10
          return 0x00009AF4
        elseif ckYVar == -9
          return 0x00009AD3
        elseif ckYVar == -8
          return 0x00009AB2
        elseif ckYVar == -7
          return 0x00009A91
        elseif ckYVar == -6
          return 0x00009A70
        elseif ckYVar == -5
          return 0x00009A4F
        elseif ckYVar == -4
          return 0x00009A2E
        elseif ckYVar == -3
          return 0x00009A0D
        elseif ckYVar == -2
          return 0x000099EC
        elseif ckYVar == -1
          return 0x000099CB
        elseif ckYVar == 0
          return 0x000099AA
        elseif ckYVar == 1
          return 0x0000958A
        elseif ckYVar == 2
          return 0x00009569
        elseif ckYVar == 3
          return 0x00009548
        elseif ckYVar == 4
          return 0x00009527
        elseif ckYVar == 5
          return 0x00009506
        elseif ckYVar == 6
          return 0x000094E5
        elseif ckYVar == 7
          return 0x000094C4
        elseif ckYVar == 8
          return 0x000094A3
        elseif ckYVar == 9
          return 0x00009482
        elseif ckYVar == 10
          return 0x00009461
        elseif ckYVar == 11
          return 0x00009440
        elseif ckYVar == 12
          return 0x0000941F
        elseif ckYVar == 13
          return 0x000093FE
        elseif ckYVar == 14
          return 0x000093DD
        elseif ckYVar == 15
          return 0x000093BC
        elseif ckYVar == 16
          return 0x0000939B
        elseif ckYVar == 17
          return 0x0000937A
        elseif ckYVar == 18
          return 0x00009359
        elseif ckYVar == 19
          return 0x00009338
        elseif ckYVar == 20
          return 0x00009317
        elseif ckYVar == 21
          return 0x000092F6
        elseif ckYVar == 22
          return 0x000092D5
        elseif ckYVar == 23
          return 0x000092B4
        elseif ckYVar == 24
          return 0x00009293
        elseif ckYVar == 25
          return 0x00009272
        elseif ckYVar == 26
          return 0x00009251
        elseif ckYVar == 27
          return 0x00009230
        elseif ckYVar == 28
          return 0x0000920F
        elseif ckYVar == 29
          return 0x000091EE
        elseif ckYVar == 30
          return 0x000091CD
        elseif ckYVar == 31
          return 0x000091AC
        elseif ckYVar == 32
          return 0x00003D9E
        elseif ckYVar == 33
          return 0x00003D9D
        elseif ckYVar == 34
          return 0x00003D74
        elseif ckYVar == 35
          return 0x00003D53
        elseif ckYVar == 36
          return 0x00003D32
        elseif ckYVar == 37
          return 0x00003D11
        elseif ckYVar == 38
          return 0x00003CF0
        elseif ckYVar == 39
          return 0x00003CCF
        elseif ckYVar == 40
          return 0x00003CAE
        elseif ckYVar == 41
          return 0x00003C8D
        elseif ckYVar == 42
          return 0x00003C6C
        elseif ckYVar == 43
          return 0x00003C4B
        elseif ckYVar == 44
          return 0x00003C2A
        elseif ckYVar == 45
          return 0x00003C09
        elseif ckYVar == 46
          return 0x00003BE8
        elseif ckYVar == 47
          return 0x00003BC7
        elseif ckYVar == 48
          return 0x00003BA6
        elseif ckYVar == 49
          return 0x00003B85
        elseif ckYVar == 50
          return 0x00003B64
        endif
      elseif ckXVar == -7
        if ckYVar == -43
          return 0x0000F2F5
        elseif ckYVar == -42
          return 0x0000F2D4
        elseif ckYVar == -41
          return 0x0000F2B3
        elseif ckYVar == -40
          return 0x0000F292
        elseif ckYVar == -39
          return 0x0000F271
        elseif ckYVar == -38
          return 0x0000F250
        elseif ckYVar == -37
          return 0x0000F22F
        elseif ckYVar == -36
          return 0x0000F20E
        elseif ckYVar == -35
          return 0x0000F1ED
        elseif ckYVar == -34
          return 0x0000F1CC
        elseif ckYVar == -33
          return 0x0000F1AB
        elseif ckYVar == -32
          return 0x00009DB0
        elseif ckYVar == -31
          return 0x00009DAF
        elseif ckYVar == -30
          return 0x00009D87
        elseif ckYVar == -29
          return 0x00009D66
        elseif ckYVar == -28
          return 0x00009D45
        elseif ckYVar == -27
          return 0x00009D24
        elseif ckYVar == -26
          return 0x00009D03
        elseif ckYVar == -25
          return 0x00009CE2
        elseif ckYVar == -24
          return 0x00009CC1
        elseif ckYVar == -23
          return 0x00009CA0
        elseif ckYVar == -22
          return 0x00009C7F
        elseif ckYVar == -21
          return 0x00009C5E
        elseif ckYVar == -20
          return 0x00009C3D
        elseif ckYVar == -19
          return 0x00009C1C
        elseif ckYVar == -18
          return 0x00009BFB
        elseif ckYVar == -17
          return 0x00009BDA
        elseif ckYVar == -16
          return 0x00009BB9
        elseif ckYVar == -15
          return 0x00009B98
        elseif ckYVar == -14
          return 0x00009B77
        elseif ckYVar == -13
          return 0x00009B56
        elseif ckYVar == -12
          return 0x00009B35
        elseif ckYVar == -11
          return 0x00009B14
        elseif ckYVar == -10
          return 0x00009AF3
        elseif ckYVar == -9
          return 0x00009AD2
        elseif ckYVar == -8
          return 0x00009AB1
        elseif ckYVar == -7
          return 0x00009A90
        elseif ckYVar == -6
          return 0x00009A6F
        elseif ckYVar == -5
          return 0x00009A4E
        elseif ckYVar == -4
          return 0x00009A2D
        elseif ckYVar == -3
          return 0x00009A0C
        elseif ckYVar == -2
          return 0x000099EB
        elseif ckYVar == -1
          return 0x000099CA
        elseif ckYVar == 0
          return 0x000099A9
        elseif ckYVar == 1
          return 0x00009589
        elseif ckYVar == 2
          return 0x00009568
        elseif ckYVar == 3
          return 0x00009547
        elseif ckYVar == 4
          return 0x00009526
        elseif ckYVar == 5
          return 0x00009505
        elseif ckYVar == 6
          return 0x000094E4
        elseif ckYVar == 7
          return 0x000094C3
        elseif ckYVar == 8
          return 0x000094A2
        elseif ckYVar == 9
          return 0x00009481
        elseif ckYVar == 10
          return 0x00009460
        elseif ckYVar == 11
          return 0x0000943F
        elseif ckYVar == 12
          return 0x0000941E
        elseif ckYVar == 13
          return 0x000093FD
        elseif ckYVar == 14
          return 0x000093DC
        elseif ckYVar == 15
          return 0x000093BB
        elseif ckYVar == 16
          return 0x0000939A
        elseif ckYVar == 17
          return 0x00009379
        elseif ckYVar == 18
          return 0x00009358
        elseif ckYVar == 19
          return 0x00009337
        elseif ckYVar == 20
          return 0x00009316
        elseif ckYVar == 21
          return 0x000092F5
        elseif ckYVar == 22
          return 0x000092D4
        elseif ckYVar == 23
          return 0x000092B3
        elseif ckYVar == 24
          return 0x00009292
        elseif ckYVar == 25
          return 0x00009271
        elseif ckYVar == 26
          return 0x00009250
        elseif ckYVar == 27
          return 0x0000922F
        elseif ckYVar == 28
          return 0x0000920E
        elseif ckYVar == 29
          return 0x000091ED
        elseif ckYVar == 30
          return 0x000091CC
        elseif ckYVar == 31
          return 0x000091AB
        elseif ckYVar == 32
          return 0x00003D9C
        elseif ckYVar == 33
          return 0x00003D9B
        elseif ckYVar == 34
          return 0x00003D73
        elseif ckYVar == 35
          return 0x00003D52
        elseif ckYVar == 36
          return 0x00003D31
        elseif ckYVar == 37
          return 0x00003D10
        elseif ckYVar == 38
          return 0x00003CEF
        elseif ckYVar == 39
          return 0x00003CCE
        elseif ckYVar == 40
          return 0x00003CAD
        elseif ckYVar == 41
          return 0x00003C8C
        elseif ckYVar == 42
          return 0x00003C6B
        elseif ckYVar == 43
          return 0x00003C4A
        elseif ckYVar == 44
          return 0x00003C29
        elseif ckYVar == 45
          return 0x00003C08
        elseif ckYVar == 46
          return 0x00003BE7
        elseif ckYVar == 47
          return 0x00003BC6
        elseif ckYVar == 48
          return 0x00003BA5
        elseif ckYVar == 49
          return 0x00003B84
        elseif ckYVar == 50
          return 0x00003B63
        endif
      elseif ckXVar == -6
        if ckYVar == -43
          return 0x0000F2F4
        elseif ckYVar == -42
          return 0x0000F2D3
        elseif ckYVar == -41
          return 0x0000F2B2
        elseif ckYVar == -40
          return 0x0000F291
        elseif ckYVar == -39
          return 0x0000F270
        elseif ckYVar == -38
          return 0x0000F24F
        elseif ckYVar == -37
          return 0x0000F22E
        elseif ckYVar == -36
          return 0x0000F20D
        elseif ckYVar == -35
          return 0x0000F1EC
        elseif ckYVar == -34
          return 0x0000F1CB
        elseif ckYVar == -33
          return 0x0000F1AA
        elseif ckYVar == -32
          return 0x00009DAE
        elseif ckYVar == -31
          return 0x00009DAD
        elseif ckYVar == -30
          return 0x00009D86
        elseif ckYVar == -29
          return 0x00009D65
        elseif ckYVar == -28
          return 0x00009D44
        elseif ckYVar == -27
          return 0x00009D23
        elseif ckYVar == -26
          return 0x00009D02
        elseif ckYVar == -25
          return 0x00009CE1
        elseif ckYVar == -24
          return 0x00009CC0
        elseif ckYVar == -23
          return 0x00009C9F
        elseif ckYVar == -22
          return 0x00009C7E
        elseif ckYVar == -21
          return 0x00009C5D
        elseif ckYVar == -20
          return 0x00009C3C
        elseif ckYVar == -19
          return 0x00009C1B
        elseif ckYVar == -18
          return 0x00009BFA
        elseif ckYVar == -17
          return 0x00009BD9
        elseif ckYVar == -16
          return 0x00009BB8
        elseif ckYVar == -15
          return 0x00009B97
        elseif ckYVar == -14
          return 0x00009B76
        elseif ckYVar == -13
          return 0x00009B55
        elseif ckYVar == -12
          return 0x00009B34
        elseif ckYVar == -11
          return 0x00009B13
        elseif ckYVar == -10
          return 0x00009AF2
        elseif ckYVar == -9
          return 0x00009AD1
        elseif ckYVar == -8
          return 0x00009AB0
        elseif ckYVar == -7
          return 0x00009A8F
        elseif ckYVar == -6
          return 0x00009A6E
        elseif ckYVar == -5
          return 0x00009A4D
        elseif ckYVar == -4
          return 0x00009A2C
        elseif ckYVar == -3
          return 0x00009A0B
        elseif ckYVar == -2
          return 0x000099EA
        elseif ckYVar == -1
          return 0x000099C9
        elseif ckYVar == 0
          return 0x000099A8
        elseif ckYVar == 1
          return 0x00009588
        elseif ckYVar == 2
          return 0x00009567
        elseif ckYVar == 3
          return 0x00009546
        elseif ckYVar == 4
          return 0x00009525
        elseif ckYVar == 5
          return 0x00009504
        elseif ckYVar == 6
          return 0x000094E3
        elseif ckYVar == 7
          return 0x000094C2
        elseif ckYVar == 8
          return 0x000094A1
        elseif ckYVar == 9
          return 0x00009480
        elseif ckYVar == 10
          return 0x0000945F
        elseif ckYVar == 11
          return 0x0000943E
        elseif ckYVar == 12
          return 0x0000941D
        elseif ckYVar == 13
          return 0x000093FC
        elseif ckYVar == 14
          return 0x000093DB
        elseif ckYVar == 15
          return 0x000093BA
        elseif ckYVar == 16
          return 0x00009399
        elseif ckYVar == 17
          return 0x00009378
        elseif ckYVar == 18
          return 0x00009357
        elseif ckYVar == 19
          return 0x00009336
        elseif ckYVar == 20
          return 0x00009315
        elseif ckYVar == 21
          return 0x000092F4
        elseif ckYVar == 22
          return 0x000092D3
        elseif ckYVar == 23
          return 0x000092B2
        elseif ckYVar == 24
          return 0x00009291
        elseif ckYVar == 25
          return 0x00009270
        elseif ckYVar == 26
          return 0x0000924F
        elseif ckYVar == 27
          return 0x0000922E
        elseif ckYVar == 28
          return 0x0000920D
        elseif ckYVar == 29
          return 0x000091EC
        elseif ckYVar == 30
          return 0x000091CB
        elseif ckYVar == 31
          return 0x000091AA
        elseif ckYVar == 32
          return 0x00003D9A
        elseif ckYVar == 33
          return 0x00003D99
        elseif ckYVar == 34
          return 0x00003D72
        elseif ckYVar == 35
          return 0x00003D51
        elseif ckYVar == 36
          return 0x00003D30
        elseif ckYVar == 37
          return 0x00003D0F
        elseif ckYVar == 38
          return 0x00003CEE
        elseif ckYVar == 39
          return 0x00003CCD
        elseif ckYVar == 40
          return 0x00003CAC
        elseif ckYVar == 41
          return 0x00003C8B
        elseif ckYVar == 42
          return 0x00003C6A
        elseif ckYVar == 43
          return 0x00003C49
        elseif ckYVar == 44
          return 0x00003C28
        elseif ckYVar == 45
          return 0x00003C07
        elseif ckYVar == 46
          return 0x00003BE6
        elseif ckYVar == 47
          return 0x00003BC5
        elseif ckYVar == 48
          return 0x00003BA4
        elseif ckYVar == 49
          return 0x00003B83
        elseif ckYVar == 50
          return 0x00003B62
        endif
      elseif ckXVar == -5
        if ckYVar == -43
          return 0x0000F2F3
        elseif ckYVar == -42
          return 0x0000F2D2
        elseif ckYVar == -41
          return 0x0000F2B1
        elseif ckYVar == -40
          return 0x0000F290
        elseif ckYVar == -39
          return 0x0000F26F
        elseif ckYVar == -38
          return 0x0000F24E
        elseif ckYVar == -37
          return 0x0000F22D
        elseif ckYVar == -36
          return 0x0000F20C
        elseif ckYVar == -35
          return 0x0000F1EB
        elseif ckYVar == -34
          return 0x0000F1CA
        elseif ckYVar == -33
          return 0x0000F1A9
        elseif ckYVar == -32
          return 0x00009DAC
        elseif ckYVar == -31
          return 0x00009DAB
        elseif ckYVar == -30
          return 0x00009D85
        elseif ckYVar == -29
          return 0x00009D64
        elseif ckYVar == -28
          return 0x00009D43
        elseif ckYVar == -27
          return 0x00009D22
        elseif ckYVar == -26
          return 0x00009D01
        elseif ckYVar == -25
          return 0x00009CE0
        elseif ckYVar == -24
          return 0x00009CBF
        elseif ckYVar == -23
          return 0x00009C9E
        elseif ckYVar == -22
          return 0x00009C7D
        elseif ckYVar == -21
          return 0x00009C5C
        elseif ckYVar == -20
          return 0x00009C3B
        elseif ckYVar == -19
          return 0x00009C1A
        elseif ckYVar == -18
          return 0x00009BF9
        elseif ckYVar == -17
          return 0x00009BD8
        elseif ckYVar == -16
          return 0x00009BB7
        elseif ckYVar == -15
          return 0x00009B96
        elseif ckYVar == -14
          return 0x00009B75
        elseif ckYVar == -13
          return 0x00009B54
        elseif ckYVar == -12
          return 0x00009B33
        elseif ckYVar == -11
          return 0x00009B12
        elseif ckYVar == -10
          return 0x00009AF1
        elseif ckYVar == -9
          return 0x00009AD0
        elseif ckYVar == -8
          return 0x00009AAF
        elseif ckYVar == -7
          return 0x00009A8E
        elseif ckYVar == -6
          return 0x00009A6D
        elseif ckYVar == -5
          return 0x00009A4C
        elseif ckYVar == -4
          return 0x00009A2B
        elseif ckYVar == -3
          return 0x00009A0A
        elseif ckYVar == -2
          return 0x000099E9
        elseif ckYVar == -1
          return 0x000099C8
        elseif ckYVar == 0
          return 0x000099A7
        elseif ckYVar == 1
          return 0x00009587
        elseif ckYVar == 2
          return 0x00009566
        elseif ckYVar == 3
          return 0x00009545
        elseif ckYVar == 4
          return 0x00009524
        elseif ckYVar == 5
          return 0x00009503
        elseif ckYVar == 6
          return 0x000094E2
        elseif ckYVar == 7
          return 0x000094C1
        elseif ckYVar == 8
          return 0x000094A0
        elseif ckYVar == 9
          return 0x0000947F
        elseif ckYVar == 10
          return 0x0000945E
        elseif ckYVar == 11
          return 0x0000943D
        elseif ckYVar == 12
          return 0x0000941C
        elseif ckYVar == 13
          return 0x000093FB
        elseif ckYVar == 14
          return 0x000093DA
        elseif ckYVar == 15
          return 0x000093B9
        elseif ckYVar == 16
          return 0x00009398
        elseif ckYVar == 17
          return 0x00009377
        elseif ckYVar == 18
          return 0x00009356
        elseif ckYVar == 19
          return 0x00009335
        elseif ckYVar == 20
          return 0x00009314
        elseif ckYVar == 21
          return 0x000092F3
        elseif ckYVar == 22
          return 0x000092D2
        elseif ckYVar == 23
          return 0x000092B1
        elseif ckYVar == 24
          return 0x00009290
        elseif ckYVar == 25
          return 0x0000926F
        elseif ckYVar == 26
          return 0x0000924E
        elseif ckYVar == 27
          return 0x0000922D
        elseif ckYVar == 28
          return 0x0000920C
        elseif ckYVar == 29
          return 0x000091EB
        elseif ckYVar == 30
          return 0x000091CA
        elseif ckYVar == 31
          return 0x000091A9
        elseif ckYVar == 32
          return 0x00003D98
        elseif ckYVar == 33
          return 0x00003D97
        elseif ckYVar == 34
          return 0x00003D71
        elseif ckYVar == 35
          return 0x00003D50
        elseif ckYVar == 36
          return 0x00003D2F
        elseif ckYVar == 37
          return 0x00003D0E
        elseif ckYVar == 38
          return 0x00003CED
        elseif ckYVar == 39
          return 0x00003CCC
        elseif ckYVar == 40
          return 0x00003CAB
        elseif ckYVar == 41
          return 0x00003C8A
        elseif ckYVar == 42
          return 0x00003C69
        elseif ckYVar == 43
          return 0x00003C48
        elseif ckYVar == 44
          return 0x00003C27
        elseif ckYVar == 45
          return 0x00003C06
        elseif ckYVar == 46
          return 0x00003BE5
        elseif ckYVar == 47
          return 0x00003BC4
        elseif ckYVar == 48
          return 0x00003BA3
        elseif ckYVar == 49
          return 0x00003B82
        elseif ckYVar == 50
          return 0x00003B61
        endif
      elseif ckXVar == -4
        if ckYVar == -43
          return 0x0000F2F2
        elseif ckYVar == -42
          return 0x0000F2D1
        elseif ckYVar == -41
          return 0x0000F2B0
        elseif ckYVar == -40
          return 0x0000F28F
        elseif ckYVar == -39
          return 0x0000F26E
        elseif ckYVar == -38
          return 0x0000F24D
        elseif ckYVar == -37
          return 0x0000F22C
        elseif ckYVar == -36
          return 0x0000F20B
        elseif ckYVar == -35
          return 0x0000F1EA
        elseif ckYVar == -34
          return 0x0000F1C9
        elseif ckYVar == -33
          return 0x0000F1A8
        elseif ckYVar == -32
          return 0x00009DAA
        elseif ckYVar == -31
          return 0x00009DA9
        elseif ckYVar == -30
          return 0x00009D84
        elseif ckYVar == -29
          return 0x00009D63
        elseif ckYVar == -28
          return 0x00009D42
        elseif ckYVar == -27
          return 0x00009D21
        elseif ckYVar == -26
          return 0x00009D00
        elseif ckYVar == -25
          return 0x00009CDF
        elseif ckYVar == -24
          return 0x00009CBE
        elseif ckYVar == -23
          return 0x00009C9D
        elseif ckYVar == -22
          return 0x00009C7C
        elseif ckYVar == -21
          return 0x00009C5B
        elseif ckYVar == -20
          return 0x00009C3A
        elseif ckYVar == -19
          return 0x00009C19
        elseif ckYVar == -18
          return 0x00009BF8
        elseif ckYVar == -17
          return 0x00009BD7
        elseif ckYVar == -16
          return 0x00009BB6
        elseif ckYVar == -15
          return 0x00009B95
        elseif ckYVar == -14
          return 0x00009B74
        elseif ckYVar == -13
          return 0x00009B53
        elseif ckYVar == -12
          return 0x00009B32
        elseif ckYVar == -11
          return 0x00009B11
        elseif ckYVar == -10
          return 0x00009AF0
        elseif ckYVar == -9
          return 0x00009ACF
        elseif ckYVar == -8
          return 0x00009AAE
        elseif ckYVar == -7
          return 0x00009A8D
        elseif ckYVar == -6
          return 0x00009A6C
        elseif ckYVar == -5
          return 0x00009A4B
        elseif ckYVar == -4
          return 0x00009A2A
        elseif ckYVar == -3
          return 0x00009A09
        elseif ckYVar == -2
          return 0x000099E8
        elseif ckYVar == -1
          return 0x000099C7
        elseif ckYVar == 0
          return 0x000099A6
        elseif ckYVar == 1
          return 0x00009586
        elseif ckYVar == 2
          return 0x00009565
        elseif ckYVar == 3
          return 0x00009544
        elseif ckYVar == 4
          return 0x00009523
        elseif ckYVar == 5
          return 0x00009502
        elseif ckYVar == 6
          return 0x000094E1
        elseif ckYVar == 7
          return 0x000094C0
        elseif ckYVar == 8
          return 0x0000949F
        elseif ckYVar == 9
          return 0x0000947E
        elseif ckYVar == 10
          return 0x0000945D
        elseif ckYVar == 11
          return 0x0000943C
        elseif ckYVar == 12
          return 0x0000941B
        elseif ckYVar == 13
          return 0x000093FA
        elseif ckYVar == 14
          return 0x000093D9
        elseif ckYVar == 15
          return 0x000093B8
        elseif ckYVar == 16
          return 0x00009397
        elseif ckYVar == 17
          return 0x00009376
        elseif ckYVar == 18
          return 0x00009355
        elseif ckYVar == 19
          return 0x00009334
        elseif ckYVar == 20
          return 0x00009313
        elseif ckYVar == 21
          return 0x000092F2
        elseif ckYVar == 22
          return 0x000092D1
        elseif ckYVar == 23
          return 0x000092B0
        elseif ckYVar == 24
          return 0x0000928F
        elseif ckYVar == 25
          return 0x0000926E
        elseif ckYVar == 26
          return 0x0000924D
        elseif ckYVar == 27
          return 0x0000922C
        elseif ckYVar == 28
          return 0x0000920B
        elseif ckYVar == 29
          return 0x000091EA
        elseif ckYVar == 30
          return 0x000091C9
        elseif ckYVar == 31
          return 0x000091A8
        elseif ckYVar == 32
          return 0x00003D96
        elseif ckYVar == 33
          return 0x00003D95
        elseif ckYVar == 34
          return 0x00003D70
        elseif ckYVar == 35
          return 0x00003D4F
        elseif ckYVar == 36
          return 0x00003D2E
        elseif ckYVar == 37
          return 0x00003D0D
        elseif ckYVar == 38
          return 0x00003CEC
        elseif ckYVar == 39
          return 0x00003CCB
        elseif ckYVar == 40
          return 0x00003CAA
        elseif ckYVar == 41
          return 0x00003C89
        elseif ckYVar == 42
          return 0x00003C68
        elseif ckYVar == 43
          return 0x00003C47
        elseif ckYVar == 44
          return 0x00003C26
        elseif ckYVar == 45
          return 0x00003C05
        elseif ckYVar == 46
          return 0x00003BE4
        elseif ckYVar == 47
          return 0x00003BC3
        elseif ckYVar == 48
          return 0x00003BA2
        elseif ckYVar == 49
          return 0x00003B81
        elseif ckYVar == 50
          return 0x00003B60
        endif
      elseif ckXVar == -3
        if ckYVar == -43
          return 0x0000F2F1
        elseif ckYVar == -42
          return 0x0000F2D0
        elseif ckYVar == -41
          return 0x0000F2AF
        elseif ckYVar == -40
          return 0x0000F28E
        elseif ckYVar == -39
          return 0x0000F26D
        elseif ckYVar == -38
          return 0x0000F24C
        elseif ckYVar == -37
          return 0x0000F22B
        elseif ckYVar == -36
          return 0x0000F20A
        elseif ckYVar == -35
          return 0x0000F1E9
        elseif ckYVar == -34
          return 0x0000F1C8
        elseif ckYVar == -33
          return 0x0000F1A7
        elseif ckYVar == -32
          return 0x00009DA8
        elseif ckYVar == -31
          return 0x00009DA7
        elseif ckYVar == -30
          return 0x00009D83
        elseif ckYVar == -29
          return 0x00009D62
        elseif ckYVar == -28
          return 0x00009D41
        elseif ckYVar == -27
          return 0x00009D20
        elseif ckYVar == -26
          return 0x00009CFF
        elseif ckYVar == -25
          return 0x00009CDE
        elseif ckYVar == -24
          return 0x00009CBD
        elseif ckYVar == -23
          return 0x00009C9C
        elseif ckYVar == -22
          return 0x00009C7B
        elseif ckYVar == -21
          return 0x00009C5A
        elseif ckYVar == -20
          return 0x00009C39
        elseif ckYVar == -19
          return 0x00009C18
        elseif ckYVar == -18
          return 0x00009BF7
        elseif ckYVar == -17
          return 0x00009BD6
        elseif ckYVar == -16
          return 0x00009BB5
        elseif ckYVar == -15
          return 0x00009B94
        elseif ckYVar == -14
          return 0x00009B73
        elseif ckYVar == -13
          return 0x00009B52
        elseif ckYVar == -12
          return 0x00009B31
        elseif ckYVar == -11
          return 0x00009B10
        elseif ckYVar == -10
          return 0x00009AEF
        elseif ckYVar == -9
          return 0x00009ACE
        elseif ckYVar == -8
          return 0x00009AAD
        elseif ckYVar == -7
          return 0x00009A8C
        elseif ckYVar == -6
          return 0x00009A6B
        elseif ckYVar == -5
          return 0x00009A4A
        elseif ckYVar == -4
          return 0x00009A29
        elseif ckYVar == -3
          return 0x00009A08
        elseif ckYVar == -2
          return 0x000099E7
        elseif ckYVar == -1
          return 0x000099C6
        elseif ckYVar == 0
          return 0x000099A5
        elseif ckYVar == 1
          return 0x00009585
        elseif ckYVar == 2
          return 0x00009564
        elseif ckYVar == 3
          return 0x00009543
        elseif ckYVar == 4
          return 0x00009522
        elseif ckYVar == 5
          return 0x00009501
        elseif ckYVar == 6
          return 0x000094E0
        elseif ckYVar == 7
          return 0x000094BF
        elseif ckYVar == 8
          return 0x0000949E
        elseif ckYVar == 9
          return 0x0000947D
        elseif ckYVar == 10
          return 0x0000945C
        elseif ckYVar == 11
          return 0x0000943B
        elseif ckYVar == 12
          return 0x0000941A
        elseif ckYVar == 13
          return 0x000093F9
        elseif ckYVar == 14
          return 0x000093D8
        elseif ckYVar == 15
          return 0x000093B7
        elseif ckYVar == 16
          return 0x00009396
        elseif ckYVar == 17
          return 0x00009375
        elseif ckYVar == 18
          return 0x00009354
        elseif ckYVar == 19
          return 0x00009333
        elseif ckYVar == 20
          return 0x00009312
        elseif ckYVar == 21
          return 0x000092F1
        elseif ckYVar == 22
          return 0x000092D0
        elseif ckYVar == 23
          return 0x000092AF
        elseif ckYVar == 24
          return 0x0000928E
        elseif ckYVar == 25
          return 0x0000926D
        elseif ckYVar == 26
          return 0x0000924C
        elseif ckYVar == 27
          return 0x0000922B
        elseif ckYVar == 28
          return 0x0000920A
        elseif ckYVar == 29
          return 0x000091E9
        elseif ckYVar == 30
          return 0x000091C8
        elseif ckYVar == 31
          return 0x000091A7
        elseif ckYVar == 32
          return 0x00003D94
        elseif ckYVar == 33
          return 0x00003D93
        elseif ckYVar == 34
          return 0x00003D6F
        elseif ckYVar == 35
          return 0x00003D4E
        elseif ckYVar == 36
          return 0x00003D2D
        elseif ckYVar == 37
          return 0x00003D0C
        elseif ckYVar == 38
          return 0x00003CEB
        elseif ckYVar == 39
          return 0x00003CCA
        elseif ckYVar == 40
          return 0x00003CA9
        elseif ckYVar == 41
          return 0x00003C88
        elseif ckYVar == 42
          return 0x00003C67
        elseif ckYVar == 43
          return 0x00003C46
        elseif ckYVar == 44
          return 0x00003C25
        elseif ckYVar == 45
          return 0x00003C04
        elseif ckYVar == 46
          return 0x00003BE3
        elseif ckYVar == 47
          return 0x00003BC2
        elseif ckYVar == 48
          return 0x00003BA1
        elseif ckYVar == 49
          return 0x00003B80
        elseif ckYVar == 50
          return 0x00003B5F
        endif
      elseif ckXVar == -2
        if ckYVar == -43
          return 0x0000F2F0
        elseif ckYVar == -42
          return 0x0000F2CF
        elseif ckYVar == -41
          return 0x0000F2AE
        elseif ckYVar == -40
          return 0x0000F28D
        elseif ckYVar == -39
          return 0x0000F26C
        elseif ckYVar == -38
          return 0x0000F24B
        elseif ckYVar == -37
          return 0x0000F22A
        elseif ckYVar == -36
          return 0x0000F209
        elseif ckYVar == -35
          return 0x0000F1E8
        elseif ckYVar == -34
          return 0x0000F1C7
        elseif ckYVar == -33
          return 0x0000F1A6
        elseif ckYVar == -32
          return 0x00009DA6
        elseif ckYVar == -31
          return 0x00009DA5
        elseif ckYVar == -30
          return 0x00009D82
        elseif ckYVar == -29
          return 0x00009D61
        elseif ckYVar == -28
          return 0x00009D40
        elseif ckYVar == -27
          return 0x00009D1F
        elseif ckYVar == -26
          return 0x00009CFE
        elseif ckYVar == -25
          return 0x00009CDD
        elseif ckYVar == -24
          return 0x00009CBC
        elseif ckYVar == -23
          return 0x00009C9B
        elseif ckYVar == -22
          return 0x00009C7A
        elseif ckYVar == -21
          return 0x00009C59
        elseif ckYVar == -20
          return 0x00009C38
        elseif ckYVar == -19
          return 0x00009C17
        elseif ckYVar == -18
          return 0x00009BF6
        elseif ckYVar == -17
          return 0x00009BD5
        elseif ckYVar == -16
          return 0x00009BB4
        elseif ckYVar == -15
          return 0x00009B93
        elseif ckYVar == -14
          return 0x00009B72
        elseif ckYVar == -13
          return 0x00009B51
        elseif ckYVar == -12
          return 0x00009B30
        elseif ckYVar == -11
          return 0x00009B0F
        elseif ckYVar == -10
          return 0x00009AEE
        elseif ckYVar == -9
          return 0x00009ACD
        elseif ckYVar == -8
          return 0x00009AAC
        elseif ckYVar == -7
          return 0x00009A8B
        elseif ckYVar == -6
          return 0x00009A6A
        elseif ckYVar == -5
          return 0x00009A49
        elseif ckYVar == -4
          return 0x00009A28
        elseif ckYVar == -3
          return 0x00009A07
        elseif ckYVar == -2
          return 0x000099E6
        elseif ckYVar == -1
          return 0x000099C5
        elseif ckYVar == 0
          return 0x000099A4
        elseif ckYVar == 1
          return 0x00009584
        elseif ckYVar == 2
          return 0x00009563
        elseif ckYVar == 3
          return 0x00009542
        elseif ckYVar == 4
          return 0x00009521
        elseif ckYVar == 5
          return 0x00009500
        elseif ckYVar == 6
          return 0x000094DF
        elseif ckYVar == 7
          return 0x000094BE
        elseif ckYVar == 8
          return 0x0000949D
        elseif ckYVar == 9
          return 0x0000947C
        elseif ckYVar == 10
          return 0x0000945B
        elseif ckYVar == 11
          return 0x0000943A
        elseif ckYVar == 12
          return 0x00009419
        elseif ckYVar == 13
          return 0x000093F8
        elseif ckYVar == 14
          return 0x000093D7
        elseif ckYVar == 15
          return 0x000093B6
        elseif ckYVar == 16
          return 0x00009395
        elseif ckYVar == 17
          return 0x00009374
        elseif ckYVar == 18
          return 0x00009353
        elseif ckYVar == 19
          return 0x00009332
        elseif ckYVar == 20
          return 0x00009311
        elseif ckYVar == 21
          return 0x000092F0
        elseif ckYVar == 22
          return 0x000092CF
        elseif ckYVar == 23
          return 0x000092AE
        elseif ckYVar == 24
          return 0x0000928D
        elseif ckYVar == 25
          return 0x0000926C
        elseif ckYVar == 26
          return 0x0000924B
        elseif ckYVar == 27
          return 0x0000922A
        elseif ckYVar == 28
          return 0x00009209
        elseif ckYVar == 29
          return 0x000091E8
        elseif ckYVar == 30
          return 0x000091C7
        elseif ckYVar == 31
          return 0x000091A6
        elseif ckYVar == 32
          return 0x00003D92
        elseif ckYVar == 33
          return 0x00003D91
        elseif ckYVar == 34
          return 0x00003D6E
        elseif ckYVar == 35
          return 0x00003D4D
        elseif ckYVar == 36
          return 0x00003D2C
        elseif ckYVar == 37
          return 0x00003D0B
        elseif ckYVar == 38
          return 0x00003CEA
        elseif ckYVar == 39
          return 0x00003CC9
        elseif ckYVar == 40
          return 0x00003CA8
        elseif ckYVar == 41
          return 0x00003C87
        elseif ckYVar == 42
          return 0x00003C66
        elseif ckYVar == 43
          return 0x00003C45
        elseif ckYVar == 44
          return 0x00003C24
        elseif ckYVar == 45
          return 0x00003C03
        elseif ckYVar == 46
          return 0x00003BE2
        elseif ckYVar == 47
          return 0x00003BC1
        elseif ckYVar == 48
          return 0x00003BA0
        elseif ckYVar == 49
          return 0x00003B7F
        elseif ckYVar == 50
          return 0x00003B5E
        endif
      elseif ckXVar == -1
        if ckYVar == -43
          return 0x0000F2EF
        elseif ckYVar == -42
          return 0x0000F2CE
        elseif ckYVar == -41
          return 0x0000F2AD
        elseif ckYVar == -40
          return 0x0000F28C
        elseif ckYVar == -39
          return 0x0000F26B
        elseif ckYVar == -38
          return 0x0000F24A
        elseif ckYVar == -37
          return 0x0000F229
        elseif ckYVar == -36
          return 0x0000F208
        elseif ckYVar == -35
          return 0x0000F1E7
        elseif ckYVar == -34
          return 0x0000F1C6
        elseif ckYVar == -33
          return 0x0000F1A5
        elseif ckYVar == -32
          return 0x00009DA4
        elseif ckYVar == -31
          return 0x00009DA3
        elseif ckYVar == -30
          return 0x00009D81
        elseif ckYVar == -29
          return 0x00009D60
        elseif ckYVar == -28
          return 0x00009D3F
        elseif ckYVar == -27
          return 0x00009D1E
        elseif ckYVar == -26
          return 0x00009CFD
        elseif ckYVar == -25
          return 0x00009CDC
        elseif ckYVar == -24
          return 0x00009CBB
        elseif ckYVar == -23
          return 0x00009C9A
        elseif ckYVar == -22
          return 0x00009C79
        elseif ckYVar == -21
          return 0x00009C58
        elseif ckYVar == -20
          return 0x00009C37
        elseif ckYVar == -19
          return 0x00009C16
        elseif ckYVar == -18
          return 0x00009BF5
        elseif ckYVar == -17
          return 0x00009BD4
        elseif ckYVar == -16
          return 0x00009BB3
        elseif ckYVar == -15
          return 0x00009B92
        elseif ckYVar == -14
          return 0x00009B71
        elseif ckYVar == -13
          return 0x00009B50
        elseif ckYVar == -12
          return 0x00009B2F
        elseif ckYVar == -11
          return 0x00009B0E
        elseif ckYVar == -10
          return 0x00009AED
        elseif ckYVar == -9
          return 0x00009ACC
        elseif ckYVar == -8
          return 0x00009AAB
        elseif ckYVar == -7
          return 0x00009A8A
        elseif ckYVar == -6
          return 0x00009A69
        elseif ckYVar == -5
          return 0x00009A48
        elseif ckYVar == -4
          return 0x00009A27
        elseif ckYVar == -3
          return 0x00009A06
        elseif ckYVar == -2
          return 0x000099E5
        elseif ckYVar == -1
          return 0x000099C4
        elseif ckYVar == 0
          return 0x000099A3
        elseif ckYVar == 1
          return 0x00009583
        elseif ckYVar == 2
          return 0x00009562
        elseif ckYVar == 3
          return 0x00009541
        elseif ckYVar == 4
          return 0x00009520
        elseif ckYVar == 5
          return 0x000094FF
        elseif ckYVar == 6
          return 0x000094DE
        elseif ckYVar == 7
          return 0x000094BD
        elseif ckYVar == 8
          return 0x0000949C
        elseif ckYVar == 9
          return 0x0000947B
        elseif ckYVar == 10
          return 0x0000945A
        elseif ckYVar == 11
          return 0x00009439
        elseif ckYVar == 12
          return 0x00009418
        elseif ckYVar == 13
          return 0x000093F7
        elseif ckYVar == 14
          return 0x000093D6
        elseif ckYVar == 15
          return 0x000093B5
        elseif ckYVar == 16
          return 0x00009394
        elseif ckYVar == 17
          return 0x00009373
        elseif ckYVar == 18
          return 0x00009352
        elseif ckYVar == 19
          return 0x00009331
        elseif ckYVar == 20
          return 0x00009310
        elseif ckYVar == 21
          return 0x000092EF
        elseif ckYVar == 22
          return 0x000092CE
        elseif ckYVar == 23
          return 0x000092AD
        elseif ckYVar == 24
          return 0x0000928C
        elseif ckYVar == 25
          return 0x0000926B
        elseif ckYVar == 26
          return 0x0000924A
        elseif ckYVar == 27
          return 0x00009229
        elseif ckYVar == 28
          return 0x00009208
        elseif ckYVar == 29
          return 0x000091E7
        elseif ckYVar == 30
          return 0x000091C6
        elseif ckYVar == 31
          return 0x000091A5
        elseif ckYVar == 32
          return 0x00003D90
        elseif ckYVar == 33
          return 0x00003D8F
        elseif ckYVar == 34
          return 0x00003D6D
        elseif ckYVar == 35
          return 0x00003D4C
        elseif ckYVar == 36
          return 0x00003D2B
        elseif ckYVar == 37
          return 0x00003D0A
        elseif ckYVar == 38
          return 0x00003CE9
        elseif ckYVar == 39
          return 0x00003CC8
        elseif ckYVar == 40
          return 0x00003CA7
        elseif ckYVar == 41
          return 0x00003C86
        elseif ckYVar == 42
          return 0x00003C65
        elseif ckYVar == 43
          return 0x00003C44
        elseif ckYVar == 44
          return 0x00003C23
        elseif ckYVar == 45
          return 0x00003C02
        elseif ckYVar == 46
          return 0x00003BE1
        elseif ckYVar == 47
          return 0x00003BC0
        elseif ckYVar == 48
          return 0x00003B9F
        elseif ckYVar == 49
          return 0x00003B7E
        elseif ckYVar == 50
          return 0x00003B5D
        endif
      endif
    endif
  elseif ckXVar < 0
    if ckXVar < 10
      if ckXVar == 0
        if ckYVar == -43
          return 0x0000F2EE
        elseif ckYVar == -42
          return 0x0000F2CD
        elseif ckYVar == -41
          return 0x0000F2AC
        elseif ckYVar == -40
          return 0x0000F28B
        elseif ckYVar == -39
          return 0x0000F26A
        elseif ckYVar == -38
          return 0x0000F249
        elseif ckYVar == -37
          return 0x0000F228
        elseif ckYVar == -36
          return 0x0000F207
        elseif ckYVar == -35
          return 0x0000F1E6
        elseif ckYVar == -34
          return 0x0000F1C5
        elseif ckYVar == -33
          return 0x0000F1A4
        elseif ckYVar == -32
          return 0x00009DA2
        elseif ckYVar == -31
          return 0x00009DA1
        elseif ckYVar == -30
          return 0x00009D80
        elseif ckYVar == -29
          return 0x00009D5F
        elseif ckYVar == -28
          return 0x00009D3E
        elseif ckYVar == -27
          return 0x00009D1D
        elseif ckYVar == -26
          return 0x00009CFC
        elseif ckYVar == -25
          return 0x00009CDB
        elseif ckYVar == -24
          return 0x00009CBA
        elseif ckYVar == -23
          return 0x00009C99
        elseif ckYVar == -22
          return 0x00009C78
        elseif ckYVar == -21
          return 0x00009C57
        elseif ckYVar == -20
          return 0x00009C36
        elseif ckYVar == -19
          return 0x00009C15
        elseif ckYVar == -18
          return 0x00009BF4
        elseif ckYVar == -17
          return 0x00009BD3
        elseif ckYVar == -16
          return 0x00009BB2
        elseif ckYVar == -15
          return 0x00009B91
        elseif ckYVar == -14
          return 0x00009B70
        elseif ckYVar == -13
          return 0x00009B4F
        elseif ckYVar == -12
          return 0x00009B2E
        elseif ckYVar == -11
          return 0x00009B0D
        elseif ckYVar == -10
          return 0x00009AEC
        elseif ckYVar == -9
          return 0x00009ACB
        elseif ckYVar == -8
          return 0x00009AAA
        elseif ckYVar == -7
          return 0x00009A89
        elseif ckYVar == -6
          return 0x00009A68
        elseif ckYVar == -5
          return 0x00009A47
        elseif ckYVar == -4
          return 0x00009A26
        elseif ckYVar == -3
          return 0x00009A05
        elseif ckYVar == -2
          return 0x000099E4
        elseif ckYVar == -1
          return 0x000099C3
        elseif ckYVar == 0
          return 0x000099A2
        elseif ckYVar == 1
          return 0x00009582
        elseif ckYVar == 2
          return 0x00009561
        elseif ckYVar == 3
          return 0x00009540
        elseif ckYVar == 4
          return 0x0000951F
        elseif ckYVar == 5
          return 0x000094FE
        elseif ckYVar == 6
          return 0x000094DD
        elseif ckYVar == 7
          return 0x000094BC
        elseif ckYVar == 8
          return 0x0000949B
        elseif ckYVar == 9
          return 0x0000947A
        elseif ckYVar == 10
          return 0x00009459
        elseif ckYVar == 11
          return 0x00009438
        elseif ckYVar == 12
          return 0x00009417
        elseif ckYVar == 13
          return 0x000093F6
        elseif ckYVar == 14
          return 0x000093D5
        elseif ckYVar == 15
          return 0x000093B4
        elseif ckYVar == 16
          return 0x00009393
        elseif ckYVar == 17
          return 0x00009372
        elseif ckYVar == 18
          return 0x00009351
        elseif ckYVar == 19
          return 0x00009330
        elseif ckYVar == 20
          return 0x0000930F
        elseif ckYVar == 21
          return 0x000092EE
        elseif ckYVar == 22
          return 0x000092CD
        elseif ckYVar == 23
          return 0x000092AC
        elseif ckYVar == 24
          return 0x0000928B
        elseif ckYVar == 25
          return 0x0000926A
        elseif ckYVar == 26
          return 0x00009249
        elseif ckYVar == 27
          return 0x00009228
        elseif ckYVar == 28
          return 0x00009207
        elseif ckYVar == 29
          return 0x000091E6
        elseif ckYVar == 30
          return 0x000091C5
        elseif ckYVar == 31
          return 0x000091A4
        elseif ckYVar == 32
          return 0x00003D8E
        elseif ckYVar == 33
          return 0x00003D8D
        elseif ckYVar == 34
          return 0x00003D6C
        elseif ckYVar == 35
          return 0x00003D4B
        elseif ckYVar == 36
          return 0x00003D2A
        elseif ckYVar == 37
          return 0x00003D09
        elseif ckYVar == 38
          return 0x00003CE8
        elseif ckYVar == 39
          return 0x00003CC7
        elseif ckYVar == 40
          return 0x00003CA6
        elseif ckYVar == 41
          return 0x00003C85
        elseif ckYVar == 42
          return 0x00003C64
        elseif ckYVar == 43
          return 0x00003C43
        elseif ckYVar == 44
          return 0x00003C22
        elseif ckYVar == 45
          return 0x00003C01
        elseif ckYVar == 46
          return 0x00003BE0
        elseif ckYVar == 47
          return 0x00003BBF
        elseif ckYVar == 48
          return 0x00003B9E
        elseif ckYVar == 49
          return 0x00003B7D
        elseif ckYVar == 50
          return 0x00003B5C
        endif
      elseif ckXVar == 1
        if ckYVar == -43
          return 0x0000EF37
        elseif ckYVar == -42
          return 0x0000EF18
        elseif ckYVar == -41
          return 0x0000EEF9
        elseif ckYVar == -40
          return 0x0000EEDA
        elseif ckYVar == -39
          return 0x0000EEBB
        elseif ckYVar == -38
          return 0x0000EE9C
        elseif ckYVar == -37
          return 0x0000EE7D
        elseif ckYVar == -36
          return 0x0000EE5E
        elseif ckYVar == -35
          return 0x0000EE3F
        elseif ckYVar == -34
          return 0x0000EE20
        elseif ckYVar == -33
          return 0x0000EE01
        elseif ckYVar == -32
          return 0x000099A1
        elseif ckYVar == -31
          return 0x000099A0
        elseif ckYVar == -30
          return 0x00009963
        elseif ckYVar == -29
          return 0x00009944
        elseif ckYVar == -28
          return 0x00009925
        elseif ckYVar == -27
          return 0x00009906
        elseif ckYVar == -26
          return 0x000098E7
        elseif ckYVar == -25
          return 0x000098C8
        elseif ckYVar == -24
          return 0x000098A9
        elseif ckYVar == -23
          return 0x0000988A
        elseif ckYVar == -22
          return 0x0000986B
        elseif ckYVar == -21
          return 0x0000984C
        elseif ckYVar == -20
          return 0x0000982D
        elseif ckYVar == -19
          return 0x0000980E
        elseif ckYVar == -18
          return 0x000097EF
        elseif ckYVar == -17
          return 0x000097D0
        elseif ckYVar == -16
          return 0x000097B1
        elseif ckYVar == -15
          return 0x00009792
        elseif ckYVar == -14
          return 0x00009773
        elseif ckYVar == -13
          return 0x00009754
        elseif ckYVar == -12
          return 0x00009735
        elseif ckYVar == -11
          return 0x00009716
        elseif ckYVar == -10
          return 0x000096F7
        elseif ckYVar == -9
          return 0x000096D8
        elseif ckYVar == -8
          return 0x000096B9
        elseif ckYVar == -7
          return 0x0000969A
        elseif ckYVar == -6
          return 0x0000967B
        elseif ckYVar == -5
          return 0x0000965C
        elseif ckYVar == -4
          return 0x0000963D
        elseif ckYVar == -3
          return 0x0000961E
        elseif ckYVar == -2
          return 0x000095FF
        elseif ckYVar == -1
          return 0x000095E0
        elseif ckYVar == 0
          return 0x000095C1
        elseif ckYVar == 1
          return 0x000091A3
        elseif ckYVar == 2
          return 0x00009184
        elseif ckYVar == 3
          return 0x00009165
        elseif ckYVar == 4
          return 0x00009146
        elseif ckYVar == 5
          return 0x00009127
        elseif ckYVar == 6
          return 0x00009108
        elseif ckYVar == 7
          return 0x000090E9
        elseif ckYVar == 8
          return 0x000090CA
        elseif ckYVar == 9
          return 0x000090AB
        elseif ckYVar == 10
          return 0x0000908C
        elseif ckYVar == 11
          return 0x0000906D
        elseif ckYVar == 12
          return 0x0000904E
        elseif ckYVar == 13
          return 0x0000902F
        elseif ckYVar == 14
          return 0x00009010
        elseif ckYVar == 15
          return 0x00008FF1
        elseif ckYVar == 16
          return 0x00008FD2
        elseif ckYVar == 17
          return 0x00008FB3
        elseif ckYVar == 18
          return 0x00008F94
        elseif ckYVar == 19
          return 0x00008F75
        elseif ckYVar == 20
          return 0x00008F56
        elseif ckYVar == 21
          return 0x00008F37
        elseif ckYVar == 22
          return 0x00008F18
        elseif ckYVar == 23
          return 0x00008EF9
        elseif ckYVar == 24
          return 0x00008EDA
        elseif ckYVar == 25
          return 0x00008EBB
        elseif ckYVar == 26
          return 0x00008E9C
        elseif ckYVar == 27
          return 0x00008E7D
        elseif ckYVar == 28
          return 0x00008E5E
        elseif ckYVar == 29
          return 0x00008E3F
        elseif ckYVar == 30
          return 0x00008E20
        elseif ckYVar == 31
          return 0x00008E01
        elseif ckYVar == 32
          return 0x0000398D
        elseif ckYVar == 33
          return 0x0000398C
        elseif ckYVar == 34
          return 0x0000394F
        elseif ckYVar == 35
          return 0x00003930
        elseif ckYVar == 36
          return 0x00003911
        elseif ckYVar == 37
          return 0x000038F2
        elseif ckYVar == 38
          return 0x000038D3
        elseif ckYVar == 39
          return 0x000038B4
        elseif ckYVar == 40
          return 0x00003895
        elseif ckYVar == 41
          return 0x00003876
        elseif ckYVar == 42
          return 0x00003857
        elseif ckYVar == 43
          return 0x00003838
        elseif ckYVar == 44
          return 0x00003819
        elseif ckYVar == 45
          return 0x000037FA
        elseif ckYVar == 46
          return 0x000037DB
        elseif ckYVar == 47
          return 0x000037BC
        elseif ckYVar == 48
          return 0x0000379D
        elseif ckYVar == 49
          return 0x0000377E
        elseif ckYVar == 50
          return 0x0000375F
        endif
      elseif ckXVar == 2
        if ckYVar == -43
          return 0x0000EF36
        elseif ckYVar == -42
          return 0x0000EF17
        elseif ckYVar == -41
          return 0x0000EEF8
        elseif ckYVar == -40
          return 0x0000EED9
        elseif ckYVar == -39
          return 0x0000EEBA
        elseif ckYVar == -38
          return 0x0000EE9B
        elseif ckYVar == -37
          return 0x0000EE7C
        elseif ckYVar == -36
          return 0x0000EE5D
        elseif ckYVar == -35
          return 0x0000EE3E
        elseif ckYVar == -34
          return 0x0000EE1F
        elseif ckYVar == -33
          return 0x0000EE00
        elseif ckYVar == -32
          return 0x0000999F
        elseif ckYVar == -31
          return 0x0000999E
        elseif ckYVar == -30
          return 0x00009962
        elseif ckYVar == -29
          return 0x00009943
        elseif ckYVar == -28
          return 0x00009924
        elseif ckYVar == -27
          return 0x00009905
        elseif ckYVar == -26
          return 0x000098E6
        elseif ckYVar == -25
          return 0x000098C7
        elseif ckYVar == -24
          return 0x000098A8
        elseif ckYVar == -23
          return 0x00009889
        elseif ckYVar == -22
          return 0x0000986A
        elseif ckYVar == -21
          return 0x0000984B
        elseif ckYVar == -20
          return 0x0000982C
        elseif ckYVar == -19
          return 0x0000980D
        elseif ckYVar == -18
          return 0x000097EE
        elseif ckYVar == -17
          return 0x000097CF
        elseif ckYVar == -16
          return 0x000097B0
        elseif ckYVar == -15
          return 0x00009791
        elseif ckYVar == -14
          return 0x00009772
        elseif ckYVar == -13
          return 0x00009753
        elseif ckYVar == -12
          return 0x00009734
        elseif ckYVar == -11
          return 0x00009715
        elseif ckYVar == -10
          return 0x000096F6
        elseif ckYVar == -9
          return 0x000096D7
        elseif ckYVar == -8
          return 0x000096B8
        elseif ckYVar == -7
          return 0x00009699
        elseif ckYVar == -6
          return 0x0000967A
        elseif ckYVar == -5
          return 0x0000965B
        elseif ckYVar == -4
          return 0x0000963C
        elseif ckYVar == -3
          return 0x0000961D
        elseif ckYVar == -2
          return 0x000095FE
        elseif ckYVar == -1
          return 0x000095DF
        elseif ckYVar == 0
          return 0x000095C0
        elseif ckYVar == 1
          return 0x000091A2
        elseif ckYVar == 2
          return 0x00009183
        elseif ckYVar == 3
          return 0x00009164
        elseif ckYVar == 4
          return 0x00009145
        elseif ckYVar == 5
          return 0x00009126
        elseif ckYVar == 6
          return 0x00009107
        elseif ckYVar == 7
          return 0x000090E8
        elseif ckYVar == 8
          return 0x000090C9
        elseif ckYVar == 9
          return 0x000090AA
        elseif ckYVar == 10
          return 0x0000908B
        elseif ckYVar == 11
          return 0x0000906C
        elseif ckYVar == 12
          return 0x0000904D
        elseif ckYVar == 13
          return 0x0000902E
        elseif ckYVar == 14
          return 0x0000900F
        elseif ckYVar == 15
          return 0x00008FF0
        elseif ckYVar == 16
          return 0x00008FD1
        elseif ckYVar == 17
          return 0x00008FB2
        elseif ckYVar == 18
          return 0x00008F93
        elseif ckYVar == 19
          return 0x00008F74
        elseif ckYVar == 20
          return 0x00008F55
        elseif ckYVar == 21
          return 0x00008F36
        elseif ckYVar == 22
          return 0x00008F17
        elseif ckYVar == 23
          return 0x00008EF8
        elseif ckYVar == 24
          return 0x00008ED9
        elseif ckYVar == 25
          return 0x00008EBA
        elseif ckYVar == 26
          return 0x00008E9B
        elseif ckYVar == 27
          return 0x00008E7C
        elseif ckYVar == 28
          return 0x00008E5D
        elseif ckYVar == 29
          return 0x00008E3E
        elseif ckYVar == 30
          return 0x00008E1F
        elseif ckYVar == 31
          return 0x00008E00
        elseif ckYVar == 32
          return 0x0000398B
        elseif ckYVar == 33
          return 0x0000398A
        elseif ckYVar == 34
          return 0x0000394E
        elseif ckYVar == 35
          return 0x0000392F
        elseif ckYVar == 36
          return 0x00003910
        elseif ckYVar == 37
          return 0x000038F1
        elseif ckYVar == 38
          return 0x000038D2
        elseif ckYVar == 39
          return 0x000038B3
        elseif ckYVar == 40
          return 0x00003894
        elseif ckYVar == 41
          return 0x00003875
        elseif ckYVar == 42
          return 0x00003856
        elseif ckYVar == 43
          return 0x00003837
        elseif ckYVar == 44
          return 0x00003818
        elseif ckYVar == 45
          return 0x000037F9
        elseif ckYVar == 46
          return 0x000037DA
        elseif ckYVar == 47
          return 0x000037BB
        elseif ckYVar == 48
          return 0x0000379C
        elseif ckYVar == 49
          return 0x0000377D
        elseif ckYVar == 50
          return 0x0000375E
        endif
      elseif ckXVar == 3
        if ckYVar == -43
          return 0x0000EF35
        elseif ckYVar == -42
          return 0x0000EF16
        elseif ckYVar == -41
          return 0x0000EEF7
        elseif ckYVar == -40
          return 0x0000EED8
        elseif ckYVar == -39
          return 0x0000EEB9
        elseif ckYVar == -38
          return 0x0000EE9A
        elseif ckYVar == -37
          return 0x0000EE7B
        elseif ckYVar == -36
          return 0x0000EE5C
        elseif ckYVar == -35
          return 0x0000EE3D
        elseif ckYVar == -34
          return 0x0000EE1E
        elseif ckYVar == -33
          return 0x0000EDFF
        elseif ckYVar == -32
          return 0x0000999D
        elseif ckYVar == -31
          return 0x0000999C
        elseif ckYVar == -30
          return 0x00009961
        elseif ckYVar == -29
          return 0x00009942
        elseif ckYVar == -28
          return 0x00009923
        elseif ckYVar == -27
          return 0x00009904
        elseif ckYVar == -26
          return 0x000098E5
        elseif ckYVar == -25
          return 0x000098C6
        elseif ckYVar == -24
          return 0x000098A7
        elseif ckYVar == -23
          return 0x00009888
        elseif ckYVar == -22
          return 0x00009869
        elseif ckYVar == -21
          return 0x0000984A
        elseif ckYVar == -20
          return 0x0000982B
        elseif ckYVar == -19
          return 0x0000980C
        elseif ckYVar == -18
          return 0x000097ED
        elseif ckYVar == -17
          return 0x000097CE
        elseif ckYVar == -16
          return 0x000097AF
        elseif ckYVar == -15
          return 0x00009790
        elseif ckYVar == -14
          return 0x00009771
        elseif ckYVar == -13
          return 0x00009752
        elseif ckYVar == -12
          return 0x00009733
        elseif ckYVar == -11
          return 0x00009714
        elseif ckYVar == -10
          return 0x000096F5
        elseif ckYVar == -9
          return 0x000096D6
        elseif ckYVar == -8
          return 0x000096B7
        elseif ckYVar == -7
          return 0x00009698
        elseif ckYVar == -6
          return 0x00009679
        elseif ckYVar == -5
          return 0x0000965A
        elseif ckYVar == -4
          return 0x0000963B
        elseif ckYVar == -3
          return 0x0000961C
        elseif ckYVar == -2
          return 0x000095FD
        elseif ckYVar == -1
          return 0x000095DE
        elseif ckYVar == 0
          return 0x000095BF
        elseif ckYVar == 1
          return 0x000091A1
        elseif ckYVar == 2
          return 0x00009182
        elseif ckYVar == 3
          return 0x00009163
        elseif ckYVar == 4
          return 0x00009144
        elseif ckYVar == 5
          return 0x00009125
        elseif ckYVar == 6
          return 0x00009106
        elseif ckYVar == 7
          return 0x000090E7
        elseif ckYVar == 8
          return 0x000090C8
        elseif ckYVar == 9
          return 0x000090A9
        elseif ckYVar == 10
          return 0x0000908A
        elseif ckYVar == 11
          return 0x0000906B
        elseif ckYVar == 12
          return 0x0000904C
        elseif ckYVar == 13
          return 0x0000902D
        elseif ckYVar == 14
          return 0x0000900E
        elseif ckYVar == 15
          return 0x00008FEF
        elseif ckYVar == 16
          return 0x00008FD0
        elseif ckYVar == 17
          return 0x00008FB1
        elseif ckYVar == 18
          return 0x00008F92
        elseif ckYVar == 19
          return 0x00008F73
        elseif ckYVar == 20
          return 0x00008F54
        elseif ckYVar == 21
          return 0x00008F35
        elseif ckYVar == 22
          return 0x00008F16
        elseif ckYVar == 23
          return 0x00008EF7
        elseif ckYVar == 24
          return 0x00008ED8
        elseif ckYVar == 25
          return 0x00008EB9
        elseif ckYVar == 26
          return 0x00008E9A
        elseif ckYVar == 27
          return 0x00008E7B
        elseif ckYVar == 28
          return 0x00008E5C
        elseif ckYVar == 29
          return 0x00008E3D
        elseif ckYVar == 30
          return 0x00008E1E
        elseif ckYVar == 31
          return 0x00008DFF
        elseif ckYVar == 32
          return 0x00003989
        elseif ckYVar == 33
          return 0x00003988
        elseif ckYVar == 34
          return 0x0000394D
        elseif ckYVar == 35
          return 0x0000392E
        elseif ckYVar == 36
          return 0x0000390F
        elseif ckYVar == 37
          return 0x000038F0
        elseif ckYVar == 38
          return 0x000038D1
        elseif ckYVar == 39
          return 0x000038B2
        elseif ckYVar == 40
          return 0x00003893
        elseif ckYVar == 41
          return 0x00003874
        elseif ckYVar == 42
          return 0x00003855
        elseif ckYVar == 43
          return 0x00003836
        elseif ckYVar == 44
          return 0x00003817
        elseif ckYVar == 45
          return 0x000037F8
        elseif ckYVar == 46
          return 0x000037D9
        elseif ckYVar == 47
          return 0x000037BA
        elseif ckYVar == 48
          return 0x0000379B
        elseif ckYVar == 49
          return 0x0000377C
        elseif ckYVar == 50
          return 0x0000375D
        endif
      elseif ckXVar == 4
        if ckYVar == -43
          return 0x0000EF34
        elseif ckYVar == -42
          return 0x0000EF15
        elseif ckYVar == -41
          return 0x0000EEF6
        elseif ckYVar == -40
          return 0x0000EED7
        elseif ckYVar == -39
          return 0x0000EEB8
        elseif ckYVar == -38
          return 0x0000EE99
        elseif ckYVar == -37
          return 0x0000EE7A
        elseif ckYVar == -36
          return 0x0000EE5B
        elseif ckYVar == -35
          return 0x0000EE3C
        elseif ckYVar == -34
          return 0x0000EE1D
        elseif ckYVar == -33
          return 0x0000EDFE
        elseif ckYVar == -32
          return 0x0000999B
        elseif ckYVar == -31
          return 0x0000999A
        elseif ckYVar == -30
          return 0x00009960
        elseif ckYVar == -29
          return 0x00009941
        elseif ckYVar == -28
          return 0x00009922
        elseif ckYVar == -27
          return 0x00009903
        elseif ckYVar == -26
          return 0x000098E4
        elseif ckYVar == -25
          return 0x000098C5
        elseif ckYVar == -24
          return 0x000098A6
        elseif ckYVar == -23
          return 0x00009887
        elseif ckYVar == -22
          return 0x00009868
        elseif ckYVar == -21
          return 0x00009849
        elseif ckYVar == -20
          return 0x0000982A
        elseif ckYVar == -19
          return 0x0000980B
        elseif ckYVar == -18
          return 0x000097EC
        elseif ckYVar == -17
          return 0x000097CD
        elseif ckYVar == -16
          return 0x000097AE
        elseif ckYVar == -15
          return 0x0000978F
        elseif ckYVar == -14
          return 0x00009770
        elseif ckYVar == -13
          return 0x00009751
        elseif ckYVar == -12
          return 0x00009732
        elseif ckYVar == -11
          return 0x00009713
        elseif ckYVar == -10
          return 0x000096F4
        elseif ckYVar == -9
          return 0x000096D5
        elseif ckYVar == -8
          return 0x000096B6
        elseif ckYVar == -7
          return 0x00009697
        elseif ckYVar == -6
          return 0x00009678
        elseif ckYVar == -5
          return 0x00009659
        elseif ckYVar == -4
          return 0x0000963A
        elseif ckYVar == -3
          return 0x0000961B
        elseif ckYVar == -2
          return 0x000095FC
        elseif ckYVar == -1
          return 0x000095DD
        elseif ckYVar == 0
          return 0x000095BE
        elseif ckYVar == 1
          return 0x000091A0
        elseif ckYVar == 2
          return 0x00009181
        elseif ckYVar == 3
          return 0x00009162
        elseif ckYVar == 4
          return 0x00009143
        elseif ckYVar == 5
          return 0x00009124
        elseif ckYVar == 6
          return 0x00009105
        elseif ckYVar == 7
          return 0x000090E6
        elseif ckYVar == 8
          return 0x000090C7
        elseif ckYVar == 9
          return 0x000090A8
        elseif ckYVar == 10
          return 0x00009089
        elseif ckYVar == 11
          return 0x0000906A
        elseif ckYVar == 12
          return 0x0000904B
        elseif ckYVar == 13
          return 0x0000902C
        elseif ckYVar == 14
          return 0x0000900D
        elseif ckYVar == 15
          return 0x00008FEE
        elseif ckYVar == 16
          return 0x00008FCF
        elseif ckYVar == 17
          return 0x00008FB0
        elseif ckYVar == 18
          return 0x00008F91
        elseif ckYVar == 19
          return 0x00008F72
        elseif ckYVar == 20
          return 0x00008F53
        elseif ckYVar == 21
          return 0x00008F34
        elseif ckYVar == 22
          return 0x00008F15
        elseif ckYVar == 23
          return 0x00008EF6
        elseif ckYVar == 24
          return 0x00008ED7
        elseif ckYVar == 25
          return 0x00008EB8
        elseif ckYVar == 26
          return 0x00008E99
        elseif ckYVar == 27
          return 0x00008E7A
        elseif ckYVar == 28
          return 0x00008E5B
        elseif ckYVar == 29
          return 0x00008E3C
        elseif ckYVar == 30
          return 0x00008E1D
        elseif ckYVar == 31
          return 0x00008DFE
        elseif ckYVar == 32
          return 0x00003987
        elseif ckYVar == 33
          return 0x00003986
        elseif ckYVar == 34
          return 0x0000394C
        elseif ckYVar == 35
          return 0x0000392D
        elseif ckYVar == 36
          return 0x0000390E
        elseif ckYVar == 37
          return 0x000038EF
        elseif ckYVar == 38
          return 0x000038D0
        elseif ckYVar == 39
          return 0x000038B1
        elseif ckYVar == 40
          return 0x00003892
        elseif ckYVar == 41
          return 0x00003873
        elseif ckYVar == 42
          return 0x00003854
        elseif ckYVar == 43
          return 0x00003835
        elseif ckYVar == 44
          return 0x00003816
        elseif ckYVar == 45
          return 0x000037F7
        elseif ckYVar == 46
          return 0x000037D8
        elseif ckYVar == 47
          return 0x000037B9
        elseif ckYVar == 48
          return 0x0000379A
        elseif ckYVar == 49
          return 0x0000377B
        elseif ckYVar == 50
          return 0x0000375C
        endif
      elseif ckXVar == 5
        if ckYVar == -43
          return 0x0000EF33
        elseif ckYVar == -42
          return 0x0000EF14
        elseif ckYVar == -41
          return 0x0000EEF5
        elseif ckYVar == -40
          return 0x0000EED6
        elseif ckYVar == -39
          return 0x0000EEB7
        elseif ckYVar == -38
          return 0x0000EE98
        elseif ckYVar == -37
          return 0x0000EE79
        elseif ckYVar == -36
          return 0x0000EE5A
        elseif ckYVar == -35
          return 0x0000EE3B
        elseif ckYVar == -34
          return 0x0000EE1C
        elseif ckYVar == -33
          return 0x0000EDFD
        elseif ckYVar == -32
          return 0x00009999
        elseif ckYVar == -31
          return 0x00009998
        elseif ckYVar == -30
          return 0x0000995F
        elseif ckYVar == -29
          return 0x00009940
        elseif ckYVar == -28
          return 0x00009921
        elseif ckYVar == -27
          return 0x00009902
        elseif ckYVar == -26
          return 0x000098E3
        elseif ckYVar == -25
          return 0x000098C4
        elseif ckYVar == -24
          return 0x000098A5
        elseif ckYVar == -23
          return 0x00009886
        elseif ckYVar == -22
          return 0x00009867
        elseif ckYVar == -21
          return 0x00009848
        elseif ckYVar == -20
          return 0x00009829
        elseif ckYVar == -19
          return 0x0000980A
        elseif ckYVar == -18
          return 0x000097EB
        elseif ckYVar == -17
          return 0x000097CC
        elseif ckYVar == -16
          return 0x000097AD
        elseif ckYVar == -15
          return 0x0000978E
        elseif ckYVar == -14
          return 0x0000976F
        elseif ckYVar == -13
          return 0x00009750
        elseif ckYVar == -12
          return 0x00009731
        elseif ckYVar == -11
          return 0x00009712
        elseif ckYVar == -10
          return 0x000096F3
        elseif ckYVar == -9
          return 0x000096D4
        elseif ckYVar == -8
          return 0x000096B5
        elseif ckYVar == -7
          return 0x00009696
        elseif ckYVar == -6
          return 0x00009677
        elseif ckYVar == -5
          return 0x00009658
        elseif ckYVar == -4
          return 0x00009639
        elseif ckYVar == -3
          return 0x0000961A
        elseif ckYVar == -2
          return 0x000095FB
        elseif ckYVar == -1
          return 0x000095DC
        elseif ckYVar == 0
          return 0x000095BD
        elseif ckYVar == 1
          return 0x0000919F
        elseif ckYVar == 2
          return 0x00009180
        elseif ckYVar == 3
          return 0x00009161
        elseif ckYVar == 4
          return 0x00009142
        elseif ckYVar == 5
          return 0x00009123
        elseif ckYVar == 6
          return 0x00009104
        elseif ckYVar == 7
          return 0x000090E5
        elseif ckYVar == 8
          return 0x000090C6
        elseif ckYVar == 9
          return 0x000090A7
        elseif ckYVar == 10
          return 0x00009088
        elseif ckYVar == 11
          return 0x00009069
        elseif ckYVar == 12
          return 0x0000904A
        elseif ckYVar == 13
          return 0x0000902B
        elseif ckYVar == 14
          return 0x0000900C
        elseif ckYVar == 15
          return 0x00008FED
        elseif ckYVar == 16
          return 0x00008FCE
        elseif ckYVar == 17
          return 0x00008FAF
        elseif ckYVar == 18
          return 0x00008F90
        elseif ckYVar == 19
          return 0x00008F71
        elseif ckYVar == 20
          return 0x00008F52
        elseif ckYVar == 21
          return 0x00008F33
        elseif ckYVar == 22
          return 0x00008F14
        elseif ckYVar == 23
          return 0x00008EF5
        elseif ckYVar == 24
          return 0x00008ED6
        elseif ckYVar == 25
          return 0x00008EB7
        elseif ckYVar == 26
          return 0x00008E98
        elseif ckYVar == 27
          return 0x00008E79
        elseif ckYVar == 28
          return 0x00008E5A
        elseif ckYVar == 29
          return 0x00008E3B
        elseif ckYVar == 30
          return 0x00008E1C
        elseif ckYVar == 31
          return 0x00008DFD
        elseif ckYVar == 32
          return 0x00003985
        elseif ckYVar == 33
          return 0x00003984
        elseif ckYVar == 34
          return 0x0000394B
        elseif ckYVar == 35
          return 0x0000392C
        elseif ckYVar == 36
          return 0x0000390D
        elseif ckYVar == 37
          return 0x000038EE
        elseif ckYVar == 38
          return 0x000038CF
        elseif ckYVar == 39
          return 0x000038B0
        elseif ckYVar == 40
          return 0x00003891
        elseif ckYVar == 41
          return 0x00003872
        elseif ckYVar == 42
          return 0x00003853
        elseif ckYVar == 43
          return 0x00003834
        elseif ckYVar == 44
          return 0x00003815
        elseif ckYVar == 45
          return 0x000037F6
        elseif ckYVar == 46
          return 0x000037D7
        elseif ckYVar == 47
          return 0x000037B8
        elseif ckYVar == 48
          return 0x00003799
        elseif ckYVar == 49
          return 0x0000377A
        elseif ckYVar == 50
          return 0x0000375B
        endif
      elseif ckXVar == 6
        if ckYVar == -43
          return 0x0000EF32
        elseif ckYVar == -42
          return 0x0000EF13
        elseif ckYVar == -41
          return 0x0000EEF4
        elseif ckYVar == -40
          return 0x0000EED5
        elseif ckYVar == -39
          return 0x0000EEB6
        elseif ckYVar == -38
          return 0x0000EE97
        elseif ckYVar == -37
          return 0x0000EE78
        elseif ckYVar == -36
          return 0x0000EE59
        elseif ckYVar == -35
          return 0x0000EE3A
        elseif ckYVar == -34
          return 0x0000EE1B
        elseif ckYVar == -33
          return 0x0000EDFC
        elseif ckYVar == -32
          return 0x00009997
        elseif ckYVar == -31
          return 0x00009996
        elseif ckYVar == -30
          return 0x0000995E
        elseif ckYVar == -29
          return 0x0000993F
        elseif ckYVar == -28
          return 0x00009920
        elseif ckYVar == -27
          return 0x00009901
        elseif ckYVar == -26
          return 0x000098E2
        elseif ckYVar == -25
          return 0x000098C3
        elseif ckYVar == -24
          return 0x000098A4
        elseif ckYVar == -23
          return 0x00009885
        elseif ckYVar == -22
          return 0x00009866
        elseif ckYVar == -21
          return 0x00009847
        elseif ckYVar == -20
          return 0x00009828
        elseif ckYVar == -19
          return 0x00009809
        elseif ckYVar == -18
          return 0x000097EA
        elseif ckYVar == -17
          return 0x000097CB
        elseif ckYVar == -16
          return 0x000097AC
        elseif ckYVar == -15
          return 0x0000978D
        elseif ckYVar == -14
          return 0x0000976E
        elseif ckYVar == -13
          return 0x0000974F
        elseif ckYVar == -12
          return 0x00009730
        elseif ckYVar == -11
          return 0x00009711
        elseif ckYVar == -10
          return 0x000096F2
        elseif ckYVar == -9
          return 0x000096D3
        elseif ckYVar == -8
          return 0x000096B4
        elseif ckYVar == -7
          return 0x00009695
        elseif ckYVar == -6
          return 0x00009676
        elseif ckYVar == -5
          return 0x00009657
        elseif ckYVar == -4
          return 0x00009638
        elseif ckYVar == -3
          return 0x00009619
        elseif ckYVar == -2
          return 0x000095FA
        elseif ckYVar == -1
          return 0x000095DB
        elseif ckYVar == 0
          return 0x000095BC
        elseif ckYVar == 1
          return 0x0000919E
        elseif ckYVar == 2
          return 0x0000917F
        elseif ckYVar == 3
          return 0x00009160
        elseif ckYVar == 4
          return 0x00009141
        elseif ckYVar == 5
          return 0x00009122
        elseif ckYVar == 6
          return 0x00009103
        elseif ckYVar == 7
          return 0x000090E4
        elseif ckYVar == 8
          return 0x000090C5
        elseif ckYVar == 9
          return 0x000090A6
        elseif ckYVar == 10
          return 0x00009087
        elseif ckYVar == 11
          return 0x00009068
        elseif ckYVar == 12
          return 0x00009049
        elseif ckYVar == 13
          return 0x0000902A
        elseif ckYVar == 14
          return 0x0000900B
        elseif ckYVar == 15
          return 0x00008FEC
        elseif ckYVar == 16
          return 0x00008FCD
        elseif ckYVar == 17
          return 0x00008FAE
        elseif ckYVar == 18
          return 0x00008F8F
        elseif ckYVar == 19
          return 0x00008F70
        elseif ckYVar == 20
          return 0x00008F51
        elseif ckYVar == 21
          return 0x00008F32
        elseif ckYVar == 22
          return 0x00008F13
        elseif ckYVar == 23
          return 0x00008EF4
        elseif ckYVar == 24
          return 0x00008ED5
        elseif ckYVar == 25
          return 0x00008EB6
        elseif ckYVar == 26
          return 0x00008E97
        elseif ckYVar == 27
          return 0x00008E78
        elseif ckYVar == 28
          return 0x00008E59
        elseif ckYVar == 29
          return 0x00008E3A
        elseif ckYVar == 30
          return 0x00008E1B
        elseif ckYVar == 31
          return 0x00008DFC
        elseif ckYVar == 32
          return 0x00003983
        elseif ckYVar == 33
          return 0x00003982
        elseif ckYVar == 34
          return 0x0000394A
        elseif ckYVar == 35
          return 0x0000392B
        elseif ckYVar == 36
          return 0x0000390C
        elseif ckYVar == 37
          return 0x000038ED
        elseif ckYVar == 38
          return 0x000038CE
        elseif ckYVar == 39
          return 0x000038AF
        elseif ckYVar == 40
          return 0x00003890
        elseif ckYVar == 41
          return 0x00003871
        elseif ckYVar == 42
          return 0x00003852
        elseif ckYVar == 43
          return 0x00003833
        elseif ckYVar == 44
          return 0x00003814
        elseif ckYVar == 45
          return 0x000037F5
        elseif ckYVar == 46
          return 0x000037D6
        elseif ckYVar == 47
          return 0x000037B7
        elseif ckYVar == 48
          return 0x00003798
        elseif ckYVar == 49
          return 0x00003779
        elseif ckYVar == 50
          return 0x0000375A
        endif
      elseif ckXVar == 7
        if ckYVar == -43
          return 0x0000EF31
        elseif ckYVar == -42
          return 0x0000EF12
        elseif ckYVar == -41
          return 0x0000EEF3
        elseif ckYVar == -40
          return 0x0000EED4
        elseif ckYVar == -39
          return 0x0000EEB5
        elseif ckYVar == -38
          return 0x0000EE96
        elseif ckYVar == -37
          return 0x0000EE77
        elseif ckYVar == -36
          return 0x0000EE58
        elseif ckYVar == -35
          return 0x0000EE39
        elseif ckYVar == -34
          return 0x0000EE1A
        elseif ckYVar == -33
          return 0x0000EDFB
        elseif ckYVar == -32
          return 0x00009995
        elseif ckYVar == -31
          return 0x00009994
        elseif ckYVar == -30
          return 0x0000995D
        elseif ckYVar == -29
          return 0x0000993E
        elseif ckYVar == -28
          return 0x0000991F
        elseif ckYVar == -27
          return 0x00009900
        elseif ckYVar == -26
          return 0x000098E1
        elseif ckYVar == -25
          return 0x000098C2
        elseif ckYVar == -24
          return 0x000098A3
        elseif ckYVar == -23
          return 0x00009884
        elseif ckYVar == -22
          return 0x00009865
        elseif ckYVar == -21
          return 0x00009846
        elseif ckYVar == -20
          return 0x00009827
        elseif ckYVar == -19
          return 0x00009808
        elseif ckYVar == -18
          return 0x000097E9
        elseif ckYVar == -17
          return 0x000097CA
        elseif ckYVar == -16
          return 0x000097AB
        elseif ckYVar == -15
          return 0x0000978C
        elseif ckYVar == -14
          return 0x0000976D
        elseif ckYVar == -13
          return 0x0000974E
        elseif ckYVar == -12
          return 0x0000972F
        elseif ckYVar == -11
          return 0x00009710
        elseif ckYVar == -10
          return 0x000096F1
        elseif ckYVar == -9
          return 0x000096D2
        elseif ckYVar == -8
          return 0x000096B3
        elseif ckYVar == -7
          return 0x00009694
        elseif ckYVar == -6
          return 0x00009675
        elseif ckYVar == -5
          return 0x00009656
        elseif ckYVar == -4
          return 0x00009637
        elseif ckYVar == -3
          return 0x00009618
        elseif ckYVar == -2
          return 0x000095F9
        elseif ckYVar == -1
          return 0x000095DA
        elseif ckYVar == 0
          return 0x000095BB
        elseif ckYVar == 1
          return 0x0000919D
        elseif ckYVar == 2
          return 0x0000917E
        elseif ckYVar == 3
          return 0x0000915F
        elseif ckYVar == 4
          return 0x00009140
        elseif ckYVar == 5
          return 0x00009121
        elseif ckYVar == 6
          return 0x00009102
        elseif ckYVar == 7
          return 0x000090E3
        elseif ckYVar == 8
          return 0x000090C4
        elseif ckYVar == 9
          return 0x000090A5
        elseif ckYVar == 10
          return 0x00009086
        elseif ckYVar == 11
          return 0x00009067
        elseif ckYVar == 12
          return 0x00009048
        elseif ckYVar == 13
          return 0x00009029
        elseif ckYVar == 14
          return 0x0000900A
        elseif ckYVar == 15
          return 0x00008FEB
        elseif ckYVar == 16
          return 0x00008FCC
        elseif ckYVar == 17
          return 0x00008FAD
        elseif ckYVar == 18
          return 0x00008F8E
        elseif ckYVar == 19
          return 0x00008F6F
        elseif ckYVar == 20
          return 0x00008F50
        elseif ckYVar == 21
          return 0x00008F31
        elseif ckYVar == 22
          return 0x00008F12
        elseif ckYVar == 23
          return 0x00008EF3
        elseif ckYVar == 24
          return 0x00008ED4
        elseif ckYVar == 25
          return 0x00008EB5
        elseif ckYVar == 26
          return 0x00008E96
        elseif ckYVar == 27
          return 0x00008E77
        elseif ckYVar == 28
          return 0x00008E58
        elseif ckYVar == 29
          return 0x00008E39
        elseif ckYVar == 30
          return 0x00008E1A
        elseif ckYVar == 31
          return 0x00008DFB
        elseif ckYVar == 32
          return 0x00003981
        elseif ckYVar == 33
          return 0x00003980
        elseif ckYVar == 34
          return 0x00003949
        elseif ckYVar == 35
          return 0x0000392A
        elseif ckYVar == 36
          return 0x0000390B
        elseif ckYVar == 37
          return 0x000038EC
        elseif ckYVar == 38
          return 0x000038CD
        elseif ckYVar == 39
          return 0x000038AE
        elseif ckYVar == 40
          return 0x0000388F
        elseif ckYVar == 41
          return 0x00003870
        elseif ckYVar == 42
          return 0x00003851
        elseif ckYVar == 43
          return 0x00003832
        elseif ckYVar == 44
          return 0x00003813
        elseif ckYVar == 45
          return 0x000037F4
        elseif ckYVar == 46
          return 0x000037D5
        elseif ckYVar == 47
          return 0x000037B6
        elseif ckYVar == 48
          return 0x00003797
        elseif ckYVar == 49
          return 0x00003778
        elseif ckYVar == 50
          return 0x00003759
        endif
      elseif ckXVar == 8
        if ckYVar == -43
          return 0x0000EF30
        elseif ckYVar == -42
          return 0x0000EF11
        elseif ckYVar == -41
          return 0x0000EEF2
        elseif ckYVar == -40
          return 0x0000EED3
        elseif ckYVar == -39
          return 0x0000EEB4
        elseif ckYVar == -38
          return 0x0000EE95
        elseif ckYVar == -37
          return 0x0000EE76
        elseif ckYVar == -36
          return 0x0000EE57
        elseif ckYVar == -35
          return 0x0000EE38
        elseif ckYVar == -34
          return 0x0000EE19
        elseif ckYVar == -33
          return 0x0000EDFA
        elseif ckYVar == -32
          return 0x00009993
        elseif ckYVar == -31
          return 0x00009992
        elseif ckYVar == -30
          return 0x0000995C
        elseif ckYVar == -29
          return 0x0000993D
        elseif ckYVar == -28
          return 0x0000991E
        elseif ckYVar == -27
          return 0x000098FF
        elseif ckYVar == -26
          return 0x000098E0
        elseif ckYVar == -25
          return 0x000098C1
        elseif ckYVar == -24
          return 0x000098A2
        elseif ckYVar == -23
          return 0x00009883
        elseif ckYVar == -22
          return 0x00009864
        elseif ckYVar == -21
          return 0x00009845
        elseif ckYVar == -20
          return 0x00009826
        elseif ckYVar == -19
          return 0x00009807
        elseif ckYVar == -18
          return 0x000097E8
        elseif ckYVar == -17
          return 0x000097C9
        elseif ckYVar == -16
          return 0x000097AA
        elseif ckYVar == -15
          return 0x0000978B
        elseif ckYVar == -14
          return 0x0000976C
        elseif ckYVar == -13
          return 0x0000974D
        elseif ckYVar == -12
          return 0x0000972E
        elseif ckYVar == -11
          return 0x0000970F
        elseif ckYVar == -10
          return 0x000096F0
        elseif ckYVar == -9
          return 0x000096D1
        elseif ckYVar == -8
          return 0x000096B2
        elseif ckYVar == -7
          return 0x00009693
        elseif ckYVar == -6
          return 0x00009674
        elseif ckYVar == -5
          return 0x00009655
        elseif ckYVar == -4
          return 0x00009636
        elseif ckYVar == -3
          return 0x00009617
        elseif ckYVar == -2
          return 0x000095F8
        elseif ckYVar == -1
          return 0x000095D9
        elseif ckYVar == 0
          return 0x000095BA
        elseif ckYVar == 1
          return 0x0000919C
        elseif ckYVar == 2
          return 0x0000917D
        elseif ckYVar == 3
          return 0x0000915E
        elseif ckYVar == 4
          return 0x0000913F
        elseif ckYVar == 5
          return 0x00009120
        elseif ckYVar == 6
          return 0x00009101
        elseif ckYVar == 7
          return 0x000090E2
        elseif ckYVar == 8
          return 0x000090C3
        elseif ckYVar == 9
          return 0x000090A4
        elseif ckYVar == 10
          return 0x00009085
        elseif ckYVar == 11
          return 0x00009066
        elseif ckYVar == 12
          return 0x00009047
        elseif ckYVar == 13
          return 0x00009028
        elseif ckYVar == 14
          return 0x00009009
        elseif ckYVar == 15
          return 0x00008FEA
        elseif ckYVar == 16
          return 0x00008FCB
        elseif ckYVar == 17
          return 0x00008FAC
        elseif ckYVar == 18
          return 0x00008F8D
        elseif ckYVar == 19
          return 0x00008F6E
        elseif ckYVar == 20
          return 0x00008F4F
        elseif ckYVar == 21
          return 0x00008F30
        elseif ckYVar == 22
          return 0x00008F11
        elseif ckYVar == 23
          return 0x00008EF2
        elseif ckYVar == 24
          return 0x00008ED3
        elseif ckYVar == 25
          return 0x00008EB4
        elseif ckYVar == 26
          return 0x00008E95
        elseif ckYVar == 27
          return 0x00008E76
        elseif ckYVar == 28
          return 0x00008E57
        elseif ckYVar == 29
          return 0x00008E38
        elseif ckYVar == 30
          return 0x00008E19
        elseif ckYVar == 31
          return 0x00008DFA
        elseif ckYVar == 32
          return 0x0000397F
        elseif ckYVar == 33
          return 0x0000397E
        elseif ckYVar == 34
          return 0x00003948
        elseif ckYVar == 35
          return 0x00003929
        elseif ckYVar == 36
          return 0x0000390A
        elseif ckYVar == 37
          return 0x000038EB
        elseif ckYVar == 38
          return 0x000038CC
        elseif ckYVar == 39
          return 0x000038AD
        elseif ckYVar == 40
          return 0x0000388E
        elseif ckYVar == 41
          return 0x0000386F
        elseif ckYVar == 42
          return 0x00003850
        elseif ckYVar == 43
          return 0x00003831
        elseif ckYVar == 44
          return 0x00003812
        elseif ckYVar == 45
          return 0x000037F3
        elseif ckYVar == 46
          return 0x000037D4
        elseif ckYVar == 47
          return 0x000037B5
        elseif ckYVar == 48
          return 0x00003796
        elseif ckYVar == 49
          return 0x00003777
        elseif ckYVar == 50
          return 0x00003758
        endif
      elseif ckXVar == 9
        if ckYVar == -43
          return 0x0000EF2F
        elseif ckYVar == -42
          return 0x0000EF10
        elseif ckYVar == -41
          return 0x0000EEF1
        elseif ckYVar == -40
          return 0x0000EED2
        elseif ckYVar == -39
          return 0x0000EEB3
        elseif ckYVar == -38
          return 0x0000EE94
        elseif ckYVar == -37
          return 0x0000EE75
        elseif ckYVar == -36
          return 0x0000EE56
        elseif ckYVar == -35
          return 0x0000EE37
        elseif ckYVar == -34
          return 0x0000EE18
        elseif ckYVar == -33
          return 0x0000EDF9
        elseif ckYVar == -32
          return 0x00009991
        elseif ckYVar == -31
          return 0x00009990
        elseif ckYVar == -30
          return 0x0000995B
        elseif ckYVar == -29
          return 0x0000993C
        elseif ckYVar == -28
          return 0x0000991D
        elseif ckYVar == -27
          return 0x000098FE
        elseif ckYVar == -26
          return 0x000098DF
        elseif ckYVar == -25
          return 0x000098C0
        elseif ckYVar == -24
          return 0x000098A1
        elseif ckYVar == -23
          return 0x00009882
        elseif ckYVar == -22
          return 0x00009863
        elseif ckYVar == -21
          return 0x00009844
        elseif ckYVar == -20
          return 0x00009825
        elseif ckYVar == -19
          return 0x00009806
        elseif ckYVar == -18
          return 0x000097E7
        elseif ckYVar == -17
          return 0x000097C8
        elseif ckYVar == -16
          return 0x000097A9
        elseif ckYVar == -15
          return 0x0000978A
        elseif ckYVar == -14
          return 0x0000976B
        elseif ckYVar == -13
          return 0x0000974C
        elseif ckYVar == -12
          return 0x0000972D
        elseif ckYVar == -11
          return 0x0000970E
        elseif ckYVar == -10
          return 0x000096EF
        elseif ckYVar == -9
          return 0x000096D0
        elseif ckYVar == -8
          return 0x000096B1
        elseif ckYVar == -7
          return 0x00009692
        elseif ckYVar == -6
          return 0x00009673
        elseif ckYVar == -5
          return 0x00009654
        elseif ckYVar == -4
          return 0x00009635
        elseif ckYVar == -3
          return 0x00009616
        elseif ckYVar == -2
          return 0x000095F7
        elseif ckYVar == -1
          return 0x000095D8
        elseif ckYVar == 0
          return 0x000095B9
        elseif ckYVar == 1
          return 0x0000919B
        elseif ckYVar == 2
          return 0x0000917C
        elseif ckYVar == 3
          return 0x0000915D
        elseif ckYVar == 4
          return 0x0000913E
        elseif ckYVar == 5
          return 0x0000911F
        elseif ckYVar == 6
          return 0x00009100
        elseif ckYVar == 7
          return 0x000090E1
        elseif ckYVar == 8
          return 0x000090C2
        elseif ckYVar == 9
          return 0x000090A3
        elseif ckYVar == 10
          return 0x00009084
        elseif ckYVar == 11
          return 0x00009065
        elseif ckYVar == 12
          return 0x00009046
        elseif ckYVar == 13
          return 0x00009027
        elseif ckYVar == 14
          return 0x00009008
        elseif ckYVar == 15
          return 0x00008FE9
        elseif ckYVar == 16
          return 0x00008FCA
        elseif ckYVar == 17
          return 0x00008FAB
        elseif ckYVar == 18
          return 0x00008F8C
        elseif ckYVar == 19
          return 0x00008F6D
        elseif ckYVar == 20
          return 0x00008F4E
        elseif ckYVar == 21
          return 0x00008F2F
        elseif ckYVar == 22
          return 0x00008F10
        elseif ckYVar == 23
          return 0x00008EF1
        elseif ckYVar == 24
          return 0x00008ED2
        elseif ckYVar == 25
          return 0x00008EB3
        elseif ckYVar == 26
          return 0x00008E94
        elseif ckYVar == 27
          return 0x00008E75
        elseif ckYVar == 28
          return 0x00008E56
        elseif ckYVar == 29
          return 0x00008E37
        elseif ckYVar == 30
          return 0x00008E18
        elseif ckYVar == 31
          return 0x00008DF9
        elseif ckYVar == 32
          return 0x0000397D
        elseif ckYVar == 33
          return 0x0000397C
        elseif ckYVar == 34
          return 0x00003947
        elseif ckYVar == 35
          return 0x00003928
        elseif ckYVar == 36
          return 0x00003909
        elseif ckYVar == 37
          return 0x000038EA
        elseif ckYVar == 38
          return 0x000038CB
        elseif ckYVar == 39
          return 0x000038AC
        elseif ckYVar == 40
          return 0x0000388D
        elseif ckYVar == 41
          return 0x0000386E
        elseif ckYVar == 42
          return 0x0000384F
        elseif ckYVar == 43
          return 0x00003830
        elseif ckYVar == 44
          return 0x00003811
        elseif ckYVar == 45
          return 0x000037F2
        elseif ckYVar == 46
          return 0x000037D3
        elseif ckYVar == 47
          return 0x000037B4
        elseif ckYVar == 48
          return 0x00003795
        elseif ckYVar == 49
          return 0x00003776
        elseif ckYVar == 50
          return 0x00003757
        endif
      endif
    elseif ckXVar < 20
      if ckXVar == 10
        if ckYVar == -43
          return 0x0000EF2E
        elseif ckYVar == -42
          return 0x0000EF0F
        elseif ckYVar == -41
          return 0x0000EEF0
        elseif ckYVar == -40
          return 0x0000EED1
        elseif ckYVar == -39
          return 0x0000EEB2
        elseif ckYVar == -38
          return 0x0000EE93
        elseif ckYVar == -37
          return 0x0000EE74
        elseif ckYVar == -36
          return 0x0000EE55
        elseif ckYVar == -35
          return 0x0000EE36
        elseif ckYVar == -34
          return 0x0000EE17
        elseif ckYVar == -33
          return 0x0000EDF8
        elseif ckYVar == -32
          return 0x0000998F
        elseif ckYVar == -31
          return 0x0000998E
        elseif ckYVar == -30
          return 0x0000995A
        elseif ckYVar == -29
          return 0x0000993B
        elseif ckYVar == -28
          return 0x0000991C
        elseif ckYVar == -27
          return 0x000098FD
        elseif ckYVar == -26
          return 0x000098DE
        elseif ckYVar == -25
          return 0x000098BF
        elseif ckYVar == -24
          return 0x000098A0
        elseif ckYVar == -23
          return 0x00009881
        elseif ckYVar == -22
          return 0x00009862
        elseif ckYVar == -21
          return 0x00009843
        elseif ckYVar == -20
          return 0x00009824
        elseif ckYVar == -19
          return 0x00009805
        elseif ckYVar == -18
          return 0x000097E6
        elseif ckYVar == -17
          return 0x000097C7
        elseif ckYVar == -16
          return 0x000097A8
        elseif ckYVar == -15
          return 0x00009789
        elseif ckYVar == -14
          return 0x0000976A
        elseif ckYVar == -13
          return 0x0000974B
        elseif ckYVar == -12
          return 0x0000972C
        elseif ckYVar == -11
          return 0x0000970D
        elseif ckYVar == -10
          return 0x000096EE
        elseif ckYVar == -9
          return 0x000096CF
        elseif ckYVar == -8
          return 0x000096B0
        elseif ckYVar == -7
          return 0x00009691
        elseif ckYVar == -6
          return 0x00009672
        elseif ckYVar == -5
          return 0x00009653
        elseif ckYVar == -4
          return 0x00009634
        elseif ckYVar == -3
          return 0x00009615
        elseif ckYVar == -2
          return 0x000095F6
        elseif ckYVar == -1
          return 0x000095D7
        elseif ckYVar == 0
          return 0x000095B8
        elseif ckYVar == 1
          return 0x0000919A
        elseif ckYVar == 2
          return 0x0000917B
        elseif ckYVar == 3
          return 0x0000915C
        elseif ckYVar == 4
          return 0x0000913D
        elseif ckYVar == 5
          return 0x0000911E
        elseif ckYVar == 6
          return 0x000090FF
        elseif ckYVar == 7
          return 0x000090E0
        elseif ckYVar == 8
          return 0x000090C1
        elseif ckYVar == 9
          return 0x000090A2
        elseif ckYVar == 10
          return 0x00009083
        elseif ckYVar == 11
          return 0x00009064
        elseif ckYVar == 12
          return 0x00009045
        elseif ckYVar == 13
          return 0x00009026
        elseif ckYVar == 14
          return 0x00009007
        elseif ckYVar == 15
          return 0x00008FE8
        elseif ckYVar == 16
          return 0x00008FC9
        elseif ckYVar == 17
          return 0x00008FAA
        elseif ckYVar == 18
          return 0x00008F8B
        elseif ckYVar == 19
          return 0x00008F6C
        elseif ckYVar == 20
          return 0x00008F4D
        elseif ckYVar == 21
          return 0x00008F2E
        elseif ckYVar == 22
          return 0x00008F0F
        elseif ckYVar == 23
          return 0x00008EF0
        elseif ckYVar == 24
          return 0x00008ED1
        elseif ckYVar == 25
          return 0x00008EB2
        elseif ckYVar == 26
          return 0x00008E93
        elseif ckYVar == 27
          return 0x00008E74
        elseif ckYVar == 28
          return 0x00008E55
        elseif ckYVar == 29
          return 0x00008E36
        elseif ckYVar == 30
          return 0x00008E17
        elseif ckYVar == 31
          return 0x00008DF8
        elseif ckYVar == 32
          return 0x0000397B
        elseif ckYVar == 33
          return 0x0000397A
        elseif ckYVar == 34
          return 0x00003946
        elseif ckYVar == 35
          return 0x00003927
        elseif ckYVar == 36
          return 0x00003908
        elseif ckYVar == 37
          return 0x000038E9
        elseif ckYVar == 38
          return 0x000038CA
        elseif ckYVar == 39
          return 0x000038AB
        elseif ckYVar == 40
          return 0x0000388C
        elseif ckYVar == 41
          return 0x0000386D
        elseif ckYVar == 42
          return 0x0000384E
        elseif ckYVar == 43
          return 0x0000382F
        elseif ckYVar == 44
          return 0x00003810
        elseif ckYVar == 45
          return 0x000037F1
        elseif ckYVar == 46
          return 0x000037D2
        elseif ckYVar == 47
          return 0x000037B3
        elseif ckYVar == 48
          return 0x00003794
        elseif ckYVar == 49
          return 0x00003775
        elseif ckYVar == 50
          return 0x00003756
        endif
      elseif ckXVar == 11
        if ckYVar == -43
          return 0x0000EF2D
        elseif ckYVar == -42
          return 0x0000EF0E
        elseif ckYVar == -41
          return 0x0000EEEF
        elseif ckYVar == -40
          return 0x0000EED0
        elseif ckYVar == -39
          return 0x0000EEB1
        elseif ckYVar == -38
          return 0x0000EE92
        elseif ckYVar == -37
          return 0x0000EE73
        elseif ckYVar == -36
          return 0x0000EE54
        elseif ckYVar == -35
          return 0x0000EE35
        elseif ckYVar == -34
          return 0x0000EE16
        elseif ckYVar == -33
          return 0x0000EDF7
        elseif ckYVar == -32
          return 0x0000998D
        elseif ckYVar == -31
          return 0x0000998C
        elseif ckYVar == -30
          return 0x00009959
        elseif ckYVar == -29
          return 0x0000993A
        elseif ckYVar == -28
          return 0x0000991B
        elseif ckYVar == -27
          return 0x000098FC
        elseif ckYVar == -26
          return 0x000098DD
        elseif ckYVar == -25
          return 0x000098BE
        elseif ckYVar == -24
          return 0x0000989F
        elseif ckYVar == -23
          return 0x00009880
        elseif ckYVar == -22
          return 0x00009861
        elseif ckYVar == -21
          return 0x00009842
        elseif ckYVar == -20
          return 0x00009823
        elseif ckYVar == -19
          return 0x00009804
        elseif ckYVar == -18
          return 0x000097E5
        elseif ckYVar == -17
          return 0x000097C6
        elseif ckYVar == -16
          return 0x000097A7
        elseif ckYVar == -15
          return 0x00009788
        elseif ckYVar == -14
          return 0x00009769
        elseif ckYVar == -13
          return 0x0000974A
        elseif ckYVar == -12
          return 0x0000972B
        elseif ckYVar == -11
          return 0x0000970C
        elseif ckYVar == -10
          return 0x000096ED
        elseif ckYVar == -9
          return 0x000096CE
        elseif ckYVar == -8
          return 0x000096AF
        elseif ckYVar == -7
          return 0x00009690
        elseif ckYVar == -6
          return 0x00009671
        elseif ckYVar == -5
          return 0x00009652
        elseif ckYVar == -4
          return 0x00009633
        elseif ckYVar == -3
          return 0x00009614
        elseif ckYVar == -2
          return 0x000095F5
        elseif ckYVar == -1
          return 0x000095D6
        elseif ckYVar == 0
          return 0x000095B7
        elseif ckYVar == 1
          return 0x00009199
        elseif ckYVar == 2
          return 0x0000917A
        elseif ckYVar == 3
          return 0x0000915B
        elseif ckYVar == 4
          return 0x0000913C
        elseif ckYVar == 5
          return 0x0000911D
        elseif ckYVar == 6
          return 0x000090FE
        elseif ckYVar == 7
          return 0x000090DF
        elseif ckYVar == 8
          return 0x000090C0
        elseif ckYVar == 9
          return 0x000090A1
        elseif ckYVar == 10
          return 0x00009082
        elseif ckYVar == 11
          return 0x00009063
        elseif ckYVar == 12
          return 0x00009044
        elseif ckYVar == 13
          return 0x00009025
        elseif ckYVar == 14
          return 0x00009006
        elseif ckYVar == 15
          return 0x00008FE7
        elseif ckYVar == 16
          return 0x00008FC8
        elseif ckYVar == 17
          return 0x00008FA9
        elseif ckYVar == 18
          return 0x00008F8A
        elseif ckYVar == 19
          return 0x00008F6B
        elseif ckYVar == 20
          return 0x00008F4C
        elseif ckYVar == 21
          return 0x00008F2D
        elseif ckYVar == 22
          return 0x00008F0E
        elseif ckYVar == 23
          return 0x00008EEF
        elseif ckYVar == 24
          return 0x00008ED0
        elseif ckYVar == 25
          return 0x00008EB1
        elseif ckYVar == 26
          return 0x00008E92
        elseif ckYVar == 27
          return 0x00008E73
        elseif ckYVar == 28
          return 0x00008E54
        elseif ckYVar == 29
          return 0x00008E35
        elseif ckYVar == 30
          return 0x00008E16
        elseif ckYVar == 31
          return 0x00008DF7
        elseif ckYVar == 32
          return 0x00003979
        elseif ckYVar == 33
          return 0x00003978
        elseif ckYVar == 34
          return 0x00003945
        elseif ckYVar == 35
          return 0x00003926
        elseif ckYVar == 36
          return 0x00003907
        elseif ckYVar == 37
          return 0x000038E8
        elseif ckYVar == 38
          return 0x000038C9
        elseif ckYVar == 39
          return 0x000038AA
        elseif ckYVar == 40
          return 0x0000388B
        elseif ckYVar == 41
          return 0x0000386C
        elseif ckYVar == 42
          return 0x0000384D
        elseif ckYVar == 43
          return 0x0000382E
        elseif ckYVar == 44
          return 0x0000380F
        elseif ckYVar == 45
          return 0x000037F0
        elseif ckYVar == 46
          return 0x000037D1
        elseif ckYVar == 47
          return 0x000037B2
        elseif ckYVar == 48
          return 0x00003793
        elseif ckYVar == 49
          return 0x00003774
        elseif ckYVar == 50
          return 0x00003755
        endif
      elseif ckXVar == 12
        if ckYVar == -43
          return 0x0000EF2C
        elseif ckYVar == -42
          return 0x0000EF0D
        elseif ckYVar == -41
          return 0x0000EEEE
        elseif ckYVar == -40
          return 0x0000EECF
        elseif ckYVar == -39
          return 0x0000EEB0
        elseif ckYVar == -38
          return 0x0000EE91
        elseif ckYVar == -37
          return 0x0000EE72
        elseif ckYVar == -36
          return 0x0000EE53
        elseif ckYVar == -35
          return 0x0000EE34
        elseif ckYVar == -34
          return 0x0000EE15
        elseif ckYVar == -33
          return 0x0000EDF6
        elseif ckYVar == -32
          return 0x0000998B
        elseif ckYVar == -31
          return 0x0000998A
        elseif ckYVar == -30
          return 0x00009958
        elseif ckYVar == -29
          return 0x00009939
        elseif ckYVar == -28
          return 0x0000991A
        elseif ckYVar == -27
          return 0x000098FB
        elseif ckYVar == -26
          return 0x000098DC
        elseif ckYVar == -25
          return 0x000098BD
        elseif ckYVar == -24
          return 0x0000989E
        elseif ckYVar == -23
          return 0x0000987F
        elseif ckYVar == -22
          return 0x00009860
        elseif ckYVar == -21
          return 0x00009841
        elseif ckYVar == -20
          return 0x00009822
        elseif ckYVar == -19
          return 0x00009803
        elseif ckYVar == -18
          return 0x000097E4
        elseif ckYVar == -17
          return 0x000097C5
        elseif ckYVar == -16
          return 0x000097A6
        elseif ckYVar == -15
          return 0x00009787
        elseif ckYVar == -14
          return 0x00009768
        elseif ckYVar == -13
          return 0x00009749
        elseif ckYVar == -12
          return 0x0000972A
        elseif ckYVar == -11
          return 0x0000970B
        elseif ckYVar == -10
          return 0x000096EC
        elseif ckYVar == -9
          return 0x000096CD
        elseif ckYVar == -8
          return 0x000096AE
        elseif ckYVar == -7
          return 0x0000968F
        elseif ckYVar == -6
          return 0x00009670
        elseif ckYVar == -5
          return 0x00009651
        elseif ckYVar == -4
          return 0x00009632
        elseif ckYVar == -3
          return 0x00009613
        elseif ckYVar == -2
          return 0x000095F4
        elseif ckYVar == -1
          return 0x000095D5
        elseif ckYVar == 0
          return 0x000095B6
        elseif ckYVar == 1
          return 0x00009198
        elseif ckYVar == 2
          return 0x00009179
        elseif ckYVar == 3
          return 0x0000915A
        elseif ckYVar == 4
          return 0x0000913B
        elseif ckYVar == 5
          return 0x0000911C
        elseif ckYVar == 6
          return 0x000090FD
        elseif ckYVar == 7
          return 0x000090DE
        elseif ckYVar == 8
          return 0x000090BF
        elseif ckYVar == 9
          return 0x000090A0
        elseif ckYVar == 10
          return 0x00009081
        elseif ckYVar == 11
          return 0x00009062
        elseif ckYVar == 12
          return 0x00009043
        elseif ckYVar == 13
          return 0x00009024
        elseif ckYVar == 14
          return 0x00009005
        elseif ckYVar == 15
          return 0x00008FE6
        elseif ckYVar == 16
          return 0x00008FC7
        elseif ckYVar == 17
          return 0x00008FA8
        elseif ckYVar == 18
          return 0x00008F89
        elseif ckYVar == 19
          return 0x00008F6A
        elseif ckYVar == 20
          return 0x00008F4B
        elseif ckYVar == 21
          return 0x00008F2C
        elseif ckYVar == 22
          return 0x00008F0D
        elseif ckYVar == 23
          return 0x00008EEE
        elseif ckYVar == 24
          return 0x00008ECF
        elseif ckYVar == 25
          return 0x00008EB0
        elseif ckYVar == 26
          return 0x00008E91
        elseif ckYVar == 27
          return 0x00008E72
        elseif ckYVar == 28
          return 0x00008E53
        elseif ckYVar == 29
          return 0x00008E34
        elseif ckYVar == 30
          return 0x00008E15
        elseif ckYVar == 31
          return 0x00008DF6
        elseif ckYVar == 32
          return 0x00003977
        elseif ckYVar == 33
          return 0x00003976
        elseif ckYVar == 34
          return 0x00003944
        elseif ckYVar == 35
          return 0x00003925
        elseif ckYVar == 36
          return 0x00003906
        elseif ckYVar == 37
          return 0x000038E7
        elseif ckYVar == 38
          return 0x000038C8
        elseif ckYVar == 39
          return 0x000038A9
        elseif ckYVar == 40
          return 0x0000388A
        elseif ckYVar == 41
          return 0x0000386B
        elseif ckYVar == 42
          return 0x0000384C
        elseif ckYVar == 43
          return 0x0000382D
        elseif ckYVar == 44
          return 0x0000380E
        elseif ckYVar == 45
          return 0x000037EF
        elseif ckYVar == 46
          return 0x000037D0
        elseif ckYVar == 47
          return 0x000037B1
        elseif ckYVar == 48
          return 0x00003792
        elseif ckYVar == 49
          return 0x00003773
        elseif ckYVar == 50
          return 0x00003754
        endif
      elseif ckXVar == 13
        if ckYVar == -43
          return 0x0000EF2B
        elseif ckYVar == -42
          return 0x0000EF0C
        elseif ckYVar == -41
          return 0x0000EEED
        elseif ckYVar == -40
          return 0x0000EECE
        elseif ckYVar == -39
          return 0x0000EEAF
        elseif ckYVar == -38
          return 0x0000EE90
        elseif ckYVar == -37
          return 0x0000EE71
        elseif ckYVar == -36
          return 0x0000EE52
        elseif ckYVar == -35
          return 0x0000EE33
        elseif ckYVar == -34
          return 0x0000EE14
        elseif ckYVar == -33
          return 0x0000EDF5
        elseif ckYVar == -32
          return 0x00009989
        elseif ckYVar == -31
          return 0x00009988
        elseif ckYVar == -30
          return 0x00009957
        elseif ckYVar == -29
          return 0x00009938
        elseif ckYVar == -28
          return 0x00009919
        elseif ckYVar == -27
          return 0x000098FA
        elseif ckYVar == -26
          return 0x000098DB
        elseif ckYVar == -25
          return 0x000098BC
        elseif ckYVar == -24
          return 0x0000989D
        elseif ckYVar == -23
          return 0x0000987E
        elseif ckYVar == -22
          return 0x0000985F
        elseif ckYVar == -21
          return 0x00009840
        elseif ckYVar == -20
          return 0x00009821
        elseif ckYVar == -19
          return 0x00009802
        elseif ckYVar == -18
          return 0x000097E3
        elseif ckYVar == -17
          return 0x000097C4
        elseif ckYVar == -16
          return 0x000097A5
        elseif ckYVar == -15
          return 0x00009786
        elseif ckYVar == -14
          return 0x00009767
        elseif ckYVar == -13
          return 0x00009748
        elseif ckYVar == -12
          return 0x00009729
        elseif ckYVar == -11
          return 0x0000970A
        elseif ckYVar == -10
          return 0x000096EB
        elseif ckYVar == -9
          return 0x000096CC
        elseif ckYVar == -8
          return 0x000096AD
        elseif ckYVar == -7
          return 0x0000968E
        elseif ckYVar == -6
          return 0x0000966F
        elseif ckYVar == -5
          return 0x00009650
        elseif ckYVar == -4
          return 0x00009631
        elseif ckYVar == -3
          return 0x00009612
        elseif ckYVar == -2
          return 0x000095F3
        elseif ckYVar == -1
          return 0x000095D4
        elseif ckYVar == 0
          return 0x000095B5
        elseif ckYVar == 1
          return 0x00009197
        elseif ckYVar == 2
          return 0x00009178
        elseif ckYVar == 3
          return 0x00009159
        elseif ckYVar == 4
          return 0x0000913A
        elseif ckYVar == 5
          return 0x0000911B
        elseif ckYVar == 6
          return 0x000090FC
        elseif ckYVar == 7
          return 0x000090DD
        elseif ckYVar == 8
          return 0x000090BE
        elseif ckYVar == 9
          return 0x0000909F
        elseif ckYVar == 10
          return 0x00009080
        elseif ckYVar == 11
          return 0x00009061
        elseif ckYVar == 12
          return 0x00009042
        elseif ckYVar == 13
          return 0x00009023
        elseif ckYVar == 14
          return 0x00009004
        elseif ckYVar == 15
          return 0x00008FE5
        elseif ckYVar == 16
          return 0x00008FC6
        elseif ckYVar == 17
          return 0x00008FA7
        elseif ckYVar == 18
          return 0x00008F88
        elseif ckYVar == 19
          return 0x00008F69
        elseif ckYVar == 20
          return 0x00008F4A
        elseif ckYVar == 21
          return 0x00008F2B
        elseif ckYVar == 22
          return 0x00008F0C
        elseif ckYVar == 23
          return 0x00008EED
        elseif ckYVar == 24
          return 0x00008ECE
        elseif ckYVar == 25
          return 0x00008EAF
        elseif ckYVar == 26
          return 0x00008E90
        elseif ckYVar == 27
          return 0x00008E71
        elseif ckYVar == 28
          return 0x00008E52
        elseif ckYVar == 29
          return 0x00008E33
        elseif ckYVar == 30
          return 0x00008E14
        elseif ckYVar == 31
          return 0x00008DF5
        elseif ckYVar == 32
          return 0x00003975
        elseif ckYVar == 33
          return 0x00003974
        elseif ckYVar == 34
          return 0x00003943
        elseif ckYVar == 35
          return 0x00003924
        elseif ckYVar == 36
          return 0x00003905
        elseif ckYVar == 37
          return 0x000038E6
        elseif ckYVar == 38
          return 0x000038C7
        elseif ckYVar == 39
          return 0x000038A8
        elseif ckYVar == 40
          return 0x00003889
        elseif ckYVar == 41
          return 0x0000386A
        elseif ckYVar == 42
          return 0x0000384B
        elseif ckYVar == 43
          return 0x0000382C
        elseif ckYVar == 44
          return 0x0000380D
        elseif ckYVar == 45
          return 0x000037EE
        elseif ckYVar == 46
          return 0x000037CF
        elseif ckYVar == 47
          return 0x000037B0
        elseif ckYVar == 48
          return 0x00003791
        elseif ckYVar == 49
          return 0x00003772
        elseif ckYVar == 50
          return 0x00003753
        endif
      elseif ckXVar == 14
        if ckYVar == -43
          return 0x0000EF2A
        elseif ckYVar == -42
          return 0x0000EF0B
        elseif ckYVar == -41
          return 0x0000EEEC
        elseif ckYVar == -40
          return 0x0000EECD
        elseif ckYVar == -39
          return 0x0000EEAE
        elseif ckYVar == -38
          return 0x0000EE8F
        elseif ckYVar == -37
          return 0x0000EE70
        elseif ckYVar == -36
          return 0x0000EE51
        elseif ckYVar == -35
          return 0x0000EE32
        elseif ckYVar == -34
          return 0x0000EE13
        elseif ckYVar == -33
          return 0x0000EDF4
        elseif ckYVar == -32
          return 0x00009987
        elseif ckYVar == -31
          return 0x00009986
        elseif ckYVar == -30
          return 0x00009956
        elseif ckYVar == -29
          return 0x00009937
        elseif ckYVar == -28
          return 0x00009918
        elseif ckYVar == -27
          return 0x000098F9
        elseif ckYVar == -26
          return 0x000098DA
        elseif ckYVar == -25
          return 0x000098BB
        elseif ckYVar == -24
          return 0x0000989C
        elseif ckYVar == -23
          return 0x0000987D
        elseif ckYVar == -22
          return 0x0000985E
        elseif ckYVar == -21
          return 0x0000983F
        elseif ckYVar == -20
          return 0x00009820
        elseif ckYVar == -19
          return 0x00009801
        elseif ckYVar == -18
          return 0x000097E2
        elseif ckYVar == -17
          return 0x000097C3
        elseif ckYVar == -16
          return 0x000097A4
        elseif ckYVar == -15
          return 0x00009785
        elseif ckYVar == -14
          return 0x00009766
        elseif ckYVar == -13
          return 0x00009747
        elseif ckYVar == -12
          return 0x00009728
        elseif ckYVar == -11
          return 0x00009709
        elseif ckYVar == -10
          return 0x000096EA
        elseif ckYVar == -9
          return 0x000096CB
        elseif ckYVar == -8
          return 0x000096AC
        elseif ckYVar == -7
          return 0x0000968D
        elseif ckYVar == -6
          return 0x0000966E
        elseif ckYVar == -5
          return 0x0000964F
        elseif ckYVar == -4
          return 0x00009630
        elseif ckYVar == -3
          return 0x00009611
        elseif ckYVar == -2
          return 0x000095F2
        elseif ckYVar == -1
          return 0x000095D3
        elseif ckYVar == 0
          return 0x000095B4
        elseif ckYVar == 1
          return 0x00009196
        elseif ckYVar == 2
          return 0x00009177
        elseif ckYVar == 3
          return 0x00009158
        elseif ckYVar == 4
          return 0x00009139
        elseif ckYVar == 5
          return 0x0000911A
        elseif ckYVar == 6
          return 0x000090FB
        elseif ckYVar == 7
          return 0x000090DC
        elseif ckYVar == 8
          return 0x000090BD
        elseif ckYVar == 9
          return 0x0000909E
        elseif ckYVar == 10
          return 0x0000907F
        elseif ckYVar == 11
          return 0x00009060
        elseif ckYVar == 12
          return 0x00009041
        elseif ckYVar == 13
          return 0x00009022
        elseif ckYVar == 14
          return 0x00009003
        elseif ckYVar == 15
          return 0x00008FE4
        elseif ckYVar == 16
          return 0x00008FC5
        elseif ckYVar == 17
          return 0x00008FA6
        elseif ckYVar == 18
          return 0x00008F87
        elseif ckYVar == 19
          return 0x00008F68
        elseif ckYVar == 20
          return 0x00008F49
        elseif ckYVar == 21
          return 0x00008F2A
        elseif ckYVar == 22
          return 0x00008F0B
        elseif ckYVar == 23
          return 0x00008EEC
        elseif ckYVar == 24
          return 0x00008ECD
        elseif ckYVar == 25
          return 0x00008EAE
        elseif ckYVar == 26
          return 0x00008E8F
        elseif ckYVar == 27
          return 0x00008E70
        elseif ckYVar == 28
          return 0x00008E51
        elseif ckYVar == 29
          return 0x00008E32
        elseif ckYVar == 30
          return 0x00008E13
        elseif ckYVar == 31
          return 0x00008DF4
        elseif ckYVar == 32
          return 0x00003973
        elseif ckYVar == 33
          return 0x00003972
        elseif ckYVar == 34
          return 0x00003942
        elseif ckYVar == 35
          return 0x00003923
        elseif ckYVar == 36
          return 0x00003904
        elseif ckYVar == 37
          return 0x000038E5
        elseif ckYVar == 38
          return 0x000038C6
        elseif ckYVar == 39
          return 0x000038A7
        elseif ckYVar == 40
          return 0x00003888
        elseif ckYVar == 41
          return 0x00003869
        elseif ckYVar == 42
          return 0x0000384A
        elseif ckYVar == 43
          return 0x0000382B
        elseif ckYVar == 44
          return 0x0000380C
        elseif ckYVar == 45
          return 0x000037ED
        elseif ckYVar == 46
          return 0x000037CE
        elseif ckYVar == 47
          return 0x000037AF
        elseif ckYVar == 48
          return 0x00003790
        elseif ckYVar == 49
          return 0x00003771
        elseif ckYVar == 50
          return 0x00003752
        endif
      elseif ckXVar == 15
        if ckYVar == -43
          return 0x0000EF29
        elseif ckYVar == -42
          return 0x0000EF0A
        elseif ckYVar == -41
          return 0x0000EEEB
        elseif ckYVar == -40
          return 0x0000EECC
        elseif ckYVar == -39
          return 0x0000EEAD
        elseif ckYVar == -38
          return 0x0000EE8E
        elseif ckYVar == -37
          return 0x0000EE6F
        elseif ckYVar == -36
          return 0x0000EE50
        elseif ckYVar == -35
          return 0x0000EE31
        elseif ckYVar == -34
          return 0x0000EE12
        elseif ckYVar == -33
          return 0x0000EDF3
        elseif ckYVar == -32
          return 0x00009985
        elseif ckYVar == -31
          return 0x00009984
        elseif ckYVar == -30
          return 0x00009955
        elseif ckYVar == -29
          return 0x00009936
        elseif ckYVar == -28
          return 0x00009917
        elseif ckYVar == -27
          return 0x000098F8
        elseif ckYVar == -26
          return 0x000098D9
        elseif ckYVar == -25
          return 0x000098BA
        elseif ckYVar == -24
          return 0x0000989B
        elseif ckYVar == -23
          return 0x0000987C
        elseif ckYVar == -22
          return 0x0000985D
        elseif ckYVar == -21
          return 0x0000983E
        elseif ckYVar == -20
          return 0x0000981F
        elseif ckYVar == -19
          return 0x00009800
        elseif ckYVar == -18
          return 0x000097E1
        elseif ckYVar == -17
          return 0x000097C2
        elseif ckYVar == -16
          return 0x000097A3
        elseif ckYVar == -15
          return 0x00009784
        elseif ckYVar == -14
          return 0x00009765
        elseif ckYVar == -13
          return 0x00009746
        elseif ckYVar == -12
          return 0x00009727
        elseif ckYVar == -11
          return 0x00009708
        elseif ckYVar == -10
          return 0x000096E9
        elseif ckYVar == -9
          return 0x000096CA
        elseif ckYVar == -8
          return 0x000096AB
        elseif ckYVar == -7
          return 0x0000968C
        elseif ckYVar == -6
          return 0x0000966D
        elseif ckYVar == -5
          return 0x0000964E
        elseif ckYVar == -4
          return 0x0000962F
        elseif ckYVar == -3
          return 0x00009610
        elseif ckYVar == -2
          return 0x000095F1
        elseif ckYVar == -1
          return 0x000095D2
        elseif ckYVar == 0
          return 0x000095B3
        elseif ckYVar == 1
          return 0x00009195
        elseif ckYVar == 2
          return 0x00009176
        elseif ckYVar == 3
          return 0x00009157
        elseif ckYVar == 4
          return 0x00009138
        elseif ckYVar == 5
          return 0x00009119
        elseif ckYVar == 6
          return 0x000090FA
        elseif ckYVar == 7
          return 0x000090DB
        elseif ckYVar == 8
          return 0x000090BC
        elseif ckYVar == 9
          return 0x0000909D
        elseif ckYVar == 10
          return 0x0000907E
        elseif ckYVar == 11
          return 0x0000905F
        elseif ckYVar == 12
          return 0x00009040
        elseif ckYVar == 13
          return 0x00009021
        elseif ckYVar == 14
          return 0x00009002
        elseif ckYVar == 15
          return 0x00008FE3
        elseif ckYVar == 16
          return 0x00008FC4
        elseif ckYVar == 17
          return 0x00008FA5
        elseif ckYVar == 18
          return 0x00008F86
        elseif ckYVar == 19
          return 0x00008F67
        elseif ckYVar == 20
          return 0x00008F48
        elseif ckYVar == 21
          return 0x00008F29
        elseif ckYVar == 22
          return 0x00008F0A
        elseif ckYVar == 23
          return 0x00008EEB
        elseif ckYVar == 24
          return 0x00008ECC
        elseif ckYVar == 25
          return 0x00008EAD
        elseif ckYVar == 26
          return 0x00008E8E
        elseif ckYVar == 27
          return 0x00008E6F
        elseif ckYVar == 28
          return 0x00008E50
        elseif ckYVar == 29
          return 0x00008E31
        elseif ckYVar == 30
          return 0x00008E12
        elseif ckYVar == 31
          return 0x00008DF3
        elseif ckYVar == 32
          return 0x00003971
        elseif ckYVar == 33
          return 0x00003970
        elseif ckYVar == 34
          return 0x00003941
        elseif ckYVar == 35
          return 0x00003922
        elseif ckYVar == 36
          return 0x00003903
        elseif ckYVar == 37
          return 0x000038E4
        elseif ckYVar == 38
          return 0x000038C5
        elseif ckYVar == 39
          return 0x000038A6
        elseif ckYVar == 40
          return 0x00003887
        elseif ckYVar == 41
          return 0x00003868
        elseif ckYVar == 42
          return 0x00003849
        elseif ckYVar == 43
          return 0x0000382A
        elseif ckYVar == 44
          return 0x0000380B
        elseif ckYVar == 45
          return 0x000037EC
        elseif ckYVar == 46
          return 0x000037CD
        elseif ckYVar == 47
          return 0x000037AE
        elseif ckYVar == 48
          return 0x0000378F
        elseif ckYVar == 49
          return 0x00003770
        elseif ckYVar == 50
          return 0x00003751
        endif
      elseif ckXVar == 16
        if ckYVar == -43
          return 0x0000EF28
        elseif ckYVar == -42
          return 0x0000EF09
        elseif ckYVar == -41
          return 0x0000EEEA
        elseif ckYVar == -40
          return 0x0000EECB
        elseif ckYVar == -39
          return 0x0000EEAC
        elseif ckYVar == -38
          return 0x0000EE8D
        elseif ckYVar == -37
          return 0x0000EE6E
        elseif ckYVar == -36
          return 0x0000EE4F
        elseif ckYVar == -35
          return 0x0000EE30
        elseif ckYVar == -34
          return 0x0000EE11
        elseif ckYVar == -33
          return 0x0000EDF2
        elseif ckYVar == -32
          return 0x00009983
        elseif ckYVar == -31
          return 0x00009982
        elseif ckYVar == -30
          return 0x00009954
        elseif ckYVar == -29
          return 0x00009935
        elseif ckYVar == -28
          return 0x00009916
        elseif ckYVar == -27
          return 0x000098F7
        elseif ckYVar == -26
          return 0x000098D8
        elseif ckYVar == -25
          return 0x000098B9
        elseif ckYVar == -24
          return 0x0000989A
        elseif ckYVar == -23
          return 0x0000987B
        elseif ckYVar == -22
          return 0x0000985C
        elseif ckYVar == -21
          return 0x0000983D
        elseif ckYVar == -20
          return 0x0000981E
        elseif ckYVar == -19
          return 0x000097FF
        elseif ckYVar == -18
          return 0x000097E0
        elseif ckYVar == -17
          return 0x000097C1
        elseif ckYVar == -16
          return 0x000097A2
        elseif ckYVar == -15
          return 0x00009783
        elseif ckYVar == -14
          return 0x00009764
        elseif ckYVar == -13
          return 0x00009745
        elseif ckYVar == -12
          return 0x00009726
        elseif ckYVar == -11
          return 0x00009707
        elseif ckYVar == -10
          return 0x000096E8
        elseif ckYVar == -9
          return 0x000096C9
        elseif ckYVar == -8
          return 0x000096AA
        elseif ckYVar == -7
          return 0x0000968B
        elseif ckYVar == -6
          return 0x0000966C
        elseif ckYVar == -5
          return 0x0000964D
        elseif ckYVar == -4
          return 0x0000962E
        elseif ckYVar == -3
          return 0x0000960F
        elseif ckYVar == -2
          return 0x000095F0
        elseif ckYVar == -1
          return 0x000095D1
        elseif ckYVar == 0
          return 0x000095B2
        elseif ckYVar == 1
          return 0x00009194
        elseif ckYVar == 2
          return 0x00009175
        elseif ckYVar == 3
          return 0x00009156
        elseif ckYVar == 4
          return 0x00009137
        elseif ckYVar == 5
          return 0x00009118
        elseif ckYVar == 6
          return 0x000090F9
        elseif ckYVar == 7
          return 0x000090DA
        elseif ckYVar == 8
          return 0x000090BB
        elseif ckYVar == 9
          return 0x0000909C
        elseif ckYVar == 10
          return 0x0000907D
        elseif ckYVar == 11
          return 0x0000905E
        elseif ckYVar == 12
          return 0x0000903F
        elseif ckYVar == 13
          return 0x00009020
        elseif ckYVar == 14
          return 0x00009001
        elseif ckYVar == 15
          return 0x00008FE2
        elseif ckYVar == 16
          return 0x00008FC3
        elseif ckYVar == 17
          return 0x00008FA4
        elseif ckYVar == 18
          return 0x00008F85
        elseif ckYVar == 19
          return 0x00008F66
        elseif ckYVar == 20
          return 0x00008F47
        elseif ckYVar == 21
          return 0x00008F28
        elseif ckYVar == 22
          return 0x00008F09
        elseif ckYVar == 23
          return 0x00008EEA
        elseif ckYVar == 24
          return 0x00008ECB
        elseif ckYVar == 25
          return 0x00008EAC
        elseif ckYVar == 26
          return 0x00008E8D
        elseif ckYVar == 27
          return 0x00008E6E
        elseif ckYVar == 28
          return 0x00008E4F
        elseif ckYVar == 29
          return 0x00008E30
        elseif ckYVar == 30
          return 0x00008E11
        elseif ckYVar == 31
          return 0x00008DF2
        elseif ckYVar == 32
          return 0x0000396F
        elseif ckYVar == 33
          return 0x0000396E
        elseif ckYVar == 34
          return 0x00003940
        elseif ckYVar == 35
          return 0x00003921
        elseif ckYVar == 36
          return 0x00003902
        elseif ckYVar == 37
          return 0x000038E3
        elseif ckYVar == 38
          return 0x000038C4
        elseif ckYVar == 39
          return 0x000038A5
        elseif ckYVar == 40
          return 0x00003886
        elseif ckYVar == 41
          return 0x00003867
        elseif ckYVar == 42
          return 0x00003848
        elseif ckYVar == 43
          return 0x00003829
        elseif ckYVar == 44
          return 0x0000380A
        elseif ckYVar == 45
          return 0x000037EB
        elseif ckYVar == 46
          return 0x000037CC
        elseif ckYVar == 47
          return 0x000037AD
        elseif ckYVar == 48
          return 0x0000378E
        elseif ckYVar == 49
          return 0x0000376F
        elseif ckYVar == 50
          return 0x00003750
        endif
      elseif ckXVar == 17
        if ckYVar == -43
          return 0x0000EF27
        elseif ckYVar == -42
          return 0x0000EF08
        elseif ckYVar == -41
          return 0x0000EEE9
        elseif ckYVar == -40
          return 0x0000EECA
        elseif ckYVar == -39
          return 0x0000EEAB
        elseif ckYVar == -38
          return 0x0000EE8C
        elseif ckYVar == -37
          return 0x0000EE6D
        elseif ckYVar == -36
          return 0x0000EE4E
        elseif ckYVar == -35
          return 0x0000EE2F
        elseif ckYVar == -34
          return 0x0000EE10
        elseif ckYVar == -33
          return 0x0000EDF1
        elseif ckYVar == -32
          return 0x00009981
        elseif ckYVar == -31
          return 0x00009980
        elseif ckYVar == -30
          return 0x00009953
        elseif ckYVar == -29
          return 0x00009934
        elseif ckYVar == -28
          return 0x00009915
        elseif ckYVar == -27
          return 0x000098F6
        elseif ckYVar == -26
          return 0x000098D7
        elseif ckYVar == -25
          return 0x000098B8
        elseif ckYVar == -24
          return 0x00009899
        elseif ckYVar == -23
          return 0x0000987A
        elseif ckYVar == -22
          return 0x0000985B
        elseif ckYVar == -21
          return 0x0000983C
        elseif ckYVar == -20
          return 0x0000981D
        elseif ckYVar == -19
          return 0x000097FE
        elseif ckYVar == -18
          return 0x000097DF
        elseif ckYVar == -17
          return 0x000097C0
        elseif ckYVar == -16
          return 0x000097A1
        elseif ckYVar == -15
          return 0x00009782
        elseif ckYVar == -14
          return 0x00009763
        elseif ckYVar == -13
          return 0x00009744
        elseif ckYVar == -12
          return 0x00009725
        elseif ckYVar == -11
          return 0x00009706
        elseif ckYVar == -10
          return 0x000096E7
        elseif ckYVar == -9
          return 0x000096C8
        elseif ckYVar == -8
          return 0x000096A9
        elseif ckYVar == -7
          return 0x0000968A
        elseif ckYVar == -6
          return 0x0000966B
        elseif ckYVar == -5
          return 0x0000964C
        elseif ckYVar == -4
          return 0x0000962D
        elseif ckYVar == -3
          return 0x0000960E
        elseif ckYVar == -2
          return 0x000095EF
        elseif ckYVar == -1
          return 0x000095D0
        elseif ckYVar == 0
          return 0x000095B1
        elseif ckYVar == 1
          return 0x00009193
        elseif ckYVar == 2
          return 0x00009174
        elseif ckYVar == 3
          return 0x00009155
        elseif ckYVar == 4
          return 0x00009136
        elseif ckYVar == 5
          return 0x00009117
        elseif ckYVar == 6
          return 0x000090F8
        elseif ckYVar == 7
          return 0x000090D9
        elseif ckYVar == 8
          return 0x000090BA
        elseif ckYVar == 9
          return 0x0000909B
        elseif ckYVar == 10
          return 0x0000907C
        elseif ckYVar == 11
          return 0x0000905D
        elseif ckYVar == 12
          return 0x0000903E
        elseif ckYVar == 13
          return 0x0000901F
        elseif ckYVar == 14
          return 0x00009000
        elseif ckYVar == 15
          return 0x00008FE1
        elseif ckYVar == 16
          return 0x00008FC2
        elseif ckYVar == 17
          return 0x00008FA3
        elseif ckYVar == 18
          return 0x00008F84
        elseif ckYVar == 19
          return 0x00008F65
        elseif ckYVar == 20
          return 0x00008F46
        elseif ckYVar == 21
          return 0x00008F27
        elseif ckYVar == 22
          return 0x00008F08
        elseif ckYVar == 23
          return 0x00008EE9
        elseif ckYVar == 24
          return 0x00008ECA
        elseif ckYVar == 25
          return 0x00008EAB
        elseif ckYVar == 26
          return 0x00008E8C
        elseif ckYVar == 27
          return 0x00008E6D
        elseif ckYVar == 28
          return 0x00008E4E
        elseif ckYVar == 29
          return 0x00008E2F
        elseif ckYVar == 30
          return 0x00008E10
        elseif ckYVar == 31
          return 0x00008DF1
        elseif ckYVar == 32
          return 0x0000396D
        elseif ckYVar == 33
          return 0x0000396C
        elseif ckYVar == 34
          return 0x0000393F
        elseif ckYVar == 35
          return 0x00003920
        elseif ckYVar == 36
          return 0x00003901
        elseif ckYVar == 37
          return 0x000038E2
        elseif ckYVar == 38
          return 0x000038C3
        elseif ckYVar == 39
          return 0x000038A4
        elseif ckYVar == 40
          return 0x00003885
        elseif ckYVar == 41
          return 0x00003866
        elseif ckYVar == 42
          return 0x00003847
        elseif ckYVar == 43
          return 0x00003828
        elseif ckYVar == 44
          return 0x00003809
        elseif ckYVar == 45
          return 0x000037EA
        elseif ckYVar == 46
          return 0x000037CB
        elseif ckYVar == 47
          return 0x000037AC
        elseif ckYVar == 48
          return 0x0000378D
        elseif ckYVar == 49
          return 0x0000376E
        elseif ckYVar == 50
          return 0x0000374F
        endif
      elseif ckXVar == 18
        if ckYVar == -43
          return 0x0000EF26
        elseif ckYVar == -42
          return 0x0000EF07
        elseif ckYVar == -41
          return 0x0000EEE8
        elseif ckYVar == -40
          return 0x0000EEC9
        elseif ckYVar == -39
          return 0x0000EEAA
        elseif ckYVar == -38
          return 0x0000EE8B
        elseif ckYVar == -37
          return 0x0000EE6C
        elseif ckYVar == -36
          return 0x0000EE4D
        elseif ckYVar == -35
          return 0x0000EE2E
        elseif ckYVar == -34
          return 0x0000EE0F
        elseif ckYVar == -33
          return 0x0000EDF0
        elseif ckYVar == -32
          return 0x0000997F
        elseif ckYVar == -31
          return 0x0000997E
        elseif ckYVar == -30
          return 0x00009952
        elseif ckYVar == -29
          return 0x00009933
        elseif ckYVar == -28
          return 0x00009914
        elseif ckYVar == -27
          return 0x000098F5
        elseif ckYVar == -26
          return 0x000098D6
        elseif ckYVar == -25
          return 0x000098B7
        elseif ckYVar == -24
          return 0x00009898
        elseif ckYVar == -23
          return 0x00009879
        elseif ckYVar == -22
          return 0x0000985A
        elseif ckYVar == -21
          return 0x0000983B
        elseif ckYVar == -20
          return 0x0000981C
        elseif ckYVar == -19
          return 0x000097FD
        elseif ckYVar == -18
          return 0x000097DE
        elseif ckYVar == -17
          return 0x000097BF
        elseif ckYVar == -16
          return 0x000097A0
        elseif ckYVar == -15
          return 0x00009781
        elseif ckYVar == -14
          return 0x00009762
        elseif ckYVar == -13
          return 0x00009743
        elseif ckYVar == -12
          return 0x00009724
        elseif ckYVar == -11
          return 0x00009705
        elseif ckYVar == -10
          return 0x000096E6
        elseif ckYVar == -9
          return 0x000096C7
        elseif ckYVar == -8
          return 0x000096A8
        elseif ckYVar == -7
          return 0x00009689
        elseif ckYVar == -6
          return 0x0000966A
        elseif ckYVar == -5
          return 0x0000964B
        elseif ckYVar == -4
          return 0x0000962C
        elseif ckYVar == -3
          return 0x0000960D
        elseif ckYVar == -2
          return 0x000095EE
        elseif ckYVar == -1
          return 0x000095CF
        elseif ckYVar == 0
          return 0x000095B0
        elseif ckYVar == 1
          return 0x00009192
        elseif ckYVar == 2
          return 0x00009173
        elseif ckYVar == 3
          return 0x00009154
        elseif ckYVar == 4
          return 0x00009135
        elseif ckYVar == 5
          return 0x00009116
        elseif ckYVar == 6
          return 0x000090F7
        elseif ckYVar == 7
          return 0x000090D8
        elseif ckYVar == 8
          return 0x000090B9
        elseif ckYVar == 9
          return 0x0000909A
        elseif ckYVar == 10
          return 0x0000907B
        elseif ckYVar == 11
          return 0x0000905C
        elseif ckYVar == 12
          return 0x0000903D
        elseif ckYVar == 13
          return 0x0000901E
        elseif ckYVar == 14
          return 0x00008FFF
        elseif ckYVar == 15
          return 0x00008FE0
        elseif ckYVar == 16
          return 0x00008FC1
        elseif ckYVar == 17
          return 0x00008FA2
        elseif ckYVar == 18
          return 0x00008F83
        elseif ckYVar == 19
          return 0x00008F64
        elseif ckYVar == 20
          return 0x00008F45
        elseif ckYVar == 21
          return 0x00008F26
        elseif ckYVar == 22
          return 0x00008F07
        elseif ckYVar == 23
          return 0x00008EE8
        elseif ckYVar == 24
          return 0x00008EC9
        elseif ckYVar == 25
          return 0x00008EAA
        elseif ckYVar == 26
          return 0x00008E8B
        elseif ckYVar == 27
          return 0x00008E6C
        elseif ckYVar == 28
          return 0x00008E4D
        elseif ckYVar == 29
          return 0x00008E2E
        elseif ckYVar == 30
          return 0x00008E0F
        elseif ckYVar == 31
          return 0x00008DF0
        elseif ckYVar == 32
          return 0x0000396B
        elseif ckYVar == 33
          return 0x0000396A
        elseif ckYVar == 34
          return 0x0000393E
        elseif ckYVar == 35
          return 0x0000391F
        elseif ckYVar == 36
          return 0x00003900
        elseif ckYVar == 37
          return 0x000038E1
        elseif ckYVar == 38
          return 0x000038C2
        elseif ckYVar == 39
          return 0x000038A3
        elseif ckYVar == 40
          return 0x00003884
        elseif ckYVar == 41
          return 0x00003865
        elseif ckYVar == 42
          return 0x00003846
        elseif ckYVar == 43
          return 0x00003827
        elseif ckYVar == 44
          return 0x00003808
        elseif ckYVar == 45
          return 0x000037E9
        elseif ckYVar == 46
          return 0x000037CA
        elseif ckYVar == 47
          return 0x000037AB
        elseif ckYVar == 48
          return 0x0000378C
        elseif ckYVar == 49
          return 0x0000376D
        elseif ckYVar == 50
          return 0x0000374E
        endif
      elseif ckXVar == 19
        if ckYVar == -43
          return 0x0000EF25
        elseif ckYVar == -42
          return 0x0000EF06
        elseif ckYVar == -41
          return 0x0000EEE7
        elseif ckYVar == -40
          return 0x0000EEC8
        elseif ckYVar == -39
          return 0x0000EEA9
        elseif ckYVar == -38
          return 0x0000EE8A
        elseif ckYVar == -37
          return 0x0000EE6B
        elseif ckYVar == -36
          return 0x0000EE4C
        elseif ckYVar == -35
          return 0x0000EE2D
        elseif ckYVar == -34
          return 0x0000EE0E
        elseif ckYVar == -33
          return 0x0000EDEF
        elseif ckYVar == -32
          return 0x0000997D
        elseif ckYVar == -31
          return 0x0000997C
        elseif ckYVar == -30
          return 0x00009951
        elseif ckYVar == -29
          return 0x00009932
        elseif ckYVar == -28
          return 0x00009913
        elseif ckYVar == -27
          return 0x000098F4
        elseif ckYVar == -26
          return 0x000098D5
        elseif ckYVar == -25
          return 0x000098B6
        elseif ckYVar == -24
          return 0x00009897
        elseif ckYVar == -23
          return 0x00009878
        elseif ckYVar == -22
          return 0x00009859
        elseif ckYVar == -21
          return 0x0000983A
        elseif ckYVar == -20
          return 0x0000981B
        elseif ckYVar == -19
          return 0x000097FC
        elseif ckYVar == -18
          return 0x000097DD
        elseif ckYVar == -17
          return 0x000097BE
        elseif ckYVar == -16
          return 0x0000979F
        elseif ckYVar == -15
          return 0x00009780
        elseif ckYVar == -14
          return 0x00009761
        elseif ckYVar == -13
          return 0x00009742
        elseif ckYVar == -12
          return 0x00009723
        elseif ckYVar == -11
          return 0x00009704
        elseif ckYVar == -10
          return 0x000096E5
        elseif ckYVar == -9
          return 0x000096C6
        elseif ckYVar == -8
          return 0x000096A7
        elseif ckYVar == -7
          return 0x00009688
        elseif ckYVar == -6
          return 0x00009669
        elseif ckYVar == -5
          return 0x0000964A
        elseif ckYVar == -4
          return 0x0000962B
        elseif ckYVar == -3
          return 0x0000960C
        elseif ckYVar == -2
          return 0x000095ED
        elseif ckYVar == -1
          return 0x000095CE
        elseif ckYVar == 0
          return 0x000095AF
        elseif ckYVar == 1
          return 0x00009191
        elseif ckYVar == 2
          return 0x00009172
        elseif ckYVar == 3
          return 0x00009153
        elseif ckYVar == 4
          return 0x00009134
        elseif ckYVar == 5
          return 0x00009115
        elseif ckYVar == 6
          return 0x000090F6
        elseif ckYVar == 7
          return 0x000090D7
        elseif ckYVar == 8
          return 0x000090B8
        elseif ckYVar == 9
          return 0x00009099
        elseif ckYVar == 10
          return 0x0000907A
        elseif ckYVar == 11
          return 0x0000905B
        elseif ckYVar == 12
          return 0x0000903C
        elseif ckYVar == 13
          return 0x0000901D
        elseif ckYVar == 14
          return 0x00008FFE
        elseif ckYVar == 15
          return 0x00008FDF
        elseif ckYVar == 16
          return 0x00008FC0
        elseif ckYVar == 17
          return 0x00008FA1
        elseif ckYVar == 18
          return 0x00008F82
        elseif ckYVar == 19
          return 0x00008F63
        elseif ckYVar == 20
          return 0x00008F44
        elseif ckYVar == 21
          return 0x00008F25
        elseif ckYVar == 22
          return 0x00008F06
        elseif ckYVar == 23
          return 0x00008EE7
        elseif ckYVar == 24
          return 0x00008EC8
        elseif ckYVar == 25
          return 0x00008EA9
        elseif ckYVar == 26
          return 0x00008E8A
        elseif ckYVar == 27
          return 0x00008E6B
        elseif ckYVar == 28
          return 0x00008E4C
        elseif ckYVar == 29
          return 0x00008E2D
        elseif ckYVar == 30
          return 0x00008E0E
        elseif ckYVar == 31
          return 0x00008DEF
        elseif ckYVar == 32
          return 0x00003969
        elseif ckYVar == 33
          return 0x00003968
        elseif ckYVar == 34
          return 0x0000393D
        elseif ckYVar == 35
          return 0x0000391E
        elseif ckYVar == 36
          return 0x000038FF
        elseif ckYVar == 37
          return 0x000038E0
        elseif ckYVar == 38
          return 0x000038C1
        elseif ckYVar == 39
          return 0x000038A2
        elseif ckYVar == 40
          return 0x00003883
        elseif ckYVar == 41
          return 0x00003864
        elseif ckYVar == 42
          return 0x00003845
        elseif ckYVar == 43
          return 0x00003826
        elseif ckYVar == 44
          return 0x00003807
        elseif ckYVar == 45
          return 0x000037E8
        elseif ckYVar == 46
          return 0x000037C9
        elseif ckYVar == 47
          return 0x000037AA
        elseif ckYVar == 48
          return 0x0000378B
        elseif ckYVar == 49
          return 0x0000376C
        elseif ckYVar == 50
          return 0x0000374D
        endif
      endif
    endif
  elseif ckXVar < 30
    if ckXVar < 30
      if ckXVar == 20
        if ckYVar == -43
          return 0x0000EF24
        elseif ckYVar == -42
          return 0x0000EF05
        elseif ckYVar == -41
          return 0x0000EEE6
        elseif ckYVar == -40
          return 0x0000EEC7
        elseif ckYVar == -39
          return 0x0000EEA8
        elseif ckYVar == -38
          return 0x0000EE89
        elseif ckYVar == -37
          return 0x0000EE6A
        elseif ckYVar == -36
          return 0x0000EE4B
        elseif ckYVar == -35
          return 0x0000EE2C
        elseif ckYVar == -34
          return 0x0000EE0D
        elseif ckYVar == -33
          return 0x0000EDEE
        elseif ckYVar == -32
          return 0x0000997B
        elseif ckYVar == -31
          return 0x0000997A
        elseif ckYVar == -30
          return 0x00009950
        elseif ckYVar == -29
          return 0x00009931
        elseif ckYVar == -28
          return 0x00009912
        elseif ckYVar == -27
          return 0x000098F3
        elseif ckYVar == -26
          return 0x000098D4
        elseif ckYVar == -25
          return 0x000098B5
        elseif ckYVar == -24
          return 0x00009896
        elseif ckYVar == -23
          return 0x00009877
        elseif ckYVar == -22
          return 0x00009858
        elseif ckYVar == -21
          return 0x00009839
        elseif ckYVar == -20
          return 0x0000981A
        elseif ckYVar == -19
          return 0x000097FB
        elseif ckYVar == -18
          return 0x000097DC
        elseif ckYVar == -17
          return 0x000097BD
        elseif ckYVar == -16
          return 0x0000979E
        elseif ckYVar == -15
          return 0x0000977F
        elseif ckYVar == -14
          return 0x00009760
        elseif ckYVar == -13
          return 0x00009741
        elseif ckYVar == -12
          return 0x00009722
        elseif ckYVar == -11
          return 0x00009703
        elseif ckYVar == -10
          return 0x000096E4
        elseif ckYVar == -9
          return 0x000096C5
        elseif ckYVar == -8
          return 0x000096A6
        elseif ckYVar == -7
          return 0x00009687
        elseif ckYVar == -6
          return 0x00009668
        elseif ckYVar == -5
          return 0x00009649
        elseif ckYVar == -4
          return 0x0000962A
        elseif ckYVar == -3
          return 0x0000960B
        elseif ckYVar == -2
          return 0x000095EC
        elseif ckYVar == -1
          return 0x000095CD
        elseif ckYVar == 0
          return 0x000095AE
        elseif ckYVar == 1
          return 0x00009190
        elseif ckYVar == 2
          return 0x00009171
        elseif ckYVar == 3
          return 0x00009152
        elseif ckYVar == 4
          return 0x00009133
        elseif ckYVar == 5
          return 0x00009114
        elseif ckYVar == 6
          return 0x000090F5
        elseif ckYVar == 7
          return 0x000090D6
        elseif ckYVar == 8
          return 0x000090B7
        elseif ckYVar == 9
          return 0x00009098
        elseif ckYVar == 10
          return 0x00009079
        elseif ckYVar == 11
          return 0x0000905A
        elseif ckYVar == 12
          return 0x0000903B
        elseif ckYVar == 13
          return 0x0000901C
        elseif ckYVar == 14
          return 0x00008FFD
        elseif ckYVar == 15
          return 0x00008FDE
        elseif ckYVar == 16
          return 0x00008FBF
        elseif ckYVar == 17
          return 0x00008FA0
        elseif ckYVar == 18
          return 0x00008F81
        elseif ckYVar == 19
          return 0x00008F62
        elseif ckYVar == 20
          return 0x00008F43
        elseif ckYVar == 21
          return 0x00008F24
        elseif ckYVar == 22
          return 0x00008F05
        elseif ckYVar == 23
          return 0x00008EE6
        elseif ckYVar == 24
          return 0x00008EC7
        elseif ckYVar == 25
          return 0x00008EA8
        elseif ckYVar == 26
          return 0x00008E89
        elseif ckYVar == 27
          return 0x00008E6A
        elseif ckYVar == 28
          return 0x00008E4B
        elseif ckYVar == 29
          return 0x00008E2C
        elseif ckYVar == 30
          return 0x00008E0D
        elseif ckYVar == 31
          return 0x00008DEE
        elseif ckYVar == 32
          return 0x00003967
        elseif ckYVar == 33
          return 0x00003966
        elseif ckYVar == 34
          return 0x0000393C
        elseif ckYVar == 35
          return 0x0000391D
        elseif ckYVar == 36
          return 0x000038FE
        elseif ckYVar == 37
          return 0x000038DF
        elseif ckYVar == 38
          return 0x000038C0
        elseif ckYVar == 39
          return 0x000038A1
        elseif ckYVar == 40
          return 0x00003882
        elseif ckYVar == 41
          return 0x00003863
        elseif ckYVar == 42
          return 0x00003844
        elseif ckYVar == 43
          return 0x00003825
        elseif ckYVar == 44
          return 0x00003806
        elseif ckYVar == 45
          return 0x000037E7
        elseif ckYVar == 46
          return 0x000037C8
        elseif ckYVar == 47
          return 0x000037A9
        elseif ckYVar == 48
          return 0x0000378A
        elseif ckYVar == 49
          return 0x0000376B
        elseif ckYVar == 50
          return 0x0000374C
        endif
      elseif ckXVar == 21
        if ckYVar == -43
          return 0x0000EF23
        elseif ckYVar == -42
          return 0x0000EF04
        elseif ckYVar == -41
          return 0x0000EEE5
        elseif ckYVar == -40
          return 0x0000EEC6
        elseif ckYVar == -39
          return 0x0000EEA7
        elseif ckYVar == -38
          return 0x0000EE88
        elseif ckYVar == -37
          return 0x0000EE69
        elseif ckYVar == -36
          return 0x0000EE4A
        elseif ckYVar == -35
          return 0x0000EE2B
        elseif ckYVar == -34
          return 0x0000EE0C
        elseif ckYVar == -33
          return 0x0000EDED
        elseif ckYVar == -32
          return 0x00009979
        elseif ckYVar == -31
          return 0x00009978
        elseif ckYVar == -30
          return 0x0000994F
        elseif ckYVar == -29
          return 0x00009930
        elseif ckYVar == -28
          return 0x00009911
        elseif ckYVar == -27
          return 0x000098F2
        elseif ckYVar == -26
          return 0x000098D3
        elseif ckYVar == -25
          return 0x000098B4
        elseif ckYVar == -24
          return 0x00009895
        elseif ckYVar == -23
          return 0x00009876
        elseif ckYVar == -22
          return 0x00009857
        elseif ckYVar == -21
          return 0x00009838
        elseif ckYVar == -20
          return 0x00009819
        elseif ckYVar == -19
          return 0x000097FA
        elseif ckYVar == -18
          return 0x000097DB
        elseif ckYVar == -17
          return 0x000097BC
        elseif ckYVar == -16
          return 0x0000979D
        elseif ckYVar == -15
          return 0x0000977E
        elseif ckYVar == -14
          return 0x0000975F
        elseif ckYVar == -13
          return 0x00009740
        elseif ckYVar == -12
          return 0x00009721
        elseif ckYVar == -11
          return 0x00009702
        elseif ckYVar == -10
          return 0x000096E3
        elseif ckYVar == -9
          return 0x000096C4
        elseif ckYVar == -8
          return 0x000096A5
        elseif ckYVar == -7
          return 0x00009686
        elseif ckYVar == -6
          return 0x00009667
        elseif ckYVar == -5
          return 0x00009648
        elseif ckYVar == -4
          return 0x00009629
        elseif ckYVar == -3
          return 0x0000960A
        elseif ckYVar == -2
          return 0x000095EB
        elseif ckYVar == -1
          return 0x000095CC
        elseif ckYVar == 0
          return 0x000095AD
        elseif ckYVar == 1
          return 0x0000918F
        elseif ckYVar == 2
          return 0x00009170
        elseif ckYVar == 3
          return 0x00009151
        elseif ckYVar == 4
          return 0x00009132
        elseif ckYVar == 5
          return 0x00009113
        elseif ckYVar == 6
          return 0x000090F4
        elseif ckYVar == 7
          return 0x000090D5
        elseif ckYVar == 8
          return 0x000090B6
        elseif ckYVar == 9
          return 0x00009097
        elseif ckYVar == 10
          return 0x00009078
        elseif ckYVar == 11
          return 0x00009059
        elseif ckYVar == 12
          return 0x0000903A
        elseif ckYVar == 13
          return 0x0000901B
        elseif ckYVar == 14
          return 0x00008FFC
        elseif ckYVar == 15
          return 0x00008FDD
        elseif ckYVar == 16
          return 0x00008FBE
        elseif ckYVar == 17
          return 0x00008F9F
        elseif ckYVar == 18
          return 0x00008F80
        elseif ckYVar == 19
          return 0x00008F61
        elseif ckYVar == 20
          return 0x00008F42
        elseif ckYVar == 21
          return 0x00008F23
        elseif ckYVar == 22
          return 0x00008F04
        elseif ckYVar == 23
          return 0x00008EE5
        elseif ckYVar == 24
          return 0x00008EC6
        elseif ckYVar == 25
          return 0x00008EA7
        elseif ckYVar == 26
          return 0x00008E88
        elseif ckYVar == 27
          return 0x00008E69
        elseif ckYVar == 28
          return 0x00008E4A
        elseif ckYVar == 29
          return 0x00008E2B
        elseif ckYVar == 30
          return 0x00008E0C
        elseif ckYVar == 31
          return 0x00008DED
        elseif ckYVar == 32
          return 0x00003965
        elseif ckYVar == 33
          return 0x00003964
        elseif ckYVar == 34
          return 0x0000393B
        elseif ckYVar == 35
          return 0x0000391C
        elseif ckYVar == 36
          return 0x000038FD
        elseif ckYVar == 37
          return 0x000038DE
        elseif ckYVar == 38
          return 0x000038BF
        elseif ckYVar == 39
          return 0x000038A0
        elseif ckYVar == 40
          return 0x00003881
        elseif ckYVar == 41
          return 0x00003862
        elseif ckYVar == 42
          return 0x00003843
        elseif ckYVar == 43
          return 0x00003824
        elseif ckYVar == 44
          return 0x00003805
        elseif ckYVar == 45
          return 0x000037E6
        elseif ckYVar == 46
          return 0x000037C7
        elseif ckYVar == 47
          return 0x000037A8
        elseif ckYVar == 48
          return 0x00003789
        elseif ckYVar == 49
          return 0x0000376A
        elseif ckYVar == 50
          return 0x0000374B
        endif
      elseif ckXVar == 22
        if ckYVar == -43
          return 0x0000EF22
        elseif ckYVar == -42
          return 0x0000EF03
        elseif ckYVar == -41
          return 0x0000EEE4
        elseif ckYVar == -40
          return 0x0000EEC5
        elseif ckYVar == -39
          return 0x0000EEA6
        elseif ckYVar == -38
          return 0x0000EE87
        elseif ckYVar == -37
          return 0x0000EE68
        elseif ckYVar == -36
          return 0x0000EE49
        elseif ckYVar == -35
          return 0x0000EE2A
        elseif ckYVar == -34
          return 0x0000EE0B
        elseif ckYVar == -33
          return 0x0000EDEC
        elseif ckYVar == -32
          return 0x00009977
        elseif ckYVar == -31
          return 0x00009976
        elseif ckYVar == -30
          return 0x0000994E
        elseif ckYVar == -29
          return 0x0000992F
        elseif ckYVar == -28
          return 0x00009910
        elseif ckYVar == -27
          return 0x000098F1
        elseif ckYVar == -26
          return 0x000098D2
        elseif ckYVar == -25
          return 0x000098B3
        elseif ckYVar == -24
          return 0x00009894
        elseif ckYVar == -23
          return 0x00009875
        elseif ckYVar == -22
          return 0x00009856
        elseif ckYVar == -21
          return 0x00009837
        elseif ckYVar == -20
          return 0x00009818
        elseif ckYVar == -19
          return 0x000097F9
        elseif ckYVar == -18
          return 0x000097DA
        elseif ckYVar == -17
          return 0x000097BB
        elseif ckYVar == -16
          return 0x0000979C
        elseif ckYVar == -15
          return 0x0000977D
        elseif ckYVar == -14
          return 0x0000975E
        elseif ckYVar == -13
          return 0x0000973F
        elseif ckYVar == -12
          return 0x00009720
        elseif ckYVar == -11
          return 0x00009701
        elseif ckYVar == -10
          return 0x000096E2
        elseif ckYVar == -9
          return 0x000096C3
        elseif ckYVar == -8
          return 0x000096A4
        elseif ckYVar == -7
          return 0x00009685
        elseif ckYVar == -6
          return 0x00009666
        elseif ckYVar == -5
          return 0x00009647
        elseif ckYVar == -4
          return 0x00009628
        elseif ckYVar == -3
          return 0x00009609
        elseif ckYVar == -2
          return 0x000095EA
        elseif ckYVar == -1
          return 0x000095CB
        elseif ckYVar == 0
          return 0x000095AC
        elseif ckYVar == 1
          return 0x0000918E
        elseif ckYVar == 2
          return 0x0000916F
        elseif ckYVar == 3
          return 0x00009150
        elseif ckYVar == 4
          return 0x00009131
        elseif ckYVar == 5
          return 0x00009112
        elseif ckYVar == 6
          return 0x000090F3
        elseif ckYVar == 7
          return 0x000090D4
        elseif ckYVar == 8
          return 0x000090B5
        elseif ckYVar == 9
          return 0x00009096
        elseif ckYVar == 10
          return 0x00009077
        elseif ckYVar == 11
          return 0x00009058
        elseif ckYVar == 12
          return 0x00009039
        elseif ckYVar == 13
          return 0x0000901A
        elseif ckYVar == 14
          return 0x00008FFB
        elseif ckYVar == 15
          return 0x00008FDC
        elseif ckYVar == 16
          return 0x00008FBD
        elseif ckYVar == 17
          return 0x00008F9E
        elseif ckYVar == 18
          return 0x00008F7F
        elseif ckYVar == 19
          return 0x00008F60
        elseif ckYVar == 20
          return 0x00008F41
        elseif ckYVar == 21
          return 0x00008F22
        elseif ckYVar == 22
          return 0x00008F03
        elseif ckYVar == 23
          return 0x00008EE4
        elseif ckYVar == 24
          return 0x00008EC5
        elseif ckYVar == 25
          return 0x00008EA6
        elseif ckYVar == 26
          return 0x00008E87
        elseif ckYVar == 27
          return 0x00008E68
        elseif ckYVar == 28
          return 0x00008E49
        elseif ckYVar == 29
          return 0x00008E2A
        elseif ckYVar == 30
          return 0x00008E0B
        elseif ckYVar == 31
          return 0x00008DEC
        elseif ckYVar == 32
          return 0x00003963
        elseif ckYVar == 33
          return 0x00003962
        elseif ckYVar == 34
          return 0x0000393A
        elseif ckYVar == 35
          return 0x0000391B
        elseif ckYVar == 36
          return 0x000038FC
        elseif ckYVar == 37
          return 0x000038DD
        elseif ckYVar == 38
          return 0x000038BE
        elseif ckYVar == 39
          return 0x0000389F
        elseif ckYVar == 40
          return 0x00003880
        elseif ckYVar == 41
          return 0x00003861
        elseif ckYVar == 42
          return 0x00003842
        elseif ckYVar == 43
          return 0x00003823
        elseif ckYVar == 44
          return 0x00003804
        elseif ckYVar == 45
          return 0x000037E5
        elseif ckYVar == 46
          return 0x000037C6
        elseif ckYVar == 47
          return 0x000037A7
        elseif ckYVar == 48
          return 0x00003788
        elseif ckYVar == 49
          return 0x00003769
        elseif ckYVar == 50
          return 0x0000374A
        endif
      elseif ckXVar == 23
        if ckYVar == -43
          return 0x0000EF21
        elseif ckYVar == -42
          return 0x0000EF02
        elseif ckYVar == -41
          return 0x0000EEE3
        elseif ckYVar == -40
          return 0x0000EEC4
        elseif ckYVar == -39
          return 0x0000EEA5
        elseif ckYVar == -38
          return 0x0000EE86
        elseif ckYVar == -37
          return 0x0000EE67
        elseif ckYVar == -36
          return 0x0000EE48
        elseif ckYVar == -35
          return 0x0000EE29
        elseif ckYVar == -34
          return 0x0000EE0A
        elseif ckYVar == -33
          return 0x0000EDEB
        elseif ckYVar == -32
          return 0x00009975
        elseif ckYVar == -31
          return 0x00009974
        elseif ckYVar == -30
          return 0x0000994D
        elseif ckYVar == -29
          return 0x0000992E
        elseif ckYVar == -28
          return 0x0000990F
        elseif ckYVar == -27
          return 0x000098F0
        elseif ckYVar == -26
          return 0x000098D1
        elseif ckYVar == -25
          return 0x000098B2
        elseif ckYVar == -24
          return 0x00009893
        elseif ckYVar == -23
          return 0x00009874
        elseif ckYVar == -22
          return 0x00009855
        elseif ckYVar == -21
          return 0x00009836
        elseif ckYVar == -20
          return 0x00009817
        elseif ckYVar == -19
          return 0x000097F8
        elseif ckYVar == -18
          return 0x000097D9
        elseif ckYVar == -17
          return 0x000097BA
        elseif ckYVar == -16
          return 0x0000979B
        elseif ckYVar == -15
          return 0x0000977C
        elseif ckYVar == -14
          return 0x0000975D
        elseif ckYVar == -13
          return 0x0000973E
        elseif ckYVar == -12
          return 0x0000971F
        elseif ckYVar == -11
          return 0x00009700
        elseif ckYVar == -10
          return 0x000096E1
        elseif ckYVar == -9
          return 0x000096C2
        elseif ckYVar == -8
          return 0x000096A3
        elseif ckYVar == -7
          return 0x00009684
        elseif ckYVar == -6
          return 0x00009665
        elseif ckYVar == -5
          return 0x00009646
        elseif ckYVar == -4
          return 0x00009627
        elseif ckYVar == -3
          return 0x00009608
        elseif ckYVar == -2
          return 0x000095E9
        elseif ckYVar == -1
          return 0x000095CA
        elseif ckYVar == 0
          return 0x000095AB
        elseif ckYVar == 1
          return 0x0000918D
        elseif ckYVar == 2
          return 0x0000916E
        elseif ckYVar == 3
          return 0x0000914F
        elseif ckYVar == 4
          return 0x00009130
        elseif ckYVar == 5
          return 0x00009111
        elseif ckYVar == 6
          return 0x000090F2
        elseif ckYVar == 7
          return 0x000090D3
        elseif ckYVar == 8
          return 0x000090B4
        elseif ckYVar == 9
          return 0x00009095
        elseif ckYVar == 10
          return 0x00009076
        elseif ckYVar == 11
          return 0x00009057
        elseif ckYVar == 12
          return 0x00009038
        elseif ckYVar == 13
          return 0x00009019
        elseif ckYVar == 14
          return 0x00008FFA
        elseif ckYVar == 15
          return 0x00008FDB
        elseif ckYVar == 16
          return 0x00008FBC
        elseif ckYVar == 17
          return 0x00008F9D
        elseif ckYVar == 18
          return 0x00008F7E
        elseif ckYVar == 19
          return 0x00008F5F
        elseif ckYVar == 20
          return 0x00008F40
        elseif ckYVar == 21
          return 0x00008F21
        elseif ckYVar == 22
          return 0x00008F02
        elseif ckYVar == 23
          return 0x00008EE3
        elseif ckYVar == 24
          return 0x00008EC4
        elseif ckYVar == 25
          return 0x00008EA5
        elseif ckYVar == 26
          return 0x00008E86
        elseif ckYVar == 27
          return 0x00008E67
        elseif ckYVar == 28
          return 0x00008E48
        elseif ckYVar == 29
          return 0x00008E29
        elseif ckYVar == 30
          return 0x00008E0A
        elseif ckYVar == 31
          return 0x00008DEB
        elseif ckYVar == 32
          return 0x00003961
        elseif ckYVar == 33
          return 0x00003960
        elseif ckYVar == 34
          return 0x00003939
        elseif ckYVar == 35
          return 0x0000391A
        elseif ckYVar == 36
          return 0x000038FB
        elseif ckYVar == 37
          return 0x000038DC
        elseif ckYVar == 38
          return 0x000038BD
        elseif ckYVar == 39
          return 0x0000389E
        elseif ckYVar == 40
          return 0x0000387F
        elseif ckYVar == 41
          return 0x00003860
        elseif ckYVar == 42
          return 0x00003841
        elseif ckYVar == 43
          return 0x00003822
        elseif ckYVar == 44
          return 0x00003803
        elseif ckYVar == 45
          return 0x000037E4
        elseif ckYVar == 46
          return 0x000037C5
        elseif ckYVar == 47
          return 0x000037A6
        elseif ckYVar == 48
          return 0x00003787
        elseif ckYVar == 49
          return 0x00003768
        elseif ckYVar == 50
          return 0x00003749
        endif
      elseif ckXVar == 24
        if ckYVar == -43
          return 0x0000EF20
        elseif ckYVar == -42
          return 0x0000EF01
        elseif ckYVar == -41
          return 0x0000EEE2
        elseif ckYVar == -40
          return 0x0000EEC3
        elseif ckYVar == -39
          return 0x0000EEA4
        elseif ckYVar == -38
          return 0x0000EE85
        elseif ckYVar == -37
          return 0x0000EE66
        elseif ckYVar == -36
          return 0x0000EE47
        elseif ckYVar == -35
          return 0x0000EE28
        elseif ckYVar == -34
          return 0x0000EE09
        elseif ckYVar == -33
          return 0x0000EDEA
        elseif ckYVar == -32
          return 0x00009973
        elseif ckYVar == -31
          return 0x00009972
        elseif ckYVar == -30
          return 0x0000994C
        elseif ckYVar == -29
          return 0x0000992D
        elseif ckYVar == -28
          return 0x0000990E
        elseif ckYVar == -27
          return 0x000098EF
        elseif ckYVar == -26
          return 0x000098D0
        elseif ckYVar == -25
          return 0x000098B1
        elseif ckYVar == -24
          return 0x00009892
        elseif ckYVar == -23
          return 0x00009873
        elseif ckYVar == -22
          return 0x00009854
        elseif ckYVar == -21
          return 0x00009835
        elseif ckYVar == -20
          return 0x00009816
        elseif ckYVar == -19
          return 0x000097F7
        elseif ckYVar == -18
          return 0x000097D8
        elseif ckYVar == -17
          return 0x000097B9
        elseif ckYVar == -16
          return 0x0000979A
        elseif ckYVar == -15
          return 0x0000977B
        elseif ckYVar == -14
          return 0x0000975C
        elseif ckYVar == -13
          return 0x0000973D
        elseif ckYVar == -12
          return 0x0000971E
        elseif ckYVar == -11
          return 0x000096FF
        elseif ckYVar == -10
          return 0x000096E0
        elseif ckYVar == -9
          return 0x000096C1
        elseif ckYVar == -8
          return 0x000096A2
        elseif ckYVar == -7
          return 0x00009683
        elseif ckYVar == -6
          return 0x00009664
        elseif ckYVar == -5
          return 0x00009645
        elseif ckYVar == -4
          return 0x00009626
        elseif ckYVar == -3
          return 0x00009607
        elseif ckYVar == -2
          return 0x000095E8
        elseif ckYVar == -1
          return 0x000095C9
        elseif ckYVar == 0
          return 0x000095AA
        elseif ckYVar == 1
          return 0x0000918C
        elseif ckYVar == 2
          return 0x0000916D
        elseif ckYVar == 3
          return 0x0000914E
        elseif ckYVar == 4
          return 0x0000912F
        elseif ckYVar == 5
          return 0x00009110
        elseif ckYVar == 6
          return 0x000090F1
        elseif ckYVar == 7
          return 0x000090D2
        elseif ckYVar == 8
          return 0x000090B3
        elseif ckYVar == 9
          return 0x00009094
        elseif ckYVar == 10
          return 0x00009075
        elseif ckYVar == 11
          return 0x00009056
        elseif ckYVar == 12
          return 0x00009037
        elseif ckYVar == 13
          return 0x00009018
        elseif ckYVar == 14
          return 0x00008FF9
        elseif ckYVar == 15
          return 0x00008FDA
        elseif ckYVar == 16
          return 0x00008FBB
        elseif ckYVar == 17
          return 0x00008F9C
        elseif ckYVar == 18
          return 0x00008F7D
        elseif ckYVar == 19
          return 0x00008F5E
        elseif ckYVar == 20
          return 0x00008F3F
        elseif ckYVar == 21
          return 0x00008F20
        elseif ckYVar == 22
          return 0x00008F01
        elseif ckYVar == 23
          return 0x00008EE2
        elseif ckYVar == 24
          return 0x00008EC3
        elseif ckYVar == 25
          return 0x00008EA4
        elseif ckYVar == 26
          return 0x00008E85
        elseif ckYVar == 27
          return 0x00008E66
        elseif ckYVar == 28
          return 0x00008E47
        elseif ckYVar == 29
          return 0x00008E28
        elseif ckYVar == 30
          return 0x00008E09
        elseif ckYVar == 31
          return 0x00008DEA
        elseif ckYVar == 32
          return 0x0000395F
        elseif ckYVar == 33
          return 0x0000395E
        elseif ckYVar == 34
          return 0x00003938
        elseif ckYVar == 35
          return 0x00003919
        elseif ckYVar == 36
          return 0x000038FA
        elseif ckYVar == 37
          return 0x000038DB
        elseif ckYVar == 38
          return 0x000038BC
        elseif ckYVar == 39
          return 0x0000389D
        elseif ckYVar == 40
          return 0x0000387E
        elseif ckYVar == 41
          return 0x0000385F
        elseif ckYVar == 42
          return 0x00003840
        elseif ckYVar == 43
          return 0x00003821
        elseif ckYVar == 44
          return 0x00003802
        elseif ckYVar == 45
          return 0x000037E3
        elseif ckYVar == 46
          return 0x000037C4
        elseif ckYVar == 47
          return 0x000037A5
        elseif ckYVar == 48
          return 0x00003786
        elseif ckYVar == 49
          return 0x00003767
        elseif ckYVar == 50
          return 0x00003748
        endif
      elseif ckXVar == 25
        if ckYVar == -43
          return 0x0000EF1F
        elseif ckYVar == -42
          return 0x0000EF00
        elseif ckYVar == -41
          return 0x0000EEE1
        elseif ckYVar == -40
          return 0x0000EEC2
        elseif ckYVar == -39
          return 0x0000EEA3
        elseif ckYVar == -38
          return 0x0000EE84
        elseif ckYVar == -37
          return 0x0000EE65
        elseif ckYVar == -36
          return 0x0000EE46
        elseif ckYVar == -35
          return 0x0000EE27
        elseif ckYVar == -34
          return 0x0000EE08
        elseif ckYVar == -33
          return 0x0000EDE9
        elseif ckYVar == -32
          return 0x00009971
        elseif ckYVar == -31
          return 0x00009970
        elseif ckYVar == -30
          return 0x0000994B
        elseif ckYVar == -29
          return 0x0000992C
        elseif ckYVar == -28
          return 0x0000990D
        elseif ckYVar == -27
          return 0x000098EE
        elseif ckYVar == -26
          return 0x000098CF
        elseif ckYVar == -25
          return 0x000098B0
        elseif ckYVar == -24
          return 0x00009891
        elseif ckYVar == -23
          return 0x00009872
        elseif ckYVar == -22
          return 0x00009853
        elseif ckYVar == -21
          return 0x00009834
        elseif ckYVar == -20
          return 0x00009815
        elseif ckYVar == -19
          return 0x000097F6
        elseif ckYVar == -18
          return 0x000097D7
        elseif ckYVar == -17
          return 0x000097B8
        elseif ckYVar == -16
          return 0x00009799
        elseif ckYVar == -15
          return 0x0000977A
        elseif ckYVar == -14
          return 0x0000975B
        elseif ckYVar == -13
          return 0x0000973C
        elseif ckYVar == -12
          return 0x0000971D
        elseif ckYVar == -11
          return 0x000096FE
        elseif ckYVar == -10
          return 0x000096DF
        elseif ckYVar == -9
          return 0x000096C0
        elseif ckYVar == -8
          return 0x000096A1
        elseif ckYVar == -7
          return 0x00009682
        elseif ckYVar == -6
          return 0x00009663
        elseif ckYVar == -5
          return 0x00009644
        elseif ckYVar == -4
          return 0x00009625
        elseif ckYVar == -3
          return 0x00009606
        elseif ckYVar == -2
          return 0x000095E7
        elseif ckYVar == -1
          return 0x000095C8
        elseif ckYVar == 0
          return 0x000095A9
        elseif ckYVar == 1
          return 0x0000918B
        elseif ckYVar == 2
          return 0x0000916C
        elseif ckYVar == 3
          return 0x0000914D
        elseif ckYVar == 4
          return 0x0000912E
        elseif ckYVar == 5
          return 0x0000910F
        elseif ckYVar == 6
          return 0x000090F0
        elseif ckYVar == 7
          return 0x000090D1
        elseif ckYVar == 8
          return 0x000090B2
        elseif ckYVar == 9
          return 0x00009093
        elseif ckYVar == 10
          return 0x00009074
        elseif ckYVar == 11
          return 0x00009055
        elseif ckYVar == 12
          return 0x00009036
        elseif ckYVar == 13
          return 0x00009017
        elseif ckYVar == 14
          return 0x00008FF8
        elseif ckYVar == 15
          return 0x00008FD9
        elseif ckYVar == 16
          return 0x00008FBA
        elseif ckYVar == 17
          return 0x00008F9B
        elseif ckYVar == 18
          return 0x00008F7C
        elseif ckYVar == 19
          return 0x00008F5D
        elseif ckYVar == 20
          return 0x00008F3E
        elseif ckYVar == 21
          return 0x00008F1F
        elseif ckYVar == 22
          return 0x00008F00
        elseif ckYVar == 23
          return 0x00008EE1
        elseif ckYVar == 24
          return 0x00008EC2
        elseif ckYVar == 25
          return 0x00008EA3
        elseif ckYVar == 26
          return 0x00008E84
        elseif ckYVar == 27
          return 0x00008E65
        elseif ckYVar == 28
          return 0x00008E46
        elseif ckYVar == 29
          return 0x00008E27
        elseif ckYVar == 30
          return 0x00008E08
        elseif ckYVar == 31
          return 0x00008DE9
        elseif ckYVar == 32
          return 0x0000395D
        elseif ckYVar == 33
          return 0x0000395C
        elseif ckYVar == 34
          return 0x00003937
        elseif ckYVar == 35
          return 0x00003918
        elseif ckYVar == 36
          return 0x000038F9
        elseif ckYVar == 37
          return 0x000038DA
        elseif ckYVar == 38
          return 0x000038BB
        elseif ckYVar == 39
          return 0x0000389C
        elseif ckYVar == 40
          return 0x0000387D
        elseif ckYVar == 41
          return 0x0000385E
        elseif ckYVar == 42
          return 0x0000383F
        elseif ckYVar == 43
          return 0x00003820
        elseif ckYVar == 44
          return 0x00003801
        elseif ckYVar == 45
          return 0x000037E2
        elseif ckYVar == 46
          return 0x000037C3
        elseif ckYVar == 47
          return 0x000037A4
        elseif ckYVar == 48
          return 0x00003785
        elseif ckYVar == 49
          return 0x00003766
        elseif ckYVar == 50
          return 0x00003747
        endif
      elseif ckXVar == 26
        if ckYVar == -43
          return 0x0000EF1E
        elseif ckYVar == -42
          return 0x0000EEFF
        elseif ckYVar == -41
          return 0x0000EEE0
        elseif ckYVar == -40
          return 0x0000EEC1
        elseif ckYVar == -39
          return 0x0000EEA2
        elseif ckYVar == -38
          return 0x0000EE83
        elseif ckYVar == -37
          return 0x0000EE64
        elseif ckYVar == -36
          return 0x0000EE45
        elseif ckYVar == -35
          return 0x0000EE26
        elseif ckYVar == -34
          return 0x0000EE07
        elseif ckYVar == -33
          return 0x0000EDE8
        elseif ckYVar == -32
          return 0x0000996F
        elseif ckYVar == -31
          return 0x0000996E
        elseif ckYVar == -30
          return 0x0000994A
        elseif ckYVar == -29
          return 0x0000992B
        elseif ckYVar == -28
          return 0x0000990C
        elseif ckYVar == -27
          return 0x000098ED
        elseif ckYVar == -26
          return 0x000098CE
        elseif ckYVar == -25
          return 0x000098AF
        elseif ckYVar == -24
          return 0x00009890
        elseif ckYVar == -23
          return 0x00009871
        elseif ckYVar == -22
          return 0x00009852
        elseif ckYVar == -21
          return 0x00009833
        elseif ckYVar == -20
          return 0x00009814
        elseif ckYVar == -19
          return 0x000097F5
        elseif ckYVar == -18
          return 0x000097D6
        elseif ckYVar == -17
          return 0x000097B7
        elseif ckYVar == -16
          return 0x00009798
        elseif ckYVar == -15
          return 0x00009779
        elseif ckYVar == -14
          return 0x0000975A
        elseif ckYVar == -13
          return 0x0000973B
        elseif ckYVar == -12
          return 0x0000971C
        elseif ckYVar == -11
          return 0x000096FD
        elseif ckYVar == -10
          return 0x000096DE
        elseif ckYVar == -9
          return 0x000096BF
        elseif ckYVar == -8
          return 0x000096A0
        elseif ckYVar == -7
          return 0x00009681
        elseif ckYVar == -6
          return 0x00009662
        elseif ckYVar == -5
          return 0x00009643
        elseif ckYVar == -4
          return 0x00009624
        elseif ckYVar == -3
          return 0x00009605
        elseif ckYVar == -2
          return 0x000095E6
        elseif ckYVar == -1
          return 0x000095C7
        elseif ckYVar == 0
          return 0x000095A8
        elseif ckYVar == 1
          return 0x0000918A
        elseif ckYVar == 2
          return 0x0000916B
        elseif ckYVar == 3
          return 0x0000914C
        elseif ckYVar == 4
          return 0x0000912D
        elseif ckYVar == 5
          return 0x0000910E
        elseif ckYVar == 6
          return 0x000090EF
        elseif ckYVar == 7
          return 0x000090D0
        elseif ckYVar == 8
          return 0x000090B1
        elseif ckYVar == 9
          return 0x00009092
        elseif ckYVar == 10
          return 0x00009073
        elseif ckYVar == 11
          return 0x00009054
        elseif ckYVar == 12
          return 0x00009035
        elseif ckYVar == 13
          return 0x00009016
        elseif ckYVar == 14
          return 0x00008FF7
        elseif ckYVar == 15
          return 0x00008FD8
        elseif ckYVar == 16
          return 0x00008FB9
        elseif ckYVar == 17
          return 0x00008F9A
        elseif ckYVar == 18
          return 0x00008F7B
        elseif ckYVar == 19
          return 0x00008F5C
        elseif ckYVar == 20
          return 0x00008F3D
        elseif ckYVar == 21
          return 0x00008F1E
        elseif ckYVar == 22
          return 0x00008EFF
        elseif ckYVar == 23
          return 0x00008EE0
        elseif ckYVar == 24
          return 0x00008EC1
        elseif ckYVar == 25
          return 0x00008EA2
        elseif ckYVar == 26
          return 0x00008E83
        elseif ckYVar == 27
          return 0x00008E64
        elseif ckYVar == 28
          return 0x00008E45
        elseif ckYVar == 29
          return 0x00008E26
        elseif ckYVar == 30
          return 0x00008E07
        elseif ckYVar == 31
          return 0x00008DE8
        elseif ckYVar == 32
          return 0x0000395B
        elseif ckYVar == 33
          return 0x0000395A
        elseif ckYVar == 34
          return 0x00003936
        elseif ckYVar == 35
          return 0x00003917
        elseif ckYVar == 36
          return 0x000038F8
        elseif ckYVar == 37
          return 0x000038D9
        elseif ckYVar == 38
          return 0x000038BA
        elseif ckYVar == 39
          return 0x0000389B
        elseif ckYVar == 40
          return 0x0000387C
        elseif ckYVar == 41
          return 0x0000385D
        elseif ckYVar == 42
          return 0x0000383E
        elseif ckYVar == 43
          return 0x0000381F
        elseif ckYVar == 44
          return 0x00003800
        elseif ckYVar == 45
          return 0x000037E1
        elseif ckYVar == 46
          return 0x000037C2
        elseif ckYVar == 47
          return 0x000037A3
        elseif ckYVar == 48
          return 0x00003784
        elseif ckYVar == 49
          return 0x00003765
        elseif ckYVar == 50
          return 0x00003746
        endif
      elseif ckXVar == 27
        if ckYVar == -43
          return 0x0000EF1D
        elseif ckYVar == -42
          return 0x0000EEFE
        elseif ckYVar == -41
          return 0x0000EEDF
        elseif ckYVar == -40
          return 0x0000EEC0
        elseif ckYVar == -39
          return 0x0000EEA1
        elseif ckYVar == -38
          return 0x0000EE82
        elseif ckYVar == -37
          return 0x0000EE63
        elseif ckYVar == -36
          return 0x0000EE44
        elseif ckYVar == -35
          return 0x0000EE25
        elseif ckYVar == -34
          return 0x0000EE06
        elseif ckYVar == -33
          return 0x0000EDE7
        elseif ckYVar == -32
          return 0x0000996D
        elseif ckYVar == -31
          return 0x0000996C
        elseif ckYVar == -30
          return 0x00009949
        elseif ckYVar == -29
          return 0x0000992A
        elseif ckYVar == -28
          return 0x0000990B
        elseif ckYVar == -27
          return 0x000098EC
        elseif ckYVar == -26
          return 0x000098CD
        elseif ckYVar == -25
          return 0x000098AE
        elseif ckYVar == -24
          return 0x0000988F
        elseif ckYVar == -23
          return 0x00009870
        elseif ckYVar == -22
          return 0x00009851
        elseif ckYVar == -21
          return 0x00009832
        elseif ckYVar == -20
          return 0x00009813
        elseif ckYVar == -19
          return 0x000097F4
        elseif ckYVar == -18
          return 0x000097D5
        elseif ckYVar == -17
          return 0x000097B6
        elseif ckYVar == -16
          return 0x00009797
        elseif ckYVar == -15
          return 0x00009778
        elseif ckYVar == -14
          return 0x00009759
        elseif ckYVar == -13
          return 0x0000973A
        elseif ckYVar == -12
          return 0x0000971B
        elseif ckYVar == -11
          return 0x000096FC
        elseif ckYVar == -10
          return 0x000096DD
        elseif ckYVar == -9
          return 0x000096BE
        elseif ckYVar == -8
          return 0x0000969F
        elseif ckYVar == -7
          return 0x00009680
        elseif ckYVar == -6
          return 0x00009661
        elseif ckYVar == -5
          return 0x00009642
        elseif ckYVar == -4
          return 0x00009623
        elseif ckYVar == -3
          return 0x00009604
        elseif ckYVar == -2
          return 0x000095E5
        elseif ckYVar == -1
          return 0x000095C6
        elseif ckYVar == 0
          return 0x000095A7
        elseif ckYVar == 1
          return 0x00009189
        elseif ckYVar == 2
          return 0x0000916A
        elseif ckYVar == 3
          return 0x0000914B
        elseif ckYVar == 4
          return 0x0000912C
        elseif ckYVar == 5
          return 0x0000910D
        elseif ckYVar == 6
          return 0x000090EE
        elseif ckYVar == 7
          return 0x000090CF
        elseif ckYVar == 8
          return 0x000090B0
        elseif ckYVar == 9
          return 0x00009091
        elseif ckYVar == 10
          return 0x00009072
        elseif ckYVar == 11
          return 0x00009053
        elseif ckYVar == 12
          return 0x00009034
        elseif ckYVar == 13
          return 0x00009015
        elseif ckYVar == 14
          return 0x00008FF6
        elseif ckYVar == 15
          return 0x00008FD7
        elseif ckYVar == 16
          return 0x00008FB8
        elseif ckYVar == 17
          return 0x00008F99
        elseif ckYVar == 18
          return 0x00008F7A
        elseif ckYVar == 19
          return 0x00008F5B
        elseif ckYVar == 20
          return 0x00008F3C
        elseif ckYVar == 21
          return 0x00008F1D
        elseif ckYVar == 22
          return 0x00008EFE
        elseif ckYVar == 23
          return 0x00008EDF
        elseif ckYVar == 24
          return 0x00008EC0
        elseif ckYVar == 25
          return 0x00008EA1
        elseif ckYVar == 26
          return 0x00008E82
        elseif ckYVar == 27
          return 0x00008E63
        elseif ckYVar == 28
          return 0x00008E44
        elseif ckYVar == 29
          return 0x00008E25
        elseif ckYVar == 30
          return 0x00008E06
        elseif ckYVar == 31
          return 0x00008DE7
        elseif ckYVar == 32
          return 0x00003959
        elseif ckYVar == 33
          return 0x00003958
        elseif ckYVar == 34
          return 0x00003935
        elseif ckYVar == 35
          return 0x00003916
        elseif ckYVar == 36
          return 0x000038F7
        elseif ckYVar == 37
          return 0x000038D8
        elseif ckYVar == 38
          return 0x000038B9
        elseif ckYVar == 39
          return 0x0000389A
        elseif ckYVar == 40
          return 0x0000387B
        elseif ckYVar == 41
          return 0x0000385C
        elseif ckYVar == 42
          return 0x0000383D
        elseif ckYVar == 43
          return 0x0000381E
        elseif ckYVar == 44
          return 0x000037FF
        elseif ckYVar == 45
          return 0x000037E0
        elseif ckYVar == 46
          return 0x000037C1
        elseif ckYVar == 47
          return 0x000037A2
        elseif ckYVar == 48
          return 0x00003783
        elseif ckYVar == 49
          return 0x00003764
        elseif ckYVar == 50
          return 0x00003745
        endif
      elseif ckXVar == 28
        if ckYVar == -43
          return 0x0000EF1C
        elseif ckYVar == -42
          return 0x0000EEFD
        elseif ckYVar == -41
          return 0x0000EEDE
        elseif ckYVar == -40
          return 0x0000EEBF
        elseif ckYVar == -39
          return 0x0000EEA0
        elseif ckYVar == -38
          return 0x0000EE81
        elseif ckYVar == -37
          return 0x0000EE62
        elseif ckYVar == -36
          return 0x0000EE43
        elseif ckYVar == -35
          return 0x0000EE24
        elseif ckYVar == -34
          return 0x0000EE05
        elseif ckYVar == -33
          return 0x0000EDE6
        elseif ckYVar == -32
          return 0x0000996B
        elseif ckYVar == -31
          return 0x0000996A
        elseif ckYVar == -30
          return 0x00009948
        elseif ckYVar == -29
          return 0x00009929
        elseif ckYVar == -28
          return 0x0000990A
        elseif ckYVar == -27
          return 0x000098EB
        elseif ckYVar == -26
          return 0x000098CC
        elseif ckYVar == -25
          return 0x000098AD
        elseif ckYVar == -24
          return 0x0000988E
        elseif ckYVar == -23
          return 0x0000986F
        elseif ckYVar == -22
          return 0x00009850
        elseif ckYVar == -21
          return 0x00009831
        elseif ckYVar == -20
          return 0x00009812
        elseif ckYVar == -19
          return 0x000097F3
        elseif ckYVar == -18
          return 0x000097D4
        elseif ckYVar == -17
          return 0x000097B5
        elseif ckYVar == -16
          return 0x00009796
        elseif ckYVar == -15
          return 0x00009777
        elseif ckYVar == -14
          return 0x00009758
        elseif ckYVar == -13
          return 0x00009739
        elseif ckYVar == -12
          return 0x0000971A
        elseif ckYVar == -11
          return 0x000096FB
        elseif ckYVar == -10
          return 0x000096DC
        elseif ckYVar == -9
          return 0x000096BD
        elseif ckYVar == -8
          return 0x0000969E
        elseif ckYVar == -7
          return 0x0000967F
        elseif ckYVar == -6
          return 0x00009660
        elseif ckYVar == -5
          return 0x00009641
        elseif ckYVar == -4
          return 0x00009622
        elseif ckYVar == -3
          return 0x00009603
        elseif ckYVar == -2
          return 0x000095E4
        elseif ckYVar == -1
          return 0x000095C5
        elseif ckYVar == 0
          return 0x000095A6
        elseif ckYVar == 1
          return 0x00009188
        elseif ckYVar == 2
          return 0x00009169
        elseif ckYVar == 3
          return 0x0000914A
        elseif ckYVar == 4
          return 0x0000912B
        elseif ckYVar == 5
          return 0x0000910C
        elseif ckYVar == 6
          return 0x000090ED
        elseif ckYVar == 7
          return 0x000090CE
        elseif ckYVar == 8
          return 0x000090AF
        elseif ckYVar == 9
          return 0x00009090
        elseif ckYVar == 10
          return 0x00009071
        elseif ckYVar == 11
          return 0x00009052
        elseif ckYVar == 12
          return 0x00009033
        elseif ckYVar == 13
          return 0x00009014
        elseif ckYVar == 14
          return 0x00008FF5
        elseif ckYVar == 15
          return 0x00008FD6
        elseif ckYVar == 16
          return 0x00008FB7
        elseif ckYVar == 17
          return 0x00008F98
        elseif ckYVar == 18
          return 0x00008F79
        elseif ckYVar == 19
          return 0x00008F5A
        elseif ckYVar == 20
          return 0x00008F3B
        elseif ckYVar == 21
          return 0x00008F1C
        elseif ckYVar == 22
          return 0x00008EFD
        elseif ckYVar == 23
          return 0x00008EDE
        elseif ckYVar == 24
          return 0x00008EBF
        elseif ckYVar == 25
          return 0x00008EA0
        elseif ckYVar == 26
          return 0x00008E81
        elseif ckYVar == 27
          return 0x00008E62
        elseif ckYVar == 28
          return 0x00008E43
        elseif ckYVar == 29
          return 0x00008E24
        elseif ckYVar == 30
          return 0x00008E05
        elseif ckYVar == 31
          return 0x00008DE6
        elseif ckYVar == 32
          return 0x00003957
        elseif ckYVar == 33
          return 0x00003956
        elseif ckYVar == 34
          return 0x00003934
        elseif ckYVar == 35
          return 0x00003915
        elseif ckYVar == 36
          return 0x000038F6
        elseif ckYVar == 37
          return 0x000038D7
        elseif ckYVar == 38
          return 0x000038B8
        elseif ckYVar == 39
          return 0x00003899
        elseif ckYVar == 40
          return 0x0000387A
        elseif ckYVar == 41
          return 0x0000385B
        elseif ckYVar == 42
          return 0x0000383C
        elseif ckYVar == 43
          return 0x0000381D
        elseif ckYVar == 44
          return 0x000037FE
        elseif ckYVar == 45
          return 0x000037DF
        elseif ckYVar == 46
          return 0x000037C0
        elseif ckYVar == 47
          return 0x000037A1
        elseif ckYVar == 48
          return 0x00003782
        elseif ckYVar == 49
          return 0x00003763
        elseif ckYVar == 50
          return 0x00003744
        endif
      elseif ckXVar == 29
        if ckYVar == -43
          return 0x0000EF1B
        elseif ckYVar == -42
          return 0x0000EEFC
        elseif ckYVar == -41
          return 0x0000EEDD
        elseif ckYVar == -40
          return 0x0000EEBE
        elseif ckYVar == -39
          return 0x0000EE9F
        elseif ckYVar == -38
          return 0x0000EE80
        elseif ckYVar == -37
          return 0x0000EE61
        elseif ckYVar == -36
          return 0x0000EE42
        elseif ckYVar == -35
          return 0x0000EE23
        elseif ckYVar == -34
          return 0x0000EE04
        elseif ckYVar == -33
          return 0x0000EDE5
        elseif ckYVar == -32
          return 0x00009969
        elseif ckYVar == -31
          return 0x00009968
        elseif ckYVar == -30
          return 0x00009947
        elseif ckYVar == -29
          return 0x00009928
        elseif ckYVar == -28
          return 0x00009909
        elseif ckYVar == -27
          return 0x000098EA
        elseif ckYVar == -26
          return 0x000098CB
        elseif ckYVar == -25
          return 0x000098AC
        elseif ckYVar == -24
          return 0x0000988D
        elseif ckYVar == -23
          return 0x0000986E
        elseif ckYVar == -22
          return 0x0000984F
        elseif ckYVar == -21
          return 0x00009830
        elseif ckYVar == -20
          return 0x00009811
        elseif ckYVar == -19
          return 0x000097F2
        elseif ckYVar == -18
          return 0x000097D3
        elseif ckYVar == -17
          return 0x000097B4
        elseif ckYVar == -16
          return 0x00009795
        elseif ckYVar == -15
          return 0x00009776
        elseif ckYVar == -14
          return 0x00009757
        elseif ckYVar == -13
          return 0x00009738
        elseif ckYVar == -12
          return 0x00009719
        elseif ckYVar == -11
          return 0x000096FA
        elseif ckYVar == -10
          return 0x000096DB
        elseif ckYVar == -9
          return 0x000096BC
        elseif ckYVar == -8
          return 0x0000969D
        elseif ckYVar == -7
          return 0x0000967E
        elseif ckYVar == -6
          return 0x0000965F
        elseif ckYVar == -5
          return 0x00009640
        elseif ckYVar == -4
          return 0x00009621
        elseif ckYVar == -3
          return 0x00009602
        elseif ckYVar == -2
          return 0x000095E3
        elseif ckYVar == -1
          return 0x000095C4
        elseif ckYVar == 0
          return 0x000095A5
        elseif ckYVar == 1
          return 0x00009187
        elseif ckYVar == 2
          return 0x00009168
        elseif ckYVar == 3
          return 0x00009149
        elseif ckYVar == 4
          return 0x0000912A
        elseif ckYVar == 5
          return 0x0000910B
        elseif ckYVar == 6
          return 0x000090EC
        elseif ckYVar == 7
          return 0x000090CD
        elseif ckYVar == 8
          return 0x000090AE
        elseif ckYVar == 9
          return 0x0000908F
        elseif ckYVar == 10
          return 0x00009070
        elseif ckYVar == 11
          return 0x00009051
        elseif ckYVar == 12
          return 0x00009032
        elseif ckYVar == 13
          return 0x00009013
        elseif ckYVar == 14
          return 0x00008FF4
        elseif ckYVar == 15
          return 0x00008FD5
        elseif ckYVar == 16
          return 0x00008FB6
        elseif ckYVar == 17
          return 0x00008F97
        elseif ckYVar == 18
          return 0x00008F78
        elseif ckYVar == 19
          return 0x00008F59
        elseif ckYVar == 20
          return 0x00008F3A
        elseif ckYVar == 21
          return 0x00008F1B
        elseif ckYVar == 22
          return 0x00008EFC
        elseif ckYVar == 23
          return 0x00008EDD
        elseif ckYVar == 24
          return 0x00008EBE
        elseif ckYVar == 25
          return 0x00008E9F
        elseif ckYVar == 26
          return 0x00008E80
        elseif ckYVar == 27
          return 0x00008E61
        elseif ckYVar == 28
          return 0x00008E42
        elseif ckYVar == 29
          return 0x00008E23
        elseif ckYVar == 30
          return 0x00008E04
        elseif ckYVar == 31
          return 0x00008DE5
        elseif ckYVar == 32
          return 0x00003955
        elseif ckYVar == 33
          return 0x00003954
        elseif ckYVar == 34
          return 0x00003933
        elseif ckYVar == 35
          return 0x00003914
        elseif ckYVar == 36
          return 0x000038F5
        elseif ckYVar == 37
          return 0x000038D6
        elseif ckYVar == 38
          return 0x000038B7
        elseif ckYVar == 39
          return 0x00003898
        elseif ckYVar == 40
          return 0x00003879
        elseif ckYVar == 41
          return 0x0000385A
        elseif ckYVar == 42
          return 0x0000383B
        elseif ckYVar == 43
          return 0x0000381C
        elseif ckYVar == 44
          return 0x000037FD
        elseif ckYVar == 45
          return 0x000037DE
        elseif ckYVar == 46
          return 0x000037BF
        elseif ckYVar == 47
          return 0x000037A0
        elseif ckYVar == 48
          return 0x00003781
        elseif ckYVar == 49
          return 0x00003762
        elseif ckYVar == 50
          return 0x00003743
        endif
      endif
    endif
  elseif ckXVar < 63
    if ckXVar < 40
      if ckXVar == 30
        if ckYVar == -43
          return 0x0000EF1A
        elseif ckYVar == -42
          return 0x0000EEFB
        elseif ckYVar == -41
          return 0x0000EEDC
        elseif ckYVar == -40
          return 0x0000EEBD
        elseif ckYVar == -39
          return 0x0000EE9E
        elseif ckYVar == -38
          return 0x0000EE7F
        elseif ckYVar == -37
          return 0x0000EE60
        elseif ckYVar == -36
          return 0x0000EE41
        elseif ckYVar == -35
          return 0x0000EE22
        elseif ckYVar == -34
          return 0x0000EE03
        elseif ckYVar == -33
          return 0x0000EDE4
        elseif ckYVar == -32
          return 0x00009967
        elseif ckYVar == -31
          return 0x00009966
        elseif ckYVar == -30
          return 0x00009946
        elseif ckYVar == -29
          return 0x00009927
        elseif ckYVar == -28
          return 0x00009908
        elseif ckYVar == -27
          return 0x000098E9
        elseif ckYVar == -26
          return 0x000098CA
        elseif ckYVar == -25
          return 0x000098AB
        elseif ckYVar == -24
          return 0x0000988C
        elseif ckYVar == -23
          return 0x0000986D
        elseif ckYVar == -22
          return 0x0000984E
        elseif ckYVar == -21
          return 0x0000982F
        elseif ckYVar == -20
          return 0x00009810
        elseif ckYVar == -19
          return 0x000097F1
        elseif ckYVar == -18
          return 0x000097D2
        elseif ckYVar == -17
          return 0x000097B3
        elseif ckYVar == -16
          return 0x00009794
        elseif ckYVar == -15
          return 0x00009775
        elseif ckYVar == -14
          return 0x00009756
        elseif ckYVar == -13
          return 0x00009737
        elseif ckYVar == -12
          return 0x00009718
        elseif ckYVar == -11
          return 0x000096F9
        elseif ckYVar == -10
          return 0x000096DA
        elseif ckYVar == -9
          return 0x000096BB
        elseif ckYVar == -8
          return 0x0000969C
        elseif ckYVar == -7
          return 0x0000967D
        elseif ckYVar == -6
          return 0x0000965E
        elseif ckYVar == -5
          return 0x0000963F
        elseif ckYVar == -4
          return 0x00009620
        elseif ckYVar == -3
          return 0x00009601
        elseif ckYVar == -2
          return 0x000095E2
        elseif ckYVar == -1
          return 0x000095C3
        elseif ckYVar == 0
          return 0x000095A4
        elseif ckYVar == 1
          return 0x00009186
        elseif ckYVar == 2
          return 0x00009167
        elseif ckYVar == 3
          return 0x00009148
        elseif ckYVar == 4
          return 0x00009129
        elseif ckYVar == 5
          return 0x0000910A
        elseif ckYVar == 6
          return 0x000090EB
        elseif ckYVar == 7
          return 0x000090CC
        elseif ckYVar == 8
          return 0x000090AD
        elseif ckYVar == 9
          return 0x0000908E
        elseif ckYVar == 10
          return 0x0000906F
        elseif ckYVar == 11
          return 0x00009050
        elseif ckYVar == 12
          return 0x00009031
        elseif ckYVar == 13
          return 0x00009012
        elseif ckYVar == 14
          return 0x00008FF3
        elseif ckYVar == 15
          return 0x00008FD4
        elseif ckYVar == 16
          return 0x00008FB5
        elseif ckYVar == 17
          return 0x00008F96
        elseif ckYVar == 18
          return 0x00008F77
        elseif ckYVar == 19
          return 0x00008F58
        elseif ckYVar == 20
          return 0x00008F39
        elseif ckYVar == 21
          return 0x00008F1A
        elseif ckYVar == 22
          return 0x00008EFB
        elseif ckYVar == 23
          return 0x00008EDC
        elseif ckYVar == 24
          return 0x00008EBD
        elseif ckYVar == 25
          return 0x00008E9E
        elseif ckYVar == 26
          return 0x00008E7F
        elseif ckYVar == 27
          return 0x00008E60
        elseif ckYVar == 28
          return 0x00008E41
        elseif ckYVar == 29
          return 0x00008E22
        elseif ckYVar == 30
          return 0x00008E03
        elseif ckYVar == 31
          return 0x00008DE4
        elseif ckYVar == 32
          return 0x00003953
        elseif ckYVar == 33
          return 0x00003952
        elseif ckYVar == 34
          return 0x00003932
        elseif ckYVar == 35
          return 0x00003913
        elseif ckYVar == 36
          return 0x000038F4
        elseif ckYVar == 37
          return 0x000038D5
        elseif ckYVar == 38
          return 0x000038B6
        elseif ckYVar == 39
          return 0x00003897
        elseif ckYVar == 40
          return 0x00003878
        elseif ckYVar == 41
          return 0x00003859
        elseif ckYVar == 42
          return 0x0000383A
        elseif ckYVar == 43
          return 0x0000381B
        elseif ckYVar == 44
          return 0x000037FC
        elseif ckYVar == 45
          return 0x000037DD
        elseif ckYVar == 46
          return 0x000037BE
        elseif ckYVar == 47
          return 0x0000379F
        elseif ckYVar == 48
          return 0x00003780
        elseif ckYVar == 49
          return 0x00003761
        elseif ckYVar == 50
          return 0x00003742
        endif
      elseif ckXVar == 31
        if ckYVar == -43
          return 0x0000EF19
        elseif ckYVar == -42
          return 0x0000EEFA
        elseif ckYVar == -41
          return 0x0000EEDB
        elseif ckYVar == -40
          return 0x0000EEBC
        elseif ckYVar == -39
          return 0x0000EE9D
        elseif ckYVar == -38
          return 0x0000EE7E
        elseif ckYVar == -37
          return 0x0000EE5F
        elseif ckYVar == -36
          return 0x0000EE40
        elseif ckYVar == -35
          return 0x0000EE21
        elseif ckYVar == -34
          return 0x0000EE02
        elseif ckYVar == -33
          return 0x0000EDE3
        elseif ckYVar == -32
          return 0x00009965
        elseif ckYVar == -31
          return 0x00009964
        elseif ckYVar == -30
          return 0x00009945
        elseif ckYVar == -29
          return 0x00009926
        elseif ckYVar == -28
          return 0x00009907
        elseif ckYVar == -27
          return 0x000098E8
        elseif ckYVar == -26
          return 0x000098C9
        elseif ckYVar == -25
          return 0x000098AA
        elseif ckYVar == -24
          return 0x0000988B
        elseif ckYVar == -23
          return 0x0000986C
        elseif ckYVar == -22
          return 0x0000984D
        elseif ckYVar == -21
          return 0x0000982E
        elseif ckYVar == -20
          return 0x0000980F
        elseif ckYVar == -19
          return 0x000097F0
        elseif ckYVar == -18
          return 0x000097D1
        elseif ckYVar == -17
          return 0x000097B2
        elseif ckYVar == -16
          return 0x00009793
        elseif ckYVar == -15
          return 0x00009774
        elseif ckYVar == -14
          return 0x00009755
        elseif ckYVar == -13
          return 0x00009736
        elseif ckYVar == -12
          return 0x00009717
        elseif ckYVar == -11
          return 0x000096F8
        elseif ckYVar == -10
          return 0x000096D9
        elseif ckYVar == -9
          return 0x000096BA
        elseif ckYVar == -8
          return 0x0000969B
        elseif ckYVar == -7
          return 0x0000967C
        elseif ckYVar == -6
          return 0x0000965D
        elseif ckYVar == -5
          return 0x0000963E
        elseif ckYVar == -4
          return 0x0000961F
        elseif ckYVar == -3
          return 0x00009600
        elseif ckYVar == -2
          return 0x000095E1
        elseif ckYVar == -1
          return 0x000095C2
        elseif ckYVar == 0
          return 0x000095A3
        elseif ckYVar == 1
          return 0x00009185
        elseif ckYVar == 2
          return 0x00009166
        elseif ckYVar == 3
          return 0x00009147
        elseif ckYVar == 4
          return 0x00009128
        elseif ckYVar == 5
          return 0x00009109
        elseif ckYVar == 6
          return 0x000090EA
        elseif ckYVar == 7
          return 0x000090CB
        elseif ckYVar == 8
          return 0x000090AC
        elseif ckYVar == 9
          return 0x0000908D
        elseif ckYVar == 10
          return 0x0000906E
        elseif ckYVar == 11
          return 0x0000904F
        elseif ckYVar == 12
          return 0x00009030
        elseif ckYVar == 13
          return 0x00009011
        elseif ckYVar == 14
          return 0x00008FF2
        elseif ckYVar == 15
          return 0x00008FD3
        elseif ckYVar == 16
          return 0x00008FB4
        elseif ckYVar == 17
          return 0x00008F95
        elseif ckYVar == 18
          return 0x00008F76
        elseif ckYVar == 19
          return 0x00008F57
        elseif ckYVar == 20
          return 0x00008F38
        elseif ckYVar == 21
          return 0x00008F19
        elseif ckYVar == 22
          return 0x00008EFA
        elseif ckYVar == 23
          return 0x00008EDB
        elseif ckYVar == 24
          return 0x00008EBC
        elseif ckYVar == 25
          return 0x00008E9D
        elseif ckYVar == 26
          return 0x00008E7E
        elseif ckYVar == 27
          return 0x00008E5F
        elseif ckYVar == 28
          return 0x00008E40
        elseif ckYVar == 29
          return 0x00008E21
        elseif ckYVar == 30
          return 0x00008E02
        elseif ckYVar == 31
          return 0x00008DE3
        elseif ckYVar == 32
          return 0x00003951
        elseif ckYVar == 33
          return 0x00003950
        elseif ckYVar == 34
          return 0x00003931
        elseif ckYVar == 35
          return 0x00003912
        elseif ckYVar == 36
          return 0x000038F3
        elseif ckYVar == 37
          return 0x000038D4
        elseif ckYVar == 38
          return 0x000038B5
        elseif ckYVar == 39
          return 0x00003896
        elseif ckYVar == 40
          return 0x00003877
        elseif ckYVar == 41
          return 0x00003858
        elseif ckYVar == 42
          return 0x00003839
        elseif ckYVar == 43
          return 0x0000381A
        elseif ckYVar == 44
          return 0x000037FB
        elseif ckYVar == 45
          return 0x000037DC
        elseif ckYVar == 46
          return 0x000037BD
        elseif ckYVar == 47
          return 0x0000379E
        elseif ckYVar == 48
          return 0x0000377F
        elseif ckYVar == 49
          return 0x00003760
        elseif ckYVar == 50
          return 0x00003741
        endif
      elseif ckXVar == 32
        if ckYVar == -43
          return 0x0001130E
        elseif ckYVar == -42
          return 0x000112ED
        elseif ckYVar == -41
          return 0x000112CC
        elseif ckYVar == -40
          return 0x000112AB
        elseif ckYVar == -39
          return 0x0001128A
        elseif ckYVar == -38
          return 0x00011269
        elseif ckYVar == -37
          return 0x00011248
        elseif ckYVar == -36
          return 0x00011227
        elseif ckYVar == -35
          return 0x00011206
        elseif ckYVar == -34
          return 0x000111E5
        elseif ckYVar == -33
          return 0x000111C4
        elseif ckYVar == -32
          return 0x0000BDE2
        elseif ckYVar == -31
          return 0x0000BDE0
        elseif ckYVar == -30
          return 0x0000BDA0
        elseif ckYVar == -29
          return 0x0000BD7F
        elseif ckYVar == -28
          return 0x0000BD5E
        elseif ckYVar == -27
          return 0x0000BD3D
        elseif ckYVar == -26
          return 0x0000BD1C
        elseif ckYVar == -25
          return 0x0000BCFB
        elseif ckYVar == -24
          return 0x0000BCDA
        elseif ckYVar == -23
          return 0x0000BCB9
        elseif ckYVar == -22
          return 0x0000BC98
        elseif ckYVar == -21
          return 0x0000BC77
        elseif ckYVar == -20
          return 0x0000BC56
        elseif ckYVar == -19
          return 0x0000BC35
        elseif ckYVar == -18
          return 0x0000BC14
        elseif ckYVar == -17
          return 0x0000BBF3
        elseif ckYVar == -16
          return 0x0000BBD2
        elseif ckYVar == -15
          return 0x0000BBB1
        elseif ckYVar == -14
          return 0x0000BB90
        elseif ckYVar == -13
          return 0x0000BB6F
        elseif ckYVar == -12
          return 0x0000BB4E
        elseif ckYVar == -11
          return 0x0000BB2D
        elseif ckYVar == -10
          return 0x0000BB0C
        elseif ckYVar == -9
          return 0x0000BAEB
        elseif ckYVar == -8
          return 0x0000BACA
        elseif ckYVar == -7
          return 0x0000BAA9
        elseif ckYVar == -6
          return 0x0000BA88
        elseif ckYVar == -5
          return 0x0000BA67
        elseif ckYVar == -4
          return 0x0000BA46
        elseif ckYVar == -3
          return 0x0000BA25
        elseif ckYVar == -2
          return 0x0000BA04
        elseif ckYVar == -1
          return 0x0000B9E3
        elseif ckYVar == 0
          return 0x0000B9C2
        elseif ckYVar == 1
          return 0x0000B5A2
        elseif ckYVar == 2
          return 0x0000B581
        elseif ckYVar == 3
          return 0x0000B560
        elseif ckYVar == 4
          return 0x0000B53F
        elseif ckYVar == 5
          return 0x0000B51E
        elseif ckYVar == 6
          return 0x0000B4FD
        elseif ckYVar == 7
          return 0x0000B4DC
        elseif ckYVar == 8
          return 0x0000B4BB
        elseif ckYVar == 9
          return 0x0000B49A
        elseif ckYVar == 10
          return 0x0000B479
        elseif ckYVar == 11
          return 0x0000B458
        elseif ckYVar == 12
          return 0x0000B437
        elseif ckYVar == 13
          return 0x0000B416
        elseif ckYVar == 14
          return 0x0000B3F5
        elseif ckYVar == 15
          return 0x0000B3D4
        elseif ckYVar == 16
          return 0x0000B3B3
        elseif ckYVar == 17
          return 0x0000B392
        elseif ckYVar == 18
          return 0x0000B371
        elseif ckYVar == 19
          return 0x0000B350
        elseif ckYVar == 20
          return 0x0000B32F
        elseif ckYVar == 21
          return 0x0000B30E
        elseif ckYVar == 22
          return 0x0000B2ED
        elseif ckYVar == 23
          return 0x0000B2CC
        elseif ckYVar == 24
          return 0x0000B2AB
        elseif ckYVar == 25
          return 0x0000B28A
        elseif ckYVar == 26
          return 0x0000B269
        elseif ckYVar == 27
          return 0x0000B248
        elseif ckYVar == 28
          return 0x0000B227
        elseif ckYVar == 29
          return 0x0000B206
        elseif ckYVar == 30
          return 0x0000B1E5
        elseif ckYVar == 31
          return 0x0000B1C4
        elseif ckYVar == 32
          return 0x00005DCE
        elseif ckYVar == 33
          return 0x00005DCC
        elseif ckYVar == 34
          return 0x00005D8C
        elseif ckYVar == 35
          return 0x00005D6B
        elseif ckYVar == 36
          return 0x00005D4A
        elseif ckYVar == 37
          return 0x00005D29
        elseif ckYVar == 38
          return 0x00005D08
        elseif ckYVar == 39
          return 0x00005CE7
        elseif ckYVar == 40
          return 0x00005CC6
        elseif ckYVar == 41
          return 0x00005CA5
        elseif ckYVar == 42
          return 0x00005C84
        elseif ckYVar == 43
          return 0x00005C63
        elseif ckYVar == 44
          return 0x00005C42
        elseif ckYVar == 45
          return 0x00005C21
        elseif ckYVar == 46
          return 0x00005C00
        elseif ckYVar == 47
          return 0x00005BDF
        elseif ckYVar == 48
          return 0x00005BBE
        elseif ckYVar == 49
          return 0x00005B9D
        elseif ckYVar == 50
          return 0x00005B7C
        endif
      elseif ckXVar == 33
        if ckYVar == -43
          return 0x0001130D
        elseif ckYVar == -42
          return 0x000112EC
        elseif ckYVar == -41
          return 0x000112CB
        elseif ckYVar == -40
          return 0x000112AA
        elseif ckYVar == -39
          return 0x00011289
        elseif ckYVar == -38
          return 0x00011268
        elseif ckYVar == -37
          return 0x00011247
        elseif ckYVar == -36
          return 0x00011226
        elseif ckYVar == -35
          return 0x00011205
        elseif ckYVar == -34
          return 0x000111E4
        elseif ckYVar == -33
          return 0x000111C3
        elseif ckYVar == -32
          return 0x0000BDE1
        elseif ckYVar == -31
          return 0x0000BDDF
        elseif ckYVar == -30
          return 0x0000BD9F
        elseif ckYVar == -29
          return 0x0000BD7E
        elseif ckYVar == -28
          return 0x0000BD5D
        elseif ckYVar == -27
          return 0x0000BD3C
        elseif ckYVar == -26
          return 0x0000BD1B
        elseif ckYVar == -25
          return 0x0000BCFA
        elseif ckYVar == -24
          return 0x0000BCD9
        elseif ckYVar == -23
          return 0x0000BCB8
        elseif ckYVar == -22
          return 0x0000BC97
        elseif ckYVar == -21
          return 0x0000BC76
        elseif ckYVar == -20
          return 0x0000BC55
        elseif ckYVar == -19
          return 0x0000BC34
        elseif ckYVar == -18
          return 0x0000BC13
        elseif ckYVar == -17
          return 0x0000BBF2
        elseif ckYVar == -16
          return 0x0000BBD1
        elseif ckYVar == -15
          return 0x0000BBB0
        elseif ckYVar == -14
          return 0x0000BB8F
        elseif ckYVar == -13
          return 0x0000BB6E
        elseif ckYVar == -12
          return 0x0000BB4D
        elseif ckYVar == -11
          return 0x0000BB2C
        elseif ckYVar == -10
          return 0x0000BB0B
        elseif ckYVar == -9
          return 0x0000BAEA
        elseif ckYVar == -8
          return 0x0000BAC9
        elseif ckYVar == -7
          return 0x0000BAA8
        elseif ckYVar == -6
          return 0x0000BA87
        elseif ckYVar == -5
          return 0x0000BA66
        elseif ckYVar == -4
          return 0x0000BA45
        elseif ckYVar == -3
          return 0x0000BA24
        elseif ckYVar == -2
          return 0x0000BA03
        elseif ckYVar == -1
          return 0x0000B9E2
        elseif ckYVar == 0
          return 0x0000B9C1
        elseif ckYVar == 1
          return 0x0000B5A1
        elseif ckYVar == 2
          return 0x0000B580
        elseif ckYVar == 3
          return 0x0000B55F
        elseif ckYVar == 4
          return 0x0000B53E
        elseif ckYVar == 5
          return 0x0000B51D
        elseif ckYVar == 6
          return 0x0000B4FC
        elseif ckYVar == 7
          return 0x0000B4DB
        elseif ckYVar == 8
          return 0x0000B4BA
        elseif ckYVar == 9
          return 0x0000B499
        elseif ckYVar == 10
          return 0x0000B478
        elseif ckYVar == 11
          return 0x0000B457
        elseif ckYVar == 12
          return 0x0000B436
        elseif ckYVar == 13
          return 0x0000B415
        elseif ckYVar == 14
          return 0x0000B3F4
        elseif ckYVar == 15
          return 0x0000B3D3
        elseif ckYVar == 16
          return 0x0000B3B2
        elseif ckYVar == 17
          return 0x0000B391
        elseif ckYVar == 18
          return 0x0000B370
        elseif ckYVar == 19
          return 0x0000B34F
        elseif ckYVar == 20
          return 0x0000B32E
        elseif ckYVar == 21
          return 0x0000B30D
        elseif ckYVar == 22
          return 0x0000B2EC
        elseif ckYVar == 23
          return 0x0000B2CB
        elseif ckYVar == 24
          return 0x0000B2AA
        elseif ckYVar == 25
          return 0x0000B289
        elseif ckYVar == 26
          return 0x0000B268
        elseif ckYVar == 27
          return 0x0000B247
        elseif ckYVar == 28
          return 0x0000B226
        elseif ckYVar == 29
          return 0x0000B205
        elseif ckYVar == 30
          return 0x0000B1E4
        elseif ckYVar == 31
          return 0x0000B1C3
        elseif ckYVar == 32
          return 0x00005DCD
        elseif ckYVar == 33
          return 0x00005DCB
        elseif ckYVar == 34
          return 0x00005D8B
        elseif ckYVar == 35
          return 0x00005D6A
        elseif ckYVar == 36
          return 0x00005D49
        elseif ckYVar == 37
          return 0x00005D28
        elseif ckYVar == 38
          return 0x00005D07
        elseif ckYVar == 39
          return 0x00005CE6
        elseif ckYVar == 40
          return 0x00005CC5
        elseif ckYVar == 41
          return 0x00005CA4
        elseif ckYVar == 42
          return 0x00005C83
        elseif ckYVar == 43
          return 0x00005C62
        elseif ckYVar == 44
          return 0x00005C41
        elseif ckYVar == 45
          return 0x00005C20
        elseif ckYVar == 46
          return 0x00005BFF
        elseif ckYVar == 47
          return 0x00005BDE
        elseif ckYVar == 48
          return 0x00005BBD
        elseif ckYVar == 49
          return 0x00005B9C
        elseif ckYVar == 50
          return 0x00005B7B
        endif
      elseif ckXVar == 34
        if ckYVar == -43
          return 0x0001130C
        elseif ckYVar == -42
          return 0x000112EB
        elseif ckYVar == -41
          return 0x000112CA
        elseif ckYVar == -40
          return 0x000112A9
        elseif ckYVar == -39
          return 0x00011288
        elseif ckYVar == -38
          return 0x00011267
        elseif ckYVar == -37
          return 0x00011246
        elseif ckYVar == -36
          return 0x00011225
        elseif ckYVar == -35
          return 0x00011204
        elseif ckYVar == -34
          return 0x000111E3
        elseif ckYVar == -33
          return 0x000111C2
        elseif ckYVar == -32
          return 0x0000BDDE
        elseif ckYVar == -31
          return 0x0000BDDD
        elseif ckYVar == -30
          return 0x0000BD9E
        elseif ckYVar == -29
          return 0x0000BD7D
        elseif ckYVar == -28
          return 0x0000BD5C
        elseif ckYVar == -27
          return 0x0000BD3B
        elseif ckYVar == -26
          return 0x0000BD1A
        elseif ckYVar == -25
          return 0x0000BCF9
        elseif ckYVar == -24
          return 0x0000BCD8
        elseif ckYVar == -23
          return 0x0000BCB7
        elseif ckYVar == -22
          return 0x0000BC96
        elseif ckYVar == -21
          return 0x0000BC75
        elseif ckYVar == -20
          return 0x0000BC54
        elseif ckYVar == -19
          return 0x0000BC33
        elseif ckYVar == -18
          return 0x0000BC12
        elseif ckYVar == -17
          return 0x0000BBF1
        elseif ckYVar == -16
          return 0x0000BBD0
        elseif ckYVar == -15
          return 0x0000BBAF
        elseif ckYVar == -14
          return 0x0000BB8E
        elseif ckYVar == -13
          return 0x0000BB6D
        elseif ckYVar == -12
          return 0x0000BB4C
        elseif ckYVar == -11
          return 0x0000BB2B
        elseif ckYVar == -10
          return 0x0000BB0A
        elseif ckYVar == -9
          return 0x0000BAE9
        elseif ckYVar == -8
          return 0x0000BAC8
        elseif ckYVar == -7
          return 0x0000BAA7
        elseif ckYVar == -6
          return 0x0000BA86
        elseif ckYVar == -5
          return 0x0000BA65
        elseif ckYVar == -4
          return 0x0000BA44
        elseif ckYVar == -3
          return 0x0000BA23
        elseif ckYVar == -2
          return 0x0000BA02
        elseif ckYVar == -1
          return 0x0000B9E1
        elseif ckYVar == 0
          return 0x0000B9C0
        elseif ckYVar == 1
          return 0x0000B5A0
        elseif ckYVar == 2
          return 0x0000B57F
        elseif ckYVar == 3
          return 0x0000B55E
        elseif ckYVar == 4
          return 0x0000B53D
        elseif ckYVar == 5
          return 0x0000B51C
        elseif ckYVar == 6
          return 0x0000B4FB
        elseif ckYVar == 7
          return 0x0000B4DA
        elseif ckYVar == 8
          return 0x0000B4B9
        elseif ckYVar == 9
          return 0x0000B498
        elseif ckYVar == 10
          return 0x0000B477
        elseif ckYVar == 11
          return 0x0000B456
        elseif ckYVar == 12
          return 0x0000B435
        elseif ckYVar == 13
          return 0x0000B414
        elseif ckYVar == 14
          return 0x0000B3F3
        elseif ckYVar == 15
          return 0x0000B3D2
        elseif ckYVar == 16
          return 0x0000B3B1
        elseif ckYVar == 17
          return 0x0000B390
        elseif ckYVar == 18
          return 0x0000B36F
        elseif ckYVar == 19
          return 0x0000B34E
        elseif ckYVar == 20
          return 0x0000B32D
        elseif ckYVar == 21
          return 0x0000B30C
        elseif ckYVar == 22
          return 0x0000B2EB
        elseif ckYVar == 23
          return 0x0000B2CA
        elseif ckYVar == 24
          return 0x0000B2A9
        elseif ckYVar == 25
          return 0x0000B288
        elseif ckYVar == 26
          return 0x0000B267
        elseif ckYVar == 27
          return 0x0000B246
        elseif ckYVar == 28
          return 0x0000B225
        elseif ckYVar == 29
          return 0x0000B204
        elseif ckYVar == 30
          return 0x0000B1E3
        elseif ckYVar == 31
          return 0x0000B1C2
        elseif ckYVar == 32
          return 0x00005DCA
        elseif ckYVar == 33
          return 0x00005DC9
        elseif ckYVar == 34
          return 0x00005D8A
        elseif ckYVar == 35
          return 0x00005D69
        elseif ckYVar == 36
          return 0x00005D48
        elseif ckYVar == 37
          return 0x00005D27
        elseif ckYVar == 38
          return 0x00005D06
        elseif ckYVar == 39
          return 0x00005CE5
        elseif ckYVar == 40
          return 0x00005CC4
        elseif ckYVar == 41
          return 0x00005CA3
        elseif ckYVar == 42
          return 0x00005C82
        elseif ckYVar == 43
          return 0x00005C61
        elseif ckYVar == 44
          return 0x00005C40
        elseif ckYVar == 45
          return 0x00005C1F
        elseif ckYVar == 46
          return 0x00005BFE
        elseif ckYVar == 47
          return 0x00005BDD
        elseif ckYVar == 48
          return 0x00005BBC
        elseif ckYVar == 49
          return 0x00005B9B
        elseif ckYVar == 50
          return 0x00005B7A
        endif
      elseif ckXVar == 35
        if ckYVar == -43
          return 0x0001130B
        elseif ckYVar == -42
          return 0x000112EA
        elseif ckYVar == -41
          return 0x000112C9
        elseif ckYVar == -40
          return 0x000112A8
        elseif ckYVar == -39
          return 0x00011287
        elseif ckYVar == -38
          return 0x00011266
        elseif ckYVar == -37
          return 0x00011245
        elseif ckYVar == -36
          return 0x00011224
        elseif ckYVar == -35
          return 0x00011203
        elseif ckYVar == -34
          return 0x000111E2
        elseif ckYVar == -33
          return 0x000111C1
        elseif ckYVar == -32
          return 0x0000BDDC
        elseif ckYVar == -31
          return 0x0000BDDB
        elseif ckYVar == -30
          return 0x0000BD9D
        elseif ckYVar == -29
          return 0x0000BD7C
        elseif ckYVar == -28
          return 0x0000BD5B
        elseif ckYVar == -27
          return 0x0000BD3A
        elseif ckYVar == -26
          return 0x0000BD19
        elseif ckYVar == -25
          return 0x0000BCF8
        elseif ckYVar == -24
          return 0x0000BCD7
        elseif ckYVar == -23
          return 0x0000BCB6
        elseif ckYVar == -22
          return 0x0000BC95
        elseif ckYVar == -21
          return 0x0000BC74
        elseif ckYVar == -20
          return 0x0000BC53
        elseif ckYVar == -19
          return 0x0000BC32
        elseif ckYVar == -18
          return 0x0000BC11
        elseif ckYVar == -17
          return 0x0000BBF0
        elseif ckYVar == -16
          return 0x0000BBCF
        elseif ckYVar == -15
          return 0x0000BBAE
        elseif ckYVar == -14
          return 0x0000BB8D
        elseif ckYVar == -13
          return 0x0000BB6C
        elseif ckYVar == -12
          return 0x0000BB4B
        elseif ckYVar == -11
          return 0x0000BB2A
        elseif ckYVar == -10
          return 0x0000BB09
        elseif ckYVar == -9
          return 0x0000BAE8
        elseif ckYVar == -8
          return 0x0000BAC7
        elseif ckYVar == -7
          return 0x0000BAA6
        elseif ckYVar == -6
          return 0x0000BA85
        elseif ckYVar == -5
          return 0x0000BA64
        elseif ckYVar == -4
          return 0x0000BA43
        elseif ckYVar == -3
          return 0x0000BA22
        elseif ckYVar == -2
          return 0x0000BA01
        elseif ckYVar == -1
          return 0x0000B9E0
        elseif ckYVar == 0
          return 0x0000B9BF
        elseif ckYVar == 1
          return 0x0000B59F
        elseif ckYVar == 2
          return 0x0000B57E
        elseif ckYVar == 3
          return 0x0000B55D
        elseif ckYVar == 4
          return 0x0000B53C
        elseif ckYVar == 5
          return 0x0000B51B
        elseif ckYVar == 6
          return 0x0000B4FA
        elseif ckYVar == 7
          return 0x0000B4D9
        elseif ckYVar == 8
          return 0x0000B4B8
        elseif ckYVar == 9
          return 0x0000B497
        elseif ckYVar == 10
          return 0x0000B476
        elseif ckYVar == 11
          return 0x0000B455
        elseif ckYVar == 12
          return 0x0000B434
        elseif ckYVar == 13
          return 0x0000B413
        elseif ckYVar == 14
          return 0x0000B3F2
        elseif ckYVar == 15
          return 0x0000B3D1
        elseif ckYVar == 16
          return 0x0000B3B0
        elseif ckYVar == 17
          return 0x0000B38F
        elseif ckYVar == 18
          return 0x0000B36E
        elseif ckYVar == 19
          return 0x0000B34D
        elseif ckYVar == 20
          return 0x0000B32C
        elseif ckYVar == 21
          return 0x0000B30B
        elseif ckYVar == 22
          return 0x0000B2EA
        elseif ckYVar == 23
          return 0x0000B2C9
        elseif ckYVar == 24
          return 0x0000B2A8
        elseif ckYVar == 25
          return 0x0000B287
        elseif ckYVar == 26
          return 0x0000B266
        elseif ckYVar == 27
          return 0x0000B245
        elseif ckYVar == 28
          return 0x0000B224
        elseif ckYVar == 29
          return 0x0000B203
        elseif ckYVar == 30
          return 0x0000B1E2
        elseif ckYVar == 31
          return 0x0000B1C1
        elseif ckYVar == 32
          return 0x00005DC8
        elseif ckYVar == 33
          return 0x00005DC7
        elseif ckYVar == 34
          return 0x00005D89
        elseif ckYVar == 35
          return 0x00005D68
        elseif ckYVar == 36
          return 0x00005D47
        elseif ckYVar == 37
          return 0x00005D26
        elseif ckYVar == 38
          return 0x00005D05
        elseif ckYVar == 39
          return 0x00005CE4
        elseif ckYVar == 40
          return 0x00005CC3
        elseif ckYVar == 41
          return 0x00005CA2
        elseif ckYVar == 42
          return 0x00005C81
        elseif ckYVar == 43
          return 0x00005C60
        elseif ckYVar == 44
          return 0x00005C3F
        elseif ckYVar == 45
          return 0x00005C1E
        elseif ckYVar == 46
          return 0x00005BFD
        elseif ckYVar == 47
          return 0x00005BDC
        elseif ckYVar == 48
          return 0x00005BBB
        elseif ckYVar == 49
          return 0x00005B9A
        elseif ckYVar == 50
          return 0x00005B79
        endif
      elseif ckXVar == 36
        if ckYVar == -43
          return 0x0001130A
        elseif ckYVar == -42
          return 0x000112E9
        elseif ckYVar == -41
          return 0x000112C8
        elseif ckYVar == -40
          return 0x000112A7
        elseif ckYVar == -39
          return 0x00011286
        elseif ckYVar == -38
          return 0x00011265
        elseif ckYVar == -37
          return 0x00011244
        elseif ckYVar == -36
          return 0x00011223
        elseif ckYVar == -35
          return 0x00011202
        elseif ckYVar == -34
          return 0x000111E1
        elseif ckYVar == -33
          return 0x000111C0
        elseif ckYVar == -32
          return 0x0000BDDA
        elseif ckYVar == -31
          return 0x0000BDD9
        elseif ckYVar == -30
          return 0x0000BD9C
        elseif ckYVar == -29
          return 0x0000BD7B
        elseif ckYVar == -28
          return 0x0000BD5A
        elseif ckYVar == -27
          return 0x0000BD39
        elseif ckYVar == -26
          return 0x0000BD18
        elseif ckYVar == -25
          return 0x0000BCF7
        elseif ckYVar == -24
          return 0x0000BCD6
        elseif ckYVar == -23
          return 0x0000BCB5
        elseif ckYVar == -22
          return 0x0000BC94
        elseif ckYVar == -21
          return 0x0000BC73
        elseif ckYVar == -20
          return 0x0000BC52
        elseif ckYVar == -19
          return 0x0000BC31
        elseif ckYVar == -18
          return 0x0000BC10
        elseif ckYVar == -17
          return 0x0000BBEF
        elseif ckYVar == -16
          return 0x0000BBCE
        elseif ckYVar == -15
          return 0x0000BBAD
        elseif ckYVar == -14
          return 0x0000BB8C
        elseif ckYVar == -13
          return 0x0000BB6B
        elseif ckYVar == -12
          return 0x0000BB4A
        elseif ckYVar == -11
          return 0x0000BB29
        elseif ckYVar == -10
          return 0x0000BB08
        elseif ckYVar == -9
          return 0x0000BAE7
        elseif ckYVar == -8
          return 0x0000BAC6
        elseif ckYVar == -7
          return 0x0000BAA5
        elseif ckYVar == -6
          return 0x0000BA84
        elseif ckYVar == -5
          return 0x0000BA63
        elseif ckYVar == -4
          return 0x0000BA42
        elseif ckYVar == -3
          return 0x0000BA21
        elseif ckYVar == -2
          return 0x0000BA00
        elseif ckYVar == -1
          return 0x0000B9DF
        elseif ckYVar == 0
          return 0x0000B9BE
        elseif ckYVar == 1
          return 0x0000B59E
        elseif ckYVar == 2
          return 0x0000B57D
        elseif ckYVar == 3
          return 0x0000B55C
        elseif ckYVar == 4
          return 0x0000B53B
        elseif ckYVar == 5
          return 0x0000B51A
        elseif ckYVar == 6
          return 0x0000B4F9
        elseif ckYVar == 7
          return 0x0000B4D8
        elseif ckYVar == 8
          return 0x0000B4B7
        elseif ckYVar == 9
          return 0x0000B496
        elseif ckYVar == 10
          return 0x0000B475
        elseif ckYVar == 11
          return 0x0000B454
        elseif ckYVar == 12
          return 0x0000B433
        elseif ckYVar == 13
          return 0x0000B412
        elseif ckYVar == 14
          return 0x0000B3F1
        elseif ckYVar == 15
          return 0x0000B3D0
        elseif ckYVar == 16
          return 0x0000B3AF
        elseif ckYVar == 17
          return 0x0000B38E
        elseif ckYVar == 18
          return 0x0000B36D
        elseif ckYVar == 19
          return 0x0000B34C
        elseif ckYVar == 20
          return 0x0000B32B
        elseif ckYVar == 21
          return 0x0000B30A
        elseif ckYVar == 22
          return 0x0000B2E9
        elseif ckYVar == 23
          return 0x0000B2C8
        elseif ckYVar == 24
          return 0x0000B2A7
        elseif ckYVar == 25
          return 0x0000B286
        elseif ckYVar == 26
          return 0x0000B265
        elseif ckYVar == 27
          return 0x0000B244
        elseif ckYVar == 28
          return 0x0000B223
        elseif ckYVar == 29
          return 0x0000B202
        elseif ckYVar == 30
          return 0x0000B1E1
        elseif ckYVar == 31
          return 0x0000B1C0
        elseif ckYVar == 32
          return 0x00005DC6
        elseif ckYVar == 33
          return 0x00005DC5
        elseif ckYVar == 34
          return 0x00005D88
        elseif ckYVar == 35
          return 0x00005D67
        elseif ckYVar == 36
          return 0x00005D46
        elseif ckYVar == 37
          return 0x00005D25
        elseif ckYVar == 38
          return 0x00005D04
        elseif ckYVar == 39
          return 0x00005CE3
        elseif ckYVar == 40
          return 0x00005CC2
        elseif ckYVar == 41
          return 0x00005CA1
        elseif ckYVar == 42
          return 0x00005C80
        elseif ckYVar == 43
          return 0x00005C5F
        elseif ckYVar == 44
          return 0x00005C3E
        elseif ckYVar == 45
          return 0x00005C1D
        elseif ckYVar == 46
          return 0x00005BFC
        elseif ckYVar == 47
          return 0x00005BDB
        elseif ckYVar == 48
          return 0x00005BBA
        elseif ckYVar == 49
          return 0x00005B99
        elseif ckYVar == 50
          return 0x00005B78
        endif
      elseif ckXVar == 37
        if ckYVar == -43
          return 0x00011309
        elseif ckYVar == -42
          return 0x000112E8
        elseif ckYVar == -41
          return 0x000112C7
        elseif ckYVar == -40
          return 0x000112A6
        elseif ckYVar == -39
          return 0x00011285
        elseif ckYVar == -38
          return 0x00011264
        elseif ckYVar == -37
          return 0x00011243
        elseif ckYVar == -36
          return 0x00011222
        elseif ckYVar == -35
          return 0x00011201
        elseif ckYVar == -34
          return 0x000111E0
        elseif ckYVar == -33
          return 0x000111BF
        elseif ckYVar == -32
          return 0x0000BDD8
        elseif ckYVar == -31
          return 0x0000BDD7
        elseif ckYVar == -30
          return 0x0000BD9B
        elseif ckYVar == -29
          return 0x0000BD7A
        elseif ckYVar == -28
          return 0x0000BD59
        elseif ckYVar == -27
          return 0x0000BD38
        elseif ckYVar == -26
          return 0x0000BD17
        elseif ckYVar == -25
          return 0x0000BCF6
        elseif ckYVar == -24
          return 0x0000BCD5
        elseif ckYVar == -23
          return 0x0000BCB4
        elseif ckYVar == -22
          return 0x0000BC93
        elseif ckYVar == -21
          return 0x0000BC72
        elseif ckYVar == -20
          return 0x0000BC51
        elseif ckYVar == -19
          return 0x0000BC30
        elseif ckYVar == -18
          return 0x0000BC0F
        elseif ckYVar == -17
          return 0x0000BBEE
        elseif ckYVar == -16
          return 0x0000BBCD
        elseif ckYVar == -15
          return 0x0000BBAC
        elseif ckYVar == -14
          return 0x0000BB8B
        elseif ckYVar == -13
          return 0x0000BB6A
        elseif ckYVar == -12
          return 0x0000BB49
        elseif ckYVar == -11
          return 0x0000BB28
        elseif ckYVar == -10
          return 0x0000BB07
        elseif ckYVar == -9
          return 0x0000BAE6
        elseif ckYVar == -8
          return 0x0000BAC5
        elseif ckYVar == -7
          return 0x0000BAA4
        elseif ckYVar == -6
          return 0x0000BA83
        elseif ckYVar == -5
          return 0x0000BA62
        elseif ckYVar == -4
          return 0x0000BA41
        elseif ckYVar == -3
          return 0x0000BA20
        elseif ckYVar == -2
          return 0x0000B9FF
        elseif ckYVar == -1
          return 0x0000B9DE
        elseif ckYVar == 0
          return 0x0000B9BD
        elseif ckYVar == 1
          return 0x0000B59D
        elseif ckYVar == 2
          return 0x0000B57C
        elseif ckYVar == 3
          return 0x0000B55B
        elseif ckYVar == 4
          return 0x0000B53A
        elseif ckYVar == 5
          return 0x0000B519
        elseif ckYVar == 6
          return 0x0000B4F8
        elseif ckYVar == 7
          return 0x0000B4D7
        elseif ckYVar == 8
          return 0x0000B4B6
        elseif ckYVar == 9
          return 0x0000B495
        elseif ckYVar == 10
          return 0x0000B474
        elseif ckYVar == 11
          return 0x0000B453
        elseif ckYVar == 12
          return 0x0000B432
        elseif ckYVar == 13
          return 0x0000B411
        elseif ckYVar == 14
          return 0x0000B3F0
        elseif ckYVar == 15
          return 0x0000B3CF
        elseif ckYVar == 16
          return 0x0000B3AE
        elseif ckYVar == 17
          return 0x0000B38D
        elseif ckYVar == 18
          return 0x0000B36C
        elseif ckYVar == 19
          return 0x0000B34B
        elseif ckYVar == 20
          return 0x0000B32A
        elseif ckYVar == 21
          return 0x0000B309
        elseif ckYVar == 22
          return 0x0000B2E8
        elseif ckYVar == 23
          return 0x0000B2C7
        elseif ckYVar == 24
          return 0x0000B2A6
        elseif ckYVar == 25
          return 0x0000B285
        elseif ckYVar == 26
          return 0x0000B264
        elseif ckYVar == 27
          return 0x0000B243
        elseif ckYVar == 28
          return 0x0000B222
        elseif ckYVar == 29
          return 0x0000B201
        elseif ckYVar == 30
          return 0x0000B1E0
        elseif ckYVar == 31
          return 0x0000B1BF
        elseif ckYVar == 32
          return 0x00005DC4
        elseif ckYVar == 33
          return 0x00005DC3
        elseif ckYVar == 34
          return 0x00005D87
        elseif ckYVar == 35
          return 0x00005D66
        elseif ckYVar == 36
          return 0x00005D45
        elseif ckYVar == 37
          return 0x00005D24
        elseif ckYVar == 38
          return 0x00005D03
        elseif ckYVar == 39
          return 0x00005CE2
        elseif ckYVar == 40
          return 0x00005CC1
        elseif ckYVar == 41
          return 0x00005CA0
        elseif ckYVar == 42
          return 0x00005C7F
        elseif ckYVar == 43
          return 0x00005C5E
        elseif ckYVar == 44
          return 0x00005C3D
        elseif ckYVar == 45
          return 0x00005C1C
        elseif ckYVar == 46
          return 0x00005BFB
        elseif ckYVar == 47
          return 0x00005BDA
        elseif ckYVar == 48
          return 0x00005BB9
        elseif ckYVar == 49
          return 0x00005B98
        elseif ckYVar == 50
          return 0x00005B77
        endif
      elseif ckXVar == 38
        if ckYVar == -43
          return 0x00011308
        elseif ckYVar == -42
          return 0x000112E7
        elseif ckYVar == -41
          return 0x000112C6
        elseif ckYVar == -40
          return 0x000112A5
        elseif ckYVar == -39
          return 0x00011284
        elseif ckYVar == -38
          return 0x00011263
        elseif ckYVar == -37
          return 0x00011242
        elseif ckYVar == -36
          return 0x00011221
        elseif ckYVar == -35
          return 0x00011200
        elseif ckYVar == -34
          return 0x000111DF
        elseif ckYVar == -33
          return 0x000111BE
        elseif ckYVar == -32
          return 0x0000BDD6
        elseif ckYVar == -31
          return 0x0000BDD5
        elseif ckYVar == -30
          return 0x0000BD9A
        elseif ckYVar == -29
          return 0x0000BD79
        elseif ckYVar == -28
          return 0x0000BD58
        elseif ckYVar == -27
          return 0x0000BD37
        elseif ckYVar == -26
          return 0x0000BD16
        elseif ckYVar == -25
          return 0x0000BCF5
        elseif ckYVar == -24
          return 0x0000BCD4
        elseif ckYVar == -23
          return 0x0000BCB3
        elseif ckYVar == -22
          return 0x0000BC92
        elseif ckYVar == -21
          return 0x0000BC71
        elseif ckYVar == -20
          return 0x0000BC50
        elseif ckYVar == -19
          return 0x0000BC2F
        elseif ckYVar == -18
          return 0x0000BC0E
        elseif ckYVar == -17
          return 0x0000BBED
        elseif ckYVar == -16
          return 0x0000BBCC
        elseif ckYVar == -15
          return 0x0000BBAB
        elseif ckYVar == -14
          return 0x0000BB8A
        elseif ckYVar == -13
          return 0x0000BB69
        elseif ckYVar == -12
          return 0x0000BB48
        elseif ckYVar == -11
          return 0x0000BB27
        elseif ckYVar == -10
          return 0x0000BB06
        elseif ckYVar == -9
          return 0x0000BAE5
        elseif ckYVar == -8
          return 0x0000BAC4
        elseif ckYVar == -7
          return 0x0000BAA3
        elseif ckYVar == -6
          return 0x0000BA82
        elseif ckYVar == -5
          return 0x0000BA61
        elseif ckYVar == -4
          return 0x0000BA40
        elseif ckYVar == -3
          return 0x0000BA1F
        elseif ckYVar == -2
          return 0x0000B9FE
        elseif ckYVar == -1
          return 0x0000B9DD
        elseif ckYVar == 0
          return 0x0000B9BC
        elseif ckYVar == 1
          return 0x0000B59C
        elseif ckYVar == 2
          return 0x0000B57B
        elseif ckYVar == 3
          return 0x0000B55A
        elseif ckYVar == 4
          return 0x0000B539
        elseif ckYVar == 5
          return 0x0000B518
        elseif ckYVar == 6
          return 0x0000B4F7
        elseif ckYVar == 7
          return 0x0000B4D6
        elseif ckYVar == 8
          return 0x0000B4B5
        elseif ckYVar == 9
          return 0x0000B494
        elseif ckYVar == 10
          return 0x0000B473
        elseif ckYVar == 11
          return 0x0000B452
        elseif ckYVar == 12
          return 0x0000B431
        elseif ckYVar == 13
          return 0x0000B410
        elseif ckYVar == 14
          return 0x0000B3EF
        elseif ckYVar == 15
          return 0x0000B3CE
        elseif ckYVar == 16
          return 0x0000B3AD
        elseif ckYVar == 17
          return 0x0000B38C
        elseif ckYVar == 18
          return 0x0000B36B
        elseif ckYVar == 19
          return 0x0000B34A
        elseif ckYVar == 20
          return 0x0000B329
        elseif ckYVar == 21
          return 0x0000B308
        elseif ckYVar == 22
          return 0x0000B2E7
        elseif ckYVar == 23
          return 0x0000B2C6
        elseif ckYVar == 24
          return 0x0000B2A5
        elseif ckYVar == 25
          return 0x0000B284
        elseif ckYVar == 26
          return 0x0000B263
        elseif ckYVar == 27
          return 0x0000B242
        elseif ckYVar == 28
          return 0x0000B221
        elseif ckYVar == 29
          return 0x0000B200
        elseif ckYVar == 30
          return 0x0000B1DF
        elseif ckYVar == 31
          return 0x0000B1BE
        elseif ckYVar == 32
          return 0x00005DC2
        elseif ckYVar == 33
          return 0x00005DC1
        elseif ckYVar == 34
          return 0x00005D86
        elseif ckYVar == 35
          return 0x00005D65
        elseif ckYVar == 36
          return 0x00005D44
        elseif ckYVar == 37
          return 0x00005D23
        elseif ckYVar == 38
          return 0x00005D02
        elseif ckYVar == 39
          return 0x00005CE1
        elseif ckYVar == 40
          return 0x00005CC0
        elseif ckYVar == 41
          return 0x00005C9F
        elseif ckYVar == 42
          return 0x00005C7E
        elseif ckYVar == 43
          return 0x00005C5D
        elseif ckYVar == 44
          return 0x00005C3C
        elseif ckYVar == 45
          return 0x00005C1B
        elseif ckYVar == 46
          return 0x00005BFA
        elseif ckYVar == 47
          return 0x00005BD9
        elseif ckYVar == 48
          return 0x00005BB8
        elseif ckYVar == 49
          return 0x00005B97
        elseif ckYVar == 50
          return 0x00005B76
        endif
      elseif ckXVar == 39
        if ckYVar == -43
          return 0x00011307
        elseif ckYVar == -42
          return 0x000112E6
        elseif ckYVar == -41
          return 0x000112C5
        elseif ckYVar == -40
          return 0x000112A4
        elseif ckYVar == -39
          return 0x00011283
        elseif ckYVar == -38
          return 0x00011262
        elseif ckYVar == -37
          return 0x00011241
        elseif ckYVar == -36
          return 0x00011220
        elseif ckYVar == -35
          return 0x000111FF
        elseif ckYVar == -34
          return 0x000111DE
        elseif ckYVar == -33
          return 0x000111BD
        elseif ckYVar == -32
          return 0x0000BDD4
        elseif ckYVar == -31
          return 0x0000BDD3
        elseif ckYVar == -30
          return 0x0000BD99
        elseif ckYVar == -29
          return 0x0000BD78
        elseif ckYVar == -28
          return 0x0000BD57
        elseif ckYVar == -27
          return 0x0000BD36
        elseif ckYVar == -26
          return 0x0000BD15
        elseif ckYVar == -25
          return 0x0000BCF4
        elseif ckYVar == -24
          return 0x0000BCD3
        elseif ckYVar == -23
          return 0x0000BCB2
        elseif ckYVar == -22
          return 0x0000BC91
        elseif ckYVar == -21
          return 0x0000BC70
        elseif ckYVar == -20
          return 0x0000BC4F
        elseif ckYVar == -19
          return 0x0000BC2E
        elseif ckYVar == -18
          return 0x0000BC0D
        elseif ckYVar == -17
          return 0x0000BBEC
        elseif ckYVar == -16
          return 0x0000BBCB
        elseif ckYVar == -15
          return 0x0000BBAA
        elseif ckYVar == -14
          return 0x0000BB89
        elseif ckYVar == -13
          return 0x0000BB68
        elseif ckYVar == -12
          return 0x0000BB47
        elseif ckYVar == -11
          return 0x0000BB26
        elseif ckYVar == -10
          return 0x0000BB05
        elseif ckYVar == -9
          return 0x0000BAE4
        elseif ckYVar == -8
          return 0x0000BAC3
        elseif ckYVar == -7
          return 0x0000BAA2
        elseif ckYVar == -6
          return 0x0000BA81
        elseif ckYVar == -5
          return 0x0000BA60
        elseif ckYVar == -4
          return 0x0000BA3F
        elseif ckYVar == -3
          return 0x0000BA1E
        elseif ckYVar == -2
          return 0x0000B9FD
        elseif ckYVar == -1
          return 0x0000B9DC
        elseif ckYVar == 0
          return 0x0000B9BB
        elseif ckYVar == 1
          return 0x0000B59B
        elseif ckYVar == 2
          return 0x0000B57A
        elseif ckYVar == 3
          return 0x0000B559
        elseif ckYVar == 4
          return 0x0000B538
        elseif ckYVar == 5
          return 0x0000B517
        elseif ckYVar == 6
          return 0x0000B4F6
        elseif ckYVar == 7
          return 0x0000B4D5
        elseif ckYVar == 8
          return 0x0000B4B4
        elseif ckYVar == 9
          return 0x0000B493
        elseif ckYVar == 10
          return 0x0000B472
        elseif ckYVar == 11
          return 0x0000B451
        elseif ckYVar == 12
          return 0x0000B430
        elseif ckYVar == 13
          return 0x0000B40F
        elseif ckYVar == 14
          return 0x0000B3EE
        elseif ckYVar == 15
          return 0x0000B3CD
        elseif ckYVar == 16
          return 0x0000B3AC
        elseif ckYVar == 17
          return 0x0000B38B
        elseif ckYVar == 18
          return 0x0000B36A
        elseif ckYVar == 19
          return 0x0000B349
        elseif ckYVar == 20
          return 0x0000B328
        elseif ckYVar == 21
          return 0x0000B307
        elseif ckYVar == 22
          return 0x0000B2E6
        elseif ckYVar == 23
          return 0x0000B2C5
        elseif ckYVar == 24
          return 0x0000B2A4
        elseif ckYVar == 25
          return 0x0000B283
        elseif ckYVar == 26
          return 0x0000B262
        elseif ckYVar == 27
          return 0x0000B241
        elseif ckYVar == 28
          return 0x0000B220
        elseif ckYVar == 29
          return 0x0000B1FF
        elseif ckYVar == 30
          return 0x0000B1DE
        elseif ckYVar == 31
          return 0x0000B1BD
        elseif ckYVar == 32
          return 0x00005DC0
        elseif ckYVar == 33
          return 0x00005DBF
        elseif ckYVar == 34
          return 0x00005D85
        elseif ckYVar == 35
          return 0x00005D64
        elseif ckYVar == 36
          return 0x00005D43
        elseif ckYVar == 37
          return 0x00005D22
        elseif ckYVar == 38
          return 0x00005D01
        elseif ckYVar == 39
          return 0x00005CE0
        elseif ckYVar == 40
          return 0x00005CBF
        elseif ckYVar == 41
          return 0x00005C9E
        elseif ckYVar == 42
          return 0x00005C7D
        elseif ckYVar == 43
          return 0x00005C5C
        elseif ckYVar == 44
          return 0x00005C3B
        elseif ckYVar == 45
          return 0x00005C1A
        elseif ckYVar == 46
          return 0x00005BF9
        elseif ckYVar == 47
          return 0x00005BD8
        elseif ckYVar == 48
          return 0x00005BB7
        elseif ckYVar == 49
          return 0x00005B96
        elseif ckYVar == 50
          return 0x00005B75
        endif
      endif
    elseif ckXVar < 50
      if ckXVar == 40
        if ckYVar == -43
          return 0x00011306
        elseif ckYVar == -42
          return 0x000112E5
        elseif ckYVar == -41
          return 0x000112C4
        elseif ckYVar == -40
          return 0x000112A3
        elseif ckYVar == -39
          return 0x00011282
        elseif ckYVar == -38
          return 0x00011261
        elseif ckYVar == -37
          return 0x00011240
        elseif ckYVar == -36
          return 0x0001121F
        elseif ckYVar == -35
          return 0x000111FE
        elseif ckYVar == -34
          return 0x000111DD
        elseif ckYVar == -33
          return 0x000111BC
        elseif ckYVar == -32
          return 0x0000BDD2
        elseif ckYVar == -31
          return 0x0000BDD1
        elseif ckYVar == -30
          return 0x0000BD98
        elseif ckYVar == -29
          return 0x0000BD77
        elseif ckYVar == -28
          return 0x0000BD56
        elseif ckYVar == -27
          return 0x0000BD35
        elseif ckYVar == -26
          return 0x0000BD14
        elseif ckYVar == -25
          return 0x0000BCF3
        elseif ckYVar == -24
          return 0x0000BCD2
        elseif ckYVar == -23
          return 0x0000BCB1
        elseif ckYVar == -22
          return 0x0000BC90
        elseif ckYVar == -21
          return 0x0000BC6F
        elseif ckYVar == -20
          return 0x0000BC4E
        elseif ckYVar == -19
          return 0x0000BC2D
        elseif ckYVar == -18
          return 0x0000BC0C
        elseif ckYVar == -17
          return 0x0000BBEB
        elseif ckYVar == -16
          return 0x0000BBCA
        elseif ckYVar == -15
          return 0x0000BBA9
        elseif ckYVar == -14
          return 0x0000BB88
        elseif ckYVar == -13
          return 0x0000BB67
        elseif ckYVar == -12
          return 0x0000BB46
        elseif ckYVar == -11
          return 0x0000BB25
        elseif ckYVar == -10
          return 0x0000BB04
        elseif ckYVar == -9
          return 0x0000BAE3
        elseif ckYVar == -8
          return 0x0000BAC2
        elseif ckYVar == -7
          return 0x0000BAA1
        elseif ckYVar == -6
          return 0x0000BA80
        elseif ckYVar == -5
          return 0x0000BA5F
        elseif ckYVar == -4
          return 0x0000BA3E
        elseif ckYVar == -3
          return 0x0000BA1D
        elseif ckYVar == -2
          return 0x0000B9FC
        elseif ckYVar == -1
          return 0x0000B9DB
        elseif ckYVar == 0
          return 0x0000B9BA
        elseif ckYVar == 1
          return 0x0000B59A
        elseif ckYVar == 2
          return 0x0000B579
        elseif ckYVar == 3
          return 0x0000B558
        elseif ckYVar == 4
          return 0x0000B537
        elseif ckYVar == 5
          return 0x0000B516
        elseif ckYVar == 6
          return 0x0000B4F5
        elseif ckYVar == 7
          return 0x0000B4D4
        elseif ckYVar == 8
          return 0x0000B4B3
        elseif ckYVar == 9
          return 0x0000B492
        elseif ckYVar == 10
          return 0x0000B471
        elseif ckYVar == 11
          return 0x0000B450
        elseif ckYVar == 12
          return 0x0000B42F
        elseif ckYVar == 13
          return 0x0000B40E
        elseif ckYVar == 14
          return 0x0000B3ED
        elseif ckYVar == 15
          return 0x0000B3CC
        elseif ckYVar == 16
          return 0x0000B3AB
        elseif ckYVar == 17
          return 0x0000B38A
        elseif ckYVar == 18
          return 0x0000B369
        elseif ckYVar == 19
          return 0x0000B348
        elseif ckYVar == 20
          return 0x0000B327
        elseif ckYVar == 21
          return 0x0000B306
        elseif ckYVar == 22
          return 0x0000B2E5
        elseif ckYVar == 23
          return 0x0000B2C4
        elseif ckYVar == 24
          return 0x0000B2A3
        elseif ckYVar == 25
          return 0x0000B282
        elseif ckYVar == 26
          return 0x0000B261
        elseif ckYVar == 27
          return 0x0000B240
        elseif ckYVar == 28
          return 0x0000B21F
        elseif ckYVar == 29
          return 0x0000B1FE
        elseif ckYVar == 30
          return 0x0000B1DD
        elseif ckYVar == 31
          return 0x0000B1BC
        elseif ckYVar == 32
          return 0x00005DBE
        elseif ckYVar == 33
          return 0x00005DBD
        elseif ckYVar == 34
          return 0x00005D84
        elseif ckYVar == 35
          return 0x00005D63
        elseif ckYVar == 36
          return 0x00005D42
        elseif ckYVar == 37
          return 0x00005D21
        elseif ckYVar == 38
          return 0x00005D00
        elseif ckYVar == 39
          return 0x00005CDF
        elseif ckYVar == 40
          return 0x00005CBE
        elseif ckYVar == 41
          return 0x00005C9D
        elseif ckYVar == 42
          return 0x00005C7C
        elseif ckYVar == 43
          return 0x00005C5B
        elseif ckYVar == 44
          return 0x00005C3A
        elseif ckYVar == 45
          return 0x00005C19
        elseif ckYVar == 46
          return 0x00005BF8
        elseif ckYVar == 47
          return 0x00005BD7
        elseif ckYVar == 48
          return 0x00005BB6
        elseif ckYVar == 49
          return 0x00005B95
        elseif ckYVar == 50
          return 0x00005B74
        endif
      elseif ckXVar == 41
        if ckYVar == -43
          return 0x00011305
        elseif ckYVar == -42
          return 0x000112E4
        elseif ckYVar == -41
          return 0x000112C3
        elseif ckYVar == -40
          return 0x000112A2
        elseif ckYVar == -39
          return 0x00011281
        elseif ckYVar == -38
          return 0x00011260
        elseif ckYVar == -37
          return 0x0001123F
        elseif ckYVar == -36
          return 0x0001121E
        elseif ckYVar == -35
          return 0x000111FD
        elseif ckYVar == -34
          return 0x000111DC
        elseif ckYVar == -33
          return 0x000111BB
        elseif ckYVar == -32
          return 0x0000BDD0
        elseif ckYVar == -31
          return 0x0000BDCF
        elseif ckYVar == -30
          return 0x0000BD97
        elseif ckYVar == -29
          return 0x0000BD76
        elseif ckYVar == -28
          return 0x0000BD55
        elseif ckYVar == -27
          return 0x0000BD34
        elseif ckYVar == -26
          return 0x0000BD13
        elseif ckYVar == -25
          return 0x0000BCF2
        elseif ckYVar == -24
          return 0x0000BCD1
        elseif ckYVar == -23
          return 0x0000BCB0
        elseif ckYVar == -22
          return 0x0000BC8F
        elseif ckYVar == -21
          return 0x0000BC6E
        elseif ckYVar == -20
          return 0x0000BC4D
        elseif ckYVar == -19
          return 0x0000BC2C
        elseif ckYVar == -18
          return 0x0000BC0B
        elseif ckYVar == -17
          return 0x0000BBEA
        elseif ckYVar == -16
          return 0x0000BBC9
        elseif ckYVar == -15
          return 0x0000BBA8
        elseif ckYVar == -14
          return 0x0000BB87
        elseif ckYVar == -13
          return 0x0000BB66
        elseif ckYVar == -12
          return 0x0000BB45
        elseif ckYVar == -11
          return 0x0000BB24
        elseif ckYVar == -10
          return 0x0000BB03
        elseif ckYVar == -9
          return 0x0000BAE2
        elseif ckYVar == -8
          return 0x0000BAC1
        elseif ckYVar == -7
          return 0x0000BAA0
        elseif ckYVar == -6
          return 0x0000BA7F
        elseif ckYVar == -5
          return 0x0000BA5E
        elseif ckYVar == -4
          return 0x0000BA3D
        elseif ckYVar == -3
          return 0x0000BA1C
        elseif ckYVar == -2
          return 0x0000B9FB
        elseif ckYVar == -1
          return 0x0000B9DA
        elseif ckYVar == 0
          return 0x0000B9B9
        elseif ckYVar == 1
          return 0x0000B599
        elseif ckYVar == 2
          return 0x0000B578
        elseif ckYVar == 3
          return 0x0000B557
        elseif ckYVar == 4
          return 0x0000B536
        elseif ckYVar == 5
          return 0x0000B515
        elseif ckYVar == 6
          return 0x0000B4F4
        elseif ckYVar == 7
          return 0x0000B4D3
        elseif ckYVar == 8
          return 0x0000B4B2
        elseif ckYVar == 9
          return 0x0000B491
        elseif ckYVar == 10
          return 0x0000B470
        elseif ckYVar == 11
          return 0x0000B44F
        elseif ckYVar == 12
          return 0x0000B42E
        elseif ckYVar == 13
          return 0x0000B40D
        elseif ckYVar == 14
          return 0x0000B3EC
        elseif ckYVar == 15
          return 0x0000B3CB
        elseif ckYVar == 16
          return 0x0000B3AA
        elseif ckYVar == 17
          return 0x0000B389
        elseif ckYVar == 18
          return 0x0000B368
        elseif ckYVar == 19
          return 0x0000B347
        elseif ckYVar == 20
          return 0x0000B326
        elseif ckYVar == 21
          return 0x0000B305
        elseif ckYVar == 22
          return 0x0000B2E4
        elseif ckYVar == 23
          return 0x0000B2C3
        elseif ckYVar == 24
          return 0x0000B2A2
        elseif ckYVar == 25
          return 0x0000B281
        elseif ckYVar == 26
          return 0x0000B260
        elseif ckYVar == 27
          return 0x0000B23F
        elseif ckYVar == 28
          return 0x0000B21E
        elseif ckYVar == 29
          return 0x0000B1FD
        elseif ckYVar == 30
          return 0x0000B1DC
        elseif ckYVar == 31
          return 0x0000B1BB
        elseif ckYVar == 32
          return 0x00005DBC
        elseif ckYVar == 33
          return 0x00005DBB
        elseif ckYVar == 34
          return 0x00005D83
        elseif ckYVar == 35
          return 0x00005D62
        elseif ckYVar == 36
          return 0x00005D41
        elseif ckYVar == 37
          return 0x00005D20
        elseif ckYVar == 38
          return 0x00005CFF
        elseif ckYVar == 39
          return 0x00005CDE
        elseif ckYVar == 40
          return 0x00005CBD
        elseif ckYVar == 41
          return 0x00005C9C
        elseif ckYVar == 42
          return 0x00005C7B
        elseif ckYVar == 43
          return 0x00005C5A
        elseif ckYVar == 44
          return 0x00005C39
        elseif ckYVar == 45
          return 0x00005C18
        elseif ckYVar == 46
          return 0x00005BF7
        elseif ckYVar == 47
          return 0x00005BD6
        elseif ckYVar == 48
          return 0x00005BB5
        elseif ckYVar == 49
          return 0x00005B94
        elseif ckYVar == 50
          return 0x00005B73
        endif
      elseif ckXVar == 42
        if ckYVar == -43
          return 0x00011304
        elseif ckYVar == -42
          return 0x000112E3
        elseif ckYVar == -41
          return 0x000112C2
        elseif ckYVar == -40
          return 0x000112A1
        elseif ckYVar == -39
          return 0x00011280
        elseif ckYVar == -38
          return 0x0001125F
        elseif ckYVar == -37
          return 0x0001123E
        elseif ckYVar == -36
          return 0x0001121D
        elseif ckYVar == -35
          return 0x000111FC
        elseif ckYVar == -34
          return 0x000111DB
        elseif ckYVar == -33
          return 0x000111BA
        elseif ckYVar == -32
          return 0x0000BDCE
        elseif ckYVar == -31
          return 0x0000BDCD
        elseif ckYVar == -30
          return 0x0000BD96
        elseif ckYVar == -29
          return 0x0000BD75
        elseif ckYVar == -28
          return 0x0000BD54
        elseif ckYVar == -27
          return 0x0000BD33
        elseif ckYVar == -26
          return 0x0000BD12
        elseif ckYVar == -25
          return 0x0000BCF1
        elseif ckYVar == -24
          return 0x0000BCD0
        elseif ckYVar == -23
          return 0x0000BCAF
        elseif ckYVar == -22
          return 0x0000BC8E
        elseif ckYVar == -21
          return 0x0000BC6D
        elseif ckYVar == -20
          return 0x0000BC4C
        elseif ckYVar == -19
          return 0x0000BC2B
        elseif ckYVar == -18
          return 0x0000BC0A
        elseif ckYVar == -17
          return 0x0000BBE9
        elseif ckYVar == -16
          return 0x0000BBC8
        elseif ckYVar == -15
          return 0x0000BBA7
        elseif ckYVar == -14
          return 0x0000BB86
        elseif ckYVar == -13
          return 0x0000BB65
        elseif ckYVar == -12
          return 0x0000BB44
        elseif ckYVar == -11
          return 0x0000BB23
        elseif ckYVar == -10
          return 0x0000BB02
        elseif ckYVar == -9
          return 0x0000BAE1
        elseif ckYVar == -8
          return 0x0000BAC0
        elseif ckYVar == -7
          return 0x0000BA9F
        elseif ckYVar == -6
          return 0x0000BA7E
        elseif ckYVar == -5
          return 0x0000BA5D
        elseif ckYVar == -4
          return 0x0000BA3C
        elseif ckYVar == -3
          return 0x0000BA1B
        elseif ckYVar == -2
          return 0x0000B9FA
        elseif ckYVar == -1
          return 0x0000B9D9
        elseif ckYVar == 0
          return 0x0000B9B8
        elseif ckYVar == 1
          return 0x0000B598
        elseif ckYVar == 2
          return 0x0000B577
        elseif ckYVar == 3
          return 0x0000B556
        elseif ckYVar == 4
          return 0x0000B535
        elseif ckYVar == 5
          return 0x0000B514
        elseif ckYVar == 6
          return 0x0000B4F3
        elseif ckYVar == 7
          return 0x0000B4D2
        elseif ckYVar == 8
          return 0x0000B4B1
        elseif ckYVar == 9
          return 0x0000B490
        elseif ckYVar == 10
          return 0x0000B46F
        elseif ckYVar == 11
          return 0x0000B44E
        elseif ckYVar == 12
          return 0x0000B42D
        elseif ckYVar == 13
          return 0x0000B40C
        elseif ckYVar == 14
          return 0x0000B3EB
        elseif ckYVar == 15
          return 0x0000B3CA
        elseif ckYVar == 16
          return 0x0000B3A9
        elseif ckYVar == 17
          return 0x0000B388
        elseif ckYVar == 18
          return 0x0000B367
        elseif ckYVar == 19
          return 0x0000B346
        elseif ckYVar == 20
          return 0x0000B325
        elseif ckYVar == 21
          return 0x0000B304
        elseif ckYVar == 22
          return 0x0000B2E3
        elseif ckYVar == 23
          return 0x0000B2C2
        elseif ckYVar == 24
          return 0x0000B2A1
        elseif ckYVar == 25
          return 0x0000B280
        elseif ckYVar == 26
          return 0x0000B25F
        elseif ckYVar == 27
          return 0x0000B23E
        elseif ckYVar == 28
          return 0x0000B21D
        elseif ckYVar == 29
          return 0x0000B1FC
        elseif ckYVar == 30
          return 0x0000B1DB
        elseif ckYVar == 31
          return 0x0000B1BA
        elseif ckYVar == 32
          return 0x00005DBA
        elseif ckYVar == 33
          return 0x00005DB9
        elseif ckYVar == 34
          return 0x00005D82
        elseif ckYVar == 35
          return 0x00005D61
        elseif ckYVar == 36
          return 0x00005D40
        elseif ckYVar == 37
          return 0x00005D1F
        elseif ckYVar == 38
          return 0x00005CFE
        elseif ckYVar == 39
          return 0x00005CDD
        elseif ckYVar == 40
          return 0x00005CBC
        elseif ckYVar == 41
          return 0x00005C9B
        elseif ckYVar == 42
          return 0x00005C7A
        elseif ckYVar == 43
          return 0x00005C59
        elseif ckYVar == 44
          return 0x00005C38
        elseif ckYVar == 45
          return 0x00005C17
        elseif ckYVar == 46
          return 0x00005BF6
        elseif ckYVar == 47
          return 0x00005BD5
        elseif ckYVar == 48
          return 0x00005BB4
        elseif ckYVar == 49
          return 0x00005B93
        elseif ckYVar == 50
          return 0x00005B72
        endif
      elseif ckXVar == 43
        if ckYVar == -43
          return 0x00011303
        elseif ckYVar == -42
          return 0x000112E2
        elseif ckYVar == -41
          return 0x000112C1
        elseif ckYVar == -40
          return 0x000112A0
        elseif ckYVar == -39
          return 0x0001127F
        elseif ckYVar == -38
          return 0x0001125E
        elseif ckYVar == -37
          return 0x0001123D
        elseif ckYVar == -36
          return 0x0001121C
        elseif ckYVar == -35
          return 0x000111FB
        elseif ckYVar == -34
          return 0x000111DA
        elseif ckYVar == -33
          return 0x000111B9
        elseif ckYVar == -32
          return 0x0000BDCC
        elseif ckYVar == -31
          return 0x0000BDCB
        elseif ckYVar == -30
          return 0x0000BD95
        elseif ckYVar == -29
          return 0x0000BD74
        elseif ckYVar == -28
          return 0x0000BD53
        elseif ckYVar == -27
          return 0x0000BD32
        elseif ckYVar == -26
          return 0x0000BD11
        elseif ckYVar == -25
          return 0x0000BCF0
        elseif ckYVar == -24
          return 0x0000BCCF
        elseif ckYVar == -23
          return 0x0000BCAE
        elseif ckYVar == -22
          return 0x0000BC8D
        elseif ckYVar == -21
          return 0x0000BC6C
        elseif ckYVar == -20
          return 0x0000BC4B
        elseif ckYVar == -19
          return 0x0000BC2A
        elseif ckYVar == -18
          return 0x0000BC09
        elseif ckYVar == -17
          return 0x0000BBE8
        elseif ckYVar == -16
          return 0x0000BBC7
        elseif ckYVar == -15
          return 0x0000BBA6
        elseif ckYVar == -14
          return 0x0000BB85
        elseif ckYVar == -13
          return 0x0000BB64
        elseif ckYVar == -12
          return 0x0000BB43
        elseif ckYVar == -11
          return 0x0000BB22
        elseif ckYVar == -10
          return 0x0000BB01
        elseif ckYVar == -9
          return 0x0000BAE0
        elseif ckYVar == -8
          return 0x0000BABF
        elseif ckYVar == -7
          return 0x0000BA9E
        elseif ckYVar == -6
          return 0x0000BA7D
        elseif ckYVar == -5
          return 0x0000BA5C
        elseif ckYVar == -4
          return 0x0000BA3B
        elseif ckYVar == -3
          return 0x0000BA1A
        elseif ckYVar == -2
          return 0x0000B9F9
        elseif ckYVar == -1
          return 0x0000B9D8
        elseif ckYVar == 0
          return 0x0000B9B7
        elseif ckYVar == 1
          return 0x0000B597
        elseif ckYVar == 2
          return 0x0000B576
        elseif ckYVar == 3
          return 0x0000B555
        elseif ckYVar == 4
          return 0x0000B534
        elseif ckYVar == 5
          return 0x0000B513
        elseif ckYVar == 6
          return 0x0000B4F2
        elseif ckYVar == 7
          return 0x0000B4D1
        elseif ckYVar == 8
          return 0x0000B4B0
        elseif ckYVar == 9
          return 0x0000B48F
        elseif ckYVar == 10
          return 0x0000B46E
        elseif ckYVar == 11
          return 0x0000B44D
        elseif ckYVar == 12
          return 0x0000B42C
        elseif ckYVar == 13
          return 0x0000B40B
        elseif ckYVar == 14
          return 0x0000B3EA
        elseif ckYVar == 15
          return 0x0000B3C9
        elseif ckYVar == 16
          return 0x0000B3A8
        elseif ckYVar == 17
          return 0x0000B387
        elseif ckYVar == 18
          return 0x0000B366
        elseif ckYVar == 19
          return 0x0000B345
        elseif ckYVar == 20
          return 0x0000B324
        elseif ckYVar == 21
          return 0x0000B303
        elseif ckYVar == 22
          return 0x0000B2E2
        elseif ckYVar == 23
          return 0x0000B2C1
        elseif ckYVar == 24
          return 0x0000B2A0
        elseif ckYVar == 25
          return 0x0000B27F
        elseif ckYVar == 26
          return 0x0000B25E
        elseif ckYVar == 27
          return 0x0000B23D
        elseif ckYVar == 28
          return 0x0000B21C
        elseif ckYVar == 29
          return 0x0000B1FB
        elseif ckYVar == 30
          return 0x0000B1DA
        elseif ckYVar == 31
          return 0x0000B1B9
        elseif ckYVar == 32
          return 0x00005DB8
        elseif ckYVar == 33
          return 0x00005DB7
        elseif ckYVar == 34
          return 0x00005D81
        elseif ckYVar == 35
          return 0x00005D60
        elseif ckYVar == 36
          return 0x00005D3F
        elseif ckYVar == 37
          return 0x00005D1E
        elseif ckYVar == 38
          return 0x00005CFD
        elseif ckYVar == 39
          return 0x00005CDC
        elseif ckYVar == 40
          return 0x00005CBB
        elseif ckYVar == 41
          return 0x00005C9A
        elseif ckYVar == 42
          return 0x00005C79
        elseif ckYVar == 43
          return 0x00005C58
        elseif ckYVar == 44
          return 0x00005C37
        elseif ckYVar == 45
          return 0x00005C16
        elseif ckYVar == 46
          return 0x00005BF5
        elseif ckYVar == 47
          return 0x00005BD4
        elseif ckYVar == 48
          return 0x00005BB3
        elseif ckYVar == 49
          return 0x00005B92
        elseif ckYVar == 50
          return 0x00005B71
        endif
      elseif ckXVar == 44
        if ckYVar == -43
          return 0x00011302
        elseif ckYVar == -42
          return 0x000112E1
        elseif ckYVar == -41
          return 0x000112C0
        elseif ckYVar == -40
          return 0x0001129F
        elseif ckYVar == -39
          return 0x0001127E
        elseif ckYVar == -38
          return 0x0001125D
        elseif ckYVar == -37
          return 0x0001123C
        elseif ckYVar == -36
          return 0x0001121B
        elseif ckYVar == -35
          return 0x000111FA
        elseif ckYVar == -34
          return 0x000111D9
        elseif ckYVar == -33
          return 0x000111B8
        elseif ckYVar == -32
          return 0x0000BDCA
        elseif ckYVar == -31
          return 0x0000BDC9
        elseif ckYVar == -30
          return 0x0000BD94
        elseif ckYVar == -29
          return 0x0000BD73
        elseif ckYVar == -28
          return 0x0000BD52
        elseif ckYVar == -27
          return 0x0000BD31
        elseif ckYVar == -26
          return 0x0000BD10
        elseif ckYVar == -25
          return 0x0000BCEF
        elseif ckYVar == -24
          return 0x0000BCCE
        elseif ckYVar == -23
          return 0x0000BCAD
        elseif ckYVar == -22
          return 0x0000BC8C
        elseif ckYVar == -21
          return 0x0000BC6B
        elseif ckYVar == -20
          return 0x0000BC4A
        elseif ckYVar == -19
          return 0x0000BC29
        elseif ckYVar == -18
          return 0x0000BC08
        elseif ckYVar == -17
          return 0x0000BBE7
        elseif ckYVar == -16
          return 0x0000BBC6
        elseif ckYVar == -15
          return 0x0000BBA5
        elseif ckYVar == -14
          return 0x0000BB84
        elseif ckYVar == -13
          return 0x0000BB63
        elseif ckYVar == -12
          return 0x0000BB42
        elseif ckYVar == -11
          return 0x0000BB21
        elseif ckYVar == -10
          return 0x0000BB00
        elseif ckYVar == -9
          return 0x0000BADF
        elseif ckYVar == -8
          return 0x0000BABE
        elseif ckYVar == -7
          return 0x0000BA9D
        elseif ckYVar == -6
          return 0x0000BA7C
        elseif ckYVar == -5
          return 0x0000BA5B
        elseif ckYVar == -4
          return 0x0000BA3A
        elseif ckYVar == -3
          return 0x0000BA19
        elseif ckYVar == -2
          return 0x0000B9F8
        elseif ckYVar == -1
          return 0x0000B9D7
        elseif ckYVar == 0
          return 0x0000B9B6
        elseif ckYVar == 1
          return 0x0000B596
        elseif ckYVar == 2
          return 0x0000B575
        elseif ckYVar == 3
          return 0x0000B554
        elseif ckYVar == 4
          return 0x0000B533
        elseif ckYVar == 5
          return 0x0000B512
        elseif ckYVar == 6
          return 0x0000B4F1
        elseif ckYVar == 7
          return 0x0000B4D0
        elseif ckYVar == 8
          return 0x0000B4AF
        elseif ckYVar == 9
          return 0x0000B48E
        elseif ckYVar == 10
          return 0x0000B46D
        elseif ckYVar == 11
          return 0x0000B44C
        elseif ckYVar == 12
          return 0x0000B42B
        elseif ckYVar == 13
          return 0x0000B40A
        elseif ckYVar == 14
          return 0x0000B3E9
        elseif ckYVar == 15
          return 0x0000B3C8
        elseif ckYVar == 16
          return 0x0000B3A7
        elseif ckYVar == 17
          return 0x0000B386
        elseif ckYVar == 18
          return 0x0000B365
        elseif ckYVar == 19
          return 0x0000B344
        elseif ckYVar == 20
          return 0x0000B323
        elseif ckYVar == 21
          return 0x0000B302
        elseif ckYVar == 22
          return 0x0000B2E1
        elseif ckYVar == 23
          return 0x0000B2C0
        elseif ckYVar == 24
          return 0x0000B29F
        elseif ckYVar == 25
          return 0x0000B27E
        elseif ckYVar == 26
          return 0x0000B25D
        elseif ckYVar == 27
          return 0x0000B23C
        elseif ckYVar == 28
          return 0x0000B21B
        elseif ckYVar == 29
          return 0x0000B1FA
        elseif ckYVar == 30
          return 0x0000B1D9
        elseif ckYVar == 31
          return 0x0000B1B8
        elseif ckYVar == 32
          return 0x00005DB6
        elseif ckYVar == 33
          return 0x00005DB5
        elseif ckYVar == 34
          return 0x00005D80
        elseif ckYVar == 35
          return 0x00005D5F
        elseif ckYVar == 36
          return 0x00005D3E
        elseif ckYVar == 37
          return 0x00005D1D
        elseif ckYVar == 38
          return 0x00005CFC
        elseif ckYVar == 39
          return 0x00005CDB
        elseif ckYVar == 40
          return 0x00005CBA
        elseif ckYVar == 41
          return 0x00005C99
        elseif ckYVar == 42
          return 0x00005C78
        elseif ckYVar == 43
          return 0x00005C57
        elseif ckYVar == 44
          return 0x00005C36
        elseif ckYVar == 45
          return 0x00005C15
        elseif ckYVar == 46
          return 0x00005BF4
        elseif ckYVar == 47
          return 0x00005BD3
        elseif ckYVar == 48
          return 0x00005BB2
        elseif ckYVar == 49
          return 0x00005B91
        elseif ckYVar == 50
          return 0x00005B70
        endif
      elseif ckXVar == 45
        if ckYVar == -43
          return 0x00011301
        elseif ckYVar == -42
          return 0x000112E0
        elseif ckYVar == -41
          return 0x000112BF
        elseif ckYVar == -40
          return 0x0001129E
        elseif ckYVar == -39
          return 0x0001127D
        elseif ckYVar == -38
          return 0x0001125C
        elseif ckYVar == -37
          return 0x0001123B
        elseif ckYVar == -36
          return 0x0001121A
        elseif ckYVar == -35
          return 0x000111F9
        elseif ckYVar == -34
          return 0x000111D8
        elseif ckYVar == -33
          return 0x000111B7
        elseif ckYVar == -32
          return 0x0000BDC8
        elseif ckYVar == -31
          return 0x0000BDC7
        elseif ckYVar == -30
          return 0x0000BD93
        elseif ckYVar == -29
          return 0x0000BD72
        elseif ckYVar == -28
          return 0x0000BD51
        elseif ckYVar == -27
          return 0x0000BD30
        elseif ckYVar == -26
          return 0x0000BD0F
        elseif ckYVar == -25
          return 0x0000BCEE
        elseif ckYVar == -24
          return 0x0000BCCD
        elseif ckYVar == -23
          return 0x0000BCAC
        elseif ckYVar == -22
          return 0x0000BC8B
        elseif ckYVar == -21
          return 0x0000BC6A
        elseif ckYVar == -20
          return 0x0000BC49
        elseif ckYVar == -19
          return 0x0000BC28
        elseif ckYVar == -18
          return 0x0000BC07
        elseif ckYVar == -17
          return 0x0000BBE6
        elseif ckYVar == -16
          return 0x0000BBC5
        elseif ckYVar == -15
          return 0x0000BBA4
        elseif ckYVar == -14
          return 0x0000BB83
        elseif ckYVar == -13
          return 0x0000BB62
        elseif ckYVar == -12
          return 0x0000BB41
        elseif ckYVar == -11
          return 0x0000BB20
        elseif ckYVar == -10
          return 0x0000BAFF
        elseif ckYVar == -9
          return 0x0000BADE
        elseif ckYVar == -8
          return 0x0000BABD
        elseif ckYVar == -7
          return 0x0000BA9C
        elseif ckYVar == -6
          return 0x0000BA7B
        elseif ckYVar == -5
          return 0x0000BA5A
        elseif ckYVar == -4
          return 0x0000BA39
        elseif ckYVar == -3
          return 0x0000BA18
        elseif ckYVar == -2
          return 0x0000B9F7
        elseif ckYVar == -1
          return 0x0000B9D6
        elseif ckYVar == 0
          return 0x0000B9B5
        elseif ckYVar == 1
          return 0x0000B595
        elseif ckYVar == 2
          return 0x0000B574
        elseif ckYVar == 3
          return 0x0000B553
        elseif ckYVar == 4
          return 0x0000B532
        elseif ckYVar == 5
          return 0x0000B511
        elseif ckYVar == 6
          return 0x0000B4F0
        elseif ckYVar == 7
          return 0x0000B4CF
        elseif ckYVar == 8
          return 0x0000B4AE
        elseif ckYVar == 9
          return 0x0000B48D
        elseif ckYVar == 10
          return 0x0000B46C
        elseif ckYVar == 11
          return 0x0000B44B
        elseif ckYVar == 12
          return 0x0000B42A
        elseif ckYVar == 13
          return 0x0000B409
        elseif ckYVar == 14
          return 0x0000B3E8
        elseif ckYVar == 15
          return 0x0000B3C7
        elseif ckYVar == 16
          return 0x0000B3A6
        elseif ckYVar == 17
          return 0x0000B385
        elseif ckYVar == 18
          return 0x0000B364
        elseif ckYVar == 19
          return 0x0000B343
        elseif ckYVar == 20
          return 0x0000B322
        elseif ckYVar == 21
          return 0x0000B301
        elseif ckYVar == 22
          return 0x0000B2E0
        elseif ckYVar == 23
          return 0x0000B2BF
        elseif ckYVar == 24
          return 0x0000B29E
        elseif ckYVar == 25
          return 0x0000B27D
        elseif ckYVar == 26
          return 0x0000B25C
        elseif ckYVar == 27
          return 0x0000B23B
        elseif ckYVar == 28
          return 0x0000B21A
        elseif ckYVar == 29
          return 0x0000B1F9
        elseif ckYVar == 30
          return 0x0000B1D8
        elseif ckYVar == 31
          return 0x0000B1B7
        elseif ckYVar == 32
          return 0x00005DB4
        elseif ckYVar == 33
          return 0x00005DB3
        elseif ckYVar == 34
          return 0x00005D7F
        elseif ckYVar == 35
          return 0x00005D5E
        elseif ckYVar == 36
          return 0x00005D3D
        elseif ckYVar == 37
          return 0x00005D1C
        elseif ckYVar == 38
          return 0x00005CFB
        elseif ckYVar == 39
          return 0x00005CDA
        elseif ckYVar == 40
          return 0x00005CB9
        elseif ckYVar == 41
          return 0x00005C98
        elseif ckYVar == 42
          return 0x00005C77
        elseif ckYVar == 43
          return 0x00005C56
        elseif ckYVar == 44
          return 0x00005C35
        elseif ckYVar == 45
          return 0x00005C14
        elseif ckYVar == 46
          return 0x00005BF3
        elseif ckYVar == 47
          return 0x00005BD2
        elseif ckYVar == 48
          return 0x00005BB1
        elseif ckYVar == 49
          return 0x00005B90
        elseif ckYVar == 50
          return 0x00005B6F
        endif
      elseif ckXVar == 46
        if ckYVar == -43
          return 0x00011300
        elseif ckYVar == -42
          return 0x000112DF
        elseif ckYVar == -41
          return 0x000112BE
        elseif ckYVar == -40
          return 0x0001129D
        elseif ckYVar == -39
          return 0x0001127C
        elseif ckYVar == -38
          return 0x0001125B
        elseif ckYVar == -37
          return 0x0001123A
        elseif ckYVar == -36
          return 0x00011219
        elseif ckYVar == -35
          return 0x000111F8
        elseif ckYVar == -34
          return 0x000111D7
        elseif ckYVar == -33
          return 0x000111B6
        elseif ckYVar == -32
          return 0x0000BDC6
        elseif ckYVar == -31
          return 0x0000BDC5
        elseif ckYVar == -30
          return 0x0000BD92
        elseif ckYVar == -29
          return 0x0000BD71
        elseif ckYVar == -28
          return 0x0000BD50
        elseif ckYVar == -27
          return 0x0000BD2F
        elseif ckYVar == -26
          return 0x0000BD0E
        elseif ckYVar == -25
          return 0x0000BCED
        elseif ckYVar == -24
          return 0x0000BCCC
        elseif ckYVar == -23
          return 0x0000BCAB
        elseif ckYVar == -22
          return 0x0000BC8A
        elseif ckYVar == -21
          return 0x0000BC69
        elseif ckYVar == -20
          return 0x0000BC48
        elseif ckYVar == -19
          return 0x0000BC27
        elseif ckYVar == -18
          return 0x0000BC06
        elseif ckYVar == -17
          return 0x0000BBE5
        elseif ckYVar == -16
          return 0x0000BBC4
        elseif ckYVar == -15
          return 0x0000BBA3
        elseif ckYVar == -14
          return 0x0000BB82
        elseif ckYVar == -13
          return 0x0000BB61
        elseif ckYVar == -12
          return 0x0000BB40
        elseif ckYVar == -11
          return 0x0000BB1F
        elseif ckYVar == -10
          return 0x0000BAFE
        elseif ckYVar == -9
          return 0x0000BADD
        elseif ckYVar == -8
          return 0x0000BABC
        elseif ckYVar == -7
          return 0x0000BA9B
        elseif ckYVar == -6
          return 0x0000BA7A
        elseif ckYVar == -5
          return 0x0000BA59
        elseif ckYVar == -4
          return 0x0000BA38
        elseif ckYVar == -3
          return 0x0000BA17
        elseif ckYVar == -2
          return 0x0000B9F6
        elseif ckYVar == -1
          return 0x0000B9D5
        elseif ckYVar == 0
          return 0x0000B9B4
        elseif ckYVar == 1
          return 0x0000B594
        elseif ckYVar == 2
          return 0x0000B573
        elseif ckYVar == 3
          return 0x0000B552
        elseif ckYVar == 4
          return 0x0000B531
        elseif ckYVar == 5
          return 0x0000B510
        elseif ckYVar == 6
          return 0x0000B4EF
        elseif ckYVar == 7
          return 0x0000B4CE
        elseif ckYVar == 8
          return 0x0000B4AD
        elseif ckYVar == 9
          return 0x0000B48C
        elseif ckYVar == 10
          return 0x0000B46B
        elseif ckYVar == 11
          return 0x0000B44A
        elseif ckYVar == 12
          return 0x0000B429
        elseif ckYVar == 13
          return 0x0000B408
        elseif ckYVar == 14
          return 0x0000B3E7
        elseif ckYVar == 15
          return 0x0000B3C6
        elseif ckYVar == 16
          return 0x0000B3A5
        elseif ckYVar == 17
          return 0x0000B384
        elseif ckYVar == 18
          return 0x0000B363
        elseif ckYVar == 19
          return 0x0000B342
        elseif ckYVar == 20
          return 0x0000B321
        elseif ckYVar == 21
          return 0x0000B300
        elseif ckYVar == 22
          return 0x0000B2DF
        elseif ckYVar == 23
          return 0x0000B2BE
        elseif ckYVar == 24
          return 0x0000B29D
        elseif ckYVar == 25
          return 0x0000B27C
        elseif ckYVar == 26
          return 0x0000B25B
        elseif ckYVar == 27
          return 0x0000B23A
        elseif ckYVar == 28
          return 0x0000B219
        elseif ckYVar == 29
          return 0x0000B1F8
        elseif ckYVar == 30
          return 0x0000B1D7
        elseif ckYVar == 31
          return 0x0000B1B6
        elseif ckYVar == 32
          return 0x00005DB2
        elseif ckYVar == 33
          return 0x00005DB1
        elseif ckYVar == 34
          return 0x00005D7E
        elseif ckYVar == 35
          return 0x00005D5D
        elseif ckYVar == 36
          return 0x00005D3C
        elseif ckYVar == 37
          return 0x00005D1B
        elseif ckYVar == 38
          return 0x00005CFA
        elseif ckYVar == 39
          return 0x00005CD9
        elseif ckYVar == 40
          return 0x00005CB8
        elseif ckYVar == 41
          return 0x00005C97
        elseif ckYVar == 42
          return 0x00005C76
        elseif ckYVar == 43
          return 0x00005C55
        elseif ckYVar == 44
          return 0x00005C34
        elseif ckYVar == 45
          return 0x00005C13
        elseif ckYVar == 46
          return 0x00005BF2
        elseif ckYVar == 47
          return 0x00005BD1
        elseif ckYVar == 48
          return 0x00005BB0
        elseif ckYVar == 49
          return 0x00005B8F
        elseif ckYVar == 50
          return 0x00005B6E
        endif
      elseif ckXVar == 47
        if ckYVar == -43
          return 0x000112FF
        elseif ckYVar == -42
          return 0x000112DE
        elseif ckYVar == -41
          return 0x000112BD
        elseif ckYVar == -40
          return 0x0001129C
        elseif ckYVar == -39
          return 0x0001127B
        elseif ckYVar == -38
          return 0x0001125A
        elseif ckYVar == -37
          return 0x00011239
        elseif ckYVar == -36
          return 0x00011218
        elseif ckYVar == -35
          return 0x000111F7
        elseif ckYVar == -34
          return 0x000111D6
        elseif ckYVar == -33
          return 0x000111B5
        elseif ckYVar == -32
          return 0x0000BDC4
        elseif ckYVar == -31
          return 0x0000BDC3
        elseif ckYVar == -30
          return 0x0000BD91
        elseif ckYVar == -29
          return 0x0000BD70
        elseif ckYVar == -28
          return 0x0000BD4F
        elseif ckYVar == -27
          return 0x0000BD2E
        elseif ckYVar == -26
          return 0x0000BD0D
        elseif ckYVar == -25
          return 0x0000BCEC
        elseif ckYVar == -24
          return 0x0000BCCB
        elseif ckYVar == -23
          return 0x0000BCAA
        elseif ckYVar == -22
          return 0x0000BC89
        elseif ckYVar == -21
          return 0x0000BC68
        elseif ckYVar == -20
          return 0x0000BC47
        elseif ckYVar == -19
          return 0x0000BC26
        elseif ckYVar == -18
          return 0x0000BC05
        elseif ckYVar == -17
          return 0x0000BBE4
        elseif ckYVar == -16
          return 0x0000BBC3
        elseif ckYVar == -15
          return 0x0000BBA2
        elseif ckYVar == -14
          return 0x0000BB81
        elseif ckYVar == -13
          return 0x0000BB60
        elseif ckYVar == -12
          return 0x0000BB3F
        elseif ckYVar == -11
          return 0x0000BB1E
        elseif ckYVar == -10
          return 0x0000BAFD
        elseif ckYVar == -9
          return 0x0000BADC
        elseif ckYVar == -8
          return 0x0000BABB
        elseif ckYVar == -7
          return 0x0000BA9A
        elseif ckYVar == -6
          return 0x0000BA79
        elseif ckYVar == -5
          return 0x0000BA58
        elseif ckYVar == -4
          return 0x0000BA37
        elseif ckYVar == -3
          return 0x0000BA16
        elseif ckYVar == -2
          return 0x0000B9F5
        elseif ckYVar == -1
          return 0x0000B9D4
        elseif ckYVar == 0
          return 0x0000B9B3
        elseif ckYVar == 1
          return 0x0000B593
        elseif ckYVar == 2
          return 0x0000B572
        elseif ckYVar == 3
          return 0x0000B551
        elseif ckYVar == 4
          return 0x0000B530
        elseif ckYVar == 5
          return 0x0000B50F
        elseif ckYVar == 6
          return 0x0000B4EE
        elseif ckYVar == 7
          return 0x0000B4CD
        elseif ckYVar == 8
          return 0x0000B4AC
        elseif ckYVar == 9
          return 0x0000B48B
        elseif ckYVar == 10
          return 0x0000B46A
        elseif ckYVar == 11
          return 0x0000B449
        elseif ckYVar == 12
          return 0x0000B428
        elseif ckYVar == 13
          return 0x0000B407
        elseif ckYVar == 14
          return 0x0000B3E6
        elseif ckYVar == 15
          return 0x0000B3C5
        elseif ckYVar == 16
          return 0x0000B3A4
        elseif ckYVar == 17
          return 0x0000B383
        elseif ckYVar == 18
          return 0x0000B362
        elseif ckYVar == 19
          return 0x0000B341
        elseif ckYVar == 20
          return 0x0000B320
        elseif ckYVar == 21
          return 0x0000B2FF
        elseif ckYVar == 22
          return 0x0000B2DE
        elseif ckYVar == 23
          return 0x0000B2BD
        elseif ckYVar == 24
          return 0x0000B29C
        elseif ckYVar == 25
          return 0x0000B27B
        elseif ckYVar == 26
          return 0x0000B25A
        elseif ckYVar == 27
          return 0x0000B239
        elseif ckYVar == 28
          return 0x0000B218
        elseif ckYVar == 29
          return 0x0000B1F7
        elseif ckYVar == 30
          return 0x0000B1D6
        elseif ckYVar == 31
          return 0x0000B1B5
        elseif ckYVar == 32
          return 0x00005DB0
        elseif ckYVar == 33
          return 0x00005DAF
        elseif ckYVar == 34
          return 0x00005D7D
        elseif ckYVar == 35
          return 0x00005D5C
        elseif ckYVar == 36
          return 0x00005D3B
        elseif ckYVar == 37
          return 0x00005D1A
        elseif ckYVar == 38
          return 0x00005CF9
        elseif ckYVar == 39
          return 0x00005CD8
        elseif ckYVar == 40
          return 0x00005CB7
        elseif ckYVar == 41
          return 0x00005C96
        elseif ckYVar == 42
          return 0x00005C75
        elseif ckYVar == 43
          return 0x00005C54
        elseif ckYVar == 44
          return 0x00005C33
        elseif ckYVar == 45
          return 0x00005C12
        elseif ckYVar == 46
          return 0x00005BF1
        elseif ckYVar == 47
          return 0x00005BD0
        elseif ckYVar == 48
          return 0x00005BAF
        elseif ckYVar == 49
          return 0x00005B8E
        elseif ckYVar == 50
          return 0x00005B6D
        endif
      elseif ckXVar == 48
        if ckYVar == -43
          return 0x000112FE
        elseif ckYVar == -42
          return 0x000112DD
        elseif ckYVar == -41
          return 0x000112BC
        elseif ckYVar == -40
          return 0x0001129B
        elseif ckYVar == -39
          return 0x0001127A
        elseif ckYVar == -38
          return 0x00011259
        elseif ckYVar == -37
          return 0x00011238
        elseif ckYVar == -36
          return 0x00011217
        elseif ckYVar == -35
          return 0x000111F6
        elseif ckYVar == -34
          return 0x000111D5
        elseif ckYVar == -33
          return 0x000111B4
        elseif ckYVar == -32
          return 0x0000BDC2
        elseif ckYVar == -31
          return 0x0000BDC1
        elseif ckYVar == -30
          return 0x0000BD90
        elseif ckYVar == -29
          return 0x0000BD6F
        elseif ckYVar == -28
          return 0x0000BD4E
        elseif ckYVar == -27
          return 0x0000BD2D
        elseif ckYVar == -26
          return 0x0000BD0C
        elseif ckYVar == -25
          return 0x0000BCEB
        elseif ckYVar == -24
          return 0x0000BCCA
        elseif ckYVar == -23
          return 0x0000BCA9
        elseif ckYVar == -22
          return 0x0000BC88
        elseif ckYVar == -21
          return 0x0000BC67
        elseif ckYVar == -20
          return 0x0000BC46
        elseif ckYVar == -19
          return 0x0000BC25
        elseif ckYVar == -18
          return 0x0000BC04
        elseif ckYVar == -17
          return 0x0000BBE3
        elseif ckYVar == -16
          return 0x0000BBC2
        elseif ckYVar == -15
          return 0x0000BBA1
        elseif ckYVar == -14
          return 0x0000BB80
        elseif ckYVar == -13
          return 0x0000BB5F
        elseif ckYVar == -12
          return 0x0000BB3E
        elseif ckYVar == -11
          return 0x0000BB1D
        elseif ckYVar == -10
          return 0x0000BAFC
        elseif ckYVar == -9
          return 0x0000BADB
        elseif ckYVar == -8
          return 0x0000BABA
        elseif ckYVar == -7
          return 0x0000BA99
        elseif ckYVar == -6
          return 0x0000BA78
        elseif ckYVar == -5
          return 0x0000BA57
        elseif ckYVar == -4
          return 0x0000BA36
        elseif ckYVar == -3
          return 0x0000BA15
        elseif ckYVar == -2
          return 0x0000B9F4
        elseif ckYVar == -1
          return 0x0000B9D3
        elseif ckYVar == 0
          return 0x0000B9B2
        elseif ckYVar == 1
          return 0x0000B592
        elseif ckYVar == 2
          return 0x0000B571
        elseif ckYVar == 3
          return 0x0000B550
        elseif ckYVar == 4
          return 0x0000B52F
        elseif ckYVar == 5
          return 0x0000B50E
        elseif ckYVar == 6
          return 0x0000B4ED
        elseif ckYVar == 7
          return 0x0000B4CC
        elseif ckYVar == 8
          return 0x0000B4AB
        elseif ckYVar == 9
          return 0x0000B48A
        elseif ckYVar == 10
          return 0x0000B469
        elseif ckYVar == 11
          return 0x0000B448
        elseif ckYVar == 12
          return 0x0000B427
        elseif ckYVar == 13
          return 0x0000B406
        elseif ckYVar == 14
          return 0x0000B3E5
        elseif ckYVar == 15
          return 0x0000B3C4
        elseif ckYVar == 16
          return 0x0000B3A3
        elseif ckYVar == 17
          return 0x0000B382
        elseif ckYVar == 18
          return 0x0000B361
        elseif ckYVar == 19
          return 0x0000B340
        elseif ckYVar == 20
          return 0x0000B31F
        elseif ckYVar == 21
          return 0x0000B2FE
        elseif ckYVar == 22
          return 0x0000B2DD
        elseif ckYVar == 23
          return 0x0000B2BC
        elseif ckYVar == 24
          return 0x0000B29B
        elseif ckYVar == 25
          return 0x0000B27A
        elseif ckYVar == 26
          return 0x0000B259
        elseif ckYVar == 27
          return 0x0000B238
        elseif ckYVar == 28
          return 0x0000B217
        elseif ckYVar == 29
          return 0x0000B1F6
        elseif ckYVar == 30
          return 0x0000B1D5
        elseif ckYVar == 31
          return 0x0000B1B4
        elseif ckYVar == 32
          return 0x00005DAE
        elseif ckYVar == 33
          return 0x00005DAD
        elseif ckYVar == 34
          return 0x00005D7C
        elseif ckYVar == 35
          return 0x00005D5B
        elseif ckYVar == 36
          return 0x00005D3A
        elseif ckYVar == 37
          return 0x00005D19
        elseif ckYVar == 38
          return 0x00005CF8
        elseif ckYVar == 39
          return 0x00005CD7
        elseif ckYVar == 40
          return 0x00005CB6
        elseif ckYVar == 41
          return 0x00005C95
        elseif ckYVar == 42
          return 0x00005C74
        elseif ckYVar == 43
          return 0x00005C53
        elseif ckYVar == 44
          return 0x00005C32
        elseif ckYVar == 45
          return 0x00005C11
        elseif ckYVar == 46
          return 0x00005BF0
        elseif ckYVar == 47
          return 0x00005BCF
        elseif ckYVar == 48
          return 0x00005BAE
        elseif ckYVar == 49
          return 0x00005B8D
        elseif ckYVar == 50
          return 0x00005B6C
        endif
      elseif ckXVar == 49
        if ckYVar == -43
          return 0x000112FD
        elseif ckYVar == -42
          return 0x000112DC
        elseif ckYVar == -41
          return 0x000112BB
        elseif ckYVar == -40
          return 0x0001129A
        elseif ckYVar == -39
          return 0x00011279
        elseif ckYVar == -38
          return 0x00011258
        elseif ckYVar == -37
          return 0x00011237
        elseif ckYVar == -36
          return 0x00011216
        elseif ckYVar == -35
          return 0x000111F5
        elseif ckYVar == -34
          return 0x000111D4
        elseif ckYVar == -33
          return 0x000111B3
        elseif ckYVar == -32
          return 0x0000BDC0
        elseif ckYVar == -31
          return 0x0000BDBF
        elseif ckYVar == -30
          return 0x0000BD8F
        elseif ckYVar == -29
          return 0x0000BD6E
        elseif ckYVar == -28
          return 0x0000BD4D
        elseif ckYVar == -27
          return 0x0000BD2C
        elseif ckYVar == -26
          return 0x0000BD0B
        elseif ckYVar == -25
          return 0x0000BCEA
        elseif ckYVar == -24
          return 0x0000BCC9
        elseif ckYVar == -23
          return 0x0000BCA8
        elseif ckYVar == -22
          return 0x0000BC87
        elseif ckYVar == -21
          return 0x0000BC66
        elseif ckYVar == -20
          return 0x0000BC45
        elseif ckYVar == -19
          return 0x0000BC24
        elseif ckYVar == -18
          return 0x0000BC03
        elseif ckYVar == -17
          return 0x0000BBE2
        elseif ckYVar == -16
          return 0x0000BBC1
        elseif ckYVar == -15
          return 0x0000BBA0
        elseif ckYVar == -14
          return 0x0000BB7F
        elseif ckYVar == -13
          return 0x0000BB5E
        elseif ckYVar == -12
          return 0x0000BB3D
        elseif ckYVar == -11
          return 0x0000BB1C
        elseif ckYVar == -10
          return 0x0000BAFB
        elseif ckYVar == -9
          return 0x0000BADA
        elseif ckYVar == -8
          return 0x0000BAB9
        elseif ckYVar == -7
          return 0x0000BA98
        elseif ckYVar == -6
          return 0x0000BA77
        elseif ckYVar == -5
          return 0x0000BA56
        elseif ckYVar == -4
          return 0x0000BA35
        elseif ckYVar == -3
          return 0x0000BA14
        elseif ckYVar == -2
          return 0x0000B9F3
        elseif ckYVar == -1
          return 0x0000B9D2
        elseif ckYVar == 0
          return 0x0000B9B1
        elseif ckYVar == 1
          return 0x0000B591
        elseif ckYVar == 2
          return 0x0000B570
        elseif ckYVar == 3
          return 0x0000B54F
        elseif ckYVar == 4
          return 0x0000B52E
        elseif ckYVar == 5
          return 0x0000B50D
        elseif ckYVar == 6
          return 0x0000B4EC
        elseif ckYVar == 7
          return 0x0000B4CB
        elseif ckYVar == 8
          return 0x0000B4AA
        elseif ckYVar == 9
          return 0x0000B489
        elseif ckYVar == 10
          return 0x0000B468
        elseif ckYVar == 11
          return 0x0000B447
        elseif ckYVar == 12
          return 0x0000B426
        elseif ckYVar == 13
          return 0x0000B405
        elseif ckYVar == 14
          return 0x0000B3E4
        elseif ckYVar == 15
          return 0x0000B3C3
        elseif ckYVar == 16
          return 0x0000B3A2
        elseif ckYVar == 17
          return 0x0000B381
        elseif ckYVar == 18
          return 0x0000B360
        elseif ckYVar == 19
          return 0x0000B33F
        elseif ckYVar == 20
          return 0x0000B31E
        elseif ckYVar == 21
          return 0x0000B2FD
        elseif ckYVar == 22
          return 0x0000B2DC
        elseif ckYVar == 23
          return 0x0000B2BB
        elseif ckYVar == 24
          return 0x0000B29A
        elseif ckYVar == 25
          return 0x0000B279
        elseif ckYVar == 26
          return 0x0000B258
        elseif ckYVar == 27
          return 0x0000B237
        elseif ckYVar == 28
          return 0x0000B216
        elseif ckYVar == 29
          return 0x0000B1F5
        elseif ckYVar == 30
          return 0x0000B1D4
        elseif ckYVar == 31
          return 0x0000B1B3
        elseif ckYVar == 32
          return 0x00005DAC
        elseif ckYVar == 33
          return 0x00005DAB
        elseif ckYVar == 34
          return 0x00005D7B
        elseif ckYVar == 35
          return 0x00005D5A
        elseif ckYVar == 36
          return 0x00005D39
        elseif ckYVar == 37
          return 0x00005D18
        elseif ckYVar == 38
          return 0x00005CF7
        elseif ckYVar == 39
          return 0x00005CD6
        elseif ckYVar == 40
          return 0x00005CB5
        elseif ckYVar == 41
          return 0x00005C94
        elseif ckYVar == 42
          return 0x00005C73
        elseif ckYVar == 43
          return 0x00005C52
        elseif ckYVar == 44
          return 0x00005C31
        elseif ckYVar == 45
          return 0x00005C10
        elseif ckYVar == 46
          return 0x00005BEF
        elseif ckYVar == 47
          return 0x00005BCE
        elseif ckYVar == 48
          return 0x00005BAD
        elseif ckYVar == 49
          return 0x00005B8C
        elseif ckYVar == 50
          return 0x00005B6B
        endif
      endif
    elseif ckXVar < 60
      if ckXVar == 50
        if ckYVar == -43
          return 0x000112FC
        elseif ckYVar == -42
          return 0x000112DB
        elseif ckYVar == -41
          return 0x000112BA
        elseif ckYVar == -40
          return 0x00011299
        elseif ckYVar == -39
          return 0x00011278
        elseif ckYVar == -38
          return 0x00011257
        elseif ckYVar == -37
          return 0x00011236
        elseif ckYVar == -36
          return 0x00011215
        elseif ckYVar == -35
          return 0x000111F4
        elseif ckYVar == -34
          return 0x000111D3
        elseif ckYVar == -33
          return 0x000111B2
        elseif ckYVar == -32
          return 0x0000BDBE
        elseif ckYVar == -31
          return 0x0000BDBD
        elseif ckYVar == -30
          return 0x0000BD8E
        elseif ckYVar == -29
          return 0x0000BD6D
        elseif ckYVar == -28
          return 0x0000BD4C
        elseif ckYVar == -27
          return 0x0000BD2B
        elseif ckYVar == -26
          return 0x0000BD0A
        elseif ckYVar == -25
          return 0x0000BCE9
        elseif ckYVar == -24
          return 0x0000BCC8
        elseif ckYVar == -23
          return 0x0000BCA7
        elseif ckYVar == -22
          return 0x0000BC86
        elseif ckYVar == -21
          return 0x0000BC65
        elseif ckYVar == -20
          return 0x0000BC44
        elseif ckYVar == -19
          return 0x0000BC23
        elseif ckYVar == -18
          return 0x0000BC02
        elseif ckYVar == -17
          return 0x0000BBE1
        elseif ckYVar == -16
          return 0x0000BBC0
        elseif ckYVar == -15
          return 0x0000BB9F
        elseif ckYVar == -14
          return 0x0000BB7E
        elseif ckYVar == -13
          return 0x0000BB5D
        elseif ckYVar == -12
          return 0x0000BB3C
        elseif ckYVar == -11
          return 0x0000BB1B
        elseif ckYVar == -10
          return 0x0000BAFA
        elseif ckYVar == -9
          return 0x0000BAD9
        elseif ckYVar == -8
          return 0x0000BAB8
        elseif ckYVar == -7
          return 0x0000BA97
        elseif ckYVar == -6
          return 0x0000BA76
        elseif ckYVar == -5
          return 0x0000BA55
        elseif ckYVar == -4
          return 0x0000BA34
        elseif ckYVar == -3
          return 0x0000BA13
        elseif ckYVar == -2
          return 0x0000B9F2
        elseif ckYVar == -1
          return 0x0000B9D1
        elseif ckYVar == 0
          return 0x0000B9B0
        elseif ckYVar == 1
          return 0x0000B590
        elseif ckYVar == 2
          return 0x0000B56F
        elseif ckYVar == 3
          return 0x0000B54E
        elseif ckYVar == 4
          return 0x0000B52D
        elseif ckYVar == 5
          return 0x0000B50C
        elseif ckYVar == 6
          return 0x0000B4EB
        elseif ckYVar == 7
          return 0x0000B4CA
        elseif ckYVar == 8
          return 0x0000B4A9
        elseif ckYVar == 9
          return 0x0000B488
        elseif ckYVar == 10
          return 0x0000B467
        elseif ckYVar == 11
          return 0x0000B446
        elseif ckYVar == 12
          return 0x0000B425
        elseif ckYVar == 13
          return 0x0000B404
        elseif ckYVar == 14
          return 0x0000B3E3
        elseif ckYVar == 15
          return 0x0000B3C2
        elseif ckYVar == 16
          return 0x0000B3A1
        elseif ckYVar == 17
          return 0x0000B380
        elseif ckYVar == 18
          return 0x0000B35F
        elseif ckYVar == 19
          return 0x0000B33E
        elseif ckYVar == 20
          return 0x0000B31D
        elseif ckYVar == 21
          return 0x0000B2FC
        elseif ckYVar == 22
          return 0x0000B2DB
        elseif ckYVar == 23
          return 0x0000B2BA
        elseif ckYVar == 24
          return 0x0000B299
        elseif ckYVar == 25
          return 0x0000B278
        elseif ckYVar == 26
          return 0x0000B257
        elseif ckYVar == 27
          return 0x0000B236
        elseif ckYVar == 28
          return 0x0000B215
        elseif ckYVar == 29
          return 0x0000B1F4
        elseif ckYVar == 30
          return 0x0000B1D3
        elseif ckYVar == 31
          return 0x0000B1B2
        elseif ckYVar == 32
          return 0x00005DAA
        elseif ckYVar == 33
          return 0x00005DA9
        elseif ckYVar == 34
          return 0x00005D7A
        elseif ckYVar == 35
          return 0x00005D59
        elseif ckYVar == 36
          return 0x00005D38
        elseif ckYVar == 37
          return 0x00005D17
        elseif ckYVar == 38
          return 0x00005CF6
        elseif ckYVar == 39
          return 0x00005CD5
        elseif ckYVar == 40
          return 0x00005CB4
        elseif ckYVar == 41
          return 0x00005C93
        elseif ckYVar == 42
          return 0x00005C72
        elseif ckYVar == 43
          return 0x00005C51
        elseif ckYVar == 44
          return 0x00005C30
        elseif ckYVar == 45
          return 0x00005C0F
        elseif ckYVar == 46
          return 0x00005BEE
        elseif ckYVar == 47
          return 0x00005BCD
        elseif ckYVar == 48
          return 0x00005BAC
        elseif ckYVar == 49
          return 0x00005B8B
        elseif ckYVar == 50
          return 0x00005B6A
        endif
      elseif ckXVar == 51
        if ckYVar == -43
          return 0x000112FB
        elseif ckYVar == -42
          return 0x000112DA
        elseif ckYVar == -41
          return 0x000112B9
        elseif ckYVar == -40
          return 0x00011298
        elseif ckYVar == -39
          return 0x00011277
        elseif ckYVar == -38
          return 0x00011256
        elseif ckYVar == -37
          return 0x00011235
        elseif ckYVar == -36
          return 0x00011214
        elseif ckYVar == -35
          return 0x000111F3
        elseif ckYVar == -34
          return 0x000111D2
        elseif ckYVar == -33
          return 0x000111B1
        elseif ckYVar == -32
          return 0x0000BDBC
        elseif ckYVar == -31
          return 0x0000BDBB
        elseif ckYVar == -30
          return 0x0000BD8D
        elseif ckYVar == -29
          return 0x0000BD6C
        elseif ckYVar == -28
          return 0x0000BD4B
        elseif ckYVar == -27
          return 0x0000BD2A
        elseif ckYVar == -26
          return 0x0000BD09
        elseif ckYVar == -25
          return 0x0000BCE8
        elseif ckYVar == -24
          return 0x0000BCC7
        elseif ckYVar == -23
          return 0x0000BCA6
        elseif ckYVar == -22
          return 0x0000BC85
        elseif ckYVar == -21
          return 0x0000BC64
        elseif ckYVar == -20
          return 0x0000BC43
        elseif ckYVar == -19
          return 0x0000BC22
        elseif ckYVar == -18
          return 0x0000BC01
        elseif ckYVar == -17
          return 0x0000BBE0
        elseif ckYVar == -16
          return 0x0000BBBF
        elseif ckYVar == -15
          return 0x0000BB9E
        elseif ckYVar == -14
          return 0x0000BB7D
        elseif ckYVar == -13
          return 0x0000BB5C
        elseif ckYVar == -12
          return 0x0000BB3B
        elseif ckYVar == -11
          return 0x0000BB1A
        elseif ckYVar == -10
          return 0x0000BAF9
        elseif ckYVar == -9
          return 0x0000BAD8
        elseif ckYVar == -8
          return 0x0000BAB7
        elseif ckYVar == -7
          return 0x0000BA96
        elseif ckYVar == -6
          return 0x0000BA75
        elseif ckYVar == -5
          return 0x0000BA54
        elseif ckYVar == -4
          return 0x0000BA33
        elseif ckYVar == -3
          return 0x0000BA12
        elseif ckYVar == -2
          return 0x0000B9F1
        elseif ckYVar == -1
          return 0x0000B9D0
        elseif ckYVar == 0
          return 0x0000B9AF
        elseif ckYVar == 1
          return 0x0000B58F
        elseif ckYVar == 2
          return 0x0000B56E
        elseif ckYVar == 3
          return 0x0000B54D
        elseif ckYVar == 4
          return 0x0000B52C
        elseif ckYVar == 5
          return 0x0000B50B
        elseif ckYVar == 6
          return 0x0000B4EA
        elseif ckYVar == 7
          return 0x0000B4C9
        elseif ckYVar == 8
          return 0x0000B4A8
        elseif ckYVar == 9
          return 0x0000B487
        elseif ckYVar == 10
          return 0x0000B466
        elseif ckYVar == 11
          return 0x0000B445
        elseif ckYVar == 12
          return 0x0000B424
        elseif ckYVar == 13
          return 0x0000B403
        elseif ckYVar == 14
          return 0x0000B3E2
        elseif ckYVar == 15
          return 0x0000B3C1
        elseif ckYVar == 16
          return 0x0000B3A0
        elseif ckYVar == 17
          return 0x0000B37F
        elseif ckYVar == 18
          return 0x0000B35E
        elseif ckYVar == 19
          return 0x0000B33D
        elseif ckYVar == 20
          return 0x0000B31C
        elseif ckYVar == 21
          return 0x0000B2FB
        elseif ckYVar == 22
          return 0x0000B2DA
        elseif ckYVar == 23
          return 0x0000B2B9
        elseif ckYVar == 24
          return 0x0000B298
        elseif ckYVar == 25
          return 0x0000B277
        elseif ckYVar == 26
          return 0x0000B256
        elseif ckYVar == 27
          return 0x0000B235
        elseif ckYVar == 28
          return 0x0000B214
        elseif ckYVar == 29
          return 0x0000B1F3
        elseif ckYVar == 30
          return 0x0000B1D2
        elseif ckYVar == 31
          return 0x0000B1B1
        elseif ckYVar == 32
          return 0x00005DA8
        elseif ckYVar == 33
          return 0x00005DA7
        elseif ckYVar == 34
          return 0x00005D79
        elseif ckYVar == 35
          return 0x00005D58
        elseif ckYVar == 36
          return 0x00005D37
        elseif ckYVar == 37
          return 0x00005D16
        elseif ckYVar == 38
          return 0x00005CF5
        elseif ckYVar == 39
          return 0x00005CD4
        elseif ckYVar == 40
          return 0x00005CB3
        elseif ckYVar == 41
          return 0x00005C92
        elseif ckYVar == 42
          return 0x00005C71
        elseif ckYVar == 43
          return 0x00005C50
        elseif ckYVar == 44
          return 0x00005C2F
        elseif ckYVar == 45
          return 0x00005C0E
        elseif ckYVar == 46
          return 0x00005BED
        elseif ckYVar == 47
          return 0x00005BCC
        elseif ckYVar == 48
          return 0x00005BAB
        elseif ckYVar == 49
          return 0x00005B8A
        elseif ckYVar == 50
          return 0x00005B69
        endif
      elseif ckXVar == 52
        if ckYVar == -43
          return 0x000112FA
        elseif ckYVar == -42
          return 0x000112D9
        elseif ckYVar == -41
          return 0x000112B8
        elseif ckYVar == -40
          return 0x00011297
        elseif ckYVar == -39
          return 0x00011276
        elseif ckYVar == -38
          return 0x00011255
        elseif ckYVar == -37
          return 0x00011234
        elseif ckYVar == -36
          return 0x00011213
        elseif ckYVar == -35
          return 0x000111F2
        elseif ckYVar == -34
          return 0x000111D1
        elseif ckYVar == -33
          return 0x000111B0
        elseif ckYVar == -32
          return 0x0000BDBA
        elseif ckYVar == -31
          return 0x0000BDB9
        elseif ckYVar == -30
          return 0x0000BD8C
        elseif ckYVar == -29
          return 0x0000BD6B
        elseif ckYVar == -28
          return 0x0000BD4A
        elseif ckYVar == -27
          return 0x0000BD29
        elseif ckYVar == -26
          return 0x0000BD08
        elseif ckYVar == -25
          return 0x0000BCE7
        elseif ckYVar == -24
          return 0x0000BCC6
        elseif ckYVar == -23
          return 0x0000BCA5
        elseif ckYVar == -22
          return 0x0000BC84
        elseif ckYVar == -21
          return 0x0000BC63
        elseif ckYVar == -20
          return 0x0000BC42
        elseif ckYVar == -19
          return 0x0000BC21
        elseif ckYVar == -18
          return 0x0000BC00
        elseif ckYVar == -17
          return 0x0000BBDF
        elseif ckYVar == -16
          return 0x0000BBBE
        elseif ckYVar == -15
          return 0x0000BB9D
        elseif ckYVar == -14
          return 0x0000BB7C
        elseif ckYVar == -13
          return 0x0000BB5B
        elseif ckYVar == -12
          return 0x0000BB3A
        elseif ckYVar == -11
          return 0x0000BB19
        elseif ckYVar == -10
          return 0x0000BAF8
        elseif ckYVar == -9
          return 0x0000BAD7
        elseif ckYVar == -8
          return 0x0000BAB6
        elseif ckYVar == -7
          return 0x0000BA95
        elseif ckYVar == -6
          return 0x0000BA74
        elseif ckYVar == -5
          return 0x0000BA53
        elseif ckYVar == -4
          return 0x0000BA32
        elseif ckYVar == -3
          return 0x0000BA11
        elseif ckYVar == -2
          return 0x0000B9F0
        elseif ckYVar == -1
          return 0x0000B9CF
        elseif ckYVar == 0
          return 0x0000B9AE
        elseif ckYVar == 1
          return 0x0000B58E
        elseif ckYVar == 2
          return 0x0000B56D
        elseif ckYVar == 3
          return 0x0000B54C
        elseif ckYVar == 4
          return 0x0000B52B
        elseif ckYVar == 5
          return 0x0000B50A
        elseif ckYVar == 6
          return 0x0000B4E9
        elseif ckYVar == 7
          return 0x0000B4C8
        elseif ckYVar == 8
          return 0x0000B4A7
        elseif ckYVar == 9
          return 0x0000B486
        elseif ckYVar == 10
          return 0x0000B465
        elseif ckYVar == 11
          return 0x0000B444
        elseif ckYVar == 12
          return 0x0000B423
        elseif ckYVar == 13
          return 0x0000B402
        elseif ckYVar == 14
          return 0x0000B3E1
        elseif ckYVar == 15
          return 0x0000B3C0
        elseif ckYVar == 16
          return 0x0000B39F
        elseif ckYVar == 17
          return 0x0000B37E
        elseif ckYVar == 18
          return 0x0000B35D
        elseif ckYVar == 19
          return 0x0000B33C
        elseif ckYVar == 20
          return 0x0000B31B
        elseif ckYVar == 21
          return 0x0000B2FA
        elseif ckYVar == 22
          return 0x0000B2D9
        elseif ckYVar == 23
          return 0x0000B2B8
        elseif ckYVar == 24
          return 0x0000B297
        elseif ckYVar == 25
          return 0x0000B276
        elseif ckYVar == 26
          return 0x0000B255
        elseif ckYVar == 27
          return 0x0000B234
        elseif ckYVar == 28
          return 0x0000B213
        elseif ckYVar == 29
          return 0x0000B1F2
        elseif ckYVar == 30
          return 0x0000B1D1
        elseif ckYVar == 31
          return 0x0000B1B0
        elseif ckYVar == 32
          return 0x00005DA6
        elseif ckYVar == 33
          return 0x00005DA5
        elseif ckYVar == 34
          return 0x00005D78
        elseif ckYVar == 35
          return 0x00005D57
        elseif ckYVar == 36
          return 0x00005D36
        elseif ckYVar == 37
          return 0x00005D15
        elseif ckYVar == 38
          return 0x00005CF4
        elseif ckYVar == 39
          return 0x00005CD3
        elseif ckYVar == 40
          return 0x00005CB2
        elseif ckYVar == 41
          return 0x00005C91
        elseif ckYVar == 42
          return 0x00005C70
        elseif ckYVar == 43
          return 0x00005C4F
        elseif ckYVar == 44
          return 0x00005C2E
        elseif ckYVar == 45
          return 0x00005C0D
        elseif ckYVar == 46
          return 0x00005BEC
        elseif ckYVar == 47
          return 0x00005BCB
        elseif ckYVar == 48
          return 0x00005BAA
        elseif ckYVar == 49
          return 0x00005B89
        elseif ckYVar == 50
          return 0x00005B68
        endif
      elseif ckXVar == 53
        if ckYVar == -43
          return 0x000112F9
        elseif ckYVar == -42
          return 0x000112D8
        elseif ckYVar == -41
          return 0x000112B7
        elseif ckYVar == -40
          return 0x00011296
        elseif ckYVar == -39
          return 0x00011275
        elseif ckYVar == -38
          return 0x00011254
        elseif ckYVar == -37
          return 0x00011233
        elseif ckYVar == -36
          return 0x00011212
        elseif ckYVar == -35
          return 0x000111F1
        elseif ckYVar == -34
          return 0x000111D0
        elseif ckYVar == -33
          return 0x000111AF
        elseif ckYVar == -32
          return 0x0000BDB8
        elseif ckYVar == -31
          return 0x0000BDB7
        elseif ckYVar == -30
          return 0x0000BD8B
        elseif ckYVar == -29
          return 0x0000BD6A
        elseif ckYVar == -28
          return 0x0000BD49
        elseif ckYVar == -27
          return 0x0000BD28
        elseif ckYVar == -26
          return 0x0000BD07
        elseif ckYVar == -25
          return 0x0000BCE6
        elseif ckYVar == -24
          return 0x0000BCC5
        elseif ckYVar == -23
          return 0x0000BCA4
        elseif ckYVar == -22
          return 0x0000BC83
        elseif ckYVar == -21
          return 0x0000BC62
        elseif ckYVar == -20
          return 0x0000BC41
        elseif ckYVar == -19
          return 0x0000BC20
        elseif ckYVar == -18
          return 0x0000BBFF
        elseif ckYVar == -17
          return 0x0000BBDE
        elseif ckYVar == -16
          return 0x0000BBBD
        elseif ckYVar == -15
          return 0x0000BB9C
        elseif ckYVar == -14
          return 0x0000BB7B
        elseif ckYVar == -13
          return 0x0000BB5A
        elseif ckYVar == -12
          return 0x0000BB39
        elseif ckYVar == -11
          return 0x0000BB18
        elseif ckYVar == -10
          return 0x0000BAF7
        elseif ckYVar == -9
          return 0x0000BAD6
        elseif ckYVar == -8
          return 0x0000BAB5
        elseif ckYVar == -7
          return 0x0000BA94
        elseif ckYVar == -6
          return 0x0000BA73
        elseif ckYVar == -5
          return 0x0000BA52
        elseif ckYVar == -4
          return 0x0000BA31
        elseif ckYVar == -3
          return 0x0000BA10
        elseif ckYVar == -2
          return 0x0000B9EF
        elseif ckYVar == -1
          return 0x0000B9CE
        elseif ckYVar == 0
          return 0x0000B9AD
        elseif ckYVar == 1
          return 0x0000B58D
        elseif ckYVar == 2
          return 0x0000B56C
        elseif ckYVar == 3
          return 0x0000B54B
        elseif ckYVar == 4
          return 0x0000B52A
        elseif ckYVar == 5
          return 0x0000B509
        elseif ckYVar == 6
          return 0x0000B4E8
        elseif ckYVar == 7
          return 0x0000B4C7
        elseif ckYVar == 8
          return 0x0000B4A6
        elseif ckYVar == 9
          return 0x0000B485
        elseif ckYVar == 10
          return 0x0000B464
        elseif ckYVar == 11
          return 0x0000B443
        elseif ckYVar == 12
          return 0x0000B422
        elseif ckYVar == 13
          return 0x0000B401
        elseif ckYVar == 14
          return 0x0000B3E0
        elseif ckYVar == 15
          return 0x0000B3BF
        elseif ckYVar == 16
          return 0x0000B39E
        elseif ckYVar == 17
          return 0x0000B37D
        elseif ckYVar == 18
          return 0x0000B35C
        elseif ckYVar == 19
          return 0x0000B33B
        elseif ckYVar == 20
          return 0x0000B31A
        elseif ckYVar == 21
          return 0x0000B2F9
        elseif ckYVar == 22
          return 0x0000B2D8
        elseif ckYVar == 23
          return 0x0000B2B7
        elseif ckYVar == 24
          return 0x0000B296
        elseif ckYVar == 25
          return 0x0000B275
        elseif ckYVar == 26
          return 0x0000B254
        elseif ckYVar == 27
          return 0x0000B233
        elseif ckYVar == 28
          return 0x0000B212
        elseif ckYVar == 29
          return 0x0000B1F1
        elseif ckYVar == 30
          return 0x0000B1D0
        elseif ckYVar == 31
          return 0x0000B1AF
        elseif ckYVar == 32
          return 0x00005DA4
        elseif ckYVar == 33
          return 0x00005DA3
        elseif ckYVar == 34
          return 0x00005D77
        elseif ckYVar == 35
          return 0x00005D56
        elseif ckYVar == 36
          return 0x00005D35
        elseif ckYVar == 37
          return 0x00005D14
        elseif ckYVar == 38
          return 0x00005CF3
        elseif ckYVar == 39
          return 0x00005CD2
        elseif ckYVar == 40
          return 0x00005CB1
        elseif ckYVar == 41
          return 0x00005C90
        elseif ckYVar == 42
          return 0x00005C6F
        elseif ckYVar == 43
          return 0x00005C4E
        elseif ckYVar == 44
          return 0x00005C2D
        elseif ckYVar == 45
          return 0x00005C0C
        elseif ckYVar == 46
          return 0x00005BEB
        elseif ckYVar == 47
          return 0x00005BCA
        elseif ckYVar == 48
          return 0x00005BA9
        elseif ckYVar == 49
          return 0x00005B88
        elseif ckYVar == 50
          return 0x00005B67
        endif
      elseif ckXVar == 54
        if ckYVar == -43
          return 0x000112F8
        elseif ckYVar == -42
          return 0x000112D7
        elseif ckYVar == -41
          return 0x000112B6
        elseif ckYVar == -40
          return 0x00011295
        elseif ckYVar == -39
          return 0x00011274
        elseif ckYVar == -38
          return 0x00011253
        elseif ckYVar == -37
          return 0x00011232
        elseif ckYVar == -36
          return 0x00011211
        elseif ckYVar == -35
          return 0x000111F0
        elseif ckYVar == -34
          return 0x000111CF
        elseif ckYVar == -33
          return 0x000111AE
        elseif ckYVar == -32
          return 0x0000BDB6
        elseif ckYVar == -31
          return 0x0000BDB5
        elseif ckYVar == -30
          return 0x0000BD8A
        elseif ckYVar == -29
          return 0x0000BD69
        elseif ckYVar == -28
          return 0x0000BD48
        elseif ckYVar == -27
          return 0x0000BD27
        elseif ckYVar == -26
          return 0x0000BD06
        elseif ckYVar == -25
          return 0x0000BCE5
        elseif ckYVar == -24
          return 0x0000BCC4
        elseif ckYVar == -23
          return 0x0000BCA3
        elseif ckYVar == -22
          return 0x0000BC82
        elseif ckYVar == -21
          return 0x0000BC61
        elseif ckYVar == -20
          return 0x0000BC40
        elseif ckYVar == -19
          return 0x0000BC1F
        elseif ckYVar == -18
          return 0x0000BBFE
        elseif ckYVar == -17
          return 0x0000BBDD
        elseif ckYVar == -16
          return 0x0000BBBC
        elseif ckYVar == -15
          return 0x0000BB9B
        elseif ckYVar == -14
          return 0x0000BB7A
        elseif ckYVar == -13
          return 0x0000BB59
        elseif ckYVar == -12
          return 0x0000BB38
        elseif ckYVar == -11
          return 0x0000BB17
        elseif ckYVar == -10
          return 0x0000BAF6
        elseif ckYVar == -9
          return 0x0000BAD5
        elseif ckYVar == -8
          return 0x0000BAB4
        elseif ckYVar == -7
          return 0x0000BA93
        elseif ckYVar == -6
          return 0x0000BA72
        elseif ckYVar == -5
          return 0x0000BA51
        elseif ckYVar == -4
          return 0x0000BA30
        elseif ckYVar == -3
          return 0x0000BA0F
        elseif ckYVar == -2
          return 0x0000B9EE
        elseif ckYVar == -1
          return 0x0000B9CD
        elseif ckYVar == 0
          return 0x0000B9AC
        elseif ckYVar == 1
          return 0x0000B58C
        elseif ckYVar == 2
          return 0x0000B56B
        elseif ckYVar == 3
          return 0x0000B54A
        elseif ckYVar == 4
          return 0x0000B529
        elseif ckYVar == 5
          return 0x0000B508
        elseif ckYVar == 6
          return 0x0000B4E7
        elseif ckYVar == 7
          return 0x0000B4C6
        elseif ckYVar == 8
          return 0x0000B4A5
        elseif ckYVar == 9
          return 0x0000B484
        elseif ckYVar == 10
          return 0x0000B463
        elseif ckYVar == 11
          return 0x0000B442
        elseif ckYVar == 12
          return 0x0000B421
        elseif ckYVar == 13
          return 0x0000B400
        elseif ckYVar == 14
          return 0x0000B3DF
        elseif ckYVar == 15
          return 0x0000B3BE
        elseif ckYVar == 16
          return 0x0000B39D
        elseif ckYVar == 17
          return 0x0000B37C
        elseif ckYVar == 18
          return 0x0000B35B
        elseif ckYVar == 19
          return 0x0000B33A
        elseif ckYVar == 20
          return 0x0000B319
        elseif ckYVar == 21
          return 0x0000B2F8
        elseif ckYVar == 22
          return 0x0000B2D7
        elseif ckYVar == 23
          return 0x0000B2B6
        elseif ckYVar == 24
          return 0x0000B295
        elseif ckYVar == 25
          return 0x0000B274
        elseif ckYVar == 26
          return 0x0000B253
        elseif ckYVar == 27
          return 0x0000B232
        elseif ckYVar == 28
          return 0x0000B211
        elseif ckYVar == 29
          return 0x0000B1F0
        elseif ckYVar == 30
          return 0x0000B1CF
        elseif ckYVar == 31
          return 0x0000B1AE
        elseif ckYVar == 32
          return 0x00005DA2
        elseif ckYVar == 33
          return 0x00005DA1
        elseif ckYVar == 34
          return 0x00005D76
        elseif ckYVar == 35
          return 0x00005D55
        elseif ckYVar == 36
          return 0x00005D34
        elseif ckYVar == 37
          return 0x00005D13
        elseif ckYVar == 38
          return 0x00005CF2
        elseif ckYVar == 39
          return 0x00005CD1
        elseif ckYVar == 40
          return 0x00005CB0
        elseif ckYVar == 41
          return 0x00005C8F
        elseif ckYVar == 42
          return 0x00005C6E
        elseif ckYVar == 43
          return 0x00005C4D
        elseif ckYVar == 44
          return 0x00005C2C
        elseif ckYVar == 45
          return 0x00005C0B
        elseif ckYVar == 46
          return 0x00005BEA
        elseif ckYVar == 47
          return 0x00005BC9
        elseif ckYVar == 48
          return 0x00005BA8
        elseif ckYVar == 49
          return 0x00005B87
        elseif ckYVar == 50
          return 0x00005B66
        endif
      elseif ckXVar == 55
        if ckYVar == -43
          return 0x000112F7
        elseif ckYVar == -42
          return 0x000112D6
        elseif ckYVar == -41
          return 0x000112B5
        elseif ckYVar == -40
          return 0x00011294
        elseif ckYVar == -39
          return 0x00011273
        elseif ckYVar == -38
          return 0x00011252
        elseif ckYVar == -37
          return 0x00011231
        elseif ckYVar == -36
          return 0x00011210
        elseif ckYVar == -35
          return 0x000111EF
        elseif ckYVar == -34
          return 0x000111CE
        elseif ckYVar == -33
          return 0x000111AD
        elseif ckYVar == -32
          return 0x0000BDB4
        elseif ckYVar == -31
          return 0x0000BDB3
        elseif ckYVar == -30
          return 0x0000BD89
        elseif ckYVar == -29
          return 0x0000BD68
        elseif ckYVar == -28
          return 0x0000BD47
        elseif ckYVar == -27
          return 0x0000BD26
        elseif ckYVar == -26
          return 0x0000BD05
        elseif ckYVar == -25
          return 0x0000BCE4
        elseif ckYVar == -24
          return 0x0000BCC3
        elseif ckYVar == -23
          return 0x0000BCA2
        elseif ckYVar == -22
          return 0x0000BC81
        elseif ckYVar == -21
          return 0x0000BC60
        elseif ckYVar == -20
          return 0x0000BC3F
        elseif ckYVar == -19
          return 0x0000BC1E
        elseif ckYVar == -18
          return 0x0000BBFD
        elseif ckYVar == -17
          return 0x0000BBDC
        elseif ckYVar == -16
          return 0x0000BBBB
        elseif ckYVar == -15
          return 0x0000BB9A
        elseif ckYVar == -14
          return 0x0000BB79
        elseif ckYVar == -13
          return 0x0000BB58
        elseif ckYVar == -12
          return 0x0000BB37
        elseif ckYVar == -11
          return 0x0000BB16
        elseif ckYVar == -10
          return 0x0000BAF5
        elseif ckYVar == -9
          return 0x0000BAD4
        elseif ckYVar == -8
          return 0x0000BAB3
        elseif ckYVar == -7
          return 0x0000BA92
        elseif ckYVar == -6
          return 0x0000BA71
        elseif ckYVar == -5
          return 0x0000BA50
        elseif ckYVar == -4
          return 0x0000BA2F
        elseif ckYVar == -3
          return 0x0000BA0E
        elseif ckYVar == -2
          return 0x0000B9ED
        elseif ckYVar == -1
          return 0x0000B9CC
        elseif ckYVar == 0
          return 0x0000B9AB
        elseif ckYVar == 1
          return 0x0000B58B
        elseif ckYVar == 2
          return 0x0000B56A
        elseif ckYVar == 3
          return 0x0000B549
        elseif ckYVar == 4
          return 0x0000B528
        elseif ckYVar == 5
          return 0x0000B507
        elseif ckYVar == 6
          return 0x0000B4E6
        elseif ckYVar == 7
          return 0x0000B4C5
        elseif ckYVar == 8
          return 0x0000B4A4
        elseif ckYVar == 9
          return 0x0000B483
        elseif ckYVar == 10
          return 0x0000B462
        elseif ckYVar == 11
          return 0x0000B441
        elseif ckYVar == 12
          return 0x0000B420
        elseif ckYVar == 13
          return 0x0000B3FF
        elseif ckYVar == 14
          return 0x0000B3DE
        elseif ckYVar == 15
          return 0x0000B3BD
        elseif ckYVar == 16
          return 0x0000B39C
        elseif ckYVar == 17
          return 0x0000B37B
        elseif ckYVar == 18
          return 0x0000B35A
        elseif ckYVar == 19
          return 0x0000B339
        elseif ckYVar == 20
          return 0x0000B318
        elseif ckYVar == 21
          return 0x0000B2F7
        elseif ckYVar == 22
          return 0x0000B2D6
        elseif ckYVar == 23
          return 0x0000B2B5
        elseif ckYVar == 24
          return 0x0000B294
        elseif ckYVar == 25
          return 0x0000B273
        elseif ckYVar == 26
          return 0x0000B252
        elseif ckYVar == 27
          return 0x0000B231
        elseif ckYVar == 28
          return 0x0000B210
        elseif ckYVar == 29
          return 0x0000B1EF
        elseif ckYVar == 30
          return 0x0000B1CE
        elseif ckYVar == 31
          return 0x0000B1AD
        elseif ckYVar == 32
          return 0x00005DA0
        elseif ckYVar == 33
          return 0x00005D9F
        elseif ckYVar == 34
          return 0x00005D75
        elseif ckYVar == 35
          return 0x00005D54
        elseif ckYVar == 36
          return 0x00005D33
        elseif ckYVar == 37
          return 0x00005D12
        elseif ckYVar == 38
          return 0x00005CF1
        elseif ckYVar == 39
          return 0x00005CD0
        elseif ckYVar == 40
          return 0x00005CAF
        elseif ckYVar == 41
          return 0x00005C8E
        elseif ckYVar == 42
          return 0x00005C6D
        elseif ckYVar == 43
          return 0x00005C4C
        elseif ckYVar == 44
          return 0x00005C2B
        elseif ckYVar == 45
          return 0x00005C0A
        elseif ckYVar == 46
          return 0x00005BE9
        elseif ckYVar == 47
          return 0x00005BC8
        elseif ckYVar == 48
          return 0x00005BA7
        elseif ckYVar == 49
          return 0x00005B86
        elseif ckYVar == 50
          return 0x00005B65
        endif
      elseif ckXVar == 56
        if ckYVar == -43
          return 0x000112F6
        elseif ckYVar == -42
          return 0x000112D5
        elseif ckYVar == -41
          return 0x000112B4
        elseif ckYVar == -40
          return 0x00011293
        elseif ckYVar == -39
          return 0x00011272
        elseif ckYVar == -38
          return 0x00011251
        elseif ckYVar == -37
          return 0x00011230
        elseif ckYVar == -36
          return 0x0001120F
        elseif ckYVar == -35
          return 0x000111EE
        elseif ckYVar == -34
          return 0x000111CD
        elseif ckYVar == -33
          return 0x000111AC
        elseif ckYVar == -32
          return 0x0000BDB2
        elseif ckYVar == -31
          return 0x0000BDB1
        elseif ckYVar == -30
          return 0x0000BD88
        elseif ckYVar == -29
          return 0x0000BD67
        elseif ckYVar == -28
          return 0x0000BD46
        elseif ckYVar == -27
          return 0x0000BD25
        elseif ckYVar == -26
          return 0x0000BD04
        elseif ckYVar == -25
          return 0x0000BCE3
        elseif ckYVar == -24
          return 0x0000BCC2
        elseif ckYVar == -23
          return 0x0000BCA1
        elseif ckYVar == -22
          return 0x0000BC80
        elseif ckYVar == -21
          return 0x0000BC5F
        elseif ckYVar == -20
          return 0x0000BC3E
        elseif ckYVar == -19
          return 0x0000BC1D
        elseif ckYVar == -18
          return 0x0000BBFC
        elseif ckYVar == -17
          return 0x0000BBDB
        elseif ckYVar == -16
          return 0x0000BBBA
        elseif ckYVar == -15
          return 0x0000BB99
        elseif ckYVar == -14
          return 0x0000BB78
        elseif ckYVar == -13
          return 0x0000BB57
        elseif ckYVar == -12
          return 0x0000BB36
        elseif ckYVar == -11
          return 0x0000BB15
        elseif ckYVar == -10
          return 0x0000BAF4
        elseif ckYVar == -9
          return 0x0000BAD3
        elseif ckYVar == -8
          return 0x0000BAB2
        elseif ckYVar == -7
          return 0x0000BA91
        elseif ckYVar == -6
          return 0x0000BA70
        elseif ckYVar == -5
          return 0x0000BA4F
        elseif ckYVar == -4
          return 0x0000BA2E
        elseif ckYVar == -3
          return 0x0000BA0D
        elseif ckYVar == -2
          return 0x0000B9EC
        elseif ckYVar == -1
          return 0x0000B9CB
        elseif ckYVar == 0
          return 0x0000B9AA
        elseif ckYVar == 1
          return 0x0000B58A
        elseif ckYVar == 2
          return 0x0000B569
        elseif ckYVar == 3
          return 0x0000B548
        elseif ckYVar == 4
          return 0x0000B527
        elseif ckYVar == 5
          return 0x0000B506
        elseif ckYVar == 6
          return 0x0000B4E5
        elseif ckYVar == 7
          return 0x0000B4C4
        elseif ckYVar == 8
          return 0x0000B4A3
        elseif ckYVar == 9
          return 0x0000B482
        elseif ckYVar == 10
          return 0x0000B461
        elseif ckYVar == 11
          return 0x0000B440
        elseif ckYVar == 12
          return 0x0000B41F
        elseif ckYVar == 13
          return 0x0000B3FE
        elseif ckYVar == 14
          return 0x0000B3DD
        elseif ckYVar == 15
          return 0x0000B3BC
        elseif ckYVar == 16
          return 0x0000B39B
        elseif ckYVar == 17
          return 0x0000B37A
        elseif ckYVar == 18
          return 0x0000B359
        elseif ckYVar == 19
          return 0x0000B338
        elseif ckYVar == 20
          return 0x0000B317
        elseif ckYVar == 21
          return 0x0000B2F6
        elseif ckYVar == 22
          return 0x0000B2D5
        elseif ckYVar == 23
          return 0x0000B2B4
        elseif ckYVar == 24
          return 0x0000B293
        elseif ckYVar == 25
          return 0x0000B272
        elseif ckYVar == 26
          return 0x0000B251
        elseif ckYVar == 27
          return 0x0000B230
        elseif ckYVar == 28
          return 0x0000B20F
        elseif ckYVar == 29
          return 0x0000B1EE
        elseif ckYVar == 30
          return 0x0000B1CD
        elseif ckYVar == 31
          return 0x0000B1AC
        elseif ckYVar == 32
          return 0x00005D9E
        elseif ckYVar == 33
          return 0x00005D9D
        elseif ckYVar == 34
          return 0x00005D74
        elseif ckYVar == 35
          return 0x00005D53
        elseif ckYVar == 36
          return 0x00005D32
        elseif ckYVar == 37
          return 0x00005D11
        elseif ckYVar == 38
          return 0x00005CF0
        elseif ckYVar == 39
          return 0x00005CCF
        elseif ckYVar == 40
          return 0x00005CAE
        elseif ckYVar == 41
          return 0x00005C8D
        elseif ckYVar == 42
          return 0x00005C6C
        elseif ckYVar == 43
          return 0x00005C4B
        elseif ckYVar == 44
          return 0x00005C2A
        elseif ckYVar == 45
          return 0x00005C09
        elseif ckYVar == 46
          return 0x00005BE8
        elseif ckYVar == 47
          return 0x00005BC7
        elseif ckYVar == 48
          return 0x00005BA6
        elseif ckYVar == 49
          return 0x00005B85
        elseif ckYVar == 50
          return 0x00005B64
        endif
      elseif ckXVar == 57
        if ckYVar == -43
          return 0x000112F5
        elseif ckYVar == -42
          return 0x000112D4
        elseif ckYVar == -41
          return 0x000112B3
        elseif ckYVar == -40
          return 0x00011292
        elseif ckYVar == -39
          return 0x00011271
        elseif ckYVar == -38
          return 0x00011250
        elseif ckYVar == -37
          return 0x0001122F
        elseif ckYVar == -36
          return 0x0001120E
        elseif ckYVar == -35
          return 0x000111ED
        elseif ckYVar == -34
          return 0x000111CC
        elseif ckYVar == -33
          return 0x000111AB
        elseif ckYVar == -32
          return 0x0000BDB0
        elseif ckYVar == -31
          return 0x0000BDAF
        elseif ckYVar == -30
          return 0x0000BD87
        elseif ckYVar == -29
          return 0x0000BD66
        elseif ckYVar == -28
          return 0x0000BD45
        elseif ckYVar == -27
          return 0x0000BD24
        elseif ckYVar == -26
          return 0x0000BD03
        elseif ckYVar == -25
          return 0x0000BCE2
        elseif ckYVar == -24
          return 0x0000BCC1
        elseif ckYVar == -23
          return 0x0000BCA0
        elseif ckYVar == -22
          return 0x0000BC7F
        elseif ckYVar == -21
          return 0x0000BC5E
        elseif ckYVar == -20
          return 0x0000BC3D
        elseif ckYVar == -19
          return 0x0000BC1C
        elseif ckYVar == -18
          return 0x0000BBFB
        elseif ckYVar == -17
          return 0x0000BBDA
        elseif ckYVar == -16
          return 0x0000BBB9
        elseif ckYVar == -15
          return 0x0000BB98
        elseif ckYVar == -14
          return 0x0000BB77
        elseif ckYVar == -13
          return 0x0000BB56
        elseif ckYVar == -12
          return 0x0000BB35
        elseif ckYVar == -11
          return 0x0000BB14
        elseif ckYVar == -10
          return 0x0000BAF3
        elseif ckYVar == -9
          return 0x0000BAD2
        elseif ckYVar == -8
          return 0x0000BAB1
        elseif ckYVar == -7
          return 0x0000BA90
        elseif ckYVar == -6
          return 0x0000BA6F
        elseif ckYVar == -5
          return 0x0000BA4E
        elseif ckYVar == -4
          return 0x0000BA2D
        elseif ckYVar == -3
          return 0x0000BA0C
        elseif ckYVar == -2
          return 0x0000B9EB
        elseif ckYVar == -1
          return 0x0000B9CA
        elseif ckYVar == 0
          return 0x0000B9A9
        elseif ckYVar == 1
          return 0x0000B589
        elseif ckYVar == 2
          return 0x0000B568
        elseif ckYVar == 3
          return 0x0000B547
        elseif ckYVar == 4
          return 0x0000B526
        elseif ckYVar == 5
          return 0x0000B505
        elseif ckYVar == 6
          return 0x0000B4E4
        elseif ckYVar == 7
          return 0x0000B4C3
        elseif ckYVar == 8
          return 0x0000B4A2
        elseif ckYVar == 9
          return 0x0000B481
        elseif ckYVar == 10
          return 0x0000B460
        elseif ckYVar == 11
          return 0x0000B43F
        elseif ckYVar == 12
          return 0x0000B41E
        elseif ckYVar == 13
          return 0x0000B3FD
        elseif ckYVar == 14
          return 0x0000B3DC
        elseif ckYVar == 15
          return 0x0000B3BB
        elseif ckYVar == 16
          return 0x0000B39A
        elseif ckYVar == 17
          return 0x0000B379
        elseif ckYVar == 18
          return 0x0000B358
        elseif ckYVar == 19
          return 0x0000B337
        elseif ckYVar == 20
          return 0x0000B316
        elseif ckYVar == 21
          return 0x0000B2F5
        elseif ckYVar == 22
          return 0x0000B2D4
        elseif ckYVar == 23
          return 0x0000B2B3
        elseif ckYVar == 24
          return 0x0000B292
        elseif ckYVar == 25
          return 0x0000B271
        elseif ckYVar == 26
          return 0x0000B250
        elseif ckYVar == 27
          return 0x0000B22F
        elseif ckYVar == 28
          return 0x0000B20E
        elseif ckYVar == 29
          return 0x0000B1ED
        elseif ckYVar == 30
          return 0x0000B1CC
        elseif ckYVar == 31
          return 0x0000B1AB
        elseif ckYVar == 32
          return 0x00005D9C
        elseif ckYVar == 33
          return 0x00005D9B
        elseif ckYVar == 34
          return 0x00005D73
        elseif ckYVar == 35
          return 0x00005D52
        elseif ckYVar == 36
          return 0x00005D31
        elseif ckYVar == 37
          return 0x00005D10
        elseif ckYVar == 38
          return 0x00005CEF
        elseif ckYVar == 39
          return 0x00005CCE
        elseif ckYVar == 40
          return 0x00005CAD
        elseif ckYVar == 41
          return 0x00005C8C
        elseif ckYVar == 42
          return 0x00005C6B
        elseif ckYVar == 43
          return 0x00005C4A
        elseif ckYVar == 44
          return 0x00005C29
        elseif ckYVar == 45
          return 0x00005C08
        elseif ckYVar == 46
          return 0x00005BE7
        elseif ckYVar == 47
          return 0x00005BC6
        elseif ckYVar == 48
          return 0x00005BA5
        elseif ckYVar == 49
          return 0x00005B84
        elseif ckYVar == 50
          return 0x00005B63
        endif
      elseif ckXVar == 58
        if ckYVar == -43
          return 0x000112F4
        elseif ckYVar == -42
          return 0x000112D3
        elseif ckYVar == -41
          return 0x000112B2
        elseif ckYVar == -40
          return 0x00011291
        elseif ckYVar == -39
          return 0x00011270
        elseif ckYVar == -38
          return 0x0001124F
        elseif ckYVar == -37
          return 0x0001122E
        elseif ckYVar == -36
          return 0x0001120D
        elseif ckYVar == -35
          return 0x000111EC
        elseif ckYVar == -34
          return 0x000111CB
        elseif ckYVar == -33
          return 0x000111AA
        elseif ckYVar == -32
          return 0x0000BDAE
        elseif ckYVar == -31
          return 0x0000BDAD
        elseif ckYVar == -30
          return 0x0000BD86
        elseif ckYVar == -29
          return 0x0000BD65
        elseif ckYVar == -28
          return 0x0000BD44
        elseif ckYVar == -27
          return 0x0000BD23
        elseif ckYVar == -26
          return 0x0000BD02
        elseif ckYVar == -25
          return 0x0000BCE1
        elseif ckYVar == -24
          return 0x0000BCC0
        elseif ckYVar == -23
          return 0x0000BC9F
        elseif ckYVar == -22
          return 0x0000BC7E
        elseif ckYVar == -21
          return 0x0000BC5D
        elseif ckYVar == -20
          return 0x0000BC3C
        elseif ckYVar == -19
          return 0x0000BC1B
        elseif ckYVar == -18
          return 0x0000BBFA
        elseif ckYVar == -17
          return 0x0000BBD9
        elseif ckYVar == -16
          return 0x0000BBB8
        elseif ckYVar == -15
          return 0x0000BB97
        elseif ckYVar == -14
          return 0x0000BB76
        elseif ckYVar == -13
          return 0x0000BB55
        elseif ckYVar == -12
          return 0x0000BB34
        elseif ckYVar == -11
          return 0x0000BB13
        elseif ckYVar == -10
          return 0x0000BAF2
        elseif ckYVar == -9
          return 0x0000BAD1
        elseif ckYVar == -8
          return 0x0000BAB0
        elseif ckYVar == -7
          return 0x0000BA8F
        elseif ckYVar == -6
          return 0x0000BA6E
        elseif ckYVar == -5
          return 0x0000BA4D
        elseif ckYVar == -4
          return 0x0000BA2C
        elseif ckYVar == -3
          return 0x0000BA0B
        elseif ckYVar == -2
          return 0x0000B9EA
        elseif ckYVar == -1
          return 0x0000B9C9
        elseif ckYVar == 0
          return 0x0000B9A8
        elseif ckYVar == 1
          return 0x0000B588
        elseif ckYVar == 2
          return 0x0000B567
        elseif ckYVar == 3
          return 0x0000B546
        elseif ckYVar == 4
          return 0x0000B525
        elseif ckYVar == 5
          return 0x0000B504
        elseif ckYVar == 6
          return 0x0000B4E3
        elseif ckYVar == 7
          return 0x0000B4C2
        elseif ckYVar == 8
          return 0x0000B4A1
        elseif ckYVar == 9
          return 0x0000B480
        elseif ckYVar == 10
          return 0x0000B45F
        elseif ckYVar == 11
          return 0x0000B43E
        elseif ckYVar == 12
          return 0x0000B41D
        elseif ckYVar == 13
          return 0x0000B3FC
        elseif ckYVar == 14
          return 0x0000B3DB
        elseif ckYVar == 15
          return 0x0000B3BA
        elseif ckYVar == 16
          return 0x0000B399
        elseif ckYVar == 17
          return 0x0000B378
        elseif ckYVar == 18
          return 0x0000B357
        elseif ckYVar == 19
          return 0x0000B336
        elseif ckYVar == 20
          return 0x0000B315
        elseif ckYVar == 21
          return 0x0000B2F4
        elseif ckYVar == 22
          return 0x0000B2D3
        elseif ckYVar == 23
          return 0x0000B2B2
        elseif ckYVar == 24
          return 0x0000B291
        elseif ckYVar == 25
          return 0x0000B270
        elseif ckYVar == 26
          return 0x0000B24F
        elseif ckYVar == 27
          return 0x0000B22E
        elseif ckYVar == 28
          return 0x0000B20D
        elseif ckYVar == 29
          return 0x0000B1EC
        elseif ckYVar == 30
          return 0x0000B1CB
        elseif ckYVar == 31
          return 0x0000B1AA
        elseif ckYVar == 32
          return 0x00005D9A
        elseif ckYVar == 33
          return 0x00005D99
        elseif ckYVar == 34
          return 0x00005D72
        elseif ckYVar == 35
          return 0x00005D51
        elseif ckYVar == 36
          return 0x00005D30
        elseif ckYVar == 37
          return 0x00005D0F
        elseif ckYVar == 38
          return 0x00005CEE
        elseif ckYVar == 39
          return 0x00005CCD
        elseif ckYVar == 40
          return 0x00005CAC
        elseif ckYVar == 41
          return 0x00005C8B
        elseif ckYVar == 42
          return 0x00005C6A
        elseif ckYVar == 43
          return 0x00005C49
        elseif ckYVar == 44
          return 0x00005C28
        elseif ckYVar == 45
          return 0x00005C07
        elseif ckYVar == 46
          return 0x00005BE6
        elseif ckYVar == 47
          return 0x00005BC5
        elseif ckYVar == 48
          return 0x00005BA4
        elseif ckYVar == 49
          return 0x00005B83
        elseif ckYVar == 50
          return 0x00005B62
        endif
      elseif ckXVar == 59
        if ckYVar == -43
          return 0x000112F3
        elseif ckYVar == -42
          return 0x000112D2
        elseif ckYVar == -41
          return 0x000112B1
        elseif ckYVar == -40
          return 0x00011290
        elseif ckYVar == -39
          return 0x0001126F
        elseif ckYVar == -38
          return 0x0001124E
        elseif ckYVar == -37
          return 0x0001122D
        elseif ckYVar == -36
          return 0x0001120C
        elseif ckYVar == -35
          return 0x000111EB
        elseif ckYVar == -34
          return 0x000111CA
        elseif ckYVar == -33
          return 0x000111A9
        elseif ckYVar == -32
          return 0x0000BDAC
        elseif ckYVar == -31
          return 0x0000BDAB
        elseif ckYVar == -30
          return 0x0000BD85
        elseif ckYVar == -29
          return 0x0000BD64
        elseif ckYVar == -28
          return 0x0000BD43
        elseif ckYVar == -27
          return 0x0000BD22
        elseif ckYVar == -26
          return 0x0000BD01
        elseif ckYVar == -25
          return 0x0000BCE0
        elseif ckYVar == -24
          return 0x0000BCBF
        elseif ckYVar == -23
          return 0x0000BC9E
        elseif ckYVar == -22
          return 0x0000BC7D
        elseif ckYVar == -21
          return 0x0000BC5C
        elseif ckYVar == -20
          return 0x0000BC3B
        elseif ckYVar == -19
          return 0x0000BC1A
        elseif ckYVar == -18
          return 0x0000BBF9
        elseif ckYVar == -17
          return 0x0000BBD8
        elseif ckYVar == -16
          return 0x0000BBB7
        elseif ckYVar == -15
          return 0x0000BB96
        elseif ckYVar == -14
          return 0x0000BB75
        elseif ckYVar == -13
          return 0x0000BB54
        elseif ckYVar == -12
          return 0x0000BB33
        elseif ckYVar == -11
          return 0x0000BB12
        elseif ckYVar == -10
          return 0x0000BAF1
        elseif ckYVar == -9
          return 0x0000BAD0
        elseif ckYVar == -8
          return 0x0000BAAF
        elseif ckYVar == -7
          return 0x0000BA8E
        elseif ckYVar == -6
          return 0x0000BA6D
        elseif ckYVar == -5
          return 0x0000BA4C
        elseif ckYVar == -4
          return 0x0000BA2B
        elseif ckYVar == -3
          return 0x0000BA0A
        elseif ckYVar == -2
          return 0x0000B9E9
        elseif ckYVar == -1
          return 0x0000B9C8
        elseif ckYVar == 0
          return 0x0000B9A7
        elseif ckYVar == 1
          return 0x0000B587
        elseif ckYVar == 2
          return 0x0000B566
        elseif ckYVar == 3
          return 0x0000B545
        elseif ckYVar == 4
          return 0x0000B524
        elseif ckYVar == 5
          return 0x0000B503
        elseif ckYVar == 6
          return 0x0000B4E2
        elseif ckYVar == 7
          return 0x0000B4C1
        elseif ckYVar == 8
          return 0x0000B4A0
        elseif ckYVar == 9
          return 0x0000B47F
        elseif ckYVar == 10
          return 0x0000B45E
        elseif ckYVar == 11
          return 0x0000B43D
        elseif ckYVar == 12
          return 0x0000B41C
        elseif ckYVar == 13
          return 0x0000B3FB
        elseif ckYVar == 14
          return 0x0000B3DA
        elseif ckYVar == 15
          return 0x0000B3B9
        elseif ckYVar == 16
          return 0x0000B398
        elseif ckYVar == 17
          return 0x0000B377
        elseif ckYVar == 18
          return 0x0000B356
        elseif ckYVar == 19
          return 0x0000B335
        elseif ckYVar == 20
          return 0x0000B314
        elseif ckYVar == 21
          return 0x0000B2F3
        elseif ckYVar == 22
          return 0x0000B2D2
        elseif ckYVar == 23
          return 0x0000B2B1
        elseif ckYVar == 24
          return 0x0000B290
        elseif ckYVar == 25
          return 0x0000B26F
        elseif ckYVar == 26
          return 0x0000B24E
        elseif ckYVar == 27
          return 0x0000B22D
        elseif ckYVar == 28
          return 0x0000B20C
        elseif ckYVar == 29
          return 0x0000B1EB
        elseif ckYVar == 30
          return 0x0000B1CA
        elseif ckYVar == 31
          return 0x0000B1A9
        elseif ckYVar == 32
          return 0x00005D98
        elseif ckYVar == 33
          return 0x00005D97
        elseif ckYVar == 34
          return 0x00005D71
        elseif ckYVar == 35
          return 0x00005D50
        elseif ckYVar == 36
          return 0x00005D2F
        elseif ckYVar == 37
          return 0x00005D0E
        elseif ckYVar == 38
          return 0x00005CED
        elseif ckYVar == 39
          return 0x00005CCC
        elseif ckYVar == 40
          return 0x00005CAB
        elseif ckYVar == 41
          return 0x00005C8A
        elseif ckYVar == 42
          return 0x00005C69
        elseif ckYVar == 43
          return 0x00005C48
        elseif ckYVar == 44
          return 0x00005C27
        elseif ckYVar == 45
          return 0x00005C06
        elseif ckYVar == 46
          return 0x00005BE5
        elseif ckYVar == 47
          return 0x00005BC4
        elseif ckYVar == 48
          return 0x00005BA3
        elseif ckYVar == 49
          return 0x00005B82
        elseif ckYVar == 50
          return 0x00005B61
        endif
      endif
    elseif ckXVar < 70
      if ckXVar == 60
        if ckYVar == -43
          return 0x000112F2
        elseif ckYVar == -42
          return 0x000112D1
        elseif ckYVar == -41
          return 0x000112B0
        elseif ckYVar == -40
          return 0x0001128F
        elseif ckYVar == -39
          return 0x0001126E
        elseif ckYVar == -38
          return 0x0001124D
        elseif ckYVar == -37
          return 0x0001122C
        elseif ckYVar == -36
          return 0x0001120B
        elseif ckYVar == -35
          return 0x000111EA
        elseif ckYVar == -34
          return 0x000111C9
        elseif ckYVar == -33
          return 0x000111A8
        elseif ckYVar == -32
          return 0x0000BDAA
        elseif ckYVar == -31
          return 0x0000BDA9
        elseif ckYVar == -30
          return 0x0000BD84
        elseif ckYVar == -29
          return 0x0000BD63
        elseif ckYVar == -28
          return 0x0000BD42
        elseif ckYVar == -27
          return 0x0000BD21
        elseif ckYVar == -26
          return 0x0000BD00
        elseif ckYVar == -25
          return 0x0000BCDF
        elseif ckYVar == -24
          return 0x0000BCBE
        elseif ckYVar == -23
          return 0x0000BC9D
        elseif ckYVar == -22
          return 0x0000BC7C
        elseif ckYVar == -21
          return 0x0000BC5B
        elseif ckYVar == -20
          return 0x0000BC3A
        elseif ckYVar == -19
          return 0x0000BC19
        elseif ckYVar == -18
          return 0x0000BBF8
        elseif ckYVar == -17
          return 0x0000BBD7
        elseif ckYVar == -16
          return 0x0000BBB6
        elseif ckYVar == -15
          return 0x0000BB95
        elseif ckYVar == -14
          return 0x0000BB74
        elseif ckYVar == -13
          return 0x0000BB53
        elseif ckYVar == -12
          return 0x0000BB32
        elseif ckYVar == -11
          return 0x0000BB11
        elseif ckYVar == -10
          return 0x0000BAF0
        elseif ckYVar == -9
          return 0x0000BACF
        elseif ckYVar == -8
          return 0x0000BAAE
        elseif ckYVar == -7
          return 0x0000BA8D
        elseif ckYVar == -6
          return 0x0000BA6C
        elseif ckYVar == -5
          return 0x0000BA4B
        elseif ckYVar == -4
          return 0x0000BA2A
        elseif ckYVar == -3
          return 0x0000BA09
        elseif ckYVar == -2
          return 0x0000B9E8
        elseif ckYVar == -1
          return 0x0000B9C7
        elseif ckYVar == 0
          return 0x0000B9A6
        elseif ckYVar == 1
          return 0x0000B586
        elseif ckYVar == 2
          return 0x0000B565
        elseif ckYVar == 3
          return 0x0000B544
        elseif ckYVar == 4
          return 0x0000B523
        elseif ckYVar == 5
          return 0x0000B502
        elseif ckYVar == 6
          return 0x0000B4E1
        elseif ckYVar == 7
          return 0x0000B4C0
        elseif ckYVar == 8
          return 0x0000B49F
        elseif ckYVar == 9
          return 0x0000B47E
        elseif ckYVar == 10
          return 0x0000B45D
        elseif ckYVar == 11
          return 0x0000B43C
        elseif ckYVar == 12
          return 0x0000B41B
        elseif ckYVar == 13
          return 0x0000B3FA
        elseif ckYVar == 14
          return 0x0000B3D9
        elseif ckYVar == 15
          return 0x0000B3B8
        elseif ckYVar == 16
          return 0x0000B397
        elseif ckYVar == 17
          return 0x0000B376
        elseif ckYVar == 18
          return 0x0000B355
        elseif ckYVar == 19
          return 0x0000B334
        elseif ckYVar == 20
          return 0x0000B313
        elseif ckYVar == 21
          return 0x0000B2F2
        elseif ckYVar == 22
          return 0x0000B2D1
        elseif ckYVar == 23
          return 0x0000B2B0
        elseif ckYVar == 24
          return 0x0000B28F
        elseif ckYVar == 25
          return 0x0000B26E
        elseif ckYVar == 26
          return 0x0000B24D
        elseif ckYVar == 27
          return 0x0000B22C
        elseif ckYVar == 28
          return 0x0000B20B
        elseif ckYVar == 29
          return 0x0000B1EA
        elseif ckYVar == 30
          return 0x0000B1C9
        elseif ckYVar == 31
          return 0x0000B1A8
        elseif ckYVar == 32
          return 0x00005D96
        elseif ckYVar == 33
          return 0x00005D95
        elseif ckYVar == 34
          return 0x00005D70
        elseif ckYVar == 35
          return 0x00005D4F
        elseif ckYVar == 36
          return 0x00005D2E
        elseif ckYVar == 37
          return 0x00005D0D
        elseif ckYVar == 38
          return 0x00005CEC
        elseif ckYVar == 39
          return 0x00005CCB
        elseif ckYVar == 40
          return 0x00005CAA
        elseif ckYVar == 41
          return 0x00005C89
        elseif ckYVar == 42
          return 0x00005C68
        elseif ckYVar == 43
          return 0x00005C47
        elseif ckYVar == 44
          return 0x00005C26
        elseif ckYVar == 45
          return 0x00005C05
        elseif ckYVar == 46
          return 0x00005BE4
        elseif ckYVar == 47
          return 0x00005BC3
        elseif ckYVar == 48
          return 0x00005BA2
        elseif ckYVar == 49
          return 0x00005B81
        elseif ckYVar == 50
          return 0x00005B60
        endif
      elseif ckXVar == 61
        if ckYVar == -43
          return 0x000112F1
        elseif ckYVar == -42
          return 0x000112D0
        elseif ckYVar == -41
          return 0x000112AF
        elseif ckYVar == -40
          return 0x0001128E
        elseif ckYVar == -39
          return 0x0001126D
        elseif ckYVar == -38
          return 0x0001124C
        elseif ckYVar == -37
          return 0x0001122B
        elseif ckYVar == -36
          return 0x0001120A
        elseif ckYVar == -35
          return 0x000111E9
        elseif ckYVar == -34
          return 0x000111C8
        elseif ckYVar == -33
          return 0x000111A7
        elseif ckYVar == -32
          return 0x0000BDA8
        elseif ckYVar == -31
          return 0x0000BDA7
        elseif ckYVar == -30
          return 0x0000BD83
        elseif ckYVar == -29
          return 0x0000BD62
        elseif ckYVar == -28
          return 0x0000BD41
        elseif ckYVar == -27
          return 0x0000BD20
        elseif ckYVar == -26
          return 0x0000BCFF
        elseif ckYVar == -25
          return 0x0000BCDE
        elseif ckYVar == -24
          return 0x0000BCBD
        elseif ckYVar == -23
          return 0x0000BC9C
        elseif ckYVar == -22
          return 0x0000BC7B
        elseif ckYVar == -21
          return 0x0000BC5A
        elseif ckYVar == -20
          return 0x0000BC39
        elseif ckYVar == -19
          return 0x0000BC18
        elseif ckYVar == -18
          return 0x0000BBF7
        elseif ckYVar == -17
          return 0x0000BBD6
        elseif ckYVar == -16
          return 0x0000BBB5
        elseif ckYVar == -15
          return 0x0000BB94
        elseif ckYVar == -14
          return 0x0000BB73
        elseif ckYVar == -13
          return 0x0000BB52
        elseif ckYVar == -12
          return 0x0000BB31
        elseif ckYVar == -11
          return 0x0000BB10
        elseif ckYVar == -10
          return 0x0000BAEF
        elseif ckYVar == -9
          return 0x0000BACE
        elseif ckYVar == -8
          return 0x0000BAAD
        elseif ckYVar == -7
          return 0x0000BA8C
        elseif ckYVar == -6
          return 0x0000BA6B
        elseif ckYVar == -5
          return 0x0000BA4A
        elseif ckYVar == -4
          return 0x0000BA29
        elseif ckYVar == -3
          return 0x0000BA08
        elseif ckYVar == -2
          return 0x0000B9E7
        elseif ckYVar == -1
          return 0x0000B9C6
        elseif ckYVar == 0
          return 0x0000B9A5
        elseif ckYVar == 1
          return 0x0000B585
        elseif ckYVar == 2
          return 0x0000B564
        elseif ckYVar == 3
          return 0x0000B543
        elseif ckYVar == 4
          return 0x0000B522
        elseif ckYVar == 5
          return 0x0000B501
        elseif ckYVar == 6
          return 0x0000B4E0
        elseif ckYVar == 7
          return 0x0000B4BF
        elseif ckYVar == 8
          return 0x0000B49E
        elseif ckYVar == 9
          return 0x0000B47D
        elseif ckYVar == 10
          return 0x0000B45C
        elseif ckYVar == 11
          return 0x0000B43B
        elseif ckYVar == 12
          return 0x0000B41A
        elseif ckYVar == 13
          return 0x0000B3F9
        elseif ckYVar == 14
          return 0x0000B3D8
        elseif ckYVar == 15
          return 0x0000B3B7
        elseif ckYVar == 16
          return 0x0000B396
        elseif ckYVar == 17
          return 0x0000B375
        elseif ckYVar == 18
          return 0x0000B354
        elseif ckYVar == 19
          return 0x0000B333
        elseif ckYVar == 20
          return 0x0000B312
        elseif ckYVar == 21
          return 0x0000B2F1
        elseif ckYVar == 22
          return 0x0000B2D0
        elseif ckYVar == 23
          return 0x0000B2AF
        elseif ckYVar == 24
          return 0x0000B28E
        elseif ckYVar == 25
          return 0x0000B26D
        elseif ckYVar == 26
          return 0x0000B24C
        elseif ckYVar == 27
          return 0x0000B22B
        elseif ckYVar == 28
          return 0x0000B20A
        elseif ckYVar == 29
          return 0x0000B1E9
        elseif ckYVar == 30
          return 0x0000B1C8
        elseif ckYVar == 31
          return 0x0000B1A7
        elseif ckYVar == 32
          return 0x00005D94
        elseif ckYVar == 33
          return 0x00005D93
        elseif ckYVar == 34
          return 0x00005D6F
        elseif ckYVar == 35
          return 0x00005D4E
        elseif ckYVar == 36
          return 0x00005D2D
        elseif ckYVar == 37
          return 0x00005D0C
        elseif ckYVar == 38
          return 0x00005CEB
        elseif ckYVar == 39
          return 0x00005CCA
        elseif ckYVar == 40
          return 0x00005CA9
        elseif ckYVar == 41
          return 0x00005C88
        elseif ckYVar == 42
          return 0x00005C67
        elseif ckYVar == 43
          return 0x00005C46
        elseif ckYVar == 44
          return 0x00005C25
        elseif ckYVar == 45
          return 0x00005C04
        elseif ckYVar == 46
          return 0x00005BE3
        elseif ckYVar == 47
          return 0x00005BC2
        elseif ckYVar == 48
          return 0x00005BA1
        elseif ckYVar == 49
          return 0x00005B80
        elseif ckYVar == 50
          return 0x00005B5F
        endif
      endif
    endif
  endif
endfunction
