Scriptname cArrayCell Hidden


Cell[] function cArrayCreateCell(Int indices, Cell filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  Cell[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    if outputTrace
      String msg = "cArrayCreateCell()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayCell::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateCell001()
              elseif indices < 3
                return cArrayCreateCell002()
              elseif indices < 4
                return cArrayCreateCell003()
              else
                return cArrayCreateCell004()
              endif
            else
              if indices < 6
                return cArrayCreateCell005()
              elseif indices < 7
                return cArrayCreateCell006()
              elseif indices < 8
                return cArrayCreateCell007()
              else
                return cArrayCreateCell008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateCell009()
              elseif indices < 11
                return cArrayCreateCell010()
              elseif indices < 12
                return cArrayCreateCell011()
              else
                return cArrayCreateCell012()
              endif
            else
              if indices < 14
                return cArrayCreateCell013()
              elseif indices < 15
                return cArrayCreateCell014()
              elseif indices < 16
                return cArrayCreateCell015()
              else
                return cArrayCreateCell016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateCell017()
              elseif indices < 19
                return cArrayCreateCell018()
              elseif indices < 20
                return cArrayCreateCell019()
              else
                return cArrayCreateCell020()
              endif
            else
              if indices < 22
                return cArrayCreateCell021()
              elseif indices < 23
                return cArrayCreateCell022()
              elseif indices < 24
                return cArrayCreateCell023()
              else
                return cArrayCreateCell024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateCell025()
              elseif indices < 27
                return cArrayCreateCell026()
              elseif indices < 28
                return cArrayCreateCell027()
              else
                return cArrayCreateCell028()
              endif
            else
              if indices < 30
                return cArrayCreateCell029()
              elseif indices < 31
                return cArrayCreateCell030()
              elseif indices < 32
                return cArrayCreateCell031()
              else
                return cArrayCreateCell032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateCell033()
              elseif indices < 35
                return cArrayCreateCell034()
              elseif indices < 36
                return cArrayCreateCell035()
              else
                return cArrayCreateCell036()
              endif
            else
              if indices < 38
                return cArrayCreateCell037()
              elseif indices < 39
                return cArrayCreateCell038()
              elseif indices < 40
                return cArrayCreateCell039()
              else
                return cArrayCreateCell040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateCell041()
              elseif indices < 43
                return cArrayCreateCell042()
              elseif indices < 44
                return cArrayCreateCell043()
              else
                return cArrayCreateCell044()
              endif
            else
              if indices < 46
                return cArrayCreateCell045()
              elseif indices < 47
                return cArrayCreateCell046()
              elseif indices < 48
                return cArrayCreateCell047()
              else
                return cArrayCreateCell048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateCell049()
              elseif indices < 51
                return cArrayCreateCell050()
              elseif indices < 52
                return cArrayCreateCell051()
              else
                return cArrayCreateCell052()
              endif
            else
              if indices < 54
                return cArrayCreateCell053()
              elseif indices < 55
                return cArrayCreateCell054()
              elseif indices < 56
                return cArrayCreateCell055()
              else
                return cArrayCreateCell056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateCell057()
              elseif indices < 59
                return cArrayCreateCell058()
              elseif indices < 60
                return cArrayCreateCell059()
              else
                return cArrayCreateCell060()
              endif
            else
              if indices < 62
                return cArrayCreateCell061()
              elseif indices < 63
                return cArrayCreateCell062()
              elseif indices < 64
                return cArrayCreateCell063()
              else
                return cArrayCreateCell064()
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
                return cArrayCreateCell065()
              elseif indices < 67
                return cArrayCreateCell066()
              elseif indices < 68
                return cArrayCreateCell067()
              else
                return cArrayCreateCell068()
              endif
            else
              if indices < 70
                return cArrayCreateCell069()
              elseif indices < 71
                return cArrayCreateCell070()
              elseif indices < 72
                return cArrayCreateCell071()
              else
                return cArrayCreateCell072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateCell073()
              elseif indices < 75
                return cArrayCreateCell074()
              elseif indices < 76
                return cArrayCreateCell075()
              else
                return cArrayCreateCell076()
              endif
            else
              if indices < 78
                return cArrayCreateCell077()
              elseif indices < 79
                return cArrayCreateCell078()
              elseif indices < 80
                return cArrayCreateCell079()
              else
                return cArrayCreateCell080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateCell081()
              elseif indices < 83
                return cArrayCreateCell082()
              elseif indices < 84
                return cArrayCreateCell083()
              else
                return cArrayCreateCell084()
              endif
            else
              if indices < 86
                return cArrayCreateCell085()
              elseif indices < 87
                return cArrayCreateCell086()
              elseif indices < 88
                return cArrayCreateCell087()
              else
                return cArrayCreateCell088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateCell089()
              elseif indices < 91
                return cArrayCreateCell090()
              elseif indices < 92
                return cArrayCreateCell091()
              else
                return cArrayCreateCell092()
              endif
            else
              if indices < 94
                return cArrayCreateCell093()
              elseif indices < 95
                return cArrayCreateCell094()
              elseif indices < 96
                return cArrayCreateCell095()
              else
                return cArrayCreateCell096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateCell097()
              elseif indices < 99
                return cArrayCreateCell098()
              elseif indices < 100
                return cArrayCreateCell099()
              else
                return cArrayCreateCell100()
              endif
            else
              if indices < 102
                return cArrayCreateCell101()
              elseif indices < 103
                return cArrayCreateCell102()
              elseif indices < 104
                return cArrayCreateCell103()
              else
                return cArrayCreateCell104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateCell105()
              elseif indices < 107
                return cArrayCreateCell106()
              elseif indices < 108
                return cArrayCreateCell107()
              else
                return cArrayCreateCell108()
              endif
            else
              if indices < 110
                return cArrayCreateCell109()
              elseif indices < 111
                return cArrayCreateCell110()
              elseif indices < 112
                return cArrayCreateCell111()
              else
                return cArrayCreateCell112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateCell113()
              elseif indices < 115
                return cArrayCreateCell114()
              elseif indices < 116
                return cArrayCreateCell115()
              else
                return cArrayCreateCell116()
              endif
            else
              if indices < 118
                return cArrayCreateCell117()
              elseif indices < 119
                return cArrayCreateCell118()
              elseif indices < 120
                return cArrayCreateCell119()
              else
                return cArrayCreateCell120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateCell121()
              elseif indices < 123
                return cArrayCreateCell122()
              elseif indices < 124
                return cArrayCreateCell123()
              else
                return cArrayCreateCell124()
              endif
            else
              if indices < 126
                return cArrayCreateCell125()
              elseif indices < 127
                return cArrayCreateCell126()
              elseif indices < 128
                return cArrayCreateCell127()
              else
                return cArrayCreateCell128()
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
