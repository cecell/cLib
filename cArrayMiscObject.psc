Scriptname cArrayMiscObject Hidden

Int function cGetVersion() global
  return 9001
endfunction

MiscObject[] function cArrayCreateMiscObject(Int indices, MiscObject filler = None, Bool outputTrace = TRUE, \
  Bool tryConsoleUtil = TRUE) global
  {Requirements: None}
  MiscObject[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace MiscObjects
    ; tryConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateMiscObject()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayMiscObject::" + msg + " Returning ArrayNone", 2)
      if tryConsoleUtil
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
                aArray = cArrayCreateMiscObject001()
              elseif indices < 3
                aArray = cArrayCreateMiscObject002()
              elseif indices < 4
                aArray = cArrayCreateMiscObject003()
              else
                aArray = cArrayCreateMiscObject004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateMiscObject005()
              elseif indices < 7
                aArray = cArrayCreateMiscObject006()
              elseif indices < 8
                aArray = cArrayCreateMiscObject007()
              else
                aArray = cArrayCreateMiscObject008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateMiscObject009()
              elseif indices < 11
                aArray = cArrayCreateMiscObject010()
              elseif indices < 12
                aArray = cArrayCreateMiscObject011()
              else
                aArray = cArrayCreateMiscObject012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateMiscObject013()
              elseif indices < 15
                aArray = cArrayCreateMiscObject014()
              elseif indices < 16
                aArray = cArrayCreateMiscObject015()
              else
                aArray = cArrayCreateMiscObject016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateMiscObject017()
              elseif indices < 19
                aArray = cArrayCreateMiscObject018()
              elseif indices < 20
                aArray = cArrayCreateMiscObject019()
              else
                aArray = cArrayCreateMiscObject020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateMiscObject021()
              elseif indices < 23
                aArray = cArrayCreateMiscObject022()
              elseif indices < 24
                aArray = cArrayCreateMiscObject023()
              else
                aArray = cArrayCreateMiscObject024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateMiscObject025()
              elseif indices < 27
                aArray = cArrayCreateMiscObject026()
              elseif indices < 28
                aArray = cArrayCreateMiscObject027()
              else
                aArray = cArrayCreateMiscObject028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateMiscObject029()
              elseif indices < 31
                aArray = cArrayCreateMiscObject030()
              elseif indices < 32
                aArray = cArrayCreateMiscObject031()
              else
                aArray = cArrayCreateMiscObject032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateMiscObject033()
              elseif indices < 35
                aArray = cArrayCreateMiscObject034()
              elseif indices < 36
                aArray = cArrayCreateMiscObject035()
              else
                aArray = cArrayCreateMiscObject036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateMiscObject037()
              elseif indices < 39
                aArray = cArrayCreateMiscObject038()
              elseif indices < 40
                aArray = cArrayCreateMiscObject039()
              else
                aArray = cArrayCreateMiscObject040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateMiscObject041()
              elseif indices < 43
                aArray = cArrayCreateMiscObject042()
              elseif indices < 44
                aArray = cArrayCreateMiscObject043()
              else
                aArray = cArrayCreateMiscObject044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateMiscObject045()
              elseif indices < 47
                aArray = cArrayCreateMiscObject046()
              elseif indices < 48
                aArray = cArrayCreateMiscObject047()
              else
                aArray = cArrayCreateMiscObject048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateMiscObject049()
              elseif indices < 51
                aArray = cArrayCreateMiscObject050()
              elseif indices < 52
                aArray = cArrayCreateMiscObject051()
              else
                aArray = cArrayCreateMiscObject052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateMiscObject053()
              elseif indices < 55
                aArray = cArrayCreateMiscObject054()
              elseif indices < 56
                aArray = cArrayCreateMiscObject055()
              else
                aArray = cArrayCreateMiscObject056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateMiscObject057()
              elseif indices < 59
                aArray = cArrayCreateMiscObject058()
              elseif indices < 60
                aArray = cArrayCreateMiscObject059()
              else
                aArray = cArrayCreateMiscObject060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateMiscObject061()
              elseif indices < 63
                aArray = cArrayCreateMiscObject062()
              elseif indices < 64
                aArray = cArrayCreateMiscObject063()
              else
                aArray = cArrayCreateMiscObject064()
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
                aArray = cArrayCreateMiscObject065()
              elseif indices < 67
                aArray = cArrayCreateMiscObject066()
              elseif indices < 68
                aArray = cArrayCreateMiscObject067()
              else
                aArray = cArrayCreateMiscObject068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateMiscObject069()
              elseif indices < 71
                aArray = cArrayCreateMiscObject070()
              elseif indices < 72
                aArray = cArrayCreateMiscObject071()
              else
                aArray = cArrayCreateMiscObject072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateMiscObject073()
              elseif indices < 75
                aArray = cArrayCreateMiscObject074()
              elseif indices < 76
                aArray = cArrayCreateMiscObject075()
              else
                aArray = cArrayCreateMiscObject076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateMiscObject077()
              elseif indices < 79
                aArray = cArrayCreateMiscObject078()
              elseif indices < 80
                aArray = cArrayCreateMiscObject079()
              else
                aArray = cArrayCreateMiscObject080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateMiscObject081()
              elseif indices < 83
                aArray = cArrayCreateMiscObject082()
              elseif indices < 84
                aArray = cArrayCreateMiscObject083()
              else
                aArray = cArrayCreateMiscObject084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateMiscObject085()
              elseif indices < 87
                aArray = cArrayCreateMiscObject086()
              elseif indices < 88
                aArray = cArrayCreateMiscObject087()
              else
                aArray = cArrayCreateMiscObject088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateMiscObject089()
              elseif indices < 91
                aArray = cArrayCreateMiscObject090()
              elseif indices < 92
                aArray = cArrayCreateMiscObject091()
              else
                aArray = cArrayCreateMiscObject092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateMiscObject093()
              elseif indices < 95
                aArray = cArrayCreateMiscObject094()
              elseif indices < 96
                aArray = cArrayCreateMiscObject095()
              else
                aArray = cArrayCreateMiscObject096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateMiscObject097()
              elseif indices < 99
                aArray = cArrayCreateMiscObject098()
              elseif indices < 100
                aArray = cArrayCreateMiscObject099()
              else
                aArray = cArrayCreateMiscObject100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateMiscObject101()
              elseif indices < 103
                aArray = cArrayCreateMiscObject102()
              elseif indices < 104
                aArray = cArrayCreateMiscObject103()
              else
                aArray = cArrayCreateMiscObject104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateMiscObject105()
              elseif indices < 107
                aArray = cArrayCreateMiscObject106()
              elseif indices < 108
                aArray = cArrayCreateMiscObject107()
              else
                aArray = cArrayCreateMiscObject108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateMiscObject109()
              elseif indices < 111
                aArray = cArrayCreateMiscObject110()
              elseif indices < 112
                aArray = cArrayCreateMiscObject111()
              else
                aArray = cArrayCreateMiscObject112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateMiscObject113()
              elseif indices < 115
                aArray = cArrayCreateMiscObject114()
              elseif indices < 116
                aArray = cArrayCreateMiscObject115()
              else
                aArray = cArrayCreateMiscObject116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateMiscObject117()
              elseif indices < 119
                aArray = cArrayCreateMiscObject118()
              elseif indices < 120
                aArray = cArrayCreateMiscObject119()
              else
                aArray = cArrayCreateMiscObject120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateMiscObject121()
              elseif indices < 123
                aArray = cArrayCreateMiscObject122()
              elseif indices < 124
                aArray = cArrayCreateMiscObject123()
              else
                aArray = cArrayCreateMiscObject124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateMiscObject125()
              elseif indices < 127
                aArray = cArrayCreateMiscObject126()
              elseif indices < 128
                aArray = cArrayCreateMiscObject127()
              else
                aArray = cArrayCreateMiscObject128()
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

MiscObject[] function cArrayCreateMiscObject001() global
  MiscObject[] aArr = New MiscObject[1]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject002() global
  MiscObject[] aArr = New MiscObject[2]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject003() global
  MiscObject[] aArr = New MiscObject[3]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject004() global
  MiscObject[] aArr = New MiscObject[4]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject005() global
  MiscObject[] aArr = New MiscObject[5]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject006() global
  MiscObject[] aArr = New MiscObject[6]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject007() global
  MiscObject[] aArr = New MiscObject[7]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject008() global
  MiscObject[] aArr = New MiscObject[8]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject009() global
  MiscObject[] aArr = New MiscObject[9]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject010() global
  MiscObject[] aArr = New MiscObject[10]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject011() global
  MiscObject[] aArr = New MiscObject[11]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject012() global
  MiscObject[] aArr = New MiscObject[12]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject013() global
  MiscObject[] aArr = New MiscObject[13]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject014() global
  MiscObject[] aArr = New MiscObject[14]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject015() global
  MiscObject[] aArr = New MiscObject[15]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject016() global
  MiscObject[] aArr = New MiscObject[16]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject017() global
  MiscObject[] aArr = New MiscObject[17]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject018() global
  MiscObject[] aArr = New MiscObject[18]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject019() global
  MiscObject[] aArr = New MiscObject[19]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject020() global
  MiscObject[] aArr = New MiscObject[20]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject021() global
  MiscObject[] aArr = New MiscObject[21]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject022() global
  MiscObject[] aArr = New MiscObject[22]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject023() global
  MiscObject[] aArr = New MiscObject[23]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject024() global
  MiscObject[] aArr = New MiscObject[24]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject025() global
  MiscObject[] aArr = New MiscObject[25]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject026() global
  MiscObject[] aArr = New MiscObject[26]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject027() global
  MiscObject[] aArr = New MiscObject[27]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject028() global
  MiscObject[] aArr = New MiscObject[28]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject029() global
  MiscObject[] aArr = New MiscObject[29]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject030() global
  MiscObject[] aArr = New MiscObject[30]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject031() global
  MiscObject[] aArr = New MiscObject[31]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject032() global
  MiscObject[] aArr = New MiscObject[32]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject033() global
  MiscObject[] aArr = New MiscObject[33]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject034() global
  MiscObject[] aArr = New MiscObject[34]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject035() global
  MiscObject[] aArr = New MiscObject[35]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject036() global
  MiscObject[] aArr = New MiscObject[36]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject037() global
  MiscObject[] aArr = New MiscObject[37]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject038() global
  MiscObject[] aArr = New MiscObject[38]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject039() global
  MiscObject[] aArr = New MiscObject[39]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject040() global
  MiscObject[] aArr = New MiscObject[40]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject041() global
  MiscObject[] aArr = New MiscObject[41]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject042() global
  MiscObject[] aArr = New MiscObject[42]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject043() global
  MiscObject[] aArr = New MiscObject[43]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject044() global
  MiscObject[] aArr = New MiscObject[44]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject045() global
  MiscObject[] aArr = New MiscObject[45]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject046() global
  MiscObject[] aArr = New MiscObject[46]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject047() global
  MiscObject[] aArr = New MiscObject[47]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject048() global
  MiscObject[] aArr = New MiscObject[48]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject049() global
  MiscObject[] aArr = New MiscObject[49]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject050() global
  MiscObject[] aArr = New MiscObject[50]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject051() global
  MiscObject[] aArr = New MiscObject[51]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject052() global
  MiscObject[] aArr = New MiscObject[52]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject053() global
  MiscObject[] aArr = New MiscObject[53]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject054() global
  MiscObject[] aArr = New MiscObject[54]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject055() global
  MiscObject[] aArr = New MiscObject[55]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject056() global
  MiscObject[] aArr = New MiscObject[56]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject057() global
  MiscObject[] aArr = New MiscObject[57]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject058() global
  MiscObject[] aArr = New MiscObject[58]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject059() global
  MiscObject[] aArr = New MiscObject[59]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject060() global
  MiscObject[] aArr = New MiscObject[60]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject061() global
  MiscObject[] aArr = New MiscObject[61]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject062() global
  MiscObject[] aArr = New MiscObject[62]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject063() global
  MiscObject[] aArr = New MiscObject[63]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject064() global
  MiscObject[] aArr = New MiscObject[64]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject065() global
  MiscObject[] aArr = New MiscObject[65]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject066() global
  MiscObject[] aArr = New MiscObject[66]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject067() global
  MiscObject[] aArr = New MiscObject[67]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject068() global
  MiscObject[] aArr = New MiscObject[68]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject069() global
  MiscObject[] aArr = New MiscObject[69]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject070() global
  MiscObject[] aArr = New MiscObject[70]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject071() global
  MiscObject[] aArr = New MiscObject[71]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject072() global
  MiscObject[] aArr = New MiscObject[72]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject073() global
  MiscObject[] aArr = New MiscObject[73]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject074() global
  MiscObject[] aArr = New MiscObject[74]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject075() global
  MiscObject[] aArr = New MiscObject[75]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject076() global
  MiscObject[] aArr = New MiscObject[76]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject077() global
  MiscObject[] aArr = New MiscObject[77]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject078() global
  MiscObject[] aArr = New MiscObject[78]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject079() global
  MiscObject[] aArr = New MiscObject[79]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject080() global
  MiscObject[] aArr = New MiscObject[80]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject081() global
  MiscObject[] aArr = New MiscObject[81]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject082() global
  MiscObject[] aArr = New MiscObject[82]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject083() global
  MiscObject[] aArr = New MiscObject[83]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject084() global
  MiscObject[] aArr = New MiscObject[84]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject085() global
  MiscObject[] aArr = New MiscObject[85]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject086() global
  MiscObject[] aArr = New MiscObject[86]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject087() global
  MiscObject[] aArr = New MiscObject[87]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject088() global
  MiscObject[] aArr = New MiscObject[88]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject089() global
  MiscObject[] aArr = New MiscObject[89]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject090() global
  MiscObject[] aArr = New MiscObject[90]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject091() global
  MiscObject[] aArr = New MiscObject[91]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject092() global
  MiscObject[] aArr = New MiscObject[92]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject093() global
  MiscObject[] aArr = New MiscObject[93]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject094() global
  MiscObject[] aArr = New MiscObject[94]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject095() global
  MiscObject[] aArr = New MiscObject[95]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject096() global
  MiscObject[] aArr = New MiscObject[96]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject097() global
  MiscObject[] aArr = New MiscObject[97]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject098() global
  MiscObject[] aArr = New MiscObject[98]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject099() global
  MiscObject[] aArr = New MiscObject[99]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject100() global
  MiscObject[] aArr = New MiscObject[100]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject101() global
  MiscObject[] aArr = New MiscObject[101]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject102() global
  MiscObject[] aArr = New MiscObject[102]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject103() global
  MiscObject[] aArr = New MiscObject[103]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject104() global
  MiscObject[] aArr = New MiscObject[104]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject105() global
  MiscObject[] aArr = New MiscObject[105]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject106() global
  MiscObject[] aArr = New MiscObject[106]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject107() global
  MiscObject[] aArr = New MiscObject[107]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject108() global
  MiscObject[] aArr = New MiscObject[108]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject109() global
  MiscObject[] aArr = New MiscObject[109]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject110() global
  MiscObject[] aArr = New MiscObject[110]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject111() global
  MiscObject[] aArr = New MiscObject[111]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject112() global
  MiscObject[] aArr = New MiscObject[112]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject113() global
  MiscObject[] aArr = New MiscObject[113]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject114() global
  MiscObject[] aArr = New MiscObject[114]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject115() global
  MiscObject[] aArr = New MiscObject[115]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject116() global
  MiscObject[] aArr = New MiscObject[116]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject117() global
  MiscObject[] aArr = New MiscObject[117]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject118() global
  MiscObject[] aArr = New MiscObject[118]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject119() global
  MiscObject[] aArr = New MiscObject[119]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject120() global
  MiscObject[] aArr = New MiscObject[120]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject121() global
  MiscObject[] aArr = New MiscObject[121]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject122() global
  MiscObject[] aArr = New MiscObject[122]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject123() global
  MiscObject[] aArr = New MiscObject[123]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject124() global
  MiscObject[] aArr = New MiscObject[124]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject125() global
  MiscObject[] aArr = New MiscObject[125]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject126() global
  MiscObject[] aArr = New MiscObject[126]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject127() global
  MiscObject[] aArr = New MiscObject[127]
  return aArr
endfunction
MiscObject[] function cArrayCreateMiscObject128() global
  MiscObject[] aArr = New MiscObject[128]
  return aArr
endfunction
