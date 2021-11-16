Scriptname cArrayKeyword Hidden


Keyword[] function cArrayCreateKeyword(Int indices, Keyword filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  Keyword[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    if outputTrace
      String msg = "cArrayCreateKeyword()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayKeyword::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateKeyword001()
              elseif indices < 3
                return cArrayCreateKeyword002()
              elseif indices < 4
                return cArrayCreateKeyword003()
              else
                return cArrayCreateKeyword004()
              endif
            else
              if indices < 6
                return cArrayCreateKeyword005()
              elseif indices < 7
                return cArrayCreateKeyword006()
              elseif indices < 8
                return cArrayCreateKeyword007()
              else
                return cArrayCreateKeyword008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateKeyword009()
              elseif indices < 11
                return cArrayCreateKeyword010()
              elseif indices < 12
                return cArrayCreateKeyword011()
              else
                return cArrayCreateKeyword012()
              endif
            else
              if indices < 14
                return cArrayCreateKeyword013()
              elseif indices < 15
                return cArrayCreateKeyword014()
              elseif indices < 16
                return cArrayCreateKeyword015()
              else
                return cArrayCreateKeyword016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateKeyword017()
              elseif indices < 19
                return cArrayCreateKeyword018()
              elseif indices < 20
                return cArrayCreateKeyword019()
              else
                return cArrayCreateKeyword020()
              endif
            else
              if indices < 22
                return cArrayCreateKeyword021()
              elseif indices < 23
                return cArrayCreateKeyword022()
              elseif indices < 24
                return cArrayCreateKeyword023()
              else
                return cArrayCreateKeyword024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateKeyword025()
              elseif indices < 27
                return cArrayCreateKeyword026()
              elseif indices < 28
                return cArrayCreateKeyword027()
              else
                return cArrayCreateKeyword028()
              endif
            else
              if indices < 30
                return cArrayCreateKeyword029()
              elseif indices < 31
                return cArrayCreateKeyword030()
              elseif indices < 32
                return cArrayCreateKeyword031()
              else
                return cArrayCreateKeyword032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateKeyword033()
              elseif indices < 35
                return cArrayCreateKeyword034()
              elseif indices < 36
                return cArrayCreateKeyword035()
              else
                return cArrayCreateKeyword036()
              endif
            else
              if indices < 38
                return cArrayCreateKeyword037()
              elseif indices < 39
                return cArrayCreateKeyword038()
              elseif indices < 40
                return cArrayCreateKeyword039()
              else
                return cArrayCreateKeyword040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateKeyword041()
              elseif indices < 43
                return cArrayCreateKeyword042()
              elseif indices < 44
                return cArrayCreateKeyword043()
              else
                return cArrayCreateKeyword044()
              endif
            else
              if indices < 46
                return cArrayCreateKeyword045()
              elseif indices < 47
                return cArrayCreateKeyword046()
              elseif indices < 48
                return cArrayCreateKeyword047()
              else
                return cArrayCreateKeyword048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateKeyword049()
              elseif indices < 51
                return cArrayCreateKeyword050()
              elseif indices < 52
                return cArrayCreateKeyword051()
              else
                return cArrayCreateKeyword052()
              endif
            else
              if indices < 54
                return cArrayCreateKeyword053()
              elseif indices < 55
                return cArrayCreateKeyword054()
              elseif indices < 56
                return cArrayCreateKeyword055()
              else
                return cArrayCreateKeyword056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateKeyword057()
              elseif indices < 59
                return cArrayCreateKeyword058()
              elseif indices < 60
                return cArrayCreateKeyword059()
              else
                return cArrayCreateKeyword060()
              endif
            else
              if indices < 62
                return cArrayCreateKeyword061()
              elseif indices < 63
                return cArrayCreateKeyword062()
              elseif indices < 64
                return cArrayCreateKeyword063()
              else
                return cArrayCreateKeyword064()
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
                return cArrayCreateKeyword065()
              elseif indices < 67
                return cArrayCreateKeyword066()
              elseif indices < 68
                return cArrayCreateKeyword067()
              else
                return cArrayCreateKeyword068()
              endif
            else
              if indices < 70
                return cArrayCreateKeyword069()
              elseif indices < 71
                return cArrayCreateKeyword070()
              elseif indices < 72
                return cArrayCreateKeyword071()
              else
                return cArrayCreateKeyword072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateKeyword073()
              elseif indices < 75
                return cArrayCreateKeyword074()
              elseif indices < 76
                return cArrayCreateKeyword075()
              else
                return cArrayCreateKeyword076()
              endif
            else
              if indices < 78
                return cArrayCreateKeyword077()
              elseif indices < 79
                return cArrayCreateKeyword078()
              elseif indices < 80
                return cArrayCreateKeyword079()
              else
                return cArrayCreateKeyword080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateKeyword081()
              elseif indices < 83
                return cArrayCreateKeyword082()
              elseif indices < 84
                return cArrayCreateKeyword083()
              else
                return cArrayCreateKeyword084()
              endif
            else
              if indices < 86
                return cArrayCreateKeyword085()
              elseif indices < 87
                return cArrayCreateKeyword086()
              elseif indices < 88
                return cArrayCreateKeyword087()
              else
                return cArrayCreateKeyword088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateKeyword089()
              elseif indices < 91
                return cArrayCreateKeyword090()
              elseif indices < 92
                return cArrayCreateKeyword091()
              else
                return cArrayCreateKeyword092()
              endif
            else
              if indices < 94
                return cArrayCreateKeyword093()
              elseif indices < 95
                return cArrayCreateKeyword094()
              elseif indices < 96
                return cArrayCreateKeyword095()
              else
                return cArrayCreateKeyword096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateKeyword097()
              elseif indices < 99
                return cArrayCreateKeyword098()
              elseif indices < 100
                return cArrayCreateKeyword099()
              else
                return cArrayCreateKeyword100()
              endif
            else
              if indices < 102
                return cArrayCreateKeyword101()
              elseif indices < 103
                return cArrayCreateKeyword102()
              elseif indices < 104
                return cArrayCreateKeyword103()
              else
                return cArrayCreateKeyword104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateKeyword105()
              elseif indices < 107
                return cArrayCreateKeyword106()
              elseif indices < 108
                return cArrayCreateKeyword107()
              else
                return cArrayCreateKeyword108()
              endif
            else
              if indices < 110
                return cArrayCreateKeyword109()
              elseif indices < 111
                return cArrayCreateKeyword110()
              elseif indices < 112
                return cArrayCreateKeyword111()
              else
                return cArrayCreateKeyword112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateKeyword113()
              elseif indices < 115
                return cArrayCreateKeyword114()
              elseif indices < 116
                return cArrayCreateKeyword115()
              else
                return cArrayCreateKeyword116()
              endif
            else
              if indices < 118
                return cArrayCreateKeyword117()
              elseif indices < 119
                return cArrayCreateKeyword118()
              elseif indices < 120
                return cArrayCreateKeyword119()
              else
                return cArrayCreateKeyword120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateKeyword121()
              elseif indices < 123
                return cArrayCreateKeyword122()
              elseif indices < 124
                return cArrayCreateKeyword123()
              else
                return cArrayCreateKeyword124()
              endif
            else
              if indices < 126
                return cArrayCreateKeyword125()
              elseif indices < 127
                return cArrayCreateKeyword126()
              elseif indices < 128
                return cArrayCreateKeyword127()
              else
                return cArrayCreateKeyword128()
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

Keyword[] function cArrayCreateKeyword001() global
  Keyword[] aArr = New Keyword[1]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword002() global
  Keyword[] aArr = New Keyword[2]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword003() global
  Keyword[] aArr = New Keyword[3]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword004() global
  Keyword[] aArr = New Keyword[4]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword005() global
  Keyword[] aArr = New Keyword[5]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword006() global
  Keyword[] aArr = New Keyword[6]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword007() global
  Keyword[] aArr = New Keyword[7]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword008() global
  Keyword[] aArr = New Keyword[8]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword009() global
  Keyword[] aArr = New Keyword[9]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword010() global
  Keyword[] aArr = New Keyword[10]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword011() global
  Keyword[] aArr = New Keyword[11]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword012() global
  Keyword[] aArr = New Keyword[12]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword013() global
  Keyword[] aArr = New Keyword[13]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword014() global
  Keyword[] aArr = New Keyword[14]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword015() global
  Keyword[] aArr = New Keyword[15]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword016() global
  Keyword[] aArr = New Keyword[16]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword017() global
  Keyword[] aArr = New Keyword[17]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword018() global
  Keyword[] aArr = New Keyword[18]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword019() global
  Keyword[] aArr = New Keyword[19]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword020() global
  Keyword[] aArr = New Keyword[20]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword021() global
  Keyword[] aArr = New Keyword[21]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword022() global
  Keyword[] aArr = New Keyword[22]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword023() global
  Keyword[] aArr = New Keyword[23]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword024() global
  Keyword[] aArr = New Keyword[24]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword025() global
  Keyword[] aArr = New Keyword[25]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword026() global
  Keyword[] aArr = New Keyword[26]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword027() global
  Keyword[] aArr = New Keyword[27]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword028() global
  Keyword[] aArr = New Keyword[28]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword029() global
  Keyword[] aArr = New Keyword[29]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword030() global
  Keyword[] aArr = New Keyword[30]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword031() global
  Keyword[] aArr = New Keyword[31]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword032() global
  Keyword[] aArr = New Keyword[32]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword033() global
  Keyword[] aArr = New Keyword[33]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword034() global
  Keyword[] aArr = New Keyword[34]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword035() global
  Keyword[] aArr = New Keyword[35]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword036() global
  Keyword[] aArr = New Keyword[36]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword037() global
  Keyword[] aArr = New Keyword[37]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword038() global
  Keyword[] aArr = New Keyword[38]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword039() global
  Keyword[] aArr = New Keyword[39]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword040() global
  Keyword[] aArr = New Keyword[40]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword041() global
  Keyword[] aArr = New Keyword[41]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword042() global
  Keyword[] aArr = New Keyword[42]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword043() global
  Keyword[] aArr = New Keyword[43]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword044() global
  Keyword[] aArr = New Keyword[44]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword045() global
  Keyword[] aArr = New Keyword[45]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword046() global
  Keyword[] aArr = New Keyword[46]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword047() global
  Keyword[] aArr = New Keyword[47]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword048() global
  Keyword[] aArr = New Keyword[48]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword049() global
  Keyword[] aArr = New Keyword[49]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword050() global
  Keyword[] aArr = New Keyword[50]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword051() global
  Keyword[] aArr = New Keyword[51]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword052() global
  Keyword[] aArr = New Keyword[52]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword053() global
  Keyword[] aArr = New Keyword[53]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword054() global
  Keyword[] aArr = New Keyword[54]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword055() global
  Keyword[] aArr = New Keyword[55]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword056() global
  Keyword[] aArr = New Keyword[56]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword057() global
  Keyword[] aArr = New Keyword[57]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword058() global
  Keyword[] aArr = New Keyword[58]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword059() global
  Keyword[] aArr = New Keyword[59]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword060() global
  Keyword[] aArr = New Keyword[60]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword061() global
  Keyword[] aArr = New Keyword[61]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword062() global
  Keyword[] aArr = New Keyword[62]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword063() global
  Keyword[] aArr = New Keyword[63]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword064() global
  Keyword[] aArr = New Keyword[64]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword065() global
  Keyword[] aArr = New Keyword[65]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword066() global
  Keyword[] aArr = New Keyword[66]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword067() global
  Keyword[] aArr = New Keyword[67]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword068() global
  Keyword[] aArr = New Keyword[68]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword069() global
  Keyword[] aArr = New Keyword[69]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword070() global
  Keyword[] aArr = New Keyword[70]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword071() global
  Keyword[] aArr = New Keyword[71]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword072() global
  Keyword[] aArr = New Keyword[72]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword073() global
  Keyword[] aArr = New Keyword[73]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword074() global
  Keyword[] aArr = New Keyword[74]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword075() global
  Keyword[] aArr = New Keyword[75]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword076() global
  Keyword[] aArr = New Keyword[76]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword077() global
  Keyword[] aArr = New Keyword[77]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword078() global
  Keyword[] aArr = New Keyword[78]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword079() global
  Keyword[] aArr = New Keyword[79]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword080() global
  Keyword[] aArr = New Keyword[80]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword081() global
  Keyword[] aArr = New Keyword[81]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword082() global
  Keyword[] aArr = New Keyword[82]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword083() global
  Keyword[] aArr = New Keyword[83]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword084() global
  Keyword[] aArr = New Keyword[84]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword085() global
  Keyword[] aArr = New Keyword[85]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword086() global
  Keyword[] aArr = New Keyword[86]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword087() global
  Keyword[] aArr = New Keyword[87]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword088() global
  Keyword[] aArr = New Keyword[88]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword089() global
  Keyword[] aArr = New Keyword[89]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword090() global
  Keyword[] aArr = New Keyword[90]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword091() global
  Keyword[] aArr = New Keyword[91]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword092() global
  Keyword[] aArr = New Keyword[92]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword093() global
  Keyword[] aArr = New Keyword[93]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword094() global
  Keyword[] aArr = New Keyword[94]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword095() global
  Keyword[] aArr = New Keyword[95]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword096() global
  Keyword[] aArr = New Keyword[96]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword097() global
  Keyword[] aArr = New Keyword[97]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword098() global
  Keyword[] aArr = New Keyword[98]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword099() global
  Keyword[] aArr = New Keyword[99]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword100() global
  Keyword[] aArr = New Keyword[100]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword101() global
  Keyword[] aArr = New Keyword[101]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword102() global
  Keyword[] aArr = New Keyword[102]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword103() global
  Keyword[] aArr = New Keyword[103]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword104() global
  Keyword[] aArr = New Keyword[104]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword105() global
  Keyword[] aArr = New Keyword[105]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword106() global
  Keyword[] aArr = New Keyword[106]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword107() global
  Keyword[] aArr = New Keyword[107]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword108() global
  Keyword[] aArr = New Keyword[108]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword109() global
  Keyword[] aArr = New Keyword[109]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword110() global
  Keyword[] aArr = New Keyword[110]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword111() global
  Keyword[] aArr = New Keyword[111]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword112() global
  Keyword[] aArr = New Keyword[112]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword113() global
  Keyword[] aArr = New Keyword[113]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword114() global
  Keyword[] aArr = New Keyword[114]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword115() global
  Keyword[] aArr = New Keyword[115]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword116() global
  Keyword[] aArr = New Keyword[116]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword117() global
  Keyword[] aArr = New Keyword[117]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword118() global
  Keyword[] aArr = New Keyword[118]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword119() global
  Keyword[] aArr = New Keyword[119]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword120() global
  Keyword[] aArr = New Keyword[120]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword121() global
  Keyword[] aArr = New Keyword[121]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword122() global
  Keyword[] aArr = New Keyword[122]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword123() global
  Keyword[] aArr = New Keyword[123]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword124() global
  Keyword[] aArr = New Keyword[124]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword125() global
  Keyword[] aArr = New Keyword[125]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword126() global
  Keyword[] aArr = New Keyword[126]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword127() global
  Keyword[] aArr = New Keyword[127]
  return aArr
endfunction
Keyword[] function cArrayCreateKeyword128() global
  Keyword[] aArr = New Keyword[128]
  return aArr
endfunction
