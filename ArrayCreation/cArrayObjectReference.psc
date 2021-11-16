Scriptname cArrayObjectReference Hidden


ObjectReference[] function cArrayCreateObjRef(Int indices, ObjectReference filler = None) global
    return cArrayCreateObjectReference(indices, filler)
endfunction

ObjectReference[] function cArrayCreateObjectReference(Int indices, ObjectReference filler = None, \
    Bool outputTrace = TRUE) global
  {Requirements: None}
  ObjectReference[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    if outputTrace
      String msg = "cArrayCreateObjRef()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayObjectReference::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateObjRef001()
              elseif indices < 3
                return cArrayCreateObjRef002()
              elseif indices < 4
                return cArrayCreateObjRef003()
              else
                return cArrayCreateObjRef004()
              endif
            else
              if indices < 6
                return cArrayCreateObjRef005()
              elseif indices < 7
                return cArrayCreateObjRef006()
              elseif indices < 8
                return cArrayCreateObjRef007()
              else
                return cArrayCreateObjRef008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateObjRef009()
              elseif indices < 11
                return cArrayCreateObjRef010()
              elseif indices < 12
                return cArrayCreateObjRef011()
              else
                return cArrayCreateObjRef012()
              endif
            else
              if indices < 14
                return cArrayCreateObjRef013()
              elseif indices < 15
                return cArrayCreateObjRef014()
              elseif indices < 16
                return cArrayCreateObjRef015()
              else
                return cArrayCreateObjRef016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateObjRef017()
              elseif indices < 19
                return cArrayCreateObjRef018()
              elseif indices < 20
                return cArrayCreateObjRef019()
              else
                return cArrayCreateObjRef020()
              endif
            else
              if indices < 22
                return cArrayCreateObjRef021()
              elseif indices < 23
                return cArrayCreateObjRef022()
              elseif indices < 24
                return cArrayCreateObjRef023()
              else
                return cArrayCreateObjRef024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateObjRef025()
              elseif indices < 27
                return cArrayCreateObjRef026()
              elseif indices < 28
                return cArrayCreateObjRef027()
              else
                return cArrayCreateObjRef028()
              endif
            else
              if indices < 30
                return cArrayCreateObjRef029()
              elseif indices < 31
                return cArrayCreateObjRef030()
              elseif indices < 32
                return cArrayCreateObjRef031()
              else
                return cArrayCreateObjRef032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateObjRef033()
              elseif indices < 35
                return cArrayCreateObjRef034()
              elseif indices < 36
                return cArrayCreateObjRef035()
              else
                return cArrayCreateObjRef036()
              endif
            else
              if indices < 38
                return cArrayCreateObjRef037()
              elseif indices < 39
                return cArrayCreateObjRef038()
              elseif indices < 40
                return cArrayCreateObjRef039()
              else
                return cArrayCreateObjRef040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateObjRef041()
              elseif indices < 43
                return cArrayCreateObjRef042()
              elseif indices < 44
                return cArrayCreateObjRef043()
              else
                return cArrayCreateObjRef044()
              endif
            else
              if indices < 46
                return cArrayCreateObjRef045()
              elseif indices < 47
                return cArrayCreateObjRef046()
              elseif indices < 48
                return cArrayCreateObjRef047()
              else
                return cArrayCreateObjRef048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateObjRef049()
              elseif indices < 51
                return cArrayCreateObjRef050()
              elseif indices < 52
                return cArrayCreateObjRef051()
              else
                return cArrayCreateObjRef052()
              endif
            else
              if indices < 54
                return cArrayCreateObjRef053()
              elseif indices < 55
                return cArrayCreateObjRef054()
              elseif indices < 56
                return cArrayCreateObjRef055()
              else
                return cArrayCreateObjRef056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateObjRef057()
              elseif indices < 59
                return cArrayCreateObjRef058()
              elseif indices < 60
                return cArrayCreateObjRef059()
              else
                return cArrayCreateObjRef060()
              endif
            else
              if indices < 62
                return cArrayCreateObjRef061()
              elseif indices < 63
                return cArrayCreateObjRef062()
              elseif indices < 64
                return cArrayCreateObjRef063()
              else
                return cArrayCreateObjRef064()
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
                return cArrayCreateObjRef065()
              elseif indices < 67
                return cArrayCreateObjRef066()
              elseif indices < 68
                return cArrayCreateObjRef067()
              else
                return cArrayCreateObjRef068()
              endif
            else
              if indices < 70
                return cArrayCreateObjRef069()
              elseif indices < 71
                return cArrayCreateObjRef070()
              elseif indices < 72
                return cArrayCreateObjRef071()
              else
                return cArrayCreateObjRef072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateObjRef073()
              elseif indices < 75
                return cArrayCreateObjRef074()
              elseif indices < 76
                return cArrayCreateObjRef075()
              else
                return cArrayCreateObjRef076()
              endif
            else
              if indices < 78
                return cArrayCreateObjRef077()
              elseif indices < 79
                return cArrayCreateObjRef078()
              elseif indices < 80
                return cArrayCreateObjRef079()
              else
                return cArrayCreateObjRef080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateObjRef081()
              elseif indices < 83
                return cArrayCreateObjRef082()
              elseif indices < 84
                return cArrayCreateObjRef083()
              else
                return cArrayCreateObjRef084()
              endif
            else
              if indices < 86
                return cArrayCreateObjRef085()
              elseif indices < 87
                return cArrayCreateObjRef086()
              elseif indices < 88
                return cArrayCreateObjRef087()
              else
                return cArrayCreateObjRef088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateObjRef089()
              elseif indices < 91
                return cArrayCreateObjRef090()
              elseif indices < 92
                return cArrayCreateObjRef091()
              else
                return cArrayCreateObjRef092()
              endif
            else
              if indices < 94
                return cArrayCreateObjRef093()
              elseif indices < 95
                return cArrayCreateObjRef094()
              elseif indices < 96
                return cArrayCreateObjRef095()
              else
                return cArrayCreateObjRef096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateObjRef097()
              elseif indices < 99
                return cArrayCreateObjRef098()
              elseif indices < 100
                return cArrayCreateObjRef099()
              else
                return cArrayCreateObjRef100()
              endif
            else
              if indices < 102
                return cArrayCreateObjRef101()
              elseif indices < 103
                return cArrayCreateObjRef102()
              elseif indices < 104
                return cArrayCreateObjRef103()
              else
                return cArrayCreateObjRef104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateObjRef105()
              elseif indices < 107
                return cArrayCreateObjRef106()
              elseif indices < 108
                return cArrayCreateObjRef107()
              else
                return cArrayCreateObjRef108()
              endif
            else
              if indices < 110
                return cArrayCreateObjRef109()
              elseif indices < 111
                return cArrayCreateObjRef110()
              elseif indices < 112
                return cArrayCreateObjRef111()
              else
                return cArrayCreateObjRef112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateObjRef113()
              elseif indices < 115
                return cArrayCreateObjRef114()
              elseif indices < 116
                return cArrayCreateObjRef115()
              else
                return cArrayCreateObjRef116()
              endif
            else
              if indices < 118
                return cArrayCreateObjRef117()
              elseif indices < 119
                return cArrayCreateObjRef118()
              elseif indices < 120
                return cArrayCreateObjRef119()
              else
                return cArrayCreateObjRef120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateObjRef121()
              elseif indices < 123
                return cArrayCreateObjRef122()
              elseif indices < 124
                return cArrayCreateObjRef123()
              else
                return cArrayCreateObjRef124()
              endif
            else
              if indices < 126
                return cArrayCreateObjRef125()
              elseif indices < 127
                return cArrayCreateObjRef126()
              elseif indices < 128
                return cArrayCreateObjRef127()
              else
                return cArrayCreateObjRef128()
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

ObjectReference[] function cArrayCreateObjRef001() global
  ObjectReference[] aArr = New ObjectReference[1]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef002() global
  ObjectReference[] aArr = New ObjectReference[2]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef003() global
  ObjectReference[] aArr = New ObjectReference[3]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef004() global
  ObjectReference[] aArr = New ObjectReference[4]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef005() global
  ObjectReference[] aArr = New ObjectReference[5]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef006() global
  ObjectReference[] aArr = New ObjectReference[6]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef007() global
  ObjectReference[] aArr = New ObjectReference[7]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef008() global
  ObjectReference[] aArr = New ObjectReference[8]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef009() global
  ObjectReference[] aArr = New ObjectReference[9]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef010() global
  ObjectReference[] aArr = New ObjectReference[10]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef011() global
  ObjectReference[] aArr = New ObjectReference[11]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef012() global
  ObjectReference[] aArr = New ObjectReference[12]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef013() global
  ObjectReference[] aArr = New ObjectReference[13]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef014() global
  ObjectReference[] aArr = New ObjectReference[14]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef015() global
  ObjectReference[] aArr = New ObjectReference[15]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef016() global
  ObjectReference[] aArr = New ObjectReference[16]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef017() global
  ObjectReference[] aArr = New ObjectReference[17]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef018() global
  ObjectReference[] aArr = New ObjectReference[18]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef019() global
  ObjectReference[] aArr = New ObjectReference[19]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef020() global
  ObjectReference[] aArr = New ObjectReference[20]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef021() global
  ObjectReference[] aArr = New ObjectReference[21]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef022() global
  ObjectReference[] aArr = New ObjectReference[22]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef023() global
  ObjectReference[] aArr = New ObjectReference[23]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef024() global
  ObjectReference[] aArr = New ObjectReference[24]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef025() global
  ObjectReference[] aArr = New ObjectReference[25]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef026() global
  ObjectReference[] aArr = New ObjectReference[26]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef027() global
  ObjectReference[] aArr = New ObjectReference[27]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef028() global
  ObjectReference[] aArr = New ObjectReference[28]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef029() global
  ObjectReference[] aArr = New ObjectReference[29]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef030() global
  ObjectReference[] aArr = New ObjectReference[30]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef031() global
  ObjectReference[] aArr = New ObjectReference[31]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef032() global
  ObjectReference[] aArr = New ObjectReference[32]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef033() global
  ObjectReference[] aArr = New ObjectReference[33]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef034() global
  ObjectReference[] aArr = New ObjectReference[34]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef035() global
  ObjectReference[] aArr = New ObjectReference[35]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef036() global
  ObjectReference[] aArr = New ObjectReference[36]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef037() global
  ObjectReference[] aArr = New ObjectReference[37]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef038() global
  ObjectReference[] aArr = New ObjectReference[38]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef039() global
  ObjectReference[] aArr = New ObjectReference[39]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef040() global
  ObjectReference[] aArr = New ObjectReference[40]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef041() global
  ObjectReference[] aArr = New ObjectReference[41]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef042() global
  ObjectReference[] aArr = New ObjectReference[42]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef043() global
  ObjectReference[] aArr = New ObjectReference[43]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef044() global
  ObjectReference[] aArr = New ObjectReference[44]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef045() global
  ObjectReference[] aArr = New ObjectReference[45]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef046() global
  ObjectReference[] aArr = New ObjectReference[46]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef047() global
  ObjectReference[] aArr = New ObjectReference[47]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef048() global
  ObjectReference[] aArr = New ObjectReference[48]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef049() global
  ObjectReference[] aArr = New ObjectReference[49]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef050() global
  ObjectReference[] aArr = New ObjectReference[50]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef051() global
  ObjectReference[] aArr = New ObjectReference[51]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef052() global
  ObjectReference[] aArr = New ObjectReference[52]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef053() global
  ObjectReference[] aArr = New ObjectReference[53]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef054() global
  ObjectReference[] aArr = New ObjectReference[54]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef055() global
  ObjectReference[] aArr = New ObjectReference[55]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef056() global
  ObjectReference[] aArr = New ObjectReference[56]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef057() global
  ObjectReference[] aArr = New ObjectReference[57]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef058() global
  ObjectReference[] aArr = New ObjectReference[58]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef059() global
  ObjectReference[] aArr = New ObjectReference[59]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef060() global
  ObjectReference[] aArr = New ObjectReference[60]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef061() global
  ObjectReference[] aArr = New ObjectReference[61]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef062() global
  ObjectReference[] aArr = New ObjectReference[62]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef063() global
  ObjectReference[] aArr = New ObjectReference[63]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef064() global
  ObjectReference[] aArr = New ObjectReference[64]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef065() global
  ObjectReference[] aArr = New ObjectReference[65]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef066() global
  ObjectReference[] aArr = New ObjectReference[66]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef067() global
  ObjectReference[] aArr = New ObjectReference[67]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef068() global
  ObjectReference[] aArr = New ObjectReference[68]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef069() global
  ObjectReference[] aArr = New ObjectReference[69]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef070() global
  ObjectReference[] aArr = New ObjectReference[70]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef071() global
  ObjectReference[] aArr = New ObjectReference[71]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef072() global
  ObjectReference[] aArr = New ObjectReference[72]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef073() global
  ObjectReference[] aArr = New ObjectReference[73]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef074() global
  ObjectReference[] aArr = New ObjectReference[74]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef075() global
  ObjectReference[] aArr = New ObjectReference[75]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef076() global
  ObjectReference[] aArr = New ObjectReference[76]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef077() global
  ObjectReference[] aArr = New ObjectReference[77]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef078() global
  ObjectReference[] aArr = New ObjectReference[78]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef079() global
  ObjectReference[] aArr = New ObjectReference[79]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef080() global
  ObjectReference[] aArr = New ObjectReference[80]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef081() global
  ObjectReference[] aArr = New ObjectReference[81]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef082() global
  ObjectReference[] aArr = New ObjectReference[82]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef083() global
  ObjectReference[] aArr = New ObjectReference[83]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef084() global
  ObjectReference[] aArr = New ObjectReference[84]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef085() global
  ObjectReference[] aArr = New ObjectReference[85]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef086() global
  ObjectReference[] aArr = New ObjectReference[86]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef087() global
  ObjectReference[] aArr = New ObjectReference[87]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef088() global
  ObjectReference[] aArr = New ObjectReference[88]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef089() global
  ObjectReference[] aArr = New ObjectReference[89]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef090() global
  ObjectReference[] aArr = New ObjectReference[90]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef091() global
  ObjectReference[] aArr = New ObjectReference[91]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef092() global
  ObjectReference[] aArr = New ObjectReference[92]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef093() global
  ObjectReference[] aArr = New ObjectReference[93]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef094() global
  ObjectReference[] aArr = New ObjectReference[94]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef095() global
  ObjectReference[] aArr = New ObjectReference[95]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef096() global
  ObjectReference[] aArr = New ObjectReference[96]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef097() global
  ObjectReference[] aArr = New ObjectReference[97]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef098() global
  ObjectReference[] aArr = New ObjectReference[98]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef099() global
  ObjectReference[] aArr = New ObjectReference[99]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef100() global
  ObjectReference[] aArr = New ObjectReference[100]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef101() global
  ObjectReference[] aArr = New ObjectReference[101]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef102() global
  ObjectReference[] aArr = New ObjectReference[102]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef103() global
  ObjectReference[] aArr = New ObjectReference[103]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef104() global
  ObjectReference[] aArr = New ObjectReference[104]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef105() global
  ObjectReference[] aArr = New ObjectReference[105]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef106() global
  ObjectReference[] aArr = New ObjectReference[106]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef107() global
  ObjectReference[] aArr = New ObjectReference[107]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef108() global
  ObjectReference[] aArr = New ObjectReference[108]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef109() global
  ObjectReference[] aArr = New ObjectReference[109]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef110() global
  ObjectReference[] aArr = New ObjectReference[110]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef111() global
  ObjectReference[] aArr = New ObjectReference[111]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef112() global
  ObjectReference[] aArr = New ObjectReference[112]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef113() global
  ObjectReference[] aArr = New ObjectReference[113]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef114() global
  ObjectReference[] aArr = New ObjectReference[114]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef115() global
  ObjectReference[] aArr = New ObjectReference[115]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef116() global
  ObjectReference[] aArr = New ObjectReference[116]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef117() global
  ObjectReference[] aArr = New ObjectReference[117]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef118() global
  ObjectReference[] aArr = New ObjectReference[118]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef119() global
  ObjectReference[] aArr = New ObjectReference[119]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef120() global
  ObjectReference[] aArr = New ObjectReference[120]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef121() global
  ObjectReference[] aArr = New ObjectReference[121]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef122() global
  ObjectReference[] aArr = New ObjectReference[122]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef123() global
  ObjectReference[] aArr = New ObjectReference[123]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef124() global
  ObjectReference[] aArr = New ObjectReference[124]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef125() global
  ObjectReference[] aArr = New ObjectReference[125]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef126() global
  ObjectReference[] aArr = New ObjectReference[126]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef127() global
  ObjectReference[] aArr = New ObjectReference[127]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef128() global
  ObjectReference[] aArr = New ObjectReference[128]
  return aArr
endfunction
