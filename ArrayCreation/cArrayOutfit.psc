Scriptname cArrayOutfit Hidden


Outfit[] function cArrayCreateOutfit(Int indices, Outfit filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  Outfit[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace Outfits
    if outputTrace
      String msg = "cArrayCreateOutfit()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayOutfit::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateOutfit001()
              elseif indices < 3
                return cArrayCreateOutfit002()
              elseif indices < 4
                return cArrayCreateOutfit003()
              else
                return cArrayCreateOutfit004()
              endif
            else
              if indices < 6
                return cArrayCreateOutfit005()
              elseif indices < 7
                return cArrayCreateOutfit006()
              elseif indices < 8
                return cArrayCreateOutfit007()
              else
                return cArrayCreateOutfit008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateOutfit009()
              elseif indices < 11
                return cArrayCreateOutfit010()
              elseif indices < 12
                return cArrayCreateOutfit011()
              else
                return cArrayCreateOutfit012()
              endif
            else
              if indices < 14
                return cArrayCreateOutfit013()
              elseif indices < 15
                return cArrayCreateOutfit014()
              elseif indices < 16
                return cArrayCreateOutfit015()
              else
                return cArrayCreateOutfit016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateOutfit017()
              elseif indices < 19
                return cArrayCreateOutfit018()
              elseif indices < 20
                return cArrayCreateOutfit019()
              else
                return cArrayCreateOutfit020()
              endif
            else
              if indices < 22
                return cArrayCreateOutfit021()
              elseif indices < 23
                return cArrayCreateOutfit022()
              elseif indices < 24
                return cArrayCreateOutfit023()
              else
                return cArrayCreateOutfit024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateOutfit025()
              elseif indices < 27
                return cArrayCreateOutfit026()
              elseif indices < 28
                return cArrayCreateOutfit027()
              else
                return cArrayCreateOutfit028()
              endif
            else
              if indices < 30
                return cArrayCreateOutfit029()
              elseif indices < 31
                return cArrayCreateOutfit030()
              elseif indices < 32
                return cArrayCreateOutfit031()
              else
                return cArrayCreateOutfit032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateOutfit033()
              elseif indices < 35
                return cArrayCreateOutfit034()
              elseif indices < 36
                return cArrayCreateOutfit035()
              else
                return cArrayCreateOutfit036()
              endif
            else
              if indices < 38
                return cArrayCreateOutfit037()
              elseif indices < 39
                return cArrayCreateOutfit038()
              elseif indices < 40
                return cArrayCreateOutfit039()
              else
                return cArrayCreateOutfit040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateOutfit041()
              elseif indices < 43
                return cArrayCreateOutfit042()
              elseif indices < 44
                return cArrayCreateOutfit043()
              else
                return cArrayCreateOutfit044()
              endif
            else
              if indices < 46
                return cArrayCreateOutfit045()
              elseif indices < 47
                return cArrayCreateOutfit046()
              elseif indices < 48
                return cArrayCreateOutfit047()
              else
                return cArrayCreateOutfit048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateOutfit049()
              elseif indices < 51
                return cArrayCreateOutfit050()
              elseif indices < 52
                return cArrayCreateOutfit051()
              else
                return cArrayCreateOutfit052()
              endif
            else
              if indices < 54
                return cArrayCreateOutfit053()
              elseif indices < 55
                return cArrayCreateOutfit054()
              elseif indices < 56
                return cArrayCreateOutfit055()
              else
                return cArrayCreateOutfit056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateOutfit057()
              elseif indices < 59
                return cArrayCreateOutfit058()
              elseif indices < 60
                return cArrayCreateOutfit059()
              else
                return cArrayCreateOutfit060()
              endif
            else
              if indices < 62
                return cArrayCreateOutfit061()
              elseif indices < 63
                return cArrayCreateOutfit062()
              elseif indices < 64
                return cArrayCreateOutfit063()
              else
                return cArrayCreateOutfit064()
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
                return cArrayCreateOutfit065()
              elseif indices < 67
                return cArrayCreateOutfit066()
              elseif indices < 68
                return cArrayCreateOutfit067()
              else
                return cArrayCreateOutfit068()
              endif
            else
              if indices < 70
                return cArrayCreateOutfit069()
              elseif indices < 71
                return cArrayCreateOutfit070()
              elseif indices < 72
                return cArrayCreateOutfit071()
              else
                return cArrayCreateOutfit072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateOutfit073()
              elseif indices < 75
                return cArrayCreateOutfit074()
              elseif indices < 76
                return cArrayCreateOutfit075()
              else
                return cArrayCreateOutfit076()
              endif
            else
              if indices < 78
                return cArrayCreateOutfit077()
              elseif indices < 79
                return cArrayCreateOutfit078()
              elseif indices < 80
                return cArrayCreateOutfit079()
              else
                return cArrayCreateOutfit080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateOutfit081()
              elseif indices < 83
                return cArrayCreateOutfit082()
              elseif indices < 84
                return cArrayCreateOutfit083()
              else
                return cArrayCreateOutfit084()
              endif
            else
              if indices < 86
                return cArrayCreateOutfit085()
              elseif indices < 87
                return cArrayCreateOutfit086()
              elseif indices < 88
                return cArrayCreateOutfit087()
              else
                return cArrayCreateOutfit088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateOutfit089()
              elseif indices < 91
                return cArrayCreateOutfit090()
              elseif indices < 92
                return cArrayCreateOutfit091()
              else
                return cArrayCreateOutfit092()
              endif
            else
              if indices < 94
                return cArrayCreateOutfit093()
              elseif indices < 95
                return cArrayCreateOutfit094()
              elseif indices < 96
                return cArrayCreateOutfit095()
              else
                return cArrayCreateOutfit096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateOutfit097()
              elseif indices < 99
                return cArrayCreateOutfit098()
              elseif indices < 100
                return cArrayCreateOutfit099()
              else
                return cArrayCreateOutfit100()
              endif
            else
              if indices < 102
                return cArrayCreateOutfit101()
              elseif indices < 103
                return cArrayCreateOutfit102()
              elseif indices < 104
                return cArrayCreateOutfit103()
              else
                return cArrayCreateOutfit104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateOutfit105()
              elseif indices < 107
                return cArrayCreateOutfit106()
              elseif indices < 108
                return cArrayCreateOutfit107()
              else
                return cArrayCreateOutfit108()
              endif
            else
              if indices < 110
                return cArrayCreateOutfit109()
              elseif indices < 111
                return cArrayCreateOutfit110()
              elseif indices < 112
                return cArrayCreateOutfit111()
              else
                return cArrayCreateOutfit112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateOutfit113()
              elseif indices < 115
                return cArrayCreateOutfit114()
              elseif indices < 116
                return cArrayCreateOutfit115()
              else
                return cArrayCreateOutfit116()
              endif
            else
              if indices < 118
                return cArrayCreateOutfit117()
              elseif indices < 119
                return cArrayCreateOutfit118()
              elseif indices < 120
                return cArrayCreateOutfit119()
              else
                return cArrayCreateOutfit120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateOutfit121()
              elseif indices < 123
                return cArrayCreateOutfit122()
              elseif indices < 124
                return cArrayCreateOutfit123()
              else
                return cArrayCreateOutfit124()
              endif
            else
              if indices < 126
                return cArrayCreateOutfit125()
              elseif indices < 127
                return cArrayCreateOutfit126()
              elseif indices < 128
                return cArrayCreateOutfit127()
              else
                return cArrayCreateOutfit128()
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

Outfit[] function cArrayCreateOutfit001() global
  Outfit[] aArr = New Outfit[1]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit002() global
  Outfit[] aArr = New Outfit[2]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit003() global
  Outfit[] aArr = New Outfit[3]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit004() global
  Outfit[] aArr = New Outfit[4]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit005() global
  Outfit[] aArr = New Outfit[5]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit006() global
  Outfit[] aArr = New Outfit[6]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit007() global
  Outfit[] aArr = New Outfit[7]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit008() global
  Outfit[] aArr = New Outfit[8]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit009() global
  Outfit[] aArr = New Outfit[9]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit010() global
  Outfit[] aArr = New Outfit[10]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit011() global
  Outfit[] aArr = New Outfit[11]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit012() global
  Outfit[] aArr = New Outfit[12]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit013() global
  Outfit[] aArr = New Outfit[13]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit014() global
  Outfit[] aArr = New Outfit[14]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit015() global
  Outfit[] aArr = New Outfit[15]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit016() global
  Outfit[] aArr = New Outfit[16]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit017() global
  Outfit[] aArr = New Outfit[17]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit018() global
  Outfit[] aArr = New Outfit[18]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit019() global
  Outfit[] aArr = New Outfit[19]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit020() global
  Outfit[] aArr = New Outfit[20]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit021() global
  Outfit[] aArr = New Outfit[21]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit022() global
  Outfit[] aArr = New Outfit[22]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit023() global
  Outfit[] aArr = New Outfit[23]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit024() global
  Outfit[] aArr = New Outfit[24]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit025() global
  Outfit[] aArr = New Outfit[25]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit026() global
  Outfit[] aArr = New Outfit[26]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit027() global
  Outfit[] aArr = New Outfit[27]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit028() global
  Outfit[] aArr = New Outfit[28]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit029() global
  Outfit[] aArr = New Outfit[29]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit030() global
  Outfit[] aArr = New Outfit[30]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit031() global
  Outfit[] aArr = New Outfit[31]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit032() global
  Outfit[] aArr = New Outfit[32]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit033() global
  Outfit[] aArr = New Outfit[33]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit034() global
  Outfit[] aArr = New Outfit[34]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit035() global
  Outfit[] aArr = New Outfit[35]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit036() global
  Outfit[] aArr = New Outfit[36]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit037() global
  Outfit[] aArr = New Outfit[37]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit038() global
  Outfit[] aArr = New Outfit[38]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit039() global
  Outfit[] aArr = New Outfit[39]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit040() global
  Outfit[] aArr = New Outfit[40]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit041() global
  Outfit[] aArr = New Outfit[41]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit042() global
  Outfit[] aArr = New Outfit[42]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit043() global
  Outfit[] aArr = New Outfit[43]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit044() global
  Outfit[] aArr = New Outfit[44]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit045() global
  Outfit[] aArr = New Outfit[45]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit046() global
  Outfit[] aArr = New Outfit[46]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit047() global
  Outfit[] aArr = New Outfit[47]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit048() global
  Outfit[] aArr = New Outfit[48]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit049() global
  Outfit[] aArr = New Outfit[49]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit050() global
  Outfit[] aArr = New Outfit[50]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit051() global
  Outfit[] aArr = New Outfit[51]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit052() global
  Outfit[] aArr = New Outfit[52]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit053() global
  Outfit[] aArr = New Outfit[53]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit054() global
  Outfit[] aArr = New Outfit[54]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit055() global
  Outfit[] aArr = New Outfit[55]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit056() global
  Outfit[] aArr = New Outfit[56]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit057() global
  Outfit[] aArr = New Outfit[57]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit058() global
  Outfit[] aArr = New Outfit[58]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit059() global
  Outfit[] aArr = New Outfit[59]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit060() global
  Outfit[] aArr = New Outfit[60]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit061() global
  Outfit[] aArr = New Outfit[61]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit062() global
  Outfit[] aArr = New Outfit[62]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit063() global
  Outfit[] aArr = New Outfit[63]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit064() global
  Outfit[] aArr = New Outfit[64]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit065() global
  Outfit[] aArr = New Outfit[65]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit066() global
  Outfit[] aArr = New Outfit[66]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit067() global
  Outfit[] aArr = New Outfit[67]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit068() global
  Outfit[] aArr = New Outfit[68]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit069() global
  Outfit[] aArr = New Outfit[69]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit070() global
  Outfit[] aArr = New Outfit[70]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit071() global
  Outfit[] aArr = New Outfit[71]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit072() global
  Outfit[] aArr = New Outfit[72]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit073() global
  Outfit[] aArr = New Outfit[73]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit074() global
  Outfit[] aArr = New Outfit[74]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit075() global
  Outfit[] aArr = New Outfit[75]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit076() global
  Outfit[] aArr = New Outfit[76]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit077() global
  Outfit[] aArr = New Outfit[77]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit078() global
  Outfit[] aArr = New Outfit[78]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit079() global
  Outfit[] aArr = New Outfit[79]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit080() global
  Outfit[] aArr = New Outfit[80]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit081() global
  Outfit[] aArr = New Outfit[81]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit082() global
  Outfit[] aArr = New Outfit[82]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit083() global
  Outfit[] aArr = New Outfit[83]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit084() global
  Outfit[] aArr = New Outfit[84]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit085() global
  Outfit[] aArr = New Outfit[85]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit086() global
  Outfit[] aArr = New Outfit[86]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit087() global
  Outfit[] aArr = New Outfit[87]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit088() global
  Outfit[] aArr = New Outfit[88]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit089() global
  Outfit[] aArr = New Outfit[89]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit090() global
  Outfit[] aArr = New Outfit[90]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit091() global
  Outfit[] aArr = New Outfit[91]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit092() global
  Outfit[] aArr = New Outfit[92]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit093() global
  Outfit[] aArr = New Outfit[93]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit094() global
  Outfit[] aArr = New Outfit[94]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit095() global
  Outfit[] aArr = New Outfit[95]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit096() global
  Outfit[] aArr = New Outfit[96]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit097() global
  Outfit[] aArr = New Outfit[97]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit098() global
  Outfit[] aArr = New Outfit[98]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit099() global
  Outfit[] aArr = New Outfit[99]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit100() global
  Outfit[] aArr = New Outfit[100]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit101() global
  Outfit[] aArr = New Outfit[101]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit102() global
  Outfit[] aArr = New Outfit[102]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit103() global
  Outfit[] aArr = New Outfit[103]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit104() global
  Outfit[] aArr = New Outfit[104]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit105() global
  Outfit[] aArr = New Outfit[105]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit106() global
  Outfit[] aArr = New Outfit[106]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit107() global
  Outfit[] aArr = New Outfit[107]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit108() global
  Outfit[] aArr = New Outfit[108]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit109() global
  Outfit[] aArr = New Outfit[109]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit110() global
  Outfit[] aArr = New Outfit[110]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit111() global
  Outfit[] aArr = New Outfit[111]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit112() global
  Outfit[] aArr = New Outfit[112]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit113() global
  Outfit[] aArr = New Outfit[113]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit114() global
  Outfit[] aArr = New Outfit[114]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit115() global
  Outfit[] aArr = New Outfit[115]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit116() global
  Outfit[] aArr = New Outfit[116]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit117() global
  Outfit[] aArr = New Outfit[117]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit118() global
  Outfit[] aArr = New Outfit[118]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit119() global
  Outfit[] aArr = New Outfit[119]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit120() global
  Outfit[] aArr = New Outfit[120]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit121() global
  Outfit[] aArr = New Outfit[121]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit122() global
  Outfit[] aArr = New Outfit[122]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit123() global
  Outfit[] aArr = New Outfit[123]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit124() global
  Outfit[] aArr = New Outfit[124]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit125() global
  Outfit[] aArr = New Outfit[125]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit126() global
  Outfit[] aArr = New Outfit[126]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit127() global
  Outfit[] aArr = New Outfit[127]
  return aArr
endfunction
Outfit[] function cArrayCreateOutfit128() global
  Outfit[] aArr = New Outfit[128]
  return aArr
endfunction
