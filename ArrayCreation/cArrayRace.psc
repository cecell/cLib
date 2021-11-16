Scriptname cArrayRace Hidden


Race[] function cArrayCreateRace(Int indices, Race filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  Race[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace Races
    if outputTrace
      String msg = "cArrayCreateRace()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayRace::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateRace001()
              elseif indices < 3
                return cArrayCreateRace002()
              elseif indices < 4
                return cArrayCreateRace003()
              else
                return cArrayCreateRace004()
              endif
            else
              if indices < 6
                return cArrayCreateRace005()
              elseif indices < 7
                return cArrayCreateRace006()
              elseif indices < 8
                return cArrayCreateRace007()
              else
                return cArrayCreateRace008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateRace009()
              elseif indices < 11
                return cArrayCreateRace010()
              elseif indices < 12
                return cArrayCreateRace011()
              else
                return cArrayCreateRace012()
              endif
            else
              if indices < 14
                return cArrayCreateRace013()
              elseif indices < 15
                return cArrayCreateRace014()
              elseif indices < 16
                return cArrayCreateRace015()
              else
                return cArrayCreateRace016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateRace017()
              elseif indices < 19
                return cArrayCreateRace018()
              elseif indices < 20
                return cArrayCreateRace019()
              else
                return cArrayCreateRace020()
              endif
            else
              if indices < 22
                return cArrayCreateRace021()
              elseif indices < 23
                return cArrayCreateRace022()
              elseif indices < 24
                return cArrayCreateRace023()
              else
                return cArrayCreateRace024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateRace025()
              elseif indices < 27
                return cArrayCreateRace026()
              elseif indices < 28
                return cArrayCreateRace027()
              else
                return cArrayCreateRace028()
              endif
            else
              if indices < 30
                return cArrayCreateRace029()
              elseif indices < 31
                return cArrayCreateRace030()
              elseif indices < 32
                return cArrayCreateRace031()
              else
                return cArrayCreateRace032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateRace033()
              elseif indices < 35
                return cArrayCreateRace034()
              elseif indices < 36
                return cArrayCreateRace035()
              else
                return cArrayCreateRace036()
              endif
            else
              if indices < 38
                return cArrayCreateRace037()
              elseif indices < 39
                return cArrayCreateRace038()
              elseif indices < 40
                return cArrayCreateRace039()
              else
                return cArrayCreateRace040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateRace041()
              elseif indices < 43
                return cArrayCreateRace042()
              elseif indices < 44
                return cArrayCreateRace043()
              else
                return cArrayCreateRace044()
              endif
            else
              if indices < 46
                return cArrayCreateRace045()
              elseif indices < 47
                return cArrayCreateRace046()
              elseif indices < 48
                return cArrayCreateRace047()
              else
                return cArrayCreateRace048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateRace049()
              elseif indices < 51
                return cArrayCreateRace050()
              elseif indices < 52
                return cArrayCreateRace051()
              else
                return cArrayCreateRace052()
              endif
            else
              if indices < 54
                return cArrayCreateRace053()
              elseif indices < 55
                return cArrayCreateRace054()
              elseif indices < 56
                return cArrayCreateRace055()
              else
                return cArrayCreateRace056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateRace057()
              elseif indices < 59
                return cArrayCreateRace058()
              elseif indices < 60
                return cArrayCreateRace059()
              else
                return cArrayCreateRace060()
              endif
            else
              if indices < 62
                return cArrayCreateRace061()
              elseif indices < 63
                return cArrayCreateRace062()
              elseif indices < 64
                return cArrayCreateRace063()
              else
                return cArrayCreateRace064()
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
                return cArrayCreateRace065()
              elseif indices < 67
                return cArrayCreateRace066()
              elseif indices < 68
                return cArrayCreateRace067()
              else
                return cArrayCreateRace068()
              endif
            else
              if indices < 70
                return cArrayCreateRace069()
              elseif indices < 71
                return cArrayCreateRace070()
              elseif indices < 72
                return cArrayCreateRace071()
              else
                return cArrayCreateRace072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateRace073()
              elseif indices < 75
                return cArrayCreateRace074()
              elseif indices < 76
                return cArrayCreateRace075()
              else
                return cArrayCreateRace076()
              endif
            else
              if indices < 78
                return cArrayCreateRace077()
              elseif indices < 79
                return cArrayCreateRace078()
              elseif indices < 80
                return cArrayCreateRace079()
              else
                return cArrayCreateRace080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateRace081()
              elseif indices < 83
                return cArrayCreateRace082()
              elseif indices < 84
                return cArrayCreateRace083()
              else
                return cArrayCreateRace084()
              endif
            else
              if indices < 86
                return cArrayCreateRace085()
              elseif indices < 87
                return cArrayCreateRace086()
              elseif indices < 88
                return cArrayCreateRace087()
              else
                return cArrayCreateRace088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateRace089()
              elseif indices < 91
                return cArrayCreateRace090()
              elseif indices < 92
                return cArrayCreateRace091()
              else
                return cArrayCreateRace092()
              endif
            else
              if indices < 94
                return cArrayCreateRace093()
              elseif indices < 95
                return cArrayCreateRace094()
              elseif indices < 96
                return cArrayCreateRace095()
              else
                return cArrayCreateRace096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateRace097()
              elseif indices < 99
                return cArrayCreateRace098()
              elseif indices < 100
                return cArrayCreateRace099()
              else
                return cArrayCreateRace100()
              endif
            else
              if indices < 102
                return cArrayCreateRace101()
              elseif indices < 103
                return cArrayCreateRace102()
              elseif indices < 104
                return cArrayCreateRace103()
              else
                return cArrayCreateRace104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateRace105()
              elseif indices < 107
                return cArrayCreateRace106()
              elseif indices < 108
                return cArrayCreateRace107()
              else
                return cArrayCreateRace108()
              endif
            else
              if indices < 110
                return cArrayCreateRace109()
              elseif indices < 111
                return cArrayCreateRace110()
              elseif indices < 112
                return cArrayCreateRace111()
              else
                return cArrayCreateRace112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateRace113()
              elseif indices < 115
                return cArrayCreateRace114()
              elseif indices < 116
                return cArrayCreateRace115()
              else
                return cArrayCreateRace116()
              endif
            else
              if indices < 118
                return cArrayCreateRace117()
              elseif indices < 119
                return cArrayCreateRace118()
              elseif indices < 120
                return cArrayCreateRace119()
              else
                return cArrayCreateRace120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateRace121()
              elseif indices < 123
                return cArrayCreateRace122()
              elseif indices < 124
                return cArrayCreateRace123()
              else
                return cArrayCreateRace124()
              endif
            else
              if indices < 126
                return cArrayCreateRace125()
              elseif indices < 127
                return cArrayCreateRace126()
              elseif indices < 128
                return cArrayCreateRace127()
              else
                return cArrayCreateRace128()
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

Race[] function cArrayCreateRace001() global
  Race[] aArr = New Race[1]
  return aArr
endfunction
Race[] function cArrayCreateRace002() global
  Race[] aArr = New Race[2]
  return aArr
endfunction
Race[] function cArrayCreateRace003() global
  Race[] aArr = New Race[3]
  return aArr
endfunction
Race[] function cArrayCreateRace004() global
  Race[] aArr = New Race[4]
  return aArr
endfunction
Race[] function cArrayCreateRace005() global
  Race[] aArr = New Race[5]
  return aArr
endfunction
Race[] function cArrayCreateRace006() global
  Race[] aArr = New Race[6]
  return aArr
endfunction
Race[] function cArrayCreateRace007() global
  Race[] aArr = New Race[7]
  return aArr
endfunction
Race[] function cArrayCreateRace008() global
  Race[] aArr = New Race[8]
  return aArr
endfunction
Race[] function cArrayCreateRace009() global
  Race[] aArr = New Race[9]
  return aArr
endfunction
Race[] function cArrayCreateRace010() global
  Race[] aArr = New Race[10]
  return aArr
endfunction
Race[] function cArrayCreateRace011() global
  Race[] aArr = New Race[11]
  return aArr
endfunction
Race[] function cArrayCreateRace012() global
  Race[] aArr = New Race[12]
  return aArr
endfunction
Race[] function cArrayCreateRace013() global
  Race[] aArr = New Race[13]
  return aArr
endfunction
Race[] function cArrayCreateRace014() global
  Race[] aArr = New Race[14]
  return aArr
endfunction
Race[] function cArrayCreateRace015() global
  Race[] aArr = New Race[15]
  return aArr
endfunction
Race[] function cArrayCreateRace016() global
  Race[] aArr = New Race[16]
  return aArr
endfunction
Race[] function cArrayCreateRace017() global
  Race[] aArr = New Race[17]
  return aArr
endfunction
Race[] function cArrayCreateRace018() global
  Race[] aArr = New Race[18]
  return aArr
endfunction
Race[] function cArrayCreateRace019() global
  Race[] aArr = New Race[19]
  return aArr
endfunction
Race[] function cArrayCreateRace020() global
  Race[] aArr = New Race[20]
  return aArr
endfunction
Race[] function cArrayCreateRace021() global
  Race[] aArr = New Race[21]
  return aArr
endfunction
Race[] function cArrayCreateRace022() global
  Race[] aArr = New Race[22]
  return aArr
endfunction
Race[] function cArrayCreateRace023() global
  Race[] aArr = New Race[23]
  return aArr
endfunction
Race[] function cArrayCreateRace024() global
  Race[] aArr = New Race[24]
  return aArr
endfunction
Race[] function cArrayCreateRace025() global
  Race[] aArr = New Race[25]
  return aArr
endfunction
Race[] function cArrayCreateRace026() global
  Race[] aArr = New Race[26]
  return aArr
endfunction
Race[] function cArrayCreateRace027() global
  Race[] aArr = New Race[27]
  return aArr
endfunction
Race[] function cArrayCreateRace028() global
  Race[] aArr = New Race[28]
  return aArr
endfunction
Race[] function cArrayCreateRace029() global
  Race[] aArr = New Race[29]
  return aArr
endfunction
Race[] function cArrayCreateRace030() global
  Race[] aArr = New Race[30]
  return aArr
endfunction
Race[] function cArrayCreateRace031() global
  Race[] aArr = New Race[31]
  return aArr
endfunction
Race[] function cArrayCreateRace032() global
  Race[] aArr = New Race[32]
  return aArr
endfunction
Race[] function cArrayCreateRace033() global
  Race[] aArr = New Race[33]
  return aArr
endfunction
Race[] function cArrayCreateRace034() global
  Race[] aArr = New Race[34]
  return aArr
endfunction
Race[] function cArrayCreateRace035() global
  Race[] aArr = New Race[35]
  return aArr
endfunction
Race[] function cArrayCreateRace036() global
  Race[] aArr = New Race[36]
  return aArr
endfunction
Race[] function cArrayCreateRace037() global
  Race[] aArr = New Race[37]
  return aArr
endfunction
Race[] function cArrayCreateRace038() global
  Race[] aArr = New Race[38]
  return aArr
endfunction
Race[] function cArrayCreateRace039() global
  Race[] aArr = New Race[39]
  return aArr
endfunction
Race[] function cArrayCreateRace040() global
  Race[] aArr = New Race[40]
  return aArr
endfunction
Race[] function cArrayCreateRace041() global
  Race[] aArr = New Race[41]
  return aArr
endfunction
Race[] function cArrayCreateRace042() global
  Race[] aArr = New Race[42]
  return aArr
endfunction
Race[] function cArrayCreateRace043() global
  Race[] aArr = New Race[43]
  return aArr
endfunction
Race[] function cArrayCreateRace044() global
  Race[] aArr = New Race[44]
  return aArr
endfunction
Race[] function cArrayCreateRace045() global
  Race[] aArr = New Race[45]
  return aArr
endfunction
Race[] function cArrayCreateRace046() global
  Race[] aArr = New Race[46]
  return aArr
endfunction
Race[] function cArrayCreateRace047() global
  Race[] aArr = New Race[47]
  return aArr
endfunction
Race[] function cArrayCreateRace048() global
  Race[] aArr = New Race[48]
  return aArr
endfunction
Race[] function cArrayCreateRace049() global
  Race[] aArr = New Race[49]
  return aArr
endfunction
Race[] function cArrayCreateRace050() global
  Race[] aArr = New Race[50]
  return aArr
endfunction
Race[] function cArrayCreateRace051() global
  Race[] aArr = New Race[51]
  return aArr
endfunction
Race[] function cArrayCreateRace052() global
  Race[] aArr = New Race[52]
  return aArr
endfunction
Race[] function cArrayCreateRace053() global
  Race[] aArr = New Race[53]
  return aArr
endfunction
Race[] function cArrayCreateRace054() global
  Race[] aArr = New Race[54]
  return aArr
endfunction
Race[] function cArrayCreateRace055() global
  Race[] aArr = New Race[55]
  return aArr
endfunction
Race[] function cArrayCreateRace056() global
  Race[] aArr = New Race[56]
  return aArr
endfunction
Race[] function cArrayCreateRace057() global
  Race[] aArr = New Race[57]
  return aArr
endfunction
Race[] function cArrayCreateRace058() global
  Race[] aArr = New Race[58]
  return aArr
endfunction
Race[] function cArrayCreateRace059() global
  Race[] aArr = New Race[59]
  return aArr
endfunction
Race[] function cArrayCreateRace060() global
  Race[] aArr = New Race[60]
  return aArr
endfunction
Race[] function cArrayCreateRace061() global
  Race[] aArr = New Race[61]
  return aArr
endfunction
Race[] function cArrayCreateRace062() global
  Race[] aArr = New Race[62]
  return aArr
endfunction
Race[] function cArrayCreateRace063() global
  Race[] aArr = New Race[63]
  return aArr
endfunction
Race[] function cArrayCreateRace064() global
  Race[] aArr = New Race[64]
  return aArr
endfunction
Race[] function cArrayCreateRace065() global
  Race[] aArr = New Race[65]
  return aArr
endfunction
Race[] function cArrayCreateRace066() global
  Race[] aArr = New Race[66]
  return aArr
endfunction
Race[] function cArrayCreateRace067() global
  Race[] aArr = New Race[67]
  return aArr
endfunction
Race[] function cArrayCreateRace068() global
  Race[] aArr = New Race[68]
  return aArr
endfunction
Race[] function cArrayCreateRace069() global
  Race[] aArr = New Race[69]
  return aArr
endfunction
Race[] function cArrayCreateRace070() global
  Race[] aArr = New Race[70]
  return aArr
endfunction
Race[] function cArrayCreateRace071() global
  Race[] aArr = New Race[71]
  return aArr
endfunction
Race[] function cArrayCreateRace072() global
  Race[] aArr = New Race[72]
  return aArr
endfunction
Race[] function cArrayCreateRace073() global
  Race[] aArr = New Race[73]
  return aArr
endfunction
Race[] function cArrayCreateRace074() global
  Race[] aArr = New Race[74]
  return aArr
endfunction
Race[] function cArrayCreateRace075() global
  Race[] aArr = New Race[75]
  return aArr
endfunction
Race[] function cArrayCreateRace076() global
  Race[] aArr = New Race[76]
  return aArr
endfunction
Race[] function cArrayCreateRace077() global
  Race[] aArr = New Race[77]
  return aArr
endfunction
Race[] function cArrayCreateRace078() global
  Race[] aArr = New Race[78]
  return aArr
endfunction
Race[] function cArrayCreateRace079() global
  Race[] aArr = New Race[79]
  return aArr
endfunction
Race[] function cArrayCreateRace080() global
  Race[] aArr = New Race[80]
  return aArr
endfunction
Race[] function cArrayCreateRace081() global
  Race[] aArr = New Race[81]
  return aArr
endfunction
Race[] function cArrayCreateRace082() global
  Race[] aArr = New Race[82]
  return aArr
endfunction
Race[] function cArrayCreateRace083() global
  Race[] aArr = New Race[83]
  return aArr
endfunction
Race[] function cArrayCreateRace084() global
  Race[] aArr = New Race[84]
  return aArr
endfunction
Race[] function cArrayCreateRace085() global
  Race[] aArr = New Race[85]
  return aArr
endfunction
Race[] function cArrayCreateRace086() global
  Race[] aArr = New Race[86]
  return aArr
endfunction
Race[] function cArrayCreateRace087() global
  Race[] aArr = New Race[87]
  return aArr
endfunction
Race[] function cArrayCreateRace088() global
  Race[] aArr = New Race[88]
  return aArr
endfunction
Race[] function cArrayCreateRace089() global
  Race[] aArr = New Race[89]
  return aArr
endfunction
Race[] function cArrayCreateRace090() global
  Race[] aArr = New Race[90]
  return aArr
endfunction
Race[] function cArrayCreateRace091() global
  Race[] aArr = New Race[91]
  return aArr
endfunction
Race[] function cArrayCreateRace092() global
  Race[] aArr = New Race[92]
  return aArr
endfunction
Race[] function cArrayCreateRace093() global
  Race[] aArr = New Race[93]
  return aArr
endfunction
Race[] function cArrayCreateRace094() global
  Race[] aArr = New Race[94]
  return aArr
endfunction
Race[] function cArrayCreateRace095() global
  Race[] aArr = New Race[95]
  return aArr
endfunction
Race[] function cArrayCreateRace096() global
  Race[] aArr = New Race[96]
  return aArr
endfunction
Race[] function cArrayCreateRace097() global
  Race[] aArr = New Race[97]
  return aArr
endfunction
Race[] function cArrayCreateRace098() global
  Race[] aArr = New Race[98]
  return aArr
endfunction
Race[] function cArrayCreateRace099() global
  Race[] aArr = New Race[99]
  return aArr
endfunction
Race[] function cArrayCreateRace100() global
  Race[] aArr = New Race[100]
  return aArr
endfunction
Race[] function cArrayCreateRace101() global
  Race[] aArr = New Race[101]
  return aArr
endfunction
Race[] function cArrayCreateRace102() global
  Race[] aArr = New Race[102]
  return aArr
endfunction
Race[] function cArrayCreateRace103() global
  Race[] aArr = New Race[103]
  return aArr
endfunction
Race[] function cArrayCreateRace104() global
  Race[] aArr = New Race[104]
  return aArr
endfunction
Race[] function cArrayCreateRace105() global
  Race[] aArr = New Race[105]
  return aArr
endfunction
Race[] function cArrayCreateRace106() global
  Race[] aArr = New Race[106]
  return aArr
endfunction
Race[] function cArrayCreateRace107() global
  Race[] aArr = New Race[107]
  return aArr
endfunction
Race[] function cArrayCreateRace108() global
  Race[] aArr = New Race[108]
  return aArr
endfunction
Race[] function cArrayCreateRace109() global
  Race[] aArr = New Race[109]
  return aArr
endfunction
Race[] function cArrayCreateRace110() global
  Race[] aArr = New Race[110]
  return aArr
endfunction
Race[] function cArrayCreateRace111() global
  Race[] aArr = New Race[111]
  return aArr
endfunction
Race[] function cArrayCreateRace112() global
  Race[] aArr = New Race[112]
  return aArr
endfunction
Race[] function cArrayCreateRace113() global
  Race[] aArr = New Race[113]
  return aArr
endfunction
Race[] function cArrayCreateRace114() global
  Race[] aArr = New Race[114]
  return aArr
endfunction
Race[] function cArrayCreateRace115() global
  Race[] aArr = New Race[115]
  return aArr
endfunction
Race[] function cArrayCreateRace116() global
  Race[] aArr = New Race[116]
  return aArr
endfunction
Race[] function cArrayCreateRace117() global
  Race[] aArr = New Race[117]
  return aArr
endfunction
Race[] function cArrayCreateRace118() global
  Race[] aArr = New Race[118]
  return aArr
endfunction
Race[] function cArrayCreateRace119() global
  Race[] aArr = New Race[119]
  return aArr
endfunction
Race[] function cArrayCreateRace120() global
  Race[] aArr = New Race[120]
  return aArr
endfunction
Race[] function cArrayCreateRace121() global
  Race[] aArr = New Race[121]
  return aArr
endfunction
Race[] function cArrayCreateRace122() global
  Race[] aArr = New Race[122]
  return aArr
endfunction
Race[] function cArrayCreateRace123() global
  Race[] aArr = New Race[123]
  return aArr
endfunction
Race[] function cArrayCreateRace124() global
  Race[] aArr = New Race[124]
  return aArr
endfunction
Race[] function cArrayCreateRace125() global
  Race[] aArr = New Race[125]
  return aArr
endfunction
Race[] function cArrayCreateRace126() global
  Race[] aArr = New Race[126]
  return aArr
endfunction
Race[] function cArrayCreateRace127() global
  Race[] aArr = New Race[127]
  return aArr
endfunction
Race[] function cArrayCreateRace128() global
  Race[] aArr = New Race[128]
  return aArr
endfunction
