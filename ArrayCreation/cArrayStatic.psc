Scriptname cArrayStatic Hidden


Static[] function cArrayCreateStatic(Int indices, Static filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  Static[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace Statics
    if outputTrace
      String msg = "cArrayCreateStatic()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayStatic::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateStatic001()
              elseif indices < 3
                return cArrayCreateStatic002()
              elseif indices < 4
                return cArrayCreateStatic003()
              else
                return cArrayCreateStatic004()
              endif
            else
              if indices < 6
                return cArrayCreateStatic005()
              elseif indices < 7
                return cArrayCreateStatic006()
              elseif indices < 8
                return cArrayCreateStatic007()
              else
                return cArrayCreateStatic008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateStatic009()
              elseif indices < 11
                return cArrayCreateStatic010()
              elseif indices < 12
                return cArrayCreateStatic011()
              else
                return cArrayCreateStatic012()
              endif
            else
              if indices < 14
                return cArrayCreateStatic013()
              elseif indices < 15
                return cArrayCreateStatic014()
              elseif indices < 16
                return cArrayCreateStatic015()
              else
                return cArrayCreateStatic016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateStatic017()
              elseif indices < 19
                return cArrayCreateStatic018()
              elseif indices < 20
                return cArrayCreateStatic019()
              else
                return cArrayCreateStatic020()
              endif
            else
              if indices < 22
                return cArrayCreateStatic021()
              elseif indices < 23
                return cArrayCreateStatic022()
              elseif indices < 24
                return cArrayCreateStatic023()
              else
                return cArrayCreateStatic024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateStatic025()
              elseif indices < 27
                return cArrayCreateStatic026()
              elseif indices < 28
                return cArrayCreateStatic027()
              else
                return cArrayCreateStatic028()
              endif
            else
              if indices < 30
                return cArrayCreateStatic029()
              elseif indices < 31
                return cArrayCreateStatic030()
              elseif indices < 32
                return cArrayCreateStatic031()
              else
                return cArrayCreateStatic032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateStatic033()
              elseif indices < 35
                return cArrayCreateStatic034()
              elseif indices < 36
                return cArrayCreateStatic035()
              else
                return cArrayCreateStatic036()
              endif
            else
              if indices < 38
                return cArrayCreateStatic037()
              elseif indices < 39
                return cArrayCreateStatic038()
              elseif indices < 40
                return cArrayCreateStatic039()
              else
                return cArrayCreateStatic040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateStatic041()
              elseif indices < 43
                return cArrayCreateStatic042()
              elseif indices < 44
                return cArrayCreateStatic043()
              else
                return cArrayCreateStatic044()
              endif
            else
              if indices < 46
                return cArrayCreateStatic045()
              elseif indices < 47
                return cArrayCreateStatic046()
              elseif indices < 48
                return cArrayCreateStatic047()
              else
                return cArrayCreateStatic048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateStatic049()
              elseif indices < 51
                return cArrayCreateStatic050()
              elseif indices < 52
                return cArrayCreateStatic051()
              else
                return cArrayCreateStatic052()
              endif
            else
              if indices < 54
                return cArrayCreateStatic053()
              elseif indices < 55
                return cArrayCreateStatic054()
              elseif indices < 56
                return cArrayCreateStatic055()
              else
                return cArrayCreateStatic056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateStatic057()
              elseif indices < 59
                return cArrayCreateStatic058()
              elseif indices < 60
                return cArrayCreateStatic059()
              else
                return cArrayCreateStatic060()
              endif
            else
              if indices < 62
                return cArrayCreateStatic061()
              elseif indices < 63
                return cArrayCreateStatic062()
              elseif indices < 64
                return cArrayCreateStatic063()
              else
                return cArrayCreateStatic064()
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
                return cArrayCreateStatic065()
              elseif indices < 67
                return cArrayCreateStatic066()
              elseif indices < 68
                return cArrayCreateStatic067()
              else
                return cArrayCreateStatic068()
              endif
            else
              if indices < 70
                return cArrayCreateStatic069()
              elseif indices < 71
                return cArrayCreateStatic070()
              elseif indices < 72
                return cArrayCreateStatic071()
              else
                return cArrayCreateStatic072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateStatic073()
              elseif indices < 75
                return cArrayCreateStatic074()
              elseif indices < 76
                return cArrayCreateStatic075()
              else
                return cArrayCreateStatic076()
              endif
            else
              if indices < 78
                return cArrayCreateStatic077()
              elseif indices < 79
                return cArrayCreateStatic078()
              elseif indices < 80
                return cArrayCreateStatic079()
              else
                return cArrayCreateStatic080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateStatic081()
              elseif indices < 83
                return cArrayCreateStatic082()
              elseif indices < 84
                return cArrayCreateStatic083()
              else
                return cArrayCreateStatic084()
              endif
            else
              if indices < 86
                return cArrayCreateStatic085()
              elseif indices < 87
                return cArrayCreateStatic086()
              elseif indices < 88
                return cArrayCreateStatic087()
              else
                return cArrayCreateStatic088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateStatic089()
              elseif indices < 91
                return cArrayCreateStatic090()
              elseif indices < 92
                return cArrayCreateStatic091()
              else
                return cArrayCreateStatic092()
              endif
            else
              if indices < 94
                return cArrayCreateStatic093()
              elseif indices < 95
                return cArrayCreateStatic094()
              elseif indices < 96
                return cArrayCreateStatic095()
              else
                return cArrayCreateStatic096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateStatic097()
              elseif indices < 99
                return cArrayCreateStatic098()
              elseif indices < 100
                return cArrayCreateStatic099()
              else
                return cArrayCreateStatic100()
              endif
            else
              if indices < 102
                return cArrayCreateStatic101()
              elseif indices < 103
                return cArrayCreateStatic102()
              elseif indices < 104
                return cArrayCreateStatic103()
              else
                return cArrayCreateStatic104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateStatic105()
              elseif indices < 107
                return cArrayCreateStatic106()
              elseif indices < 108
                return cArrayCreateStatic107()
              else
                return cArrayCreateStatic108()
              endif
            else
              if indices < 110
                return cArrayCreateStatic109()
              elseif indices < 111
                return cArrayCreateStatic110()
              elseif indices < 112
                return cArrayCreateStatic111()
              else
                return cArrayCreateStatic112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateStatic113()
              elseif indices < 115
                return cArrayCreateStatic114()
              elseif indices < 116
                return cArrayCreateStatic115()
              else
                return cArrayCreateStatic116()
              endif
            else
              if indices < 118
                return cArrayCreateStatic117()
              elseif indices < 119
                return cArrayCreateStatic118()
              elseif indices < 120
                return cArrayCreateStatic119()
              else
                return cArrayCreateStatic120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateStatic121()
              elseif indices < 123
                return cArrayCreateStatic122()
              elseif indices < 124
                return cArrayCreateStatic123()
              else
                return cArrayCreateStatic124()
              endif
            else
              if indices < 126
                return cArrayCreateStatic125()
              elseif indices < 127
                return cArrayCreateStatic126()
              elseif indices < 128
                return cArrayCreateStatic127()
              else
                return cArrayCreateStatic128()
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

Static[] function cArrayCreateStatic001() global
  Static[] aArr = New Static[1]
  return aArr
endfunction
Static[] function cArrayCreateStatic002() global
  Static[] aArr = New Static[2]
  return aArr
endfunction
Static[] function cArrayCreateStatic003() global
  Static[] aArr = New Static[3]
  return aArr
endfunction
Static[] function cArrayCreateStatic004() global
  Static[] aArr = New Static[4]
  return aArr
endfunction
Static[] function cArrayCreateStatic005() global
  Static[] aArr = New Static[5]
  return aArr
endfunction
Static[] function cArrayCreateStatic006() global
  Static[] aArr = New Static[6]
  return aArr
endfunction
Static[] function cArrayCreateStatic007() global
  Static[] aArr = New Static[7]
  return aArr
endfunction
Static[] function cArrayCreateStatic008() global
  Static[] aArr = New Static[8]
  return aArr
endfunction
Static[] function cArrayCreateStatic009() global
  Static[] aArr = New Static[9]
  return aArr
endfunction
Static[] function cArrayCreateStatic010() global
  Static[] aArr = New Static[10]
  return aArr
endfunction
Static[] function cArrayCreateStatic011() global
  Static[] aArr = New Static[11]
  return aArr
endfunction
Static[] function cArrayCreateStatic012() global
  Static[] aArr = New Static[12]
  return aArr
endfunction
Static[] function cArrayCreateStatic013() global
  Static[] aArr = New Static[13]
  return aArr
endfunction
Static[] function cArrayCreateStatic014() global
  Static[] aArr = New Static[14]
  return aArr
endfunction
Static[] function cArrayCreateStatic015() global
  Static[] aArr = New Static[15]
  return aArr
endfunction
Static[] function cArrayCreateStatic016() global
  Static[] aArr = New Static[16]
  return aArr
endfunction
Static[] function cArrayCreateStatic017() global
  Static[] aArr = New Static[17]
  return aArr
endfunction
Static[] function cArrayCreateStatic018() global
  Static[] aArr = New Static[18]
  return aArr
endfunction
Static[] function cArrayCreateStatic019() global
  Static[] aArr = New Static[19]
  return aArr
endfunction
Static[] function cArrayCreateStatic020() global
  Static[] aArr = New Static[20]
  return aArr
endfunction
Static[] function cArrayCreateStatic021() global
  Static[] aArr = New Static[21]
  return aArr
endfunction
Static[] function cArrayCreateStatic022() global
  Static[] aArr = New Static[22]
  return aArr
endfunction
Static[] function cArrayCreateStatic023() global
  Static[] aArr = New Static[23]
  return aArr
endfunction
Static[] function cArrayCreateStatic024() global
  Static[] aArr = New Static[24]
  return aArr
endfunction
Static[] function cArrayCreateStatic025() global
  Static[] aArr = New Static[25]
  return aArr
endfunction
Static[] function cArrayCreateStatic026() global
  Static[] aArr = New Static[26]
  return aArr
endfunction
Static[] function cArrayCreateStatic027() global
  Static[] aArr = New Static[27]
  return aArr
endfunction
Static[] function cArrayCreateStatic028() global
  Static[] aArr = New Static[28]
  return aArr
endfunction
Static[] function cArrayCreateStatic029() global
  Static[] aArr = New Static[29]
  return aArr
endfunction
Static[] function cArrayCreateStatic030() global
  Static[] aArr = New Static[30]
  return aArr
endfunction
Static[] function cArrayCreateStatic031() global
  Static[] aArr = New Static[31]
  return aArr
endfunction
Static[] function cArrayCreateStatic032() global
  Static[] aArr = New Static[32]
  return aArr
endfunction
Static[] function cArrayCreateStatic033() global
  Static[] aArr = New Static[33]
  return aArr
endfunction
Static[] function cArrayCreateStatic034() global
  Static[] aArr = New Static[34]
  return aArr
endfunction
Static[] function cArrayCreateStatic035() global
  Static[] aArr = New Static[35]
  return aArr
endfunction
Static[] function cArrayCreateStatic036() global
  Static[] aArr = New Static[36]
  return aArr
endfunction
Static[] function cArrayCreateStatic037() global
  Static[] aArr = New Static[37]
  return aArr
endfunction
Static[] function cArrayCreateStatic038() global
  Static[] aArr = New Static[38]
  return aArr
endfunction
Static[] function cArrayCreateStatic039() global
  Static[] aArr = New Static[39]
  return aArr
endfunction
Static[] function cArrayCreateStatic040() global
  Static[] aArr = New Static[40]
  return aArr
endfunction
Static[] function cArrayCreateStatic041() global
  Static[] aArr = New Static[41]
  return aArr
endfunction
Static[] function cArrayCreateStatic042() global
  Static[] aArr = New Static[42]
  return aArr
endfunction
Static[] function cArrayCreateStatic043() global
  Static[] aArr = New Static[43]
  return aArr
endfunction
Static[] function cArrayCreateStatic044() global
  Static[] aArr = New Static[44]
  return aArr
endfunction
Static[] function cArrayCreateStatic045() global
  Static[] aArr = New Static[45]
  return aArr
endfunction
Static[] function cArrayCreateStatic046() global
  Static[] aArr = New Static[46]
  return aArr
endfunction
Static[] function cArrayCreateStatic047() global
  Static[] aArr = New Static[47]
  return aArr
endfunction
Static[] function cArrayCreateStatic048() global
  Static[] aArr = New Static[48]
  return aArr
endfunction
Static[] function cArrayCreateStatic049() global
  Static[] aArr = New Static[49]
  return aArr
endfunction
Static[] function cArrayCreateStatic050() global
  Static[] aArr = New Static[50]
  return aArr
endfunction
Static[] function cArrayCreateStatic051() global
  Static[] aArr = New Static[51]
  return aArr
endfunction
Static[] function cArrayCreateStatic052() global
  Static[] aArr = New Static[52]
  return aArr
endfunction
Static[] function cArrayCreateStatic053() global
  Static[] aArr = New Static[53]
  return aArr
endfunction
Static[] function cArrayCreateStatic054() global
  Static[] aArr = New Static[54]
  return aArr
endfunction
Static[] function cArrayCreateStatic055() global
  Static[] aArr = New Static[55]
  return aArr
endfunction
Static[] function cArrayCreateStatic056() global
  Static[] aArr = New Static[56]
  return aArr
endfunction
Static[] function cArrayCreateStatic057() global
  Static[] aArr = New Static[57]
  return aArr
endfunction
Static[] function cArrayCreateStatic058() global
  Static[] aArr = New Static[58]
  return aArr
endfunction
Static[] function cArrayCreateStatic059() global
  Static[] aArr = New Static[59]
  return aArr
endfunction
Static[] function cArrayCreateStatic060() global
  Static[] aArr = New Static[60]
  return aArr
endfunction
Static[] function cArrayCreateStatic061() global
  Static[] aArr = New Static[61]
  return aArr
endfunction
Static[] function cArrayCreateStatic062() global
  Static[] aArr = New Static[62]
  return aArr
endfunction
Static[] function cArrayCreateStatic063() global
  Static[] aArr = New Static[63]
  return aArr
endfunction
Static[] function cArrayCreateStatic064() global
  Static[] aArr = New Static[64]
  return aArr
endfunction
Static[] function cArrayCreateStatic065() global
  Static[] aArr = New Static[65]
  return aArr
endfunction
Static[] function cArrayCreateStatic066() global
  Static[] aArr = New Static[66]
  return aArr
endfunction
Static[] function cArrayCreateStatic067() global
  Static[] aArr = New Static[67]
  return aArr
endfunction
Static[] function cArrayCreateStatic068() global
  Static[] aArr = New Static[68]
  return aArr
endfunction
Static[] function cArrayCreateStatic069() global
  Static[] aArr = New Static[69]
  return aArr
endfunction
Static[] function cArrayCreateStatic070() global
  Static[] aArr = New Static[70]
  return aArr
endfunction
Static[] function cArrayCreateStatic071() global
  Static[] aArr = New Static[71]
  return aArr
endfunction
Static[] function cArrayCreateStatic072() global
  Static[] aArr = New Static[72]
  return aArr
endfunction
Static[] function cArrayCreateStatic073() global
  Static[] aArr = New Static[73]
  return aArr
endfunction
Static[] function cArrayCreateStatic074() global
  Static[] aArr = New Static[74]
  return aArr
endfunction
Static[] function cArrayCreateStatic075() global
  Static[] aArr = New Static[75]
  return aArr
endfunction
Static[] function cArrayCreateStatic076() global
  Static[] aArr = New Static[76]
  return aArr
endfunction
Static[] function cArrayCreateStatic077() global
  Static[] aArr = New Static[77]
  return aArr
endfunction
Static[] function cArrayCreateStatic078() global
  Static[] aArr = New Static[78]
  return aArr
endfunction
Static[] function cArrayCreateStatic079() global
  Static[] aArr = New Static[79]
  return aArr
endfunction
Static[] function cArrayCreateStatic080() global
  Static[] aArr = New Static[80]
  return aArr
endfunction
Static[] function cArrayCreateStatic081() global
  Static[] aArr = New Static[81]
  return aArr
endfunction
Static[] function cArrayCreateStatic082() global
  Static[] aArr = New Static[82]
  return aArr
endfunction
Static[] function cArrayCreateStatic083() global
  Static[] aArr = New Static[83]
  return aArr
endfunction
Static[] function cArrayCreateStatic084() global
  Static[] aArr = New Static[84]
  return aArr
endfunction
Static[] function cArrayCreateStatic085() global
  Static[] aArr = New Static[85]
  return aArr
endfunction
Static[] function cArrayCreateStatic086() global
  Static[] aArr = New Static[86]
  return aArr
endfunction
Static[] function cArrayCreateStatic087() global
  Static[] aArr = New Static[87]
  return aArr
endfunction
Static[] function cArrayCreateStatic088() global
  Static[] aArr = New Static[88]
  return aArr
endfunction
Static[] function cArrayCreateStatic089() global
  Static[] aArr = New Static[89]
  return aArr
endfunction
Static[] function cArrayCreateStatic090() global
  Static[] aArr = New Static[90]
  return aArr
endfunction
Static[] function cArrayCreateStatic091() global
  Static[] aArr = New Static[91]
  return aArr
endfunction
Static[] function cArrayCreateStatic092() global
  Static[] aArr = New Static[92]
  return aArr
endfunction
Static[] function cArrayCreateStatic093() global
  Static[] aArr = New Static[93]
  return aArr
endfunction
Static[] function cArrayCreateStatic094() global
  Static[] aArr = New Static[94]
  return aArr
endfunction
Static[] function cArrayCreateStatic095() global
  Static[] aArr = New Static[95]
  return aArr
endfunction
Static[] function cArrayCreateStatic096() global
  Static[] aArr = New Static[96]
  return aArr
endfunction
Static[] function cArrayCreateStatic097() global
  Static[] aArr = New Static[97]
  return aArr
endfunction
Static[] function cArrayCreateStatic098() global
  Static[] aArr = New Static[98]
  return aArr
endfunction
Static[] function cArrayCreateStatic099() global
  Static[] aArr = New Static[99]
  return aArr
endfunction
Static[] function cArrayCreateStatic100() global
  Static[] aArr = New Static[100]
  return aArr
endfunction
Static[] function cArrayCreateStatic101() global
  Static[] aArr = New Static[101]
  return aArr
endfunction
Static[] function cArrayCreateStatic102() global
  Static[] aArr = New Static[102]
  return aArr
endfunction
Static[] function cArrayCreateStatic103() global
  Static[] aArr = New Static[103]
  return aArr
endfunction
Static[] function cArrayCreateStatic104() global
  Static[] aArr = New Static[104]
  return aArr
endfunction
Static[] function cArrayCreateStatic105() global
  Static[] aArr = New Static[105]
  return aArr
endfunction
Static[] function cArrayCreateStatic106() global
  Static[] aArr = New Static[106]
  return aArr
endfunction
Static[] function cArrayCreateStatic107() global
  Static[] aArr = New Static[107]
  return aArr
endfunction
Static[] function cArrayCreateStatic108() global
  Static[] aArr = New Static[108]
  return aArr
endfunction
Static[] function cArrayCreateStatic109() global
  Static[] aArr = New Static[109]
  return aArr
endfunction
Static[] function cArrayCreateStatic110() global
  Static[] aArr = New Static[110]
  return aArr
endfunction
Static[] function cArrayCreateStatic111() global
  Static[] aArr = New Static[111]
  return aArr
endfunction
Static[] function cArrayCreateStatic112() global
  Static[] aArr = New Static[112]
  return aArr
endfunction
Static[] function cArrayCreateStatic113() global
  Static[] aArr = New Static[113]
  return aArr
endfunction
Static[] function cArrayCreateStatic114() global
  Static[] aArr = New Static[114]
  return aArr
endfunction
Static[] function cArrayCreateStatic115() global
  Static[] aArr = New Static[115]
  return aArr
endfunction
Static[] function cArrayCreateStatic116() global
  Static[] aArr = New Static[116]
  return aArr
endfunction
Static[] function cArrayCreateStatic117() global
  Static[] aArr = New Static[117]
  return aArr
endfunction
Static[] function cArrayCreateStatic118() global
  Static[] aArr = New Static[118]
  return aArr
endfunction
Static[] function cArrayCreateStatic119() global
  Static[] aArr = New Static[119]
  return aArr
endfunction
Static[] function cArrayCreateStatic120() global
  Static[] aArr = New Static[120]
  return aArr
endfunction
Static[] function cArrayCreateStatic121() global
  Static[] aArr = New Static[121]
  return aArr
endfunction
Static[] function cArrayCreateStatic122() global
  Static[] aArr = New Static[122]
  return aArr
endfunction
Static[] function cArrayCreateStatic123() global
  Static[] aArr = New Static[123]
  return aArr
endfunction
Static[] function cArrayCreateStatic124() global
  Static[] aArr = New Static[124]
  return aArr
endfunction
Static[] function cArrayCreateStatic125() global
  Static[] aArr = New Static[125]
  return aArr
endfunction
Static[] function cArrayCreateStatic126() global
  Static[] aArr = New Static[126]
  return aArr
endfunction
Static[] function cArrayCreateStatic127() global
  Static[] aArr = New Static[127]
  return aArr
endfunction
Static[] function cArrayCreateStatic128() global
  Static[] aArr = New Static[128]
  return aArr
endfunction
