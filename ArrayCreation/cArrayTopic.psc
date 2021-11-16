Scriptname cArrayTopic Hidden


Topic[] function cArrayCreateTopic(Int indices, Topic filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  Topic[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace Topics
    if outputTrace
      String msg = "cArrayCreateTopic()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayTopic::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateTopic001()
              elseif indices < 3
                return cArrayCreateTopic002()
              elseif indices < 4
                return cArrayCreateTopic003()
              else
                return cArrayCreateTopic004()
              endif
            else
              if indices < 6
                return cArrayCreateTopic005()
              elseif indices < 7
                return cArrayCreateTopic006()
              elseif indices < 8
                return cArrayCreateTopic007()
              else
                return cArrayCreateTopic008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateTopic009()
              elseif indices < 11
                return cArrayCreateTopic010()
              elseif indices < 12
                return cArrayCreateTopic011()
              else
                return cArrayCreateTopic012()
              endif
            else
              if indices < 14
                return cArrayCreateTopic013()
              elseif indices < 15
                return cArrayCreateTopic014()
              elseif indices < 16
                return cArrayCreateTopic015()
              else
                return cArrayCreateTopic016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateTopic017()
              elseif indices < 19
                return cArrayCreateTopic018()
              elseif indices < 20
                return cArrayCreateTopic019()
              else
                return cArrayCreateTopic020()
              endif
            else
              if indices < 22
                return cArrayCreateTopic021()
              elseif indices < 23
                return cArrayCreateTopic022()
              elseif indices < 24
                return cArrayCreateTopic023()
              else
                return cArrayCreateTopic024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateTopic025()
              elseif indices < 27
                return cArrayCreateTopic026()
              elseif indices < 28
                return cArrayCreateTopic027()
              else
                return cArrayCreateTopic028()
              endif
            else
              if indices < 30
                return cArrayCreateTopic029()
              elseif indices < 31
                return cArrayCreateTopic030()
              elseif indices < 32
                return cArrayCreateTopic031()
              else
                return cArrayCreateTopic032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateTopic033()
              elseif indices < 35
                return cArrayCreateTopic034()
              elseif indices < 36
                return cArrayCreateTopic035()
              else
                return cArrayCreateTopic036()
              endif
            else
              if indices < 38
                return cArrayCreateTopic037()
              elseif indices < 39
                return cArrayCreateTopic038()
              elseif indices < 40
                return cArrayCreateTopic039()
              else
                return cArrayCreateTopic040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateTopic041()
              elseif indices < 43
                return cArrayCreateTopic042()
              elseif indices < 44
                return cArrayCreateTopic043()
              else
                return cArrayCreateTopic044()
              endif
            else
              if indices < 46
                return cArrayCreateTopic045()
              elseif indices < 47
                return cArrayCreateTopic046()
              elseif indices < 48
                return cArrayCreateTopic047()
              else
                return cArrayCreateTopic048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateTopic049()
              elseif indices < 51
                return cArrayCreateTopic050()
              elseif indices < 52
                return cArrayCreateTopic051()
              else
                return cArrayCreateTopic052()
              endif
            else
              if indices < 54
                return cArrayCreateTopic053()
              elseif indices < 55
                return cArrayCreateTopic054()
              elseif indices < 56
                return cArrayCreateTopic055()
              else
                return cArrayCreateTopic056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateTopic057()
              elseif indices < 59
                return cArrayCreateTopic058()
              elseif indices < 60
                return cArrayCreateTopic059()
              else
                return cArrayCreateTopic060()
              endif
            else
              if indices < 62
                return cArrayCreateTopic061()
              elseif indices < 63
                return cArrayCreateTopic062()
              elseif indices < 64
                return cArrayCreateTopic063()
              else
                return cArrayCreateTopic064()
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
                return cArrayCreateTopic065()
              elseif indices < 67
                return cArrayCreateTopic066()
              elseif indices < 68
                return cArrayCreateTopic067()
              else
                return cArrayCreateTopic068()
              endif
            else
              if indices < 70
                return cArrayCreateTopic069()
              elseif indices < 71
                return cArrayCreateTopic070()
              elseif indices < 72
                return cArrayCreateTopic071()
              else
                return cArrayCreateTopic072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateTopic073()
              elseif indices < 75
                return cArrayCreateTopic074()
              elseif indices < 76
                return cArrayCreateTopic075()
              else
                return cArrayCreateTopic076()
              endif
            else
              if indices < 78
                return cArrayCreateTopic077()
              elseif indices < 79
                return cArrayCreateTopic078()
              elseif indices < 80
                return cArrayCreateTopic079()
              else
                return cArrayCreateTopic080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateTopic081()
              elseif indices < 83
                return cArrayCreateTopic082()
              elseif indices < 84
                return cArrayCreateTopic083()
              else
                return cArrayCreateTopic084()
              endif
            else
              if indices < 86
                return cArrayCreateTopic085()
              elseif indices < 87
                return cArrayCreateTopic086()
              elseif indices < 88
                return cArrayCreateTopic087()
              else
                return cArrayCreateTopic088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateTopic089()
              elseif indices < 91
                return cArrayCreateTopic090()
              elseif indices < 92
                return cArrayCreateTopic091()
              else
                return cArrayCreateTopic092()
              endif
            else
              if indices < 94
                return cArrayCreateTopic093()
              elseif indices < 95
                return cArrayCreateTopic094()
              elseif indices < 96
                return cArrayCreateTopic095()
              else
                return cArrayCreateTopic096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateTopic097()
              elseif indices < 99
                return cArrayCreateTopic098()
              elseif indices < 100
                return cArrayCreateTopic099()
              else
                return cArrayCreateTopic100()
              endif
            else
              if indices < 102
                return cArrayCreateTopic101()
              elseif indices < 103
                return cArrayCreateTopic102()
              elseif indices < 104
                return cArrayCreateTopic103()
              else
                return cArrayCreateTopic104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateTopic105()
              elseif indices < 107
                return cArrayCreateTopic106()
              elseif indices < 108
                return cArrayCreateTopic107()
              else
                return cArrayCreateTopic108()
              endif
            else
              if indices < 110
                return cArrayCreateTopic109()
              elseif indices < 111
                return cArrayCreateTopic110()
              elseif indices < 112
                return cArrayCreateTopic111()
              else
                return cArrayCreateTopic112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateTopic113()
              elseif indices < 115
                return cArrayCreateTopic114()
              elseif indices < 116
                return cArrayCreateTopic115()
              else
                return cArrayCreateTopic116()
              endif
            else
              if indices < 118
                return cArrayCreateTopic117()
              elseif indices < 119
                return cArrayCreateTopic118()
              elseif indices < 120
                return cArrayCreateTopic119()
              else
                return cArrayCreateTopic120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateTopic121()
              elseif indices < 123
                return cArrayCreateTopic122()
              elseif indices < 124
                return cArrayCreateTopic123()
              else
                return cArrayCreateTopic124()
              endif
            else
              if indices < 126
                return cArrayCreateTopic125()
              elseif indices < 127
                return cArrayCreateTopic126()
              elseif indices < 128
                return cArrayCreateTopic127()
              else
                return cArrayCreateTopic128()
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

Topic[] function cArrayCreateTopic001() global
  Topic[] aArr = New Topic[1]
  return aArr
endfunction
Topic[] function cArrayCreateTopic002() global
  Topic[] aArr = New Topic[2]
  return aArr
endfunction
Topic[] function cArrayCreateTopic003() global
  Topic[] aArr = New Topic[3]
  return aArr
endfunction
Topic[] function cArrayCreateTopic004() global
  Topic[] aArr = New Topic[4]
  return aArr
endfunction
Topic[] function cArrayCreateTopic005() global
  Topic[] aArr = New Topic[5]
  return aArr
endfunction
Topic[] function cArrayCreateTopic006() global
  Topic[] aArr = New Topic[6]
  return aArr
endfunction
Topic[] function cArrayCreateTopic007() global
  Topic[] aArr = New Topic[7]
  return aArr
endfunction
Topic[] function cArrayCreateTopic008() global
  Topic[] aArr = New Topic[8]
  return aArr
endfunction
Topic[] function cArrayCreateTopic009() global
  Topic[] aArr = New Topic[9]
  return aArr
endfunction
Topic[] function cArrayCreateTopic010() global
  Topic[] aArr = New Topic[10]
  return aArr
endfunction
Topic[] function cArrayCreateTopic011() global
  Topic[] aArr = New Topic[11]
  return aArr
endfunction
Topic[] function cArrayCreateTopic012() global
  Topic[] aArr = New Topic[12]
  return aArr
endfunction
Topic[] function cArrayCreateTopic013() global
  Topic[] aArr = New Topic[13]
  return aArr
endfunction
Topic[] function cArrayCreateTopic014() global
  Topic[] aArr = New Topic[14]
  return aArr
endfunction
Topic[] function cArrayCreateTopic015() global
  Topic[] aArr = New Topic[15]
  return aArr
endfunction
Topic[] function cArrayCreateTopic016() global
  Topic[] aArr = New Topic[16]
  return aArr
endfunction
Topic[] function cArrayCreateTopic017() global
  Topic[] aArr = New Topic[17]
  return aArr
endfunction
Topic[] function cArrayCreateTopic018() global
  Topic[] aArr = New Topic[18]
  return aArr
endfunction
Topic[] function cArrayCreateTopic019() global
  Topic[] aArr = New Topic[19]
  return aArr
endfunction
Topic[] function cArrayCreateTopic020() global
  Topic[] aArr = New Topic[20]
  return aArr
endfunction
Topic[] function cArrayCreateTopic021() global
  Topic[] aArr = New Topic[21]
  return aArr
endfunction
Topic[] function cArrayCreateTopic022() global
  Topic[] aArr = New Topic[22]
  return aArr
endfunction
Topic[] function cArrayCreateTopic023() global
  Topic[] aArr = New Topic[23]
  return aArr
endfunction
Topic[] function cArrayCreateTopic024() global
  Topic[] aArr = New Topic[24]
  return aArr
endfunction
Topic[] function cArrayCreateTopic025() global
  Topic[] aArr = New Topic[25]
  return aArr
endfunction
Topic[] function cArrayCreateTopic026() global
  Topic[] aArr = New Topic[26]
  return aArr
endfunction
Topic[] function cArrayCreateTopic027() global
  Topic[] aArr = New Topic[27]
  return aArr
endfunction
Topic[] function cArrayCreateTopic028() global
  Topic[] aArr = New Topic[28]
  return aArr
endfunction
Topic[] function cArrayCreateTopic029() global
  Topic[] aArr = New Topic[29]
  return aArr
endfunction
Topic[] function cArrayCreateTopic030() global
  Topic[] aArr = New Topic[30]
  return aArr
endfunction
Topic[] function cArrayCreateTopic031() global
  Topic[] aArr = New Topic[31]
  return aArr
endfunction
Topic[] function cArrayCreateTopic032() global
  Topic[] aArr = New Topic[32]
  return aArr
endfunction
Topic[] function cArrayCreateTopic033() global
  Topic[] aArr = New Topic[33]
  return aArr
endfunction
Topic[] function cArrayCreateTopic034() global
  Topic[] aArr = New Topic[34]
  return aArr
endfunction
Topic[] function cArrayCreateTopic035() global
  Topic[] aArr = New Topic[35]
  return aArr
endfunction
Topic[] function cArrayCreateTopic036() global
  Topic[] aArr = New Topic[36]
  return aArr
endfunction
Topic[] function cArrayCreateTopic037() global
  Topic[] aArr = New Topic[37]
  return aArr
endfunction
Topic[] function cArrayCreateTopic038() global
  Topic[] aArr = New Topic[38]
  return aArr
endfunction
Topic[] function cArrayCreateTopic039() global
  Topic[] aArr = New Topic[39]
  return aArr
endfunction
Topic[] function cArrayCreateTopic040() global
  Topic[] aArr = New Topic[40]
  return aArr
endfunction
Topic[] function cArrayCreateTopic041() global
  Topic[] aArr = New Topic[41]
  return aArr
endfunction
Topic[] function cArrayCreateTopic042() global
  Topic[] aArr = New Topic[42]
  return aArr
endfunction
Topic[] function cArrayCreateTopic043() global
  Topic[] aArr = New Topic[43]
  return aArr
endfunction
Topic[] function cArrayCreateTopic044() global
  Topic[] aArr = New Topic[44]
  return aArr
endfunction
Topic[] function cArrayCreateTopic045() global
  Topic[] aArr = New Topic[45]
  return aArr
endfunction
Topic[] function cArrayCreateTopic046() global
  Topic[] aArr = New Topic[46]
  return aArr
endfunction
Topic[] function cArrayCreateTopic047() global
  Topic[] aArr = New Topic[47]
  return aArr
endfunction
Topic[] function cArrayCreateTopic048() global
  Topic[] aArr = New Topic[48]
  return aArr
endfunction
Topic[] function cArrayCreateTopic049() global
  Topic[] aArr = New Topic[49]
  return aArr
endfunction
Topic[] function cArrayCreateTopic050() global
  Topic[] aArr = New Topic[50]
  return aArr
endfunction
Topic[] function cArrayCreateTopic051() global
  Topic[] aArr = New Topic[51]
  return aArr
endfunction
Topic[] function cArrayCreateTopic052() global
  Topic[] aArr = New Topic[52]
  return aArr
endfunction
Topic[] function cArrayCreateTopic053() global
  Topic[] aArr = New Topic[53]
  return aArr
endfunction
Topic[] function cArrayCreateTopic054() global
  Topic[] aArr = New Topic[54]
  return aArr
endfunction
Topic[] function cArrayCreateTopic055() global
  Topic[] aArr = New Topic[55]
  return aArr
endfunction
Topic[] function cArrayCreateTopic056() global
  Topic[] aArr = New Topic[56]
  return aArr
endfunction
Topic[] function cArrayCreateTopic057() global
  Topic[] aArr = New Topic[57]
  return aArr
endfunction
Topic[] function cArrayCreateTopic058() global
  Topic[] aArr = New Topic[58]
  return aArr
endfunction
Topic[] function cArrayCreateTopic059() global
  Topic[] aArr = New Topic[59]
  return aArr
endfunction
Topic[] function cArrayCreateTopic060() global
  Topic[] aArr = New Topic[60]
  return aArr
endfunction
Topic[] function cArrayCreateTopic061() global
  Topic[] aArr = New Topic[61]
  return aArr
endfunction
Topic[] function cArrayCreateTopic062() global
  Topic[] aArr = New Topic[62]
  return aArr
endfunction
Topic[] function cArrayCreateTopic063() global
  Topic[] aArr = New Topic[63]
  return aArr
endfunction
Topic[] function cArrayCreateTopic064() global
  Topic[] aArr = New Topic[64]
  return aArr
endfunction
Topic[] function cArrayCreateTopic065() global
  Topic[] aArr = New Topic[65]
  return aArr
endfunction
Topic[] function cArrayCreateTopic066() global
  Topic[] aArr = New Topic[66]
  return aArr
endfunction
Topic[] function cArrayCreateTopic067() global
  Topic[] aArr = New Topic[67]
  return aArr
endfunction
Topic[] function cArrayCreateTopic068() global
  Topic[] aArr = New Topic[68]
  return aArr
endfunction
Topic[] function cArrayCreateTopic069() global
  Topic[] aArr = New Topic[69]
  return aArr
endfunction
Topic[] function cArrayCreateTopic070() global
  Topic[] aArr = New Topic[70]
  return aArr
endfunction
Topic[] function cArrayCreateTopic071() global
  Topic[] aArr = New Topic[71]
  return aArr
endfunction
Topic[] function cArrayCreateTopic072() global
  Topic[] aArr = New Topic[72]
  return aArr
endfunction
Topic[] function cArrayCreateTopic073() global
  Topic[] aArr = New Topic[73]
  return aArr
endfunction
Topic[] function cArrayCreateTopic074() global
  Topic[] aArr = New Topic[74]
  return aArr
endfunction
Topic[] function cArrayCreateTopic075() global
  Topic[] aArr = New Topic[75]
  return aArr
endfunction
Topic[] function cArrayCreateTopic076() global
  Topic[] aArr = New Topic[76]
  return aArr
endfunction
Topic[] function cArrayCreateTopic077() global
  Topic[] aArr = New Topic[77]
  return aArr
endfunction
Topic[] function cArrayCreateTopic078() global
  Topic[] aArr = New Topic[78]
  return aArr
endfunction
Topic[] function cArrayCreateTopic079() global
  Topic[] aArr = New Topic[79]
  return aArr
endfunction
Topic[] function cArrayCreateTopic080() global
  Topic[] aArr = New Topic[80]
  return aArr
endfunction
Topic[] function cArrayCreateTopic081() global
  Topic[] aArr = New Topic[81]
  return aArr
endfunction
Topic[] function cArrayCreateTopic082() global
  Topic[] aArr = New Topic[82]
  return aArr
endfunction
Topic[] function cArrayCreateTopic083() global
  Topic[] aArr = New Topic[83]
  return aArr
endfunction
Topic[] function cArrayCreateTopic084() global
  Topic[] aArr = New Topic[84]
  return aArr
endfunction
Topic[] function cArrayCreateTopic085() global
  Topic[] aArr = New Topic[85]
  return aArr
endfunction
Topic[] function cArrayCreateTopic086() global
  Topic[] aArr = New Topic[86]
  return aArr
endfunction
Topic[] function cArrayCreateTopic087() global
  Topic[] aArr = New Topic[87]
  return aArr
endfunction
Topic[] function cArrayCreateTopic088() global
  Topic[] aArr = New Topic[88]
  return aArr
endfunction
Topic[] function cArrayCreateTopic089() global
  Topic[] aArr = New Topic[89]
  return aArr
endfunction
Topic[] function cArrayCreateTopic090() global
  Topic[] aArr = New Topic[90]
  return aArr
endfunction
Topic[] function cArrayCreateTopic091() global
  Topic[] aArr = New Topic[91]
  return aArr
endfunction
Topic[] function cArrayCreateTopic092() global
  Topic[] aArr = New Topic[92]
  return aArr
endfunction
Topic[] function cArrayCreateTopic093() global
  Topic[] aArr = New Topic[93]
  return aArr
endfunction
Topic[] function cArrayCreateTopic094() global
  Topic[] aArr = New Topic[94]
  return aArr
endfunction
Topic[] function cArrayCreateTopic095() global
  Topic[] aArr = New Topic[95]
  return aArr
endfunction
Topic[] function cArrayCreateTopic096() global
  Topic[] aArr = New Topic[96]
  return aArr
endfunction
Topic[] function cArrayCreateTopic097() global
  Topic[] aArr = New Topic[97]
  return aArr
endfunction
Topic[] function cArrayCreateTopic098() global
  Topic[] aArr = New Topic[98]
  return aArr
endfunction
Topic[] function cArrayCreateTopic099() global
  Topic[] aArr = New Topic[99]
  return aArr
endfunction
Topic[] function cArrayCreateTopic100() global
  Topic[] aArr = New Topic[100]
  return aArr
endfunction
Topic[] function cArrayCreateTopic101() global
  Topic[] aArr = New Topic[101]
  return aArr
endfunction
Topic[] function cArrayCreateTopic102() global
  Topic[] aArr = New Topic[102]
  return aArr
endfunction
Topic[] function cArrayCreateTopic103() global
  Topic[] aArr = New Topic[103]
  return aArr
endfunction
Topic[] function cArrayCreateTopic104() global
  Topic[] aArr = New Topic[104]
  return aArr
endfunction
Topic[] function cArrayCreateTopic105() global
  Topic[] aArr = New Topic[105]
  return aArr
endfunction
Topic[] function cArrayCreateTopic106() global
  Topic[] aArr = New Topic[106]
  return aArr
endfunction
Topic[] function cArrayCreateTopic107() global
  Topic[] aArr = New Topic[107]
  return aArr
endfunction
Topic[] function cArrayCreateTopic108() global
  Topic[] aArr = New Topic[108]
  return aArr
endfunction
Topic[] function cArrayCreateTopic109() global
  Topic[] aArr = New Topic[109]
  return aArr
endfunction
Topic[] function cArrayCreateTopic110() global
  Topic[] aArr = New Topic[110]
  return aArr
endfunction
Topic[] function cArrayCreateTopic111() global
  Topic[] aArr = New Topic[111]
  return aArr
endfunction
Topic[] function cArrayCreateTopic112() global
  Topic[] aArr = New Topic[112]
  return aArr
endfunction
Topic[] function cArrayCreateTopic113() global
  Topic[] aArr = New Topic[113]
  return aArr
endfunction
Topic[] function cArrayCreateTopic114() global
  Topic[] aArr = New Topic[114]
  return aArr
endfunction
Topic[] function cArrayCreateTopic115() global
  Topic[] aArr = New Topic[115]
  return aArr
endfunction
Topic[] function cArrayCreateTopic116() global
  Topic[] aArr = New Topic[116]
  return aArr
endfunction
Topic[] function cArrayCreateTopic117() global
  Topic[] aArr = New Topic[117]
  return aArr
endfunction
Topic[] function cArrayCreateTopic118() global
  Topic[] aArr = New Topic[118]
  return aArr
endfunction
Topic[] function cArrayCreateTopic119() global
  Topic[] aArr = New Topic[119]
  return aArr
endfunction
Topic[] function cArrayCreateTopic120() global
  Topic[] aArr = New Topic[120]
  return aArr
endfunction
Topic[] function cArrayCreateTopic121() global
  Topic[] aArr = New Topic[121]
  return aArr
endfunction
Topic[] function cArrayCreateTopic122() global
  Topic[] aArr = New Topic[122]
  return aArr
endfunction
Topic[] function cArrayCreateTopic123() global
  Topic[] aArr = New Topic[123]
  return aArr
endfunction
Topic[] function cArrayCreateTopic124() global
  Topic[] aArr = New Topic[124]
  return aArr
endfunction
Topic[] function cArrayCreateTopic125() global
  Topic[] aArr = New Topic[125]
  return aArr
endfunction
Topic[] function cArrayCreateTopic126() global
  Topic[] aArr = New Topic[126]
  return aArr
endfunction
Topic[] function cArrayCreateTopic127() global
  Topic[] aArr = New Topic[127]
  return aArr
endfunction
Topic[] function cArrayCreateTopic128() global
  Topic[] aArr = New Topic[128]
  return aArr
endfunction
