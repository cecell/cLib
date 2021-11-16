Scriptname cArrayForm Hidden


Form[] function cArrayCreateForm(Int indices, Form filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  Form[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    if outputTrace
      String msg = "cArrayCreateForm()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayForm::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateForm001()
              elseif indices < 3
                return cArrayCreateForm002()
              elseif indices < 4
                return cArrayCreateForm003()
              else
                return cArrayCreateForm004()
              endif
            else
              if indices < 6
                return cArrayCreateForm005()
              elseif indices < 7
                return cArrayCreateForm006()
              elseif indices < 8
                return cArrayCreateForm007()
              else
                return cArrayCreateForm008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateForm009()
              elseif indices < 11
                return cArrayCreateForm010()
              elseif indices < 12
                return cArrayCreateForm011()
              else
                return cArrayCreateForm012()
              endif
            else
              if indices < 14
                return cArrayCreateForm013()
              elseif indices < 15
                return cArrayCreateForm014()
              elseif indices < 16
                return cArrayCreateForm015()
              else
                return cArrayCreateForm016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateForm017()
              elseif indices < 19
                return cArrayCreateForm018()
              elseif indices < 20
                return cArrayCreateForm019()
              else
                return cArrayCreateForm020()
              endif
            else
              if indices < 22
                return cArrayCreateForm021()
              elseif indices < 23
                return cArrayCreateForm022()
              elseif indices < 24
                return cArrayCreateForm023()
              else
                return cArrayCreateForm024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateForm025()
              elseif indices < 27
                return cArrayCreateForm026()
              elseif indices < 28
                return cArrayCreateForm027()
              else
                return cArrayCreateForm028()
              endif
            else
              if indices < 30
                return cArrayCreateForm029()
              elseif indices < 31
                return cArrayCreateForm030()
              elseif indices < 32
                return cArrayCreateForm031()
              else
                return cArrayCreateForm032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateForm033()
              elseif indices < 35
                return cArrayCreateForm034()
              elseif indices < 36
                return cArrayCreateForm035()
              else
                return cArrayCreateForm036()
              endif
            else
              if indices < 38
                return cArrayCreateForm037()
              elseif indices < 39
                return cArrayCreateForm038()
              elseif indices < 40
                return cArrayCreateForm039()
              else
                return cArrayCreateForm040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateForm041()
              elseif indices < 43
                return cArrayCreateForm042()
              elseif indices < 44
                return cArrayCreateForm043()
              else
                return cArrayCreateForm044()
              endif
            else
              if indices < 46
                return cArrayCreateForm045()
              elseif indices < 47
                return cArrayCreateForm046()
              elseif indices < 48
                return cArrayCreateForm047()
              else
                return cArrayCreateForm048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateForm049()
              elseif indices < 51
                return cArrayCreateForm050()
              elseif indices < 52
                return cArrayCreateForm051()
              else
                return cArrayCreateForm052()
              endif
            else
              if indices < 54
                return cArrayCreateForm053()
              elseif indices < 55
                return cArrayCreateForm054()
              elseif indices < 56
                return cArrayCreateForm055()
              else
                return cArrayCreateForm056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateForm057()
              elseif indices < 59
                return cArrayCreateForm058()
              elseif indices < 60
                return cArrayCreateForm059()
              else
                return cArrayCreateForm060()
              endif
            else
              if indices < 62
                return cArrayCreateForm061()
              elseif indices < 63
                return cArrayCreateForm062()
              elseif indices < 64
                return cArrayCreateForm063()
              else
                return cArrayCreateForm064()
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
                return cArrayCreateForm065()
              elseif indices < 67
                return cArrayCreateForm066()
              elseif indices < 68
                return cArrayCreateForm067()
              else
                return cArrayCreateForm068()
              endif
            else
              if indices < 70
                return cArrayCreateForm069()
              elseif indices < 71
                return cArrayCreateForm070()
              elseif indices < 72
                return cArrayCreateForm071()
              else
                return cArrayCreateForm072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateForm073()
              elseif indices < 75
                return cArrayCreateForm074()
              elseif indices < 76
                return cArrayCreateForm075()
              else
                return cArrayCreateForm076()
              endif
            else
              if indices < 78
                return cArrayCreateForm077()
              elseif indices < 79
                return cArrayCreateForm078()
              elseif indices < 80
                return cArrayCreateForm079()
              else
                return cArrayCreateForm080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateForm081()
              elseif indices < 83
                return cArrayCreateForm082()
              elseif indices < 84
                return cArrayCreateForm083()
              else
                return cArrayCreateForm084()
              endif
            else
              if indices < 86
                return cArrayCreateForm085()
              elseif indices < 87
                return cArrayCreateForm086()
              elseif indices < 88
                return cArrayCreateForm087()
              else
                return cArrayCreateForm088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateForm089()
              elseif indices < 91
                return cArrayCreateForm090()
              elseif indices < 92
                return cArrayCreateForm091()
              else
                return cArrayCreateForm092()
              endif
            else
              if indices < 94
                return cArrayCreateForm093()
              elseif indices < 95
                return cArrayCreateForm094()
              elseif indices < 96
                return cArrayCreateForm095()
              else
                return cArrayCreateForm096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateForm097()
              elseif indices < 99
                return cArrayCreateForm098()
              elseif indices < 100
                return cArrayCreateForm099()
              else
                return cArrayCreateForm100()
              endif
            else
              if indices < 102
                return cArrayCreateForm101()
              elseif indices < 103
                return cArrayCreateForm102()
              elseif indices < 104
                return cArrayCreateForm103()
              else
                return cArrayCreateForm104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateForm105()
              elseif indices < 107
                return cArrayCreateForm106()
              elseif indices < 108
                return cArrayCreateForm107()
              else
                return cArrayCreateForm108()
              endif
            else
              if indices < 110
                return cArrayCreateForm109()
              elseif indices < 111
                return cArrayCreateForm110()
              elseif indices < 112
                return cArrayCreateForm111()
              else
                return cArrayCreateForm112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateForm113()
              elseif indices < 115
                return cArrayCreateForm114()
              elseif indices < 116
                return cArrayCreateForm115()
              else
                return cArrayCreateForm116()
              endif
            else
              if indices < 118
                return cArrayCreateForm117()
              elseif indices < 119
                return cArrayCreateForm118()
              elseif indices < 120
                return cArrayCreateForm119()
              else
                return cArrayCreateForm120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateForm121()
              elseif indices < 123
                return cArrayCreateForm122()
              elseif indices < 124
                return cArrayCreateForm123()
              else
                return cArrayCreateForm124()
              endif
            else
              if indices < 126
                return cArrayCreateForm125()
              elseif indices < 127
                return cArrayCreateForm126()
              elseif indices < 128
                return cArrayCreateForm127()
              else
                return cArrayCreateForm128()
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

Form[] function cArrayCreateForm001() global
  Form[] aArr = New Form[1]
  return aArr
endfunction
Form[] function cArrayCreateForm002() global
  Form[] aArr = New Form[2]
  return aArr
endfunction
Form[] function cArrayCreateForm003() global
  Form[] aArr = New Form[3]
  return aArr
endfunction
Form[] function cArrayCreateForm004() global
  Form[] aArr = New Form[4]
  return aArr
endfunction
Form[] function cArrayCreateForm005() global
  Form[] aArr = New Form[5]
  return aArr
endfunction
Form[] function cArrayCreateForm006() global
  Form[] aArr = New Form[6]
  return aArr
endfunction
Form[] function cArrayCreateForm007() global
  Form[] aArr = New Form[7]
  return aArr
endfunction
Form[] function cArrayCreateForm008() global
  Form[] aArr = New Form[8]
  return aArr
endfunction
Form[] function cArrayCreateForm009() global
  Form[] aArr = New Form[9]
  return aArr
endfunction
Form[] function cArrayCreateForm010() global
  Form[] aArr = New Form[10]
  return aArr
endfunction
Form[] function cArrayCreateForm011() global
  Form[] aArr = New Form[11]
  return aArr
endfunction
Form[] function cArrayCreateForm012() global
  Form[] aArr = New Form[12]
  return aArr
endfunction
Form[] function cArrayCreateForm013() global
  Form[] aArr = New Form[13]
  return aArr
endfunction
Form[] function cArrayCreateForm014() global
  Form[] aArr = New Form[14]
  return aArr
endfunction
Form[] function cArrayCreateForm015() global
  Form[] aArr = New Form[15]
  return aArr
endfunction
Form[] function cArrayCreateForm016() global
  Form[] aArr = New Form[16]
  return aArr
endfunction
Form[] function cArrayCreateForm017() global
  Form[] aArr = New Form[17]
  return aArr
endfunction
Form[] function cArrayCreateForm018() global
  Form[] aArr = New Form[18]
  return aArr
endfunction
Form[] function cArrayCreateForm019() global
  Form[] aArr = New Form[19]
  return aArr
endfunction
Form[] function cArrayCreateForm020() global
  Form[] aArr = New Form[20]
  return aArr
endfunction
Form[] function cArrayCreateForm021() global
  Form[] aArr = New Form[21]
  return aArr
endfunction
Form[] function cArrayCreateForm022() global
  Form[] aArr = New Form[22]
  return aArr
endfunction
Form[] function cArrayCreateForm023() global
  Form[] aArr = New Form[23]
  return aArr
endfunction
Form[] function cArrayCreateForm024() global
  Form[] aArr = New Form[24]
  return aArr
endfunction
Form[] function cArrayCreateForm025() global
  Form[] aArr = New Form[25]
  return aArr
endfunction
Form[] function cArrayCreateForm026() global
  Form[] aArr = New Form[26]
  return aArr
endfunction
Form[] function cArrayCreateForm027() global
  Form[] aArr = New Form[27]
  return aArr
endfunction
Form[] function cArrayCreateForm028() global
  Form[] aArr = New Form[28]
  return aArr
endfunction
Form[] function cArrayCreateForm029() global
  Form[] aArr = New Form[29]
  return aArr
endfunction
Form[] function cArrayCreateForm030() global
  Form[] aArr = New Form[30]
  return aArr
endfunction
Form[] function cArrayCreateForm031() global
  Form[] aArr = New Form[31]
  return aArr
endfunction
Form[] function cArrayCreateForm032() global
  Form[] aArr = New Form[32]
  return aArr
endfunction
Form[] function cArrayCreateForm033() global
  Form[] aArr = New Form[33]
  return aArr
endfunction
Form[] function cArrayCreateForm034() global
  Form[] aArr = New Form[34]
  return aArr
endfunction
Form[] function cArrayCreateForm035() global
  Form[] aArr = New Form[35]
  return aArr
endfunction
Form[] function cArrayCreateForm036() global
  Form[] aArr = New Form[36]
  return aArr
endfunction
Form[] function cArrayCreateForm037() global
  Form[] aArr = New Form[37]
  return aArr
endfunction
Form[] function cArrayCreateForm038() global
  Form[] aArr = New Form[38]
  return aArr
endfunction
Form[] function cArrayCreateForm039() global
  Form[] aArr = New Form[39]
  return aArr
endfunction
Form[] function cArrayCreateForm040() global
  Form[] aArr = New Form[40]
  return aArr
endfunction
Form[] function cArrayCreateForm041() global
  Form[] aArr = New Form[41]
  return aArr
endfunction
Form[] function cArrayCreateForm042() global
  Form[] aArr = New Form[42]
  return aArr
endfunction
Form[] function cArrayCreateForm043() global
  Form[] aArr = New Form[43]
  return aArr
endfunction
Form[] function cArrayCreateForm044() global
  Form[] aArr = New Form[44]
  return aArr
endfunction
Form[] function cArrayCreateForm045() global
  Form[] aArr = New Form[45]
  return aArr
endfunction
Form[] function cArrayCreateForm046() global
  Form[] aArr = New Form[46]
  return aArr
endfunction
Form[] function cArrayCreateForm047() global
  Form[] aArr = New Form[47]
  return aArr
endfunction
Form[] function cArrayCreateForm048() global
  Form[] aArr = New Form[48]
  return aArr
endfunction
Form[] function cArrayCreateForm049() global
  Form[] aArr = New Form[49]
  return aArr
endfunction
Form[] function cArrayCreateForm050() global
  Form[] aArr = New Form[50]
  return aArr
endfunction
Form[] function cArrayCreateForm051() global
  Form[] aArr = New Form[51]
  return aArr
endfunction
Form[] function cArrayCreateForm052() global
  Form[] aArr = New Form[52]
  return aArr
endfunction
Form[] function cArrayCreateForm053() global
  Form[] aArr = New Form[53]
  return aArr
endfunction
Form[] function cArrayCreateForm054() global
  Form[] aArr = New Form[54]
  return aArr
endfunction
Form[] function cArrayCreateForm055() global
  Form[] aArr = New Form[55]
  return aArr
endfunction
Form[] function cArrayCreateForm056() global
  Form[] aArr = New Form[56]
  return aArr
endfunction
Form[] function cArrayCreateForm057() global
  Form[] aArr = New Form[57]
  return aArr
endfunction
Form[] function cArrayCreateForm058() global
  Form[] aArr = New Form[58]
  return aArr
endfunction
Form[] function cArrayCreateForm059() global
  Form[] aArr = New Form[59]
  return aArr
endfunction
Form[] function cArrayCreateForm060() global
  Form[] aArr = New Form[60]
  return aArr
endfunction
Form[] function cArrayCreateForm061() global
  Form[] aArr = New Form[61]
  return aArr
endfunction
Form[] function cArrayCreateForm062() global
  Form[] aArr = New Form[62]
  return aArr
endfunction
Form[] function cArrayCreateForm063() global
  Form[] aArr = New Form[63]
  return aArr
endfunction
Form[] function cArrayCreateForm064() global
  Form[] aArr = New Form[64]
  return aArr
endfunction
Form[] function cArrayCreateForm065() global
  Form[] aArr = New Form[65]
  return aArr
endfunction
Form[] function cArrayCreateForm066() global
  Form[] aArr = New Form[66]
  return aArr
endfunction
Form[] function cArrayCreateForm067() global
  Form[] aArr = New Form[67]
  return aArr
endfunction
Form[] function cArrayCreateForm068() global
  Form[] aArr = New Form[68]
  return aArr
endfunction
Form[] function cArrayCreateForm069() global
  Form[] aArr = New Form[69]
  return aArr
endfunction
Form[] function cArrayCreateForm070() global
  Form[] aArr = New Form[70]
  return aArr
endfunction
Form[] function cArrayCreateForm071() global
  Form[] aArr = New Form[71]
  return aArr
endfunction
Form[] function cArrayCreateForm072() global
  Form[] aArr = New Form[72]
  return aArr
endfunction
Form[] function cArrayCreateForm073() global
  Form[] aArr = New Form[73]
  return aArr
endfunction
Form[] function cArrayCreateForm074() global
  Form[] aArr = New Form[74]
  return aArr
endfunction
Form[] function cArrayCreateForm075() global
  Form[] aArr = New Form[75]
  return aArr
endfunction
Form[] function cArrayCreateForm076() global
  Form[] aArr = New Form[76]
  return aArr
endfunction
Form[] function cArrayCreateForm077() global
  Form[] aArr = New Form[77]
  return aArr
endfunction
Form[] function cArrayCreateForm078() global
  Form[] aArr = New Form[78]
  return aArr
endfunction
Form[] function cArrayCreateForm079() global
  Form[] aArr = New Form[79]
  return aArr
endfunction
Form[] function cArrayCreateForm080() global
  Form[] aArr = New Form[80]
  return aArr
endfunction
Form[] function cArrayCreateForm081() global
  Form[] aArr = New Form[81]
  return aArr
endfunction
Form[] function cArrayCreateForm082() global
  Form[] aArr = New Form[82]
  return aArr
endfunction
Form[] function cArrayCreateForm083() global
  Form[] aArr = New Form[83]
  return aArr
endfunction
Form[] function cArrayCreateForm084() global
  Form[] aArr = New Form[84]
  return aArr
endfunction
Form[] function cArrayCreateForm085() global
  Form[] aArr = New Form[85]
  return aArr
endfunction
Form[] function cArrayCreateForm086() global
  Form[] aArr = New Form[86]
  return aArr
endfunction
Form[] function cArrayCreateForm087() global
  Form[] aArr = New Form[87]
  return aArr
endfunction
Form[] function cArrayCreateForm088() global
  Form[] aArr = New Form[88]
  return aArr
endfunction
Form[] function cArrayCreateForm089() global
  Form[] aArr = New Form[89]
  return aArr
endfunction
Form[] function cArrayCreateForm090() global
  Form[] aArr = New Form[90]
  return aArr
endfunction
Form[] function cArrayCreateForm091() global
  Form[] aArr = New Form[91]
  return aArr
endfunction
Form[] function cArrayCreateForm092() global
  Form[] aArr = New Form[92]
  return aArr
endfunction
Form[] function cArrayCreateForm093() global
  Form[] aArr = New Form[93]
  return aArr
endfunction
Form[] function cArrayCreateForm094() global
  Form[] aArr = New Form[94]
  return aArr
endfunction
Form[] function cArrayCreateForm095() global
  Form[] aArr = New Form[95]
  return aArr
endfunction
Form[] function cArrayCreateForm096() global
  Form[] aArr = New Form[96]
  return aArr
endfunction
Form[] function cArrayCreateForm097() global
  Form[] aArr = New Form[97]
  return aArr
endfunction
Form[] function cArrayCreateForm098() global
  Form[] aArr = New Form[98]
  return aArr
endfunction
Form[] function cArrayCreateForm099() global
  Form[] aArr = New Form[99]
  return aArr
endfunction
Form[] function cArrayCreateForm100() global
  Form[] aArr = New Form[100]
  return aArr
endfunction
Form[] function cArrayCreateForm101() global
  Form[] aArr = New Form[101]
  return aArr
endfunction
Form[] function cArrayCreateForm102() global
  Form[] aArr = New Form[102]
  return aArr
endfunction
Form[] function cArrayCreateForm103() global
  Form[] aArr = New Form[103]
  return aArr
endfunction
Form[] function cArrayCreateForm104() global
  Form[] aArr = New Form[104]
  return aArr
endfunction
Form[] function cArrayCreateForm105() global
  Form[] aArr = New Form[105]
  return aArr
endfunction
Form[] function cArrayCreateForm106() global
  Form[] aArr = New Form[106]
  return aArr
endfunction
Form[] function cArrayCreateForm107() global
  Form[] aArr = New Form[107]
  return aArr
endfunction
Form[] function cArrayCreateForm108() global
  Form[] aArr = New Form[108]
  return aArr
endfunction
Form[] function cArrayCreateForm109() global
  Form[] aArr = New Form[109]
  return aArr
endfunction
Form[] function cArrayCreateForm110() global
  Form[] aArr = New Form[110]
  return aArr
endfunction
Form[] function cArrayCreateForm111() global
  Form[] aArr = New Form[111]
  return aArr
endfunction
Form[] function cArrayCreateForm112() global
  Form[] aArr = New Form[112]
  return aArr
endfunction
Form[] function cArrayCreateForm113() global
  Form[] aArr = New Form[113]
  return aArr
endfunction
Form[] function cArrayCreateForm114() global
  Form[] aArr = New Form[114]
  return aArr
endfunction
Form[] function cArrayCreateForm115() global
  Form[] aArr = New Form[115]
  return aArr
endfunction
Form[] function cArrayCreateForm116() global
  Form[] aArr = New Form[116]
  return aArr
endfunction
Form[] function cArrayCreateForm117() global
  Form[] aArr = New Form[117]
  return aArr
endfunction
Form[] function cArrayCreateForm118() global
  Form[] aArr = New Form[118]
  return aArr
endfunction
Form[] function cArrayCreateForm119() global
  Form[] aArr = New Form[119]
  return aArr
endfunction
Form[] function cArrayCreateForm120() global
  Form[] aArr = New Form[120]
  return aArr
endfunction
Form[] function cArrayCreateForm121() global
  Form[] aArr = New Form[121]
  return aArr
endfunction
Form[] function cArrayCreateForm122() global
  Form[] aArr = New Form[122]
  return aArr
endfunction
Form[] function cArrayCreateForm123() global
  Form[] aArr = New Form[123]
  return aArr
endfunction
Form[] function cArrayCreateForm124() global
  Form[] aArr = New Form[124]
  return aArr
endfunction
Form[] function cArrayCreateForm125() global
  Form[] aArr = New Form[125]
  return aArr
endfunction
Form[] function cArrayCreateForm126() global
  Form[] aArr = New Form[126]
  return aArr
endfunction
Form[] function cArrayCreateForm127() global
  Form[] aArr = New Form[127]
  return aArr
endfunction
Form[] function cArrayCreateForm128() global
  Form[] aArr = New Form[128]
  return aArr
endfunction
