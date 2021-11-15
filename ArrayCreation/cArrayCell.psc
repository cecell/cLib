Scriptname cArrayCell Hidden

Int function cGetVersion() global
  return 9001
endfunction

Cell[] function cArrayCreateCell(Int indices, Cell filler = None, Bool outputTrace = TRUE, \
  Bool useConsoleUtil = TRUE) global
  {Requirements: None}
  Cell[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; useConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateCell()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayCell::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateCell001()
              elseif indices < 3
                aArray = cArrayCreateCell002()
              elseif indices < 4
                aArray = cArrayCreateCell003()
              else
                aArray = cArrayCreateCell004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateCell005()
              elseif indices < 7
                aArray = cArrayCreateCell006()
              elseif indices < 8
                aArray = cArrayCreateCell007()
              else
                aArray = cArrayCreateCell008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateCell009()
              elseif indices < 11
                aArray = cArrayCreateCell010()
              elseif indices < 12
                aArray = cArrayCreateCell011()
              else
                aArray = cArrayCreateCell012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateCell013()
              elseif indices < 15
                aArray = cArrayCreateCell014()
              elseif indices < 16
                aArray = cArrayCreateCell015()
              else
                aArray = cArrayCreateCell016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateCell017()
              elseif indices < 19
                aArray = cArrayCreateCell018()
              elseif indices < 20
                aArray = cArrayCreateCell019()
              else
                aArray = cArrayCreateCell020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateCell021()
              elseif indices < 23
                aArray = cArrayCreateCell022()
              elseif indices < 24
                aArray = cArrayCreateCell023()
              else
                aArray = cArrayCreateCell024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateCell025()
              elseif indices < 27
                aArray = cArrayCreateCell026()
              elseif indices < 28
                aArray = cArrayCreateCell027()
              else
                aArray = cArrayCreateCell028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateCell029()
              elseif indices < 31
                aArray = cArrayCreateCell030()
              elseif indices < 32
                aArray = cArrayCreateCell031()
              else
                aArray = cArrayCreateCell032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateCell033()
              elseif indices < 35
                aArray = cArrayCreateCell034()
              elseif indices < 36
                aArray = cArrayCreateCell035()
              else
                aArray = cArrayCreateCell036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateCell037()
              elseif indices < 39
                aArray = cArrayCreateCell038()
              elseif indices < 40
                aArray = cArrayCreateCell039()
              else
                aArray = cArrayCreateCell040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateCell041()
              elseif indices < 43
                aArray = cArrayCreateCell042()
              elseif indices < 44
                aArray = cArrayCreateCell043()
              else
                aArray = cArrayCreateCell044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateCell045()
              elseif indices < 47
                aArray = cArrayCreateCell046()
              elseif indices < 48
                aArray = cArrayCreateCell047()
              else
                aArray = cArrayCreateCell048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateCell049()
              elseif indices < 51
                aArray = cArrayCreateCell050()
              elseif indices < 52
                aArray = cArrayCreateCell051()
              else
                aArray = cArrayCreateCell052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateCell053()
              elseif indices < 55
                aArray = cArrayCreateCell054()
              elseif indices < 56
                aArray = cArrayCreateCell055()
              else
                aArray = cArrayCreateCell056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateCell057()
              elseif indices < 59
                aArray = cArrayCreateCell058()
              elseif indices < 60
                aArray = cArrayCreateCell059()
              else
                aArray = cArrayCreateCell060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateCell061()
              elseif indices < 63
                aArray = cArrayCreateCell062()
              elseif indices < 64
                aArray = cArrayCreateCell063()
              else
                aArray = cArrayCreateCell064()
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
                aArray = cArrayCreateCell065()
              elseif indices < 67
                aArray = cArrayCreateCell066()
              elseif indices < 68
                aArray = cArrayCreateCell067()
              else
                aArray = cArrayCreateCell068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateCell069()
              elseif indices < 71
                aArray = cArrayCreateCell070()
              elseif indices < 72
                aArray = cArrayCreateCell071()
              else
                aArray = cArrayCreateCell072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateCell073()
              elseif indices < 75
                aArray = cArrayCreateCell074()
              elseif indices < 76
                aArray = cArrayCreateCell075()
              else
                aArray = cArrayCreateCell076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateCell077()
              elseif indices < 79
                aArray = cArrayCreateCell078()
              elseif indices < 80
                aArray = cArrayCreateCell079()
              else
                aArray = cArrayCreateCell080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateCell081()
              elseif indices < 83
                aArray = cArrayCreateCell082()
              elseif indices < 84
                aArray = cArrayCreateCell083()
              else
                aArray = cArrayCreateCell084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateCell085()
              elseif indices < 87
                aArray = cArrayCreateCell086()
              elseif indices < 88
                aArray = cArrayCreateCell087()
              else
                aArray = cArrayCreateCell088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateCell089()
              elseif indices < 91
                aArray = cArrayCreateCell090()
              elseif indices < 92
                aArray = cArrayCreateCell091()
              else
                aArray = cArrayCreateCell092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateCell093()
              elseif indices < 95
                aArray = cArrayCreateCell094()
              elseif indices < 96
                aArray = cArrayCreateCell095()
              else
                aArray = cArrayCreateCell096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateCell097()
              elseif indices < 99
                aArray = cArrayCreateCell098()
              elseif indices < 100
                aArray = cArrayCreateCell099()
              else
                aArray = cArrayCreateCell100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateCell101()
              elseif indices < 103
                aArray = cArrayCreateCell102()
              elseif indices < 104
                aArray = cArrayCreateCell103()
              else
                aArray = cArrayCreateCell104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateCell105()
              elseif indices < 107
                aArray = cArrayCreateCell106()
              elseif indices < 108
                aArray = cArrayCreateCell107()
              else
                aArray = cArrayCreateCell108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateCell109()
              elseif indices < 111
                aArray = cArrayCreateCell110()
              elseif indices < 112
                aArray = cArrayCreateCell111()
              else
                aArray = cArrayCreateCell112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateCell113()
              elseif indices < 115
                aArray = cArrayCreateCell114()
              elseif indices < 116
                aArray = cArrayCreateCell115()
              else
                aArray = cArrayCreateCell116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateCell117()
              elseif indices < 119
                aArray = cArrayCreateCell118()
              elseif indices < 120
                aArray = cArrayCreateCell119()
              else
                aArray = cArrayCreateCell120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateCell121()
              elseif indices < 123
                aArray = cArrayCreateCell122()
              elseif indices < 124
                aArray = cArrayCreateCell123()
              else
                aArray = cArrayCreateCell124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateCell125()
              elseif indices < 127
                aArray = cArrayCreateCell126()
              elseif indices < 128
                aArray = cArrayCreateCell127()
              else
                aArray = cArrayCreateCell128()
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

Cell[] function cArrayCreateCell001() global
  Cell[] aArr = New Cell[1]
  return aArr
endfunction
Cell[] function cArrayCreateCell002() global
  Cell[] aArr = New Cell[2]
  return aArr
endfunction
Cell[] function cArrayCreateCell003() global
  Cell[] aArr = New Cell[3]
  return aArr
endfunction
Cell[] function cArrayCreateCell004() global
  Cell[] aArr = New Cell[4]
  return aArr
endfunction
Cell[] function cArrayCreateCell005() global
  Cell[] aArr = New Cell[5]
  return aArr
endfunction
Cell[] function cArrayCreateCell006() global
  Cell[] aArr = New Cell[6]
  return aArr
endfunction
Cell[] function cArrayCreateCell007() global
  Cell[] aArr = New Cell[7]
  return aArr
endfunction
Cell[] function cArrayCreateCell008() global
  Cell[] aArr = New Cell[8]
  return aArr
endfunction
Cell[] function cArrayCreateCell009() global
  Cell[] aArr = New Cell[9]
  return aArr
endfunction
Cell[] function cArrayCreateCell010() global
  Cell[] aArr = New Cell[10]
  return aArr
endfunction
Cell[] function cArrayCreateCell011() global
  Cell[] aArr = New Cell[11]
  return aArr
endfunction
Cell[] function cArrayCreateCell012() global
  Cell[] aArr = New Cell[12]
  return aArr
endfunction
Cell[] function cArrayCreateCell013() global
  Cell[] aArr = New Cell[13]
  return aArr
endfunction
Cell[] function cArrayCreateCell014() global
  Cell[] aArr = New Cell[14]
  return aArr
endfunction
Cell[] function cArrayCreateCell015() global
  Cell[] aArr = New Cell[15]
  return aArr
endfunction
Cell[] function cArrayCreateCell016() global
  Cell[] aArr = New Cell[16]
  return aArr
endfunction
Cell[] function cArrayCreateCell017() global
  Cell[] aArr = New Cell[17]
  return aArr
endfunction
Cell[] function cArrayCreateCell018() global
  Cell[] aArr = New Cell[18]
  return aArr
endfunction
Cell[] function cArrayCreateCell019() global
  Cell[] aArr = New Cell[19]
  return aArr
endfunction
Cell[] function cArrayCreateCell020() global
  Cell[] aArr = New Cell[20]
  return aArr
endfunction
Cell[] function cArrayCreateCell021() global
  Cell[] aArr = New Cell[21]
  return aArr
endfunction
Cell[] function cArrayCreateCell022() global
  Cell[] aArr = New Cell[22]
  return aArr
endfunction
Cell[] function cArrayCreateCell023() global
  Cell[] aArr = New Cell[23]
  return aArr
endfunction
Cell[] function cArrayCreateCell024() global
  Cell[] aArr = New Cell[24]
  return aArr
endfunction
Cell[] function cArrayCreateCell025() global
  Cell[] aArr = New Cell[25]
  return aArr
endfunction
Cell[] function cArrayCreateCell026() global
  Cell[] aArr = New Cell[26]
  return aArr
endfunction
Cell[] function cArrayCreateCell027() global
  Cell[] aArr = New Cell[27]
  return aArr
endfunction
Cell[] function cArrayCreateCell028() global
  Cell[] aArr = New Cell[28]
  return aArr
endfunction
Cell[] function cArrayCreateCell029() global
  Cell[] aArr = New Cell[29]
  return aArr
endfunction
Cell[] function cArrayCreateCell030() global
  Cell[] aArr = New Cell[30]
  return aArr
endfunction
Cell[] function cArrayCreateCell031() global
  Cell[] aArr = New Cell[31]
  return aArr
endfunction
Cell[] function cArrayCreateCell032() global
  Cell[] aArr = New Cell[32]
  return aArr
endfunction
Cell[] function cArrayCreateCell033() global
  Cell[] aArr = New Cell[33]
  return aArr
endfunction
Cell[] function cArrayCreateCell034() global
  Cell[] aArr = New Cell[34]
  return aArr
endfunction
Cell[] function cArrayCreateCell035() global
  Cell[] aArr = New Cell[35]
  return aArr
endfunction
Cell[] function cArrayCreateCell036() global
  Cell[] aArr = New Cell[36]
  return aArr
endfunction
Cell[] function cArrayCreateCell037() global
  Cell[] aArr = New Cell[37]
  return aArr
endfunction
Cell[] function cArrayCreateCell038() global
  Cell[] aArr = New Cell[38]
  return aArr
endfunction
Cell[] function cArrayCreateCell039() global
  Cell[] aArr = New Cell[39]
  return aArr
endfunction
Cell[] function cArrayCreateCell040() global
  Cell[] aArr = New Cell[40]
  return aArr
endfunction
Cell[] function cArrayCreateCell041() global
  Cell[] aArr = New Cell[41]
  return aArr
endfunction
Cell[] function cArrayCreateCell042() global
  Cell[] aArr = New Cell[42]
  return aArr
endfunction
Cell[] function cArrayCreateCell043() global
  Cell[] aArr = New Cell[43]
  return aArr
endfunction
Cell[] function cArrayCreateCell044() global
  Cell[] aArr = New Cell[44]
  return aArr
endfunction
Cell[] function cArrayCreateCell045() global
  Cell[] aArr = New Cell[45]
  return aArr
endfunction
Cell[] function cArrayCreateCell046() global
  Cell[] aArr = New Cell[46]
  return aArr
endfunction
Cell[] function cArrayCreateCell047() global
  Cell[] aArr = New Cell[47]
  return aArr
endfunction
Cell[] function cArrayCreateCell048() global
  Cell[] aArr = New Cell[48]
  return aArr
endfunction
Cell[] function cArrayCreateCell049() global
  Cell[] aArr = New Cell[49]
  return aArr
endfunction
Cell[] function cArrayCreateCell050() global
  Cell[] aArr = New Cell[50]
  return aArr
endfunction
Cell[] function cArrayCreateCell051() global
  Cell[] aArr = New Cell[51]
  return aArr
endfunction
Cell[] function cArrayCreateCell052() global
  Cell[] aArr = New Cell[52]
  return aArr
endfunction
Cell[] function cArrayCreateCell053() global
  Cell[] aArr = New Cell[53]
  return aArr
endfunction
Cell[] function cArrayCreateCell054() global
  Cell[] aArr = New Cell[54]
  return aArr
endfunction
Cell[] function cArrayCreateCell055() global
  Cell[] aArr = New Cell[55]
  return aArr
endfunction
Cell[] function cArrayCreateCell056() global
  Cell[] aArr = New Cell[56]
  return aArr
endfunction
Cell[] function cArrayCreateCell057() global
  Cell[] aArr = New Cell[57]
  return aArr
endfunction
Cell[] function cArrayCreateCell058() global
  Cell[] aArr = New Cell[58]
  return aArr
endfunction
Cell[] function cArrayCreateCell059() global
  Cell[] aArr = New Cell[59]
  return aArr
endfunction
Cell[] function cArrayCreateCell060() global
  Cell[] aArr = New Cell[60]
  return aArr
endfunction
Cell[] function cArrayCreateCell061() global
  Cell[] aArr = New Cell[61]
  return aArr
endfunction
Cell[] function cArrayCreateCell062() global
  Cell[] aArr = New Cell[62]
  return aArr
endfunction
Cell[] function cArrayCreateCell063() global
  Cell[] aArr = New Cell[63]
  return aArr
endfunction
Cell[] function cArrayCreateCell064() global
  Cell[] aArr = New Cell[64]
  return aArr
endfunction
Cell[] function cArrayCreateCell065() global
  Cell[] aArr = New Cell[65]
  return aArr
endfunction
Cell[] function cArrayCreateCell066() global
  Cell[] aArr = New Cell[66]
  return aArr
endfunction
Cell[] function cArrayCreateCell067() global
  Cell[] aArr = New Cell[67]
  return aArr
endfunction
Cell[] function cArrayCreateCell068() global
  Cell[] aArr = New Cell[68]
  return aArr
endfunction
Cell[] function cArrayCreateCell069() global
  Cell[] aArr = New Cell[69]
  return aArr
endfunction
Cell[] function cArrayCreateCell070() global
  Cell[] aArr = New Cell[70]
  return aArr
endfunction
Cell[] function cArrayCreateCell071() global
  Cell[] aArr = New Cell[71]
  return aArr
endfunction
Cell[] function cArrayCreateCell072() global
  Cell[] aArr = New Cell[72]
  return aArr
endfunction
Cell[] function cArrayCreateCell073() global
  Cell[] aArr = New Cell[73]
  return aArr
endfunction
Cell[] function cArrayCreateCell074() global
  Cell[] aArr = New Cell[74]
  return aArr
endfunction
Cell[] function cArrayCreateCell075() global
  Cell[] aArr = New Cell[75]
  return aArr
endfunction
Cell[] function cArrayCreateCell076() global
  Cell[] aArr = New Cell[76]
  return aArr
endfunction
Cell[] function cArrayCreateCell077() global
  Cell[] aArr = New Cell[77]
  return aArr
endfunction
Cell[] function cArrayCreateCell078() global
  Cell[] aArr = New Cell[78]
  return aArr
endfunction
Cell[] function cArrayCreateCell079() global
  Cell[] aArr = New Cell[79]
  return aArr
endfunction
Cell[] function cArrayCreateCell080() global
  Cell[] aArr = New Cell[80]
  return aArr
endfunction
Cell[] function cArrayCreateCell081() global
  Cell[] aArr = New Cell[81]
  return aArr
endfunction
Cell[] function cArrayCreateCell082() global
  Cell[] aArr = New Cell[82]
  return aArr
endfunction
Cell[] function cArrayCreateCell083() global
  Cell[] aArr = New Cell[83]
  return aArr
endfunction
Cell[] function cArrayCreateCell084() global
  Cell[] aArr = New Cell[84]
  return aArr
endfunction
Cell[] function cArrayCreateCell085() global
  Cell[] aArr = New Cell[85]
  return aArr
endfunction
Cell[] function cArrayCreateCell086() global
  Cell[] aArr = New Cell[86]
  return aArr
endfunction
Cell[] function cArrayCreateCell087() global
  Cell[] aArr = New Cell[87]
  return aArr
endfunction
Cell[] function cArrayCreateCell088() global
  Cell[] aArr = New Cell[88]
  return aArr
endfunction
Cell[] function cArrayCreateCell089() global
  Cell[] aArr = New Cell[89]
  return aArr
endfunction
Cell[] function cArrayCreateCell090() global
  Cell[] aArr = New Cell[90]
  return aArr
endfunction
Cell[] function cArrayCreateCell091() global
  Cell[] aArr = New Cell[91]
  return aArr
endfunction
Cell[] function cArrayCreateCell092() global
  Cell[] aArr = New Cell[92]
  return aArr
endfunction
Cell[] function cArrayCreateCell093() global
  Cell[] aArr = New Cell[93]
  return aArr
endfunction
Cell[] function cArrayCreateCell094() global
  Cell[] aArr = New Cell[94]
  return aArr
endfunction
Cell[] function cArrayCreateCell095() global
  Cell[] aArr = New Cell[95]
  return aArr
endfunction
Cell[] function cArrayCreateCell096() global
  Cell[] aArr = New Cell[96]
  return aArr
endfunction
Cell[] function cArrayCreateCell097() global
  Cell[] aArr = New Cell[97]
  return aArr
endfunction
Cell[] function cArrayCreateCell098() global
  Cell[] aArr = New Cell[98]
  return aArr
endfunction
Cell[] function cArrayCreateCell099() global
  Cell[] aArr = New Cell[99]
  return aArr
endfunction
Cell[] function cArrayCreateCell100() global
  Cell[] aArr = New Cell[100]
  return aArr
endfunction
Cell[] function cArrayCreateCell101() global
  Cell[] aArr = New Cell[101]
  return aArr
endfunction
Cell[] function cArrayCreateCell102() global
  Cell[] aArr = New Cell[102]
  return aArr
endfunction
Cell[] function cArrayCreateCell103() global
  Cell[] aArr = New Cell[103]
  return aArr
endfunction
Cell[] function cArrayCreateCell104() global
  Cell[] aArr = New Cell[104]
  return aArr
endfunction
Cell[] function cArrayCreateCell105() global
  Cell[] aArr = New Cell[105]
  return aArr
endfunction
Cell[] function cArrayCreateCell106() global
  Cell[] aArr = New Cell[106]
  return aArr
endfunction
Cell[] function cArrayCreateCell107() global
  Cell[] aArr = New Cell[107]
  return aArr
endfunction
Cell[] function cArrayCreateCell108() global
  Cell[] aArr = New Cell[108]
  return aArr
endfunction
Cell[] function cArrayCreateCell109() global
  Cell[] aArr = New Cell[109]
  return aArr
endfunction
Cell[] function cArrayCreateCell110() global
  Cell[] aArr = New Cell[110]
  return aArr
endfunction
Cell[] function cArrayCreateCell111() global
  Cell[] aArr = New Cell[111]
  return aArr
endfunction
Cell[] function cArrayCreateCell112() global
  Cell[] aArr = New Cell[112]
  return aArr
endfunction
Cell[] function cArrayCreateCell113() global
  Cell[] aArr = New Cell[113]
  return aArr
endfunction
Cell[] function cArrayCreateCell114() global
  Cell[] aArr = New Cell[114]
  return aArr
endfunction
Cell[] function cArrayCreateCell115() global
  Cell[] aArr = New Cell[115]
  return aArr
endfunction
Cell[] function cArrayCreateCell116() global
  Cell[] aArr = New Cell[116]
  return aArr
endfunction
Cell[] function cArrayCreateCell117() global
  Cell[] aArr = New Cell[117]
  return aArr
endfunction
Cell[] function cArrayCreateCell118() global
  Cell[] aArr = New Cell[118]
  return aArr
endfunction
Cell[] function cArrayCreateCell119() global
  Cell[] aArr = New Cell[119]
  return aArr
endfunction
Cell[] function cArrayCreateCell120() global
  Cell[] aArr = New Cell[120]
  return aArr
endfunction
Cell[] function cArrayCreateCell121() global
  Cell[] aArr = New Cell[121]
  return aArr
endfunction
Cell[] function cArrayCreateCell122() global
  Cell[] aArr = New Cell[122]
  return aArr
endfunction
Cell[] function cArrayCreateCell123() global
  Cell[] aArr = New Cell[123]
  return aArr
endfunction
Cell[] function cArrayCreateCell124() global
  Cell[] aArr = New Cell[124]
  return aArr
endfunction
Cell[] function cArrayCreateCell125() global
  Cell[] aArr = New Cell[125]
  return aArr
endfunction
Cell[] function cArrayCreateCell126() global
  Cell[] aArr = New Cell[126]
  return aArr
endfunction
Cell[] function cArrayCreateCell127() global
  Cell[] aArr = New Cell[127]
  return aArr
endfunction
Cell[] function cArrayCreateCell128() global
  Cell[] aArr = New Cell[128]
  return aArr
endfunction
