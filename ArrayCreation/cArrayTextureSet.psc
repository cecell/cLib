Scriptname cArrayTextureSet Hidden


TextureSet[] function cArrayCreateTextureSet(Int indices, TextureSet filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  TextureSet[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace TextureSets
    if outputTrace
      String msg = "cArrayCreateTextureSet()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayTextureSet::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateTextureSet001()
              elseif indices < 3
                return cArrayCreateTextureSet002()
              elseif indices < 4
                return cArrayCreateTextureSet003()
              else
                return cArrayCreateTextureSet004()
              endif
            else
              if indices < 6
                return cArrayCreateTextureSet005()
              elseif indices < 7
                return cArrayCreateTextureSet006()
              elseif indices < 8
                return cArrayCreateTextureSet007()
              else
                return cArrayCreateTextureSet008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateTextureSet009()
              elseif indices < 11
                return cArrayCreateTextureSet010()
              elseif indices < 12
                return cArrayCreateTextureSet011()
              else
                return cArrayCreateTextureSet012()
              endif
            else
              if indices < 14
                return cArrayCreateTextureSet013()
              elseif indices < 15
                return cArrayCreateTextureSet014()
              elseif indices < 16
                return cArrayCreateTextureSet015()
              else
                return cArrayCreateTextureSet016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateTextureSet017()
              elseif indices < 19
                return cArrayCreateTextureSet018()
              elseif indices < 20
                return cArrayCreateTextureSet019()
              else
                return cArrayCreateTextureSet020()
              endif
            else
              if indices < 22
                return cArrayCreateTextureSet021()
              elseif indices < 23
                return cArrayCreateTextureSet022()
              elseif indices < 24
                return cArrayCreateTextureSet023()
              else
                return cArrayCreateTextureSet024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateTextureSet025()
              elseif indices < 27
                return cArrayCreateTextureSet026()
              elseif indices < 28
                return cArrayCreateTextureSet027()
              else
                return cArrayCreateTextureSet028()
              endif
            else
              if indices < 30
                return cArrayCreateTextureSet029()
              elseif indices < 31
                return cArrayCreateTextureSet030()
              elseif indices < 32
                return cArrayCreateTextureSet031()
              else
                return cArrayCreateTextureSet032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateTextureSet033()
              elseif indices < 35
                return cArrayCreateTextureSet034()
              elseif indices < 36
                return cArrayCreateTextureSet035()
              else
                return cArrayCreateTextureSet036()
              endif
            else
              if indices < 38
                return cArrayCreateTextureSet037()
              elseif indices < 39
                return cArrayCreateTextureSet038()
              elseif indices < 40
                return cArrayCreateTextureSet039()
              else
                return cArrayCreateTextureSet040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateTextureSet041()
              elseif indices < 43
                return cArrayCreateTextureSet042()
              elseif indices < 44
                return cArrayCreateTextureSet043()
              else
                return cArrayCreateTextureSet044()
              endif
            else
              if indices < 46
                return cArrayCreateTextureSet045()
              elseif indices < 47
                return cArrayCreateTextureSet046()
              elseif indices < 48
                return cArrayCreateTextureSet047()
              else
                return cArrayCreateTextureSet048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateTextureSet049()
              elseif indices < 51
                return cArrayCreateTextureSet050()
              elseif indices < 52
                return cArrayCreateTextureSet051()
              else
                return cArrayCreateTextureSet052()
              endif
            else
              if indices < 54
                return cArrayCreateTextureSet053()
              elseif indices < 55
                return cArrayCreateTextureSet054()
              elseif indices < 56
                return cArrayCreateTextureSet055()
              else
                return cArrayCreateTextureSet056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateTextureSet057()
              elseif indices < 59
                return cArrayCreateTextureSet058()
              elseif indices < 60
                return cArrayCreateTextureSet059()
              else
                return cArrayCreateTextureSet060()
              endif
            else
              if indices < 62
                return cArrayCreateTextureSet061()
              elseif indices < 63
                return cArrayCreateTextureSet062()
              elseif indices < 64
                return cArrayCreateTextureSet063()
              else
                return cArrayCreateTextureSet064()
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
                return cArrayCreateTextureSet065()
              elseif indices < 67
                return cArrayCreateTextureSet066()
              elseif indices < 68
                return cArrayCreateTextureSet067()
              else
                return cArrayCreateTextureSet068()
              endif
            else
              if indices < 70
                return cArrayCreateTextureSet069()
              elseif indices < 71
                return cArrayCreateTextureSet070()
              elseif indices < 72
                return cArrayCreateTextureSet071()
              else
                return cArrayCreateTextureSet072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateTextureSet073()
              elseif indices < 75
                return cArrayCreateTextureSet074()
              elseif indices < 76
                return cArrayCreateTextureSet075()
              else
                return cArrayCreateTextureSet076()
              endif
            else
              if indices < 78
                return cArrayCreateTextureSet077()
              elseif indices < 79
                return cArrayCreateTextureSet078()
              elseif indices < 80
                return cArrayCreateTextureSet079()
              else
                return cArrayCreateTextureSet080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateTextureSet081()
              elseif indices < 83
                return cArrayCreateTextureSet082()
              elseif indices < 84
                return cArrayCreateTextureSet083()
              else
                return cArrayCreateTextureSet084()
              endif
            else
              if indices < 86
                return cArrayCreateTextureSet085()
              elseif indices < 87
                return cArrayCreateTextureSet086()
              elseif indices < 88
                return cArrayCreateTextureSet087()
              else
                return cArrayCreateTextureSet088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateTextureSet089()
              elseif indices < 91
                return cArrayCreateTextureSet090()
              elseif indices < 92
                return cArrayCreateTextureSet091()
              else
                return cArrayCreateTextureSet092()
              endif
            else
              if indices < 94
                return cArrayCreateTextureSet093()
              elseif indices < 95
                return cArrayCreateTextureSet094()
              elseif indices < 96
                return cArrayCreateTextureSet095()
              else
                return cArrayCreateTextureSet096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateTextureSet097()
              elseif indices < 99
                return cArrayCreateTextureSet098()
              elseif indices < 100
                return cArrayCreateTextureSet099()
              else
                return cArrayCreateTextureSet100()
              endif
            else
              if indices < 102
                return cArrayCreateTextureSet101()
              elseif indices < 103
                return cArrayCreateTextureSet102()
              elseif indices < 104
                return cArrayCreateTextureSet103()
              else
                return cArrayCreateTextureSet104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateTextureSet105()
              elseif indices < 107
                return cArrayCreateTextureSet106()
              elseif indices < 108
                return cArrayCreateTextureSet107()
              else
                return cArrayCreateTextureSet108()
              endif
            else
              if indices < 110
                return cArrayCreateTextureSet109()
              elseif indices < 111
                return cArrayCreateTextureSet110()
              elseif indices < 112
                return cArrayCreateTextureSet111()
              else
                return cArrayCreateTextureSet112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateTextureSet113()
              elseif indices < 115
                return cArrayCreateTextureSet114()
              elseif indices < 116
                return cArrayCreateTextureSet115()
              else
                return cArrayCreateTextureSet116()
              endif
            else
              if indices < 118
                return cArrayCreateTextureSet117()
              elseif indices < 119
                return cArrayCreateTextureSet118()
              elseif indices < 120
                return cArrayCreateTextureSet119()
              else
                return cArrayCreateTextureSet120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateTextureSet121()
              elseif indices < 123
                return cArrayCreateTextureSet122()
              elseif indices < 124
                return cArrayCreateTextureSet123()
              else
                return cArrayCreateTextureSet124()
              endif
            else
              if indices < 126
                return cArrayCreateTextureSet125()
              elseif indices < 127
                return cArrayCreateTextureSet126()
              elseif indices < 128
                return cArrayCreateTextureSet127()
              else
                return cArrayCreateTextureSet128()
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

TextureSet[] function cArrayCreateTextureSet001() global
  TextureSet[] aArr = New TextureSet[1]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet002() global
  TextureSet[] aArr = New TextureSet[2]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet003() global
  TextureSet[] aArr = New TextureSet[3]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet004() global
  TextureSet[] aArr = New TextureSet[4]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet005() global
  TextureSet[] aArr = New TextureSet[5]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet006() global
  TextureSet[] aArr = New TextureSet[6]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet007() global
  TextureSet[] aArr = New TextureSet[7]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet008() global
  TextureSet[] aArr = New TextureSet[8]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet009() global
  TextureSet[] aArr = New TextureSet[9]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet010() global
  TextureSet[] aArr = New TextureSet[10]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet011() global
  TextureSet[] aArr = New TextureSet[11]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet012() global
  TextureSet[] aArr = New TextureSet[12]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet013() global
  TextureSet[] aArr = New TextureSet[13]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet014() global
  TextureSet[] aArr = New TextureSet[14]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet015() global
  TextureSet[] aArr = New TextureSet[15]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet016() global
  TextureSet[] aArr = New TextureSet[16]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet017() global
  TextureSet[] aArr = New TextureSet[17]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet018() global
  TextureSet[] aArr = New TextureSet[18]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet019() global
  TextureSet[] aArr = New TextureSet[19]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet020() global
  TextureSet[] aArr = New TextureSet[20]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet021() global
  TextureSet[] aArr = New TextureSet[21]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet022() global
  TextureSet[] aArr = New TextureSet[22]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet023() global
  TextureSet[] aArr = New TextureSet[23]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet024() global
  TextureSet[] aArr = New TextureSet[24]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet025() global
  TextureSet[] aArr = New TextureSet[25]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet026() global
  TextureSet[] aArr = New TextureSet[26]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet027() global
  TextureSet[] aArr = New TextureSet[27]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet028() global
  TextureSet[] aArr = New TextureSet[28]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet029() global
  TextureSet[] aArr = New TextureSet[29]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet030() global
  TextureSet[] aArr = New TextureSet[30]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet031() global
  TextureSet[] aArr = New TextureSet[31]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet032() global
  TextureSet[] aArr = New TextureSet[32]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet033() global
  TextureSet[] aArr = New TextureSet[33]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet034() global
  TextureSet[] aArr = New TextureSet[34]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet035() global
  TextureSet[] aArr = New TextureSet[35]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet036() global
  TextureSet[] aArr = New TextureSet[36]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet037() global
  TextureSet[] aArr = New TextureSet[37]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet038() global
  TextureSet[] aArr = New TextureSet[38]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet039() global
  TextureSet[] aArr = New TextureSet[39]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet040() global
  TextureSet[] aArr = New TextureSet[40]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet041() global
  TextureSet[] aArr = New TextureSet[41]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet042() global
  TextureSet[] aArr = New TextureSet[42]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet043() global
  TextureSet[] aArr = New TextureSet[43]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet044() global
  TextureSet[] aArr = New TextureSet[44]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet045() global
  TextureSet[] aArr = New TextureSet[45]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet046() global
  TextureSet[] aArr = New TextureSet[46]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet047() global
  TextureSet[] aArr = New TextureSet[47]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet048() global
  TextureSet[] aArr = New TextureSet[48]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet049() global
  TextureSet[] aArr = New TextureSet[49]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet050() global
  TextureSet[] aArr = New TextureSet[50]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet051() global
  TextureSet[] aArr = New TextureSet[51]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet052() global
  TextureSet[] aArr = New TextureSet[52]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet053() global
  TextureSet[] aArr = New TextureSet[53]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet054() global
  TextureSet[] aArr = New TextureSet[54]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet055() global
  TextureSet[] aArr = New TextureSet[55]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet056() global
  TextureSet[] aArr = New TextureSet[56]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet057() global
  TextureSet[] aArr = New TextureSet[57]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet058() global
  TextureSet[] aArr = New TextureSet[58]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet059() global
  TextureSet[] aArr = New TextureSet[59]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet060() global
  TextureSet[] aArr = New TextureSet[60]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet061() global
  TextureSet[] aArr = New TextureSet[61]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet062() global
  TextureSet[] aArr = New TextureSet[62]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet063() global
  TextureSet[] aArr = New TextureSet[63]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet064() global
  TextureSet[] aArr = New TextureSet[64]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet065() global
  TextureSet[] aArr = New TextureSet[65]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet066() global
  TextureSet[] aArr = New TextureSet[66]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet067() global
  TextureSet[] aArr = New TextureSet[67]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet068() global
  TextureSet[] aArr = New TextureSet[68]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet069() global
  TextureSet[] aArr = New TextureSet[69]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet070() global
  TextureSet[] aArr = New TextureSet[70]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet071() global
  TextureSet[] aArr = New TextureSet[71]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet072() global
  TextureSet[] aArr = New TextureSet[72]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet073() global
  TextureSet[] aArr = New TextureSet[73]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet074() global
  TextureSet[] aArr = New TextureSet[74]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet075() global
  TextureSet[] aArr = New TextureSet[75]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet076() global
  TextureSet[] aArr = New TextureSet[76]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet077() global
  TextureSet[] aArr = New TextureSet[77]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet078() global
  TextureSet[] aArr = New TextureSet[78]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet079() global
  TextureSet[] aArr = New TextureSet[79]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet080() global
  TextureSet[] aArr = New TextureSet[80]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet081() global
  TextureSet[] aArr = New TextureSet[81]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet082() global
  TextureSet[] aArr = New TextureSet[82]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet083() global
  TextureSet[] aArr = New TextureSet[83]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet084() global
  TextureSet[] aArr = New TextureSet[84]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet085() global
  TextureSet[] aArr = New TextureSet[85]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet086() global
  TextureSet[] aArr = New TextureSet[86]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet087() global
  TextureSet[] aArr = New TextureSet[87]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet088() global
  TextureSet[] aArr = New TextureSet[88]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet089() global
  TextureSet[] aArr = New TextureSet[89]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet090() global
  TextureSet[] aArr = New TextureSet[90]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet091() global
  TextureSet[] aArr = New TextureSet[91]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet092() global
  TextureSet[] aArr = New TextureSet[92]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet093() global
  TextureSet[] aArr = New TextureSet[93]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet094() global
  TextureSet[] aArr = New TextureSet[94]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet095() global
  TextureSet[] aArr = New TextureSet[95]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet096() global
  TextureSet[] aArr = New TextureSet[96]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet097() global
  TextureSet[] aArr = New TextureSet[97]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet098() global
  TextureSet[] aArr = New TextureSet[98]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet099() global
  TextureSet[] aArr = New TextureSet[99]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet100() global
  TextureSet[] aArr = New TextureSet[100]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet101() global
  TextureSet[] aArr = New TextureSet[101]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet102() global
  TextureSet[] aArr = New TextureSet[102]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet103() global
  TextureSet[] aArr = New TextureSet[103]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet104() global
  TextureSet[] aArr = New TextureSet[104]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet105() global
  TextureSet[] aArr = New TextureSet[105]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet106() global
  TextureSet[] aArr = New TextureSet[106]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet107() global
  TextureSet[] aArr = New TextureSet[107]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet108() global
  TextureSet[] aArr = New TextureSet[108]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet109() global
  TextureSet[] aArr = New TextureSet[109]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet110() global
  TextureSet[] aArr = New TextureSet[110]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet111() global
  TextureSet[] aArr = New TextureSet[111]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet112() global
  TextureSet[] aArr = New TextureSet[112]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet113() global
  TextureSet[] aArr = New TextureSet[113]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet114() global
  TextureSet[] aArr = New TextureSet[114]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet115() global
  TextureSet[] aArr = New TextureSet[115]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet116() global
  TextureSet[] aArr = New TextureSet[116]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet117() global
  TextureSet[] aArr = New TextureSet[117]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet118() global
  TextureSet[] aArr = New TextureSet[118]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet119() global
  TextureSet[] aArr = New TextureSet[119]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet120() global
  TextureSet[] aArr = New TextureSet[120]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet121() global
  TextureSet[] aArr = New TextureSet[121]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet122() global
  TextureSet[] aArr = New TextureSet[122]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet123() global
  TextureSet[] aArr = New TextureSet[123]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet124() global
  TextureSet[] aArr = New TextureSet[124]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet125() global
  TextureSet[] aArr = New TextureSet[125]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet126() global
  TextureSet[] aArr = New TextureSet[126]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet127() global
  TextureSet[] aArr = New TextureSet[127]
  return aArr
endfunction
TextureSet[] function cArrayCreateTextureSet128() global
  TextureSet[] aArr = New TextureSet[128]
  return aArr
endfunction
