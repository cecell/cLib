Scriptname cArrayBool Hidden


Bool[] function cArrayCreateBool(Int indices, Bool filler = False, Bool outputTrace = TRUE) global
  {Requirements: None}
  Bool[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    if outputTrace
      String msg = "cArrayCreateBool()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayBool::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateBool001()
              elseif indices < 3
                return cArrayCreateBool002()
              elseif indices < 4
                return cArrayCreateBool003()
              else
                return cArrayCreateBool004()
              endif
            else
              if indices < 6
                return cArrayCreateBool005()
              elseif indices < 7
                return cArrayCreateBool006()
              elseif indices < 8
                return cArrayCreateBool007()
              else
                return cArrayCreateBool008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateBool009()
              elseif indices < 11
                return cArrayCreateBool010()
              elseif indices < 12
                return cArrayCreateBool011()
              else
                return cArrayCreateBool012()
              endif
            else
              if indices < 14
                return cArrayCreateBool013()
              elseif indices < 15
                return cArrayCreateBool014()
              elseif indices < 16
                return cArrayCreateBool015()
              else
                return cArrayCreateBool016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateBool017()
              elseif indices < 19
                return cArrayCreateBool018()
              elseif indices < 20
                return cArrayCreateBool019()
              else
                return cArrayCreateBool020()
              endif
            else
              if indices < 22
                return cArrayCreateBool021()
              elseif indices < 23
                return cArrayCreateBool022()
              elseif indices < 24
                return cArrayCreateBool023()
              else
                return cArrayCreateBool024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateBool025()
              elseif indices < 27
                return cArrayCreateBool026()
              elseif indices < 28
                return cArrayCreateBool027()
              else
                return cArrayCreateBool028()
              endif
            else
              if indices < 30
                return cArrayCreateBool029()
              elseif indices < 31
                return cArrayCreateBool030()
              elseif indices < 32
                return cArrayCreateBool031()
              else
                return cArrayCreateBool032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateBool033()
              elseif indices < 35
                return cArrayCreateBool034()
              elseif indices < 36
                return cArrayCreateBool035()
              else
                return cArrayCreateBool036()
              endif
            else
              if indices < 38
                return cArrayCreateBool037()
              elseif indices < 39
                return cArrayCreateBool038()
              elseif indices < 40
                return cArrayCreateBool039()
              else
                return cArrayCreateBool040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateBool041()
              elseif indices < 43
                return cArrayCreateBool042()
              elseif indices < 44
                return cArrayCreateBool043()
              else
                return cArrayCreateBool044()
              endif
            else
              if indices < 46
                return cArrayCreateBool045()
              elseif indices < 47
                return cArrayCreateBool046()
              elseif indices < 48
                return cArrayCreateBool047()
              else
                return cArrayCreateBool048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateBool049()
              elseif indices < 51
                return cArrayCreateBool050()
              elseif indices < 52
                return cArrayCreateBool051()
              else
                return cArrayCreateBool052()
              endif
            else
              if indices < 54
                return cArrayCreateBool053()
              elseif indices < 55
                return cArrayCreateBool054()
              elseif indices < 56
                return cArrayCreateBool055()
              else
                return cArrayCreateBool056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateBool057()
              elseif indices < 59
                return cArrayCreateBool058()
              elseif indices < 60
                return cArrayCreateBool059()
              else
                return cArrayCreateBool060()
              endif
            else
              if indices < 62
                return cArrayCreateBool061()
              elseif indices < 63
                return cArrayCreateBool062()
              elseif indices < 64
                return cArrayCreateBool063()
              else
                return cArrayCreateBool064()
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
                return cArrayCreateBool065()
              elseif indices < 67
                return cArrayCreateBool066()
              elseif indices < 68
                return cArrayCreateBool067()
              else
                return cArrayCreateBool068()
              endif
            else
              if indices < 70
                return cArrayCreateBool069()
              elseif indices < 71
                return cArrayCreateBool070()
              elseif indices < 72
                return cArrayCreateBool071()
              else
                return cArrayCreateBool072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateBool073()
              elseif indices < 75
                return cArrayCreateBool074()
              elseif indices < 76
                return cArrayCreateBool075()
              else
                return cArrayCreateBool076()
              endif
            else
              if indices < 78
                return cArrayCreateBool077()
              elseif indices < 79
                return cArrayCreateBool078()
              elseif indices < 80
                return cArrayCreateBool079()
              else
                return cArrayCreateBool080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateBool081()
              elseif indices < 83
                return cArrayCreateBool082()
              elseif indices < 84
                return cArrayCreateBool083()
              else
                return cArrayCreateBool084()
              endif
            else
              if indices < 86
                return cArrayCreateBool085()
              elseif indices < 87
                return cArrayCreateBool086()
              elseif indices < 88
                return cArrayCreateBool087()
              else
                return cArrayCreateBool088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateBool089()
              elseif indices < 91
                return cArrayCreateBool090()
              elseif indices < 92
                return cArrayCreateBool091()
              else
                return cArrayCreateBool092()
              endif
            else
              if indices < 94
                return cArrayCreateBool093()
              elseif indices < 95
                return cArrayCreateBool094()
              elseif indices < 96
                return cArrayCreateBool095()
              else
                return cArrayCreateBool096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateBool097()
              elseif indices < 99
                return cArrayCreateBool098()
              elseif indices < 100
                return cArrayCreateBool099()
              else
                return cArrayCreateBool100()
              endif
            else
              if indices < 102
                return cArrayCreateBool101()
              elseif indices < 103
                return cArrayCreateBool102()
              elseif indices < 104
                return cArrayCreateBool103()
              else
                return cArrayCreateBool104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateBool105()
              elseif indices < 107
                return cArrayCreateBool106()
              elseif indices < 108
                return cArrayCreateBool107()
              else
                return cArrayCreateBool108()
              endif
            else
              if indices < 110
                return cArrayCreateBool109()
              elseif indices < 111
                return cArrayCreateBool110()
              elseif indices < 112
                return cArrayCreateBool111()
              else
                return cArrayCreateBool112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateBool113()
              elseif indices < 115
                return cArrayCreateBool114()
              elseif indices < 116
                return cArrayCreateBool115()
              else
                return cArrayCreateBool116()
              endif
            else
              if indices < 118
                return cArrayCreateBool117()
              elseif indices < 119
                return cArrayCreateBool118()
              elseif indices < 120
                return cArrayCreateBool119()
              else
                return cArrayCreateBool120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateBool121()
              elseif indices < 123
                return cArrayCreateBool122()
              elseif indices < 124
                return cArrayCreateBool123()
              else
                return cArrayCreateBool124()
              endif
            else
              if indices < 126
                return cArrayCreateBool125()
              elseif indices < 127
                return cArrayCreateBool126()
              elseif indices < 128
                return cArrayCreateBool127()
              else
                return cArrayCreateBool128()
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

Bool[] function cArrayCreateBool001() global
  Bool[] aArr = New Bool[1]
  return aArr
endfunction
Bool[] function cArrayCreateBool002() global
  Bool[] aArr = New Bool[2]
  return aArr
endfunction
Bool[] function cArrayCreateBool003() global
  Bool[] aArr = New Bool[3]
  return aArr
endfunction
Bool[] function cArrayCreateBool004() global
  Bool[] aArr = New Bool[4]
  return aArr
endfunction
Bool[] function cArrayCreateBool005() global
  Bool[] aArr = New Bool[5]
  return aArr
endfunction
Bool[] function cArrayCreateBool006() global
  Bool[] aArr = New Bool[6]
  return aArr
endfunction
Bool[] function cArrayCreateBool007() global
  Bool[] aArr = New Bool[7]
  return aArr
endfunction
Bool[] function cArrayCreateBool008() global
  Bool[] aArr = New Bool[8]
  return aArr
endfunction
Bool[] function cArrayCreateBool009() global
  Bool[] aArr = New Bool[9]
  return aArr
endfunction
Bool[] function cArrayCreateBool010() global
  Bool[] aArr = New Bool[10]
  return aArr
endfunction
Bool[] function cArrayCreateBool011() global
  Bool[] aArr = New Bool[11]
  return aArr
endfunction
Bool[] function cArrayCreateBool012() global
  Bool[] aArr = New Bool[12]
  return aArr
endfunction
Bool[] function cArrayCreateBool013() global
  Bool[] aArr = New Bool[13]
  return aArr
endfunction
Bool[] function cArrayCreateBool014() global
  Bool[] aArr = New Bool[14]
  return aArr
endfunction
Bool[] function cArrayCreateBool015() global
  Bool[] aArr = New Bool[15]
  return aArr
endfunction
Bool[] function cArrayCreateBool016() global
  Bool[] aArr = New Bool[16]
  return aArr
endfunction
Bool[] function cArrayCreateBool017() global
  Bool[] aArr = New Bool[17]
  return aArr
endfunction
Bool[] function cArrayCreateBool018() global
  Bool[] aArr = New Bool[18]
  return aArr
endfunction
Bool[] function cArrayCreateBool019() global
  Bool[] aArr = New Bool[19]
  return aArr
endfunction
Bool[] function cArrayCreateBool020() global
  Bool[] aArr = New Bool[20]
  return aArr
endfunction
Bool[] function cArrayCreateBool021() global
  Bool[] aArr = New Bool[21]
  return aArr
endfunction
Bool[] function cArrayCreateBool022() global
  Bool[] aArr = New Bool[22]
  return aArr
endfunction
Bool[] function cArrayCreateBool023() global
  Bool[] aArr = New Bool[23]
  return aArr
endfunction
Bool[] function cArrayCreateBool024() global
  Bool[] aArr = New Bool[24]
  return aArr
endfunction
Bool[] function cArrayCreateBool025() global
  Bool[] aArr = New Bool[25]
  return aArr
endfunction
Bool[] function cArrayCreateBool026() global
  Bool[] aArr = New Bool[26]
  return aArr
endfunction
Bool[] function cArrayCreateBool027() global
  Bool[] aArr = New Bool[27]
  return aArr
endfunction
Bool[] function cArrayCreateBool028() global
  Bool[] aArr = New Bool[28]
  return aArr
endfunction
Bool[] function cArrayCreateBool029() global
  Bool[] aArr = New Bool[29]
  return aArr
endfunction
Bool[] function cArrayCreateBool030() global
  Bool[] aArr = New Bool[30]
  return aArr
endfunction
Bool[] function cArrayCreateBool031() global
  Bool[] aArr = New Bool[31]
  return aArr
endfunction
Bool[] function cArrayCreateBool032() global
  Bool[] aArr = New Bool[32]
  return aArr
endfunction
Bool[] function cArrayCreateBool033() global
  Bool[] aArr = New Bool[33]
  return aArr
endfunction
Bool[] function cArrayCreateBool034() global
  Bool[] aArr = New Bool[34]
  return aArr
endfunction
Bool[] function cArrayCreateBool035() global
  Bool[] aArr = New Bool[35]
  return aArr
endfunction
Bool[] function cArrayCreateBool036() global
  Bool[] aArr = New Bool[36]
  return aArr
endfunction
Bool[] function cArrayCreateBool037() global
  Bool[] aArr = New Bool[37]
  return aArr
endfunction
Bool[] function cArrayCreateBool038() global
  Bool[] aArr = New Bool[38]
  return aArr
endfunction
Bool[] function cArrayCreateBool039() global
  Bool[] aArr = New Bool[39]
  return aArr
endfunction
Bool[] function cArrayCreateBool040() global
  Bool[] aArr = New Bool[40]
  return aArr
endfunction
Bool[] function cArrayCreateBool041() global
  Bool[] aArr = New Bool[41]
  return aArr
endfunction
Bool[] function cArrayCreateBool042() global
  Bool[] aArr = New Bool[42]
  return aArr
endfunction
Bool[] function cArrayCreateBool043() global
  Bool[] aArr = New Bool[43]
  return aArr
endfunction
Bool[] function cArrayCreateBool044() global
  Bool[] aArr = New Bool[44]
  return aArr
endfunction
Bool[] function cArrayCreateBool045() global
  Bool[] aArr = New Bool[45]
  return aArr
endfunction
Bool[] function cArrayCreateBool046() global
  Bool[] aArr = New Bool[46]
  return aArr
endfunction
Bool[] function cArrayCreateBool047() global
  Bool[] aArr = New Bool[47]
  return aArr
endfunction
Bool[] function cArrayCreateBool048() global
  Bool[] aArr = New Bool[48]
  return aArr
endfunction
Bool[] function cArrayCreateBool049() global
  Bool[] aArr = New Bool[49]
  return aArr
endfunction
Bool[] function cArrayCreateBool050() global
  Bool[] aArr = New Bool[50]
  return aArr
endfunction
Bool[] function cArrayCreateBool051() global
  Bool[] aArr = New Bool[51]
  return aArr
endfunction
Bool[] function cArrayCreateBool052() global
  Bool[] aArr = New Bool[52]
  return aArr
endfunction
Bool[] function cArrayCreateBool053() global
  Bool[] aArr = New Bool[53]
  return aArr
endfunction
Bool[] function cArrayCreateBool054() global
  Bool[] aArr = New Bool[54]
  return aArr
endfunction
Bool[] function cArrayCreateBool055() global
  Bool[] aArr = New Bool[55]
  return aArr
endfunction
Bool[] function cArrayCreateBool056() global
  Bool[] aArr = New Bool[56]
  return aArr
endfunction
Bool[] function cArrayCreateBool057() global
  Bool[] aArr = New Bool[57]
  return aArr
endfunction
Bool[] function cArrayCreateBool058() global
  Bool[] aArr = New Bool[58]
  return aArr
endfunction
Bool[] function cArrayCreateBool059() global
  Bool[] aArr = New Bool[59]
  return aArr
endfunction
Bool[] function cArrayCreateBool060() global
  Bool[] aArr = New Bool[60]
  return aArr
endfunction
Bool[] function cArrayCreateBool061() global
  Bool[] aArr = New Bool[61]
  return aArr
endfunction
Bool[] function cArrayCreateBool062() global
  Bool[] aArr = New Bool[62]
  return aArr
endfunction
Bool[] function cArrayCreateBool063() global
  Bool[] aArr = New Bool[63]
  return aArr
endfunction
Bool[] function cArrayCreateBool064() global
  Bool[] aArr = New Bool[64]
  return aArr
endfunction
Bool[] function cArrayCreateBool065() global
  Bool[] aArr = New Bool[65]
  return aArr
endfunction
Bool[] function cArrayCreateBool066() global
  Bool[] aArr = New Bool[66]
  return aArr
endfunction
Bool[] function cArrayCreateBool067() global
  Bool[] aArr = New Bool[67]
  return aArr
endfunction
Bool[] function cArrayCreateBool068() global
  Bool[] aArr = New Bool[68]
  return aArr
endfunction
Bool[] function cArrayCreateBool069() global
  Bool[] aArr = New Bool[69]
  return aArr
endfunction
Bool[] function cArrayCreateBool070() global
  Bool[] aArr = New Bool[70]
  return aArr
endfunction
Bool[] function cArrayCreateBool071() global
  Bool[] aArr = New Bool[71]
  return aArr
endfunction
Bool[] function cArrayCreateBool072() global
  Bool[] aArr = New Bool[72]
  return aArr
endfunction
Bool[] function cArrayCreateBool073() global
  Bool[] aArr = New Bool[73]
  return aArr
endfunction
Bool[] function cArrayCreateBool074() global
  Bool[] aArr = New Bool[74]
  return aArr
endfunction
Bool[] function cArrayCreateBool075() global
  Bool[] aArr = New Bool[75]
  return aArr
endfunction
Bool[] function cArrayCreateBool076() global
  Bool[] aArr = New Bool[76]
  return aArr
endfunction
Bool[] function cArrayCreateBool077() global
  Bool[] aArr = New Bool[77]
  return aArr
endfunction
Bool[] function cArrayCreateBool078() global
  Bool[] aArr = New Bool[78]
  return aArr
endfunction
Bool[] function cArrayCreateBool079() global
  Bool[] aArr = New Bool[79]
  return aArr
endfunction
Bool[] function cArrayCreateBool080() global
  Bool[] aArr = New Bool[80]
  return aArr
endfunction
Bool[] function cArrayCreateBool081() global
  Bool[] aArr = New Bool[81]
  return aArr
endfunction
Bool[] function cArrayCreateBool082() global
  Bool[] aArr = New Bool[82]
  return aArr
endfunction
Bool[] function cArrayCreateBool083() global
  Bool[] aArr = New Bool[83]
  return aArr
endfunction
Bool[] function cArrayCreateBool084() global
  Bool[] aArr = New Bool[84]
  return aArr
endfunction
Bool[] function cArrayCreateBool085() global
  Bool[] aArr = New Bool[85]
  return aArr
endfunction
Bool[] function cArrayCreateBool086() global
  Bool[] aArr = New Bool[86]
  return aArr
endfunction
Bool[] function cArrayCreateBool087() global
  Bool[] aArr = New Bool[87]
  return aArr
endfunction
Bool[] function cArrayCreateBool088() global
  Bool[] aArr = New Bool[88]
  return aArr
endfunction
Bool[] function cArrayCreateBool089() global
  Bool[] aArr = New Bool[89]
  return aArr
endfunction
Bool[] function cArrayCreateBool090() global
  Bool[] aArr = New Bool[90]
  return aArr
endfunction
Bool[] function cArrayCreateBool091() global
  Bool[] aArr = New Bool[91]
  return aArr
endfunction
Bool[] function cArrayCreateBool092() global
  Bool[] aArr = New Bool[92]
  return aArr
endfunction
Bool[] function cArrayCreateBool093() global
  Bool[] aArr = New Bool[93]
  return aArr
endfunction
Bool[] function cArrayCreateBool094() global
  Bool[] aArr = New Bool[94]
  return aArr
endfunction
Bool[] function cArrayCreateBool095() global
  Bool[] aArr = New Bool[95]
  return aArr
endfunction
Bool[] function cArrayCreateBool096() global
  Bool[] aArr = New Bool[96]
  return aArr
endfunction
Bool[] function cArrayCreateBool097() global
  Bool[] aArr = New Bool[97]
  return aArr
endfunction
Bool[] function cArrayCreateBool098() global
  Bool[] aArr = New Bool[98]
  return aArr
endfunction
Bool[] function cArrayCreateBool099() global
  Bool[] aArr = New Bool[99]
  return aArr
endfunction
Bool[] function cArrayCreateBool100() global
  Bool[] aArr = New Bool[100]
  return aArr
endfunction
Bool[] function cArrayCreateBool101() global
  Bool[] aArr = New Bool[101]
  return aArr
endfunction
Bool[] function cArrayCreateBool102() global
  Bool[] aArr = New Bool[102]
  return aArr
endfunction
Bool[] function cArrayCreateBool103() global
  Bool[] aArr = New Bool[103]
  return aArr
endfunction
Bool[] function cArrayCreateBool104() global
  Bool[] aArr = New Bool[104]
  return aArr
endfunction
Bool[] function cArrayCreateBool105() global
  Bool[] aArr = New Bool[105]
  return aArr
endfunction
Bool[] function cArrayCreateBool106() global
  Bool[] aArr = New Bool[106]
  return aArr
endfunction
Bool[] function cArrayCreateBool107() global
  Bool[] aArr = New Bool[107]
  return aArr
endfunction
Bool[] function cArrayCreateBool108() global
  Bool[] aArr = New Bool[108]
  return aArr
endfunction
Bool[] function cArrayCreateBool109() global
  Bool[] aArr = New Bool[109]
  return aArr
endfunction
Bool[] function cArrayCreateBool110() global
  Bool[] aArr = New Bool[110]
  return aArr
endfunction
Bool[] function cArrayCreateBool111() global
  Bool[] aArr = New Bool[111]
  return aArr
endfunction
Bool[] function cArrayCreateBool112() global
  Bool[] aArr = New Bool[112]
  return aArr
endfunction
Bool[] function cArrayCreateBool113() global
  Bool[] aArr = New Bool[113]
  return aArr
endfunction
Bool[] function cArrayCreateBool114() global
  Bool[] aArr = New Bool[114]
  return aArr
endfunction
Bool[] function cArrayCreateBool115() global
  Bool[] aArr = New Bool[115]
  return aArr
endfunction
Bool[] function cArrayCreateBool116() global
  Bool[] aArr = New Bool[116]
  return aArr
endfunction
Bool[] function cArrayCreateBool117() global
  Bool[] aArr = New Bool[117]
  return aArr
endfunction
Bool[] function cArrayCreateBool118() global
  Bool[] aArr = New Bool[118]
  return aArr
endfunction
Bool[] function cArrayCreateBool119() global
  Bool[] aArr = New Bool[119]
  return aArr
endfunction
Bool[] function cArrayCreateBool120() global
  Bool[] aArr = New Bool[120]
  return aArr
endfunction
Bool[] function cArrayCreateBool121() global
  Bool[] aArr = New Bool[121]
  return aArr
endfunction
Bool[] function cArrayCreateBool122() global
  Bool[] aArr = New Bool[122]
  return aArr
endfunction
Bool[] function cArrayCreateBool123() global
  Bool[] aArr = New Bool[123]
  return aArr
endfunction
Bool[] function cArrayCreateBool124() global
  Bool[] aArr = New Bool[124]
  return aArr
endfunction
Bool[] function cArrayCreateBool125() global
  Bool[] aArr = New Bool[125]
  return aArr
endfunction
Bool[] function cArrayCreateBool126() global
  Bool[] aArr = New Bool[126]
  return aArr
endfunction
Bool[] function cArrayCreateBool127() global
  Bool[] aArr = New Bool[127]
  return aArr
endfunction
Bool[] function cArrayCreateBool128() global
  Bool[] aArr = New Bool[128]
  return aArr
endfunction
