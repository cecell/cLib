Scriptname cArrayConstructibleObject Hidden

Int function cGetVersion() global
  return 9001
endfunction

ConstructibleObject[] function cArrayCreateConstructibleObject(Int indices, ConstructibleObject filler = None, Bool outputTrace = TRUE, \
  Bool useConsoleUtil = TRUE) global
  {Requirements: None}
  ConstructibleObject[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; useConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateConstructibleObject()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayConstructibleObject::" + msg + " Returning ArrayNone", 2)
      if useConsoleUtil && clibUse.cUseConsoleUtil()
        ConsoleUtil.PrintMessage(msg)
      endif
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                aArray = cArrayCreateConstructibleObject001()
              elseif indices < 3
                aArray = cArrayCreateConstructibleObject002()
              elseif indices < 4
                aArray = cArrayCreateConstructibleObject003()
              else
                aArray = cArrayCreateConstructibleObject004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateConstructibleObject005()
              elseif indices < 7
                aArray = cArrayCreateConstructibleObject006()
              elseif indices < 8
                aArray = cArrayCreateConstructibleObject007()
              else
                aArray = cArrayCreateConstructibleObject008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateConstructibleObject009()
              elseif indices < 11
                aArray = cArrayCreateConstructibleObject010()
              elseif indices < 12
                aArray = cArrayCreateConstructibleObject011()
              else
                aArray = cArrayCreateConstructibleObject012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateConstructibleObject013()
              elseif indices < 15
                aArray = cArrayCreateConstructibleObject014()
              elseif indices < 16
                aArray = cArrayCreateConstructibleObject015()
              else
                aArray = cArrayCreateConstructibleObject016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateConstructibleObject017()
              elseif indices < 19
                aArray = cArrayCreateConstructibleObject018()
              elseif indices < 20
                aArray = cArrayCreateConstructibleObject019()
              else
                aArray = cArrayCreateConstructibleObject020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateConstructibleObject021()
              elseif indices < 23
                aArray = cArrayCreateConstructibleObject022()
              elseif indices < 24
                aArray = cArrayCreateConstructibleObject023()
              else
                aArray = cArrayCreateConstructibleObject024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateConstructibleObject025()
              elseif indices < 27
                aArray = cArrayCreateConstructibleObject026()
              elseif indices < 28
                aArray = cArrayCreateConstructibleObject027()
              else
                aArray = cArrayCreateConstructibleObject028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateConstructibleObject029()
              elseif indices < 31
                aArray = cArrayCreateConstructibleObject030()
              elseif indices < 32
                aArray = cArrayCreateConstructibleObject031()
              else
                aArray = cArrayCreateConstructibleObject032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateConstructibleObject033()
              elseif indices < 35
                aArray = cArrayCreateConstructibleObject034()
              elseif indices < 36
                aArray = cArrayCreateConstructibleObject035()
              else
                aArray = cArrayCreateConstructibleObject036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateConstructibleObject037()
              elseif indices < 39
                aArray = cArrayCreateConstructibleObject038()
              elseif indices < 40
                aArray = cArrayCreateConstructibleObject039()
              else
                aArray = cArrayCreateConstructibleObject040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateConstructibleObject041()
              elseif indices < 43
                aArray = cArrayCreateConstructibleObject042()
              elseif indices < 44
                aArray = cArrayCreateConstructibleObject043()
              else
                aArray = cArrayCreateConstructibleObject044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateConstructibleObject045()
              elseif indices < 47
                aArray = cArrayCreateConstructibleObject046()
              elseif indices < 48
                aArray = cArrayCreateConstructibleObject047()
              else
                aArray = cArrayCreateConstructibleObject048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateConstructibleObject049()
              elseif indices < 51
                aArray = cArrayCreateConstructibleObject050()
              elseif indices < 52
                aArray = cArrayCreateConstructibleObject051()
              else
                aArray = cArrayCreateConstructibleObject052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateConstructibleObject053()
              elseif indices < 55
                aArray = cArrayCreateConstructibleObject054()
              elseif indices < 56
                aArray = cArrayCreateConstructibleObject055()
              else
                aArray = cArrayCreateConstructibleObject056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateConstructibleObject057()
              elseif indices < 59
                aArray = cArrayCreateConstructibleObject058()
              elseif indices < 60
                aArray = cArrayCreateConstructibleObject059()
              else
                aArray = cArrayCreateConstructibleObject060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateConstructibleObject061()
              elseif indices < 63
                aArray = cArrayCreateConstructibleObject062()
              elseif indices < 64
                aArray = cArrayCreateConstructibleObject063()
              else
                aArray = cArrayCreateConstructibleObject064()
              endif
            endif
          endif
        endif
      endif
    else
      if indices < 97
        if indices < 81
          if indices < 73
            if indices < 69
              if indices < 66
                aArray = cArrayCreateConstructibleObject065()
              elseif indices < 67
                aArray = cArrayCreateConstructibleObject066()
              elseif indices < 68
                aArray = cArrayCreateConstructibleObject067()
              else
                aArray = cArrayCreateConstructibleObject068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateConstructibleObject069()
              elseif indices < 71
                aArray = cArrayCreateConstructibleObject070()
              elseif indices < 72
                aArray = cArrayCreateConstructibleObject071()
              else
                aArray = cArrayCreateConstructibleObject072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateConstructibleObject073()
              elseif indices < 75
                aArray = cArrayCreateConstructibleObject074()
              elseif indices < 76
                aArray = cArrayCreateConstructibleObject075()
              else
                aArray = cArrayCreateConstructibleObject076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateConstructibleObject077()
              elseif indices < 79
                aArray = cArrayCreateConstructibleObject078()
              elseif indices < 80
                aArray = cArrayCreateConstructibleObject079()
              else
                aArray = cArrayCreateConstructibleObject080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateConstructibleObject081()
              elseif indices < 83
                aArray = cArrayCreateConstructibleObject082()
              elseif indices < 84
                aArray = cArrayCreateConstructibleObject083()
              else
                aArray = cArrayCreateConstructibleObject084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateConstructibleObject085()
              elseif indices < 87
                aArray = cArrayCreateConstructibleObject086()
              elseif indices < 88
                aArray = cArrayCreateConstructibleObject087()
              else
                aArray = cArrayCreateConstructibleObject088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateConstructibleObject089()
              elseif indices < 91
                aArray = cArrayCreateConstructibleObject090()
              elseif indices < 92
                aArray = cArrayCreateConstructibleObject091()
              else
                aArray = cArrayCreateConstructibleObject092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateConstructibleObject093()
              elseif indices < 95
                aArray = cArrayCreateConstructibleObject094()
              elseif indices < 96
                aArray = cArrayCreateConstructibleObject095()
              else
                aArray = cArrayCreateConstructibleObject096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateConstructibleObject097()
              elseif indices < 99
                aArray = cArrayCreateConstructibleObject098()
              elseif indices < 100
                aArray = cArrayCreateConstructibleObject099()
              else
                aArray = cArrayCreateConstructibleObject100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateConstructibleObject101()
              elseif indices < 103
                aArray = cArrayCreateConstructibleObject102()
              elseif indices < 104
                aArray = cArrayCreateConstructibleObject103()
              else
                aArray = cArrayCreateConstructibleObject104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateConstructibleObject105()
              elseif indices < 107
                aArray = cArrayCreateConstructibleObject106()
              elseif indices < 108
                aArray = cArrayCreateConstructibleObject107()
              else
                aArray = cArrayCreateConstructibleObject108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateConstructibleObject109()
              elseif indices < 111
                aArray = cArrayCreateConstructibleObject110()
              elseif indices < 112
                aArray = cArrayCreateConstructibleObject111()
              else
                aArray = cArrayCreateConstructibleObject112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateConstructibleObject113()
              elseif indices < 115
                aArray = cArrayCreateConstructibleObject114()
              elseif indices < 116
                aArray = cArrayCreateConstructibleObject115()
              else
                aArray = cArrayCreateConstructibleObject116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateConstructibleObject117()
              elseif indices < 119
                aArray = cArrayCreateConstructibleObject118()
              elseif indices < 120
                aArray = cArrayCreateConstructibleObject119()
              else
                aArray = cArrayCreateConstructibleObject120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateConstructibleObject121()
              elseif indices < 123
                aArray = cArrayCreateConstructibleObject122()
              elseif indices < 124
                aArray = cArrayCreateConstructibleObject123()
              else
                aArray = cArrayCreateConstructibleObject124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateConstructibleObject125()
              elseif indices < 127
                aArray = cArrayCreateConstructibleObject126()
              elseif indices < 128
                aArray = cArrayCreateConstructibleObject127()
              else
                aArray = cArrayCreateConstructibleObject128()
              endif
            endif
          endif
        endif
      endif
    endif
  endif
  if filler
    Int i = 0
    while i < aArray.length
      aArray[i] = filler
      i += 1
    endwhile
  endif
  return aArray
endfunction

ConstructibleObject[] function cArrayCreateConstructibleObject001() global
  ConstructibleObject[] aArr = New ConstructibleObject[1]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject002() global
  ConstructibleObject[] aArr = New ConstructibleObject[2]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject003() global
  ConstructibleObject[] aArr = New ConstructibleObject[3]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject004() global
  ConstructibleObject[] aArr = New ConstructibleObject[4]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject005() global
  ConstructibleObject[] aArr = New ConstructibleObject[5]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject006() global
  ConstructibleObject[] aArr = New ConstructibleObject[6]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject007() global
  ConstructibleObject[] aArr = New ConstructibleObject[7]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject008() global
  ConstructibleObject[] aArr = New ConstructibleObject[8]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject009() global
  ConstructibleObject[] aArr = New ConstructibleObject[9]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject010() global
  ConstructibleObject[] aArr = New ConstructibleObject[10]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject011() global
  ConstructibleObject[] aArr = New ConstructibleObject[11]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject012() global
  ConstructibleObject[] aArr = New ConstructibleObject[12]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject013() global
  ConstructibleObject[] aArr = New ConstructibleObject[13]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject014() global
  ConstructibleObject[] aArr = New ConstructibleObject[14]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject015() global
  ConstructibleObject[] aArr = New ConstructibleObject[15]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject016() global
  ConstructibleObject[] aArr = New ConstructibleObject[16]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject017() global
  ConstructibleObject[] aArr = New ConstructibleObject[17]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject018() global
  ConstructibleObject[] aArr = New ConstructibleObject[18]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject019() global
  ConstructibleObject[] aArr = New ConstructibleObject[19]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject020() global
  ConstructibleObject[] aArr = New ConstructibleObject[20]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject021() global
  ConstructibleObject[] aArr = New ConstructibleObject[21]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject022() global
  ConstructibleObject[] aArr = New ConstructibleObject[22]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject023() global
  ConstructibleObject[] aArr = New ConstructibleObject[23]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject024() global
  ConstructibleObject[] aArr = New ConstructibleObject[24]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject025() global
  ConstructibleObject[] aArr = New ConstructibleObject[25]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject026() global
  ConstructibleObject[] aArr = New ConstructibleObject[26]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject027() global
  ConstructibleObject[] aArr = New ConstructibleObject[27]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject028() global
  ConstructibleObject[] aArr = New ConstructibleObject[28]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject029() global
  ConstructibleObject[] aArr = New ConstructibleObject[29]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject030() global
  ConstructibleObject[] aArr = New ConstructibleObject[30]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject031() global
  ConstructibleObject[] aArr = New ConstructibleObject[31]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject032() global
  ConstructibleObject[] aArr = New ConstructibleObject[32]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject033() global
  ConstructibleObject[] aArr = New ConstructibleObject[33]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject034() global
  ConstructibleObject[] aArr = New ConstructibleObject[34]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject035() global
  ConstructibleObject[] aArr = New ConstructibleObject[35]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject036() global
  ConstructibleObject[] aArr = New ConstructibleObject[36]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject037() global
  ConstructibleObject[] aArr = New ConstructibleObject[37]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject038() global
  ConstructibleObject[] aArr = New ConstructibleObject[38]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject039() global
  ConstructibleObject[] aArr = New ConstructibleObject[39]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject040() global
  ConstructibleObject[] aArr = New ConstructibleObject[40]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject041() global
  ConstructibleObject[] aArr = New ConstructibleObject[41]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject042() global
  ConstructibleObject[] aArr = New ConstructibleObject[42]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject043() global
  ConstructibleObject[] aArr = New ConstructibleObject[43]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject044() global
  ConstructibleObject[] aArr = New ConstructibleObject[44]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject045() global
  ConstructibleObject[] aArr = New ConstructibleObject[45]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject046() global
  ConstructibleObject[] aArr = New ConstructibleObject[46]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject047() global
  ConstructibleObject[] aArr = New ConstructibleObject[47]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject048() global
  ConstructibleObject[] aArr = New ConstructibleObject[48]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject049() global
  ConstructibleObject[] aArr = New ConstructibleObject[49]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject050() global
  ConstructibleObject[] aArr = New ConstructibleObject[50]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject051() global
  ConstructibleObject[] aArr = New ConstructibleObject[51]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject052() global
  ConstructibleObject[] aArr = New ConstructibleObject[52]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject053() global
  ConstructibleObject[] aArr = New ConstructibleObject[53]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject054() global
  ConstructibleObject[] aArr = New ConstructibleObject[54]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject055() global
  ConstructibleObject[] aArr = New ConstructibleObject[55]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject056() global
  ConstructibleObject[] aArr = New ConstructibleObject[56]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject057() global
  ConstructibleObject[] aArr = New ConstructibleObject[57]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject058() global
  ConstructibleObject[] aArr = New ConstructibleObject[58]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject059() global
  ConstructibleObject[] aArr = New ConstructibleObject[59]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject060() global
  ConstructibleObject[] aArr = New ConstructibleObject[60]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject061() global
  ConstructibleObject[] aArr = New ConstructibleObject[61]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject062() global
  ConstructibleObject[] aArr = New ConstructibleObject[62]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject063() global
  ConstructibleObject[] aArr = New ConstructibleObject[63]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject064() global
  ConstructibleObject[] aArr = New ConstructibleObject[64]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject065() global
  ConstructibleObject[] aArr = New ConstructibleObject[65]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject066() global
  ConstructibleObject[] aArr = New ConstructibleObject[66]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject067() global
  ConstructibleObject[] aArr = New ConstructibleObject[67]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject068() global
  ConstructibleObject[] aArr = New ConstructibleObject[68]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject069() global
  ConstructibleObject[] aArr = New ConstructibleObject[69]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject070() global
  ConstructibleObject[] aArr = New ConstructibleObject[70]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject071() global
  ConstructibleObject[] aArr = New ConstructibleObject[71]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject072() global
  ConstructibleObject[] aArr = New ConstructibleObject[72]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject073() global
  ConstructibleObject[] aArr = New ConstructibleObject[73]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject074() global
  ConstructibleObject[] aArr = New ConstructibleObject[74]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject075() global
  ConstructibleObject[] aArr = New ConstructibleObject[75]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject076() global
  ConstructibleObject[] aArr = New ConstructibleObject[76]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject077() global
  ConstructibleObject[] aArr = New ConstructibleObject[77]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject078() global
  ConstructibleObject[] aArr = New ConstructibleObject[78]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject079() global
  ConstructibleObject[] aArr = New ConstructibleObject[79]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject080() global
  ConstructibleObject[] aArr = New ConstructibleObject[80]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject081() global
  ConstructibleObject[] aArr = New ConstructibleObject[81]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject082() global
  ConstructibleObject[] aArr = New ConstructibleObject[82]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject083() global
  ConstructibleObject[] aArr = New ConstructibleObject[83]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject084() global
  ConstructibleObject[] aArr = New ConstructibleObject[84]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject085() global
  ConstructibleObject[] aArr = New ConstructibleObject[85]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject086() global
  ConstructibleObject[] aArr = New ConstructibleObject[86]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject087() global
  ConstructibleObject[] aArr = New ConstructibleObject[87]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject088() global
  ConstructibleObject[] aArr = New ConstructibleObject[88]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject089() global
  ConstructibleObject[] aArr = New ConstructibleObject[89]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject090() global
  ConstructibleObject[] aArr = New ConstructibleObject[90]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject091() global
  ConstructibleObject[] aArr = New ConstructibleObject[91]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject092() global
  ConstructibleObject[] aArr = New ConstructibleObject[92]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject093() global
  ConstructibleObject[] aArr = New ConstructibleObject[93]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject094() global
  ConstructibleObject[] aArr = New ConstructibleObject[94]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject095() global
  ConstructibleObject[] aArr = New ConstructibleObject[95]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject096() global
  ConstructibleObject[] aArr = New ConstructibleObject[96]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject097() global
  ConstructibleObject[] aArr = New ConstructibleObject[97]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject098() global
  ConstructibleObject[] aArr = New ConstructibleObject[98]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject099() global
  ConstructibleObject[] aArr = New ConstructibleObject[99]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject100() global
  ConstructibleObject[] aArr = New ConstructibleObject[100]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject101() global
  ConstructibleObject[] aArr = New ConstructibleObject[101]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject102() global
  ConstructibleObject[] aArr = New ConstructibleObject[102]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject103() global
  ConstructibleObject[] aArr = New ConstructibleObject[103]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject104() global
  ConstructibleObject[] aArr = New ConstructibleObject[104]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject105() global
  ConstructibleObject[] aArr = New ConstructibleObject[105]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject106() global
  ConstructibleObject[] aArr = New ConstructibleObject[106]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject107() global
  ConstructibleObject[] aArr = New ConstructibleObject[107]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject108() global
  ConstructibleObject[] aArr = New ConstructibleObject[108]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject109() global
  ConstructibleObject[] aArr = New ConstructibleObject[109]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject110() global
  ConstructibleObject[] aArr = New ConstructibleObject[110]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject111() global
  ConstructibleObject[] aArr = New ConstructibleObject[111]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject112() global
  ConstructibleObject[] aArr = New ConstructibleObject[112]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject113() global
  ConstructibleObject[] aArr = New ConstructibleObject[113]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject114() global
  ConstructibleObject[] aArr = New ConstructibleObject[114]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject115() global
  ConstructibleObject[] aArr = New ConstructibleObject[115]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject116() global
  ConstructibleObject[] aArr = New ConstructibleObject[116]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject117() global
  ConstructibleObject[] aArr = New ConstructibleObject[117]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject118() global
  ConstructibleObject[] aArr = New ConstructibleObject[118]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject119() global
  ConstructibleObject[] aArr = New ConstructibleObject[119]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject120() global
  ConstructibleObject[] aArr = New ConstructibleObject[120]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject121() global
  ConstructibleObject[] aArr = New ConstructibleObject[121]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject122() global
  ConstructibleObject[] aArr = New ConstructibleObject[122]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject123() global
  ConstructibleObject[] aArr = New ConstructibleObject[123]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject124() global
  ConstructibleObject[] aArr = New ConstructibleObject[124]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject125() global
  ConstructibleObject[] aArr = New ConstructibleObject[125]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject126() global
  ConstructibleObject[] aArr = New ConstructibleObject[126]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject127() global
  ConstructibleObject[] aArr = New ConstructibleObject[127]
  return aArr
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject128() global
  ConstructibleObject[] aArr = New ConstructibleObject[128]
  return aArr
endfunction
