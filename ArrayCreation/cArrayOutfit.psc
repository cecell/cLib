Scriptname cArrayOutfit Hidden

Int function cGetVersion() global
  return 9001
endfunction

Outfit[] function cArrayCreateOutfit(Int indices, Outfit filler = None, Bool outputTrace = TRUE, \
  Bool tryConsoleUtil = TRUE) global
  {Requirements: None}
  Outfit[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace Outfits
    ; tryConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateOutfit()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayOutfit::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateOutfit001()
              elseif indices < 3
                aArray = cArrayCreateOutfit002()
              elseif indices < 4
                aArray = cArrayCreateOutfit003()
              else
                aArray = cArrayCreateOutfit004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateOutfit005()
              elseif indices < 7
                aArray = cArrayCreateOutfit006()
              elseif indices < 8
                aArray = cArrayCreateOutfit007()
              else
                aArray = cArrayCreateOutfit008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateOutfit009()
              elseif indices < 11
                aArray = cArrayCreateOutfit010()
              elseif indices < 12
                aArray = cArrayCreateOutfit011()
              else
                aArray = cArrayCreateOutfit012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateOutfit013()
              elseif indices < 15
                aArray = cArrayCreateOutfit014()
              elseif indices < 16
                aArray = cArrayCreateOutfit015()
              else
                aArray = cArrayCreateOutfit016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateOutfit017()
              elseif indices < 19
                aArray = cArrayCreateOutfit018()
              elseif indices < 20
                aArray = cArrayCreateOutfit019()
              else
                aArray = cArrayCreateOutfit020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateOutfit021()
              elseif indices < 23
                aArray = cArrayCreateOutfit022()
              elseif indices < 24
                aArray = cArrayCreateOutfit023()
              else
                aArray = cArrayCreateOutfit024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateOutfit025()
              elseif indices < 27
                aArray = cArrayCreateOutfit026()
              elseif indices < 28
                aArray = cArrayCreateOutfit027()
              else
                aArray = cArrayCreateOutfit028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateOutfit029()
              elseif indices < 31
                aArray = cArrayCreateOutfit030()
              elseif indices < 32
                aArray = cArrayCreateOutfit031()
              else
                aArray = cArrayCreateOutfit032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateOutfit033()
              elseif indices < 35
                aArray = cArrayCreateOutfit034()
              elseif indices < 36
                aArray = cArrayCreateOutfit035()
              else
                aArray = cArrayCreateOutfit036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateOutfit037()
              elseif indices < 39
                aArray = cArrayCreateOutfit038()
              elseif indices < 40
                aArray = cArrayCreateOutfit039()
              else
                aArray = cArrayCreateOutfit040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateOutfit041()
              elseif indices < 43
                aArray = cArrayCreateOutfit042()
              elseif indices < 44
                aArray = cArrayCreateOutfit043()
              else
                aArray = cArrayCreateOutfit044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateOutfit045()
              elseif indices < 47
                aArray = cArrayCreateOutfit046()
              elseif indices < 48
                aArray = cArrayCreateOutfit047()
              else
                aArray = cArrayCreateOutfit048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateOutfit049()
              elseif indices < 51
                aArray = cArrayCreateOutfit050()
              elseif indices < 52
                aArray = cArrayCreateOutfit051()
              else
                aArray = cArrayCreateOutfit052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateOutfit053()
              elseif indices < 55
                aArray = cArrayCreateOutfit054()
              elseif indices < 56
                aArray = cArrayCreateOutfit055()
              else
                aArray = cArrayCreateOutfit056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateOutfit057()
              elseif indices < 59
                aArray = cArrayCreateOutfit058()
              elseif indices < 60
                aArray = cArrayCreateOutfit059()
              else
                aArray = cArrayCreateOutfit060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateOutfit061()
              elseif indices < 63
                aArray = cArrayCreateOutfit062()
              elseif indices < 64
                aArray = cArrayCreateOutfit063()
              else
                aArray = cArrayCreateOutfit064()
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
                aArray = cArrayCreateOutfit065()
              elseif indices < 67
                aArray = cArrayCreateOutfit066()
              elseif indices < 68
                aArray = cArrayCreateOutfit067()
              else
                aArray = cArrayCreateOutfit068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateOutfit069()
              elseif indices < 71
                aArray = cArrayCreateOutfit070()
              elseif indices < 72
                aArray = cArrayCreateOutfit071()
              else
                aArray = cArrayCreateOutfit072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateOutfit073()
              elseif indices < 75
                aArray = cArrayCreateOutfit074()
              elseif indices < 76
                aArray = cArrayCreateOutfit075()
              else
                aArray = cArrayCreateOutfit076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateOutfit077()
              elseif indices < 79
                aArray = cArrayCreateOutfit078()
              elseif indices < 80
                aArray = cArrayCreateOutfit079()
              else
                aArray = cArrayCreateOutfit080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateOutfit081()
              elseif indices < 83
                aArray = cArrayCreateOutfit082()
              elseif indices < 84
                aArray = cArrayCreateOutfit083()
              else
                aArray = cArrayCreateOutfit084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateOutfit085()
              elseif indices < 87
                aArray = cArrayCreateOutfit086()
              elseif indices < 88
                aArray = cArrayCreateOutfit087()
              else
                aArray = cArrayCreateOutfit088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateOutfit089()
              elseif indices < 91
                aArray = cArrayCreateOutfit090()
              elseif indices < 92
                aArray = cArrayCreateOutfit091()
              else
                aArray = cArrayCreateOutfit092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateOutfit093()
              elseif indices < 95
                aArray = cArrayCreateOutfit094()
              elseif indices < 96
                aArray = cArrayCreateOutfit095()
              else
                aArray = cArrayCreateOutfit096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateOutfit097()
              elseif indices < 99
                aArray = cArrayCreateOutfit098()
              elseif indices < 100
                aArray = cArrayCreateOutfit099()
              else
                aArray = cArrayCreateOutfit100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateOutfit101()
              elseif indices < 103
                aArray = cArrayCreateOutfit102()
              elseif indices < 104
                aArray = cArrayCreateOutfit103()
              else
                aArray = cArrayCreateOutfit104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateOutfit105()
              elseif indices < 107
                aArray = cArrayCreateOutfit106()
              elseif indices < 108
                aArray = cArrayCreateOutfit107()
              else
                aArray = cArrayCreateOutfit108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateOutfit109()
              elseif indices < 111
                aArray = cArrayCreateOutfit110()
              elseif indices < 112
                aArray = cArrayCreateOutfit111()
              else
                aArray = cArrayCreateOutfit112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateOutfit113()
              elseif indices < 115
                aArray = cArrayCreateOutfit114()
              elseif indices < 116
                aArray = cArrayCreateOutfit115()
              else
                aArray = cArrayCreateOutfit116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateOutfit117()
              elseif indices < 119
                aArray = cArrayCreateOutfit118()
              elseif indices < 120
                aArray = cArrayCreateOutfit119()
              else
                aArray = cArrayCreateOutfit120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateOutfit121()
              elseif indices < 123
                aArray = cArrayCreateOutfit122()
              elseif indices < 124
                aArray = cArrayCreateOutfit123()
              else
                aArray = cArrayCreateOutfit124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateOutfit125()
              elseif indices < 127
                aArray = cArrayCreateOutfit126()
              elseif indices < 128
                aArray = cArrayCreateOutfit127()
              else
                aArray = cArrayCreateOutfit128()
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
