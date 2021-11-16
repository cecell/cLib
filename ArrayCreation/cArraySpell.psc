Scriptname cArraySpell Hidden


Spell[] function cArrayCreateSpell(Int indices, Spell filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  Spell[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace Spells
    if outputTrace
      String msg = "cArrayCreateSpell()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArraySpell::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateSpell001()
              elseif indices < 3
                return cArrayCreateSpell002()
              elseif indices < 4
                return cArrayCreateSpell003()
              else
                return cArrayCreateSpell004()
              endif
            else
              if indices < 6
                return cArrayCreateSpell005()
              elseif indices < 7
                return cArrayCreateSpell006()
              elseif indices < 8
                return cArrayCreateSpell007()
              else
                return cArrayCreateSpell008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateSpell009()
              elseif indices < 11
                return cArrayCreateSpell010()
              elseif indices < 12
                return cArrayCreateSpell011()
              else
                return cArrayCreateSpell012()
              endif
            else
              if indices < 14
                return cArrayCreateSpell013()
              elseif indices < 15
                return cArrayCreateSpell014()
              elseif indices < 16
                return cArrayCreateSpell015()
              else
                return cArrayCreateSpell016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateSpell017()
              elseif indices < 19
                return cArrayCreateSpell018()
              elseif indices < 20
                return cArrayCreateSpell019()
              else
                return cArrayCreateSpell020()
              endif
            else
              if indices < 22
                return cArrayCreateSpell021()
              elseif indices < 23
                return cArrayCreateSpell022()
              elseif indices < 24
                return cArrayCreateSpell023()
              else
                return cArrayCreateSpell024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateSpell025()
              elseif indices < 27
                return cArrayCreateSpell026()
              elseif indices < 28
                return cArrayCreateSpell027()
              else
                return cArrayCreateSpell028()
              endif
            else
              if indices < 30
                return cArrayCreateSpell029()
              elseif indices < 31
                return cArrayCreateSpell030()
              elseif indices < 32
                return cArrayCreateSpell031()
              else
                return cArrayCreateSpell032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateSpell033()
              elseif indices < 35
                return cArrayCreateSpell034()
              elseif indices < 36
                return cArrayCreateSpell035()
              else
                return cArrayCreateSpell036()
              endif
            else
              if indices < 38
                return cArrayCreateSpell037()
              elseif indices < 39
                return cArrayCreateSpell038()
              elseif indices < 40
                return cArrayCreateSpell039()
              else
                return cArrayCreateSpell040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateSpell041()
              elseif indices < 43
                return cArrayCreateSpell042()
              elseif indices < 44
                return cArrayCreateSpell043()
              else
                return cArrayCreateSpell044()
              endif
            else
              if indices < 46
                return cArrayCreateSpell045()
              elseif indices < 47
                return cArrayCreateSpell046()
              elseif indices < 48
                return cArrayCreateSpell047()
              else
                return cArrayCreateSpell048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateSpell049()
              elseif indices < 51
                return cArrayCreateSpell050()
              elseif indices < 52
                return cArrayCreateSpell051()
              else
                return cArrayCreateSpell052()
              endif
            else
              if indices < 54
                return cArrayCreateSpell053()
              elseif indices < 55
                return cArrayCreateSpell054()
              elseif indices < 56
                return cArrayCreateSpell055()
              else
                return cArrayCreateSpell056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateSpell057()
              elseif indices < 59
                return cArrayCreateSpell058()
              elseif indices < 60
                return cArrayCreateSpell059()
              else
                return cArrayCreateSpell060()
              endif
            else
              if indices < 62
                return cArrayCreateSpell061()
              elseif indices < 63
                return cArrayCreateSpell062()
              elseif indices < 64
                return cArrayCreateSpell063()
              else
                return cArrayCreateSpell064()
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
                return cArrayCreateSpell065()
              elseif indices < 67
                return cArrayCreateSpell066()
              elseif indices < 68
                return cArrayCreateSpell067()
              else
                return cArrayCreateSpell068()
              endif
            else
              if indices < 70
                return cArrayCreateSpell069()
              elseif indices < 71
                return cArrayCreateSpell070()
              elseif indices < 72
                return cArrayCreateSpell071()
              else
                return cArrayCreateSpell072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateSpell073()
              elseif indices < 75
                return cArrayCreateSpell074()
              elseif indices < 76
                return cArrayCreateSpell075()
              else
                return cArrayCreateSpell076()
              endif
            else
              if indices < 78
                return cArrayCreateSpell077()
              elseif indices < 79
                return cArrayCreateSpell078()
              elseif indices < 80
                return cArrayCreateSpell079()
              else
                return cArrayCreateSpell080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateSpell081()
              elseif indices < 83
                return cArrayCreateSpell082()
              elseif indices < 84
                return cArrayCreateSpell083()
              else
                return cArrayCreateSpell084()
              endif
            else
              if indices < 86
                return cArrayCreateSpell085()
              elseif indices < 87
                return cArrayCreateSpell086()
              elseif indices < 88
                return cArrayCreateSpell087()
              else
                return cArrayCreateSpell088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateSpell089()
              elseif indices < 91
                return cArrayCreateSpell090()
              elseif indices < 92
                return cArrayCreateSpell091()
              else
                return cArrayCreateSpell092()
              endif
            else
              if indices < 94
                return cArrayCreateSpell093()
              elseif indices < 95
                return cArrayCreateSpell094()
              elseif indices < 96
                return cArrayCreateSpell095()
              else
                return cArrayCreateSpell096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateSpell097()
              elseif indices < 99
                return cArrayCreateSpell098()
              elseif indices < 100
                return cArrayCreateSpell099()
              else
                return cArrayCreateSpell100()
              endif
            else
              if indices < 102
                return cArrayCreateSpell101()
              elseif indices < 103
                return cArrayCreateSpell102()
              elseif indices < 104
                return cArrayCreateSpell103()
              else
                return cArrayCreateSpell104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateSpell105()
              elseif indices < 107
                return cArrayCreateSpell106()
              elseif indices < 108
                return cArrayCreateSpell107()
              else
                return cArrayCreateSpell108()
              endif
            else
              if indices < 110
                return cArrayCreateSpell109()
              elseif indices < 111
                return cArrayCreateSpell110()
              elseif indices < 112
                return cArrayCreateSpell111()
              else
                return cArrayCreateSpell112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateSpell113()
              elseif indices < 115
                return cArrayCreateSpell114()
              elseif indices < 116
                return cArrayCreateSpell115()
              else
                return cArrayCreateSpell116()
              endif
            else
              if indices < 118
                return cArrayCreateSpell117()
              elseif indices < 119
                return cArrayCreateSpell118()
              elseif indices < 120
                return cArrayCreateSpell119()
              else
                return cArrayCreateSpell120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateSpell121()
              elseif indices < 123
                return cArrayCreateSpell122()
              elseif indices < 124
                return cArrayCreateSpell123()
              else
                return cArrayCreateSpell124()
              endif
            else
              if indices < 126
                return cArrayCreateSpell125()
              elseif indices < 127
                return cArrayCreateSpell126()
              elseif indices < 128
                return cArrayCreateSpell127()
              else
                return cArrayCreateSpell128()
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

Spell[] function cArrayCreateSpell001() global
  Spell[] aArr = New Spell[1]
  return aArr
endfunction
Spell[] function cArrayCreateSpell002() global
  Spell[] aArr = New Spell[2]
  return aArr
endfunction
Spell[] function cArrayCreateSpell003() global
  Spell[] aArr = New Spell[3]
  return aArr
endfunction
Spell[] function cArrayCreateSpell004() global
  Spell[] aArr = New Spell[4]
  return aArr
endfunction
Spell[] function cArrayCreateSpell005() global
  Spell[] aArr = New Spell[5]
  return aArr
endfunction
Spell[] function cArrayCreateSpell006() global
  Spell[] aArr = New Spell[6]
  return aArr
endfunction
Spell[] function cArrayCreateSpell007() global
  Spell[] aArr = New Spell[7]
  return aArr
endfunction
Spell[] function cArrayCreateSpell008() global
  Spell[] aArr = New Spell[8]
  return aArr
endfunction
Spell[] function cArrayCreateSpell009() global
  Spell[] aArr = New Spell[9]
  return aArr
endfunction
Spell[] function cArrayCreateSpell010() global
  Spell[] aArr = New Spell[10]
  return aArr
endfunction
Spell[] function cArrayCreateSpell011() global
  Spell[] aArr = New Spell[11]
  return aArr
endfunction
Spell[] function cArrayCreateSpell012() global
  Spell[] aArr = New Spell[12]
  return aArr
endfunction
Spell[] function cArrayCreateSpell013() global
  Spell[] aArr = New Spell[13]
  return aArr
endfunction
Spell[] function cArrayCreateSpell014() global
  Spell[] aArr = New Spell[14]
  return aArr
endfunction
Spell[] function cArrayCreateSpell015() global
  Spell[] aArr = New Spell[15]
  return aArr
endfunction
Spell[] function cArrayCreateSpell016() global
  Spell[] aArr = New Spell[16]
  return aArr
endfunction
Spell[] function cArrayCreateSpell017() global
  Spell[] aArr = New Spell[17]
  return aArr
endfunction
Spell[] function cArrayCreateSpell018() global
  Spell[] aArr = New Spell[18]
  return aArr
endfunction
Spell[] function cArrayCreateSpell019() global
  Spell[] aArr = New Spell[19]
  return aArr
endfunction
Spell[] function cArrayCreateSpell020() global
  Spell[] aArr = New Spell[20]
  return aArr
endfunction
Spell[] function cArrayCreateSpell021() global
  Spell[] aArr = New Spell[21]
  return aArr
endfunction
Spell[] function cArrayCreateSpell022() global
  Spell[] aArr = New Spell[22]
  return aArr
endfunction
Spell[] function cArrayCreateSpell023() global
  Spell[] aArr = New Spell[23]
  return aArr
endfunction
Spell[] function cArrayCreateSpell024() global
  Spell[] aArr = New Spell[24]
  return aArr
endfunction
Spell[] function cArrayCreateSpell025() global
  Spell[] aArr = New Spell[25]
  return aArr
endfunction
Spell[] function cArrayCreateSpell026() global
  Spell[] aArr = New Spell[26]
  return aArr
endfunction
Spell[] function cArrayCreateSpell027() global
  Spell[] aArr = New Spell[27]
  return aArr
endfunction
Spell[] function cArrayCreateSpell028() global
  Spell[] aArr = New Spell[28]
  return aArr
endfunction
Spell[] function cArrayCreateSpell029() global
  Spell[] aArr = New Spell[29]
  return aArr
endfunction
Spell[] function cArrayCreateSpell030() global
  Spell[] aArr = New Spell[30]
  return aArr
endfunction
Spell[] function cArrayCreateSpell031() global
  Spell[] aArr = New Spell[31]
  return aArr
endfunction
Spell[] function cArrayCreateSpell032() global
  Spell[] aArr = New Spell[32]
  return aArr
endfunction
Spell[] function cArrayCreateSpell033() global
  Spell[] aArr = New Spell[33]
  return aArr
endfunction
Spell[] function cArrayCreateSpell034() global
  Spell[] aArr = New Spell[34]
  return aArr
endfunction
Spell[] function cArrayCreateSpell035() global
  Spell[] aArr = New Spell[35]
  return aArr
endfunction
Spell[] function cArrayCreateSpell036() global
  Spell[] aArr = New Spell[36]
  return aArr
endfunction
Spell[] function cArrayCreateSpell037() global
  Spell[] aArr = New Spell[37]
  return aArr
endfunction
Spell[] function cArrayCreateSpell038() global
  Spell[] aArr = New Spell[38]
  return aArr
endfunction
Spell[] function cArrayCreateSpell039() global
  Spell[] aArr = New Spell[39]
  return aArr
endfunction
Spell[] function cArrayCreateSpell040() global
  Spell[] aArr = New Spell[40]
  return aArr
endfunction
Spell[] function cArrayCreateSpell041() global
  Spell[] aArr = New Spell[41]
  return aArr
endfunction
Spell[] function cArrayCreateSpell042() global
  Spell[] aArr = New Spell[42]
  return aArr
endfunction
Spell[] function cArrayCreateSpell043() global
  Spell[] aArr = New Spell[43]
  return aArr
endfunction
Spell[] function cArrayCreateSpell044() global
  Spell[] aArr = New Spell[44]
  return aArr
endfunction
Spell[] function cArrayCreateSpell045() global
  Spell[] aArr = New Spell[45]
  return aArr
endfunction
Spell[] function cArrayCreateSpell046() global
  Spell[] aArr = New Spell[46]
  return aArr
endfunction
Spell[] function cArrayCreateSpell047() global
  Spell[] aArr = New Spell[47]
  return aArr
endfunction
Spell[] function cArrayCreateSpell048() global
  Spell[] aArr = New Spell[48]
  return aArr
endfunction
Spell[] function cArrayCreateSpell049() global
  Spell[] aArr = New Spell[49]
  return aArr
endfunction
Spell[] function cArrayCreateSpell050() global
  Spell[] aArr = New Spell[50]
  return aArr
endfunction
Spell[] function cArrayCreateSpell051() global
  Spell[] aArr = New Spell[51]
  return aArr
endfunction
Spell[] function cArrayCreateSpell052() global
  Spell[] aArr = New Spell[52]
  return aArr
endfunction
Spell[] function cArrayCreateSpell053() global
  Spell[] aArr = New Spell[53]
  return aArr
endfunction
Spell[] function cArrayCreateSpell054() global
  Spell[] aArr = New Spell[54]
  return aArr
endfunction
Spell[] function cArrayCreateSpell055() global
  Spell[] aArr = New Spell[55]
  return aArr
endfunction
Spell[] function cArrayCreateSpell056() global
  Spell[] aArr = New Spell[56]
  return aArr
endfunction
Spell[] function cArrayCreateSpell057() global
  Spell[] aArr = New Spell[57]
  return aArr
endfunction
Spell[] function cArrayCreateSpell058() global
  Spell[] aArr = New Spell[58]
  return aArr
endfunction
Spell[] function cArrayCreateSpell059() global
  Spell[] aArr = New Spell[59]
  return aArr
endfunction
Spell[] function cArrayCreateSpell060() global
  Spell[] aArr = New Spell[60]
  return aArr
endfunction
Spell[] function cArrayCreateSpell061() global
  Spell[] aArr = New Spell[61]
  return aArr
endfunction
Spell[] function cArrayCreateSpell062() global
  Spell[] aArr = New Spell[62]
  return aArr
endfunction
Spell[] function cArrayCreateSpell063() global
  Spell[] aArr = New Spell[63]
  return aArr
endfunction
Spell[] function cArrayCreateSpell064() global
  Spell[] aArr = New Spell[64]
  return aArr
endfunction
Spell[] function cArrayCreateSpell065() global
  Spell[] aArr = New Spell[65]
  return aArr
endfunction
Spell[] function cArrayCreateSpell066() global
  Spell[] aArr = New Spell[66]
  return aArr
endfunction
Spell[] function cArrayCreateSpell067() global
  Spell[] aArr = New Spell[67]
  return aArr
endfunction
Spell[] function cArrayCreateSpell068() global
  Spell[] aArr = New Spell[68]
  return aArr
endfunction
Spell[] function cArrayCreateSpell069() global
  Spell[] aArr = New Spell[69]
  return aArr
endfunction
Spell[] function cArrayCreateSpell070() global
  Spell[] aArr = New Spell[70]
  return aArr
endfunction
Spell[] function cArrayCreateSpell071() global
  Spell[] aArr = New Spell[71]
  return aArr
endfunction
Spell[] function cArrayCreateSpell072() global
  Spell[] aArr = New Spell[72]
  return aArr
endfunction
Spell[] function cArrayCreateSpell073() global
  Spell[] aArr = New Spell[73]
  return aArr
endfunction
Spell[] function cArrayCreateSpell074() global
  Spell[] aArr = New Spell[74]
  return aArr
endfunction
Spell[] function cArrayCreateSpell075() global
  Spell[] aArr = New Spell[75]
  return aArr
endfunction
Spell[] function cArrayCreateSpell076() global
  Spell[] aArr = New Spell[76]
  return aArr
endfunction
Spell[] function cArrayCreateSpell077() global
  Spell[] aArr = New Spell[77]
  return aArr
endfunction
Spell[] function cArrayCreateSpell078() global
  Spell[] aArr = New Spell[78]
  return aArr
endfunction
Spell[] function cArrayCreateSpell079() global
  Spell[] aArr = New Spell[79]
  return aArr
endfunction
Spell[] function cArrayCreateSpell080() global
  Spell[] aArr = New Spell[80]
  return aArr
endfunction
Spell[] function cArrayCreateSpell081() global
  Spell[] aArr = New Spell[81]
  return aArr
endfunction
Spell[] function cArrayCreateSpell082() global
  Spell[] aArr = New Spell[82]
  return aArr
endfunction
Spell[] function cArrayCreateSpell083() global
  Spell[] aArr = New Spell[83]
  return aArr
endfunction
Spell[] function cArrayCreateSpell084() global
  Spell[] aArr = New Spell[84]
  return aArr
endfunction
Spell[] function cArrayCreateSpell085() global
  Spell[] aArr = New Spell[85]
  return aArr
endfunction
Spell[] function cArrayCreateSpell086() global
  Spell[] aArr = New Spell[86]
  return aArr
endfunction
Spell[] function cArrayCreateSpell087() global
  Spell[] aArr = New Spell[87]
  return aArr
endfunction
Spell[] function cArrayCreateSpell088() global
  Spell[] aArr = New Spell[88]
  return aArr
endfunction
Spell[] function cArrayCreateSpell089() global
  Spell[] aArr = New Spell[89]
  return aArr
endfunction
Spell[] function cArrayCreateSpell090() global
  Spell[] aArr = New Spell[90]
  return aArr
endfunction
Spell[] function cArrayCreateSpell091() global
  Spell[] aArr = New Spell[91]
  return aArr
endfunction
Spell[] function cArrayCreateSpell092() global
  Spell[] aArr = New Spell[92]
  return aArr
endfunction
Spell[] function cArrayCreateSpell093() global
  Spell[] aArr = New Spell[93]
  return aArr
endfunction
Spell[] function cArrayCreateSpell094() global
  Spell[] aArr = New Spell[94]
  return aArr
endfunction
Spell[] function cArrayCreateSpell095() global
  Spell[] aArr = New Spell[95]
  return aArr
endfunction
Spell[] function cArrayCreateSpell096() global
  Spell[] aArr = New Spell[96]
  return aArr
endfunction
Spell[] function cArrayCreateSpell097() global
  Spell[] aArr = New Spell[97]
  return aArr
endfunction
Spell[] function cArrayCreateSpell098() global
  Spell[] aArr = New Spell[98]
  return aArr
endfunction
Spell[] function cArrayCreateSpell099() global
  Spell[] aArr = New Spell[99]
  return aArr
endfunction
Spell[] function cArrayCreateSpell100() global
  Spell[] aArr = New Spell[100]
  return aArr
endfunction
Spell[] function cArrayCreateSpell101() global
  Spell[] aArr = New Spell[101]
  return aArr
endfunction
Spell[] function cArrayCreateSpell102() global
  Spell[] aArr = New Spell[102]
  return aArr
endfunction
Spell[] function cArrayCreateSpell103() global
  Spell[] aArr = New Spell[103]
  return aArr
endfunction
Spell[] function cArrayCreateSpell104() global
  Spell[] aArr = New Spell[104]
  return aArr
endfunction
Spell[] function cArrayCreateSpell105() global
  Spell[] aArr = New Spell[105]
  return aArr
endfunction
Spell[] function cArrayCreateSpell106() global
  Spell[] aArr = New Spell[106]
  return aArr
endfunction
Spell[] function cArrayCreateSpell107() global
  Spell[] aArr = New Spell[107]
  return aArr
endfunction
Spell[] function cArrayCreateSpell108() global
  Spell[] aArr = New Spell[108]
  return aArr
endfunction
Spell[] function cArrayCreateSpell109() global
  Spell[] aArr = New Spell[109]
  return aArr
endfunction
Spell[] function cArrayCreateSpell110() global
  Spell[] aArr = New Spell[110]
  return aArr
endfunction
Spell[] function cArrayCreateSpell111() global
  Spell[] aArr = New Spell[111]
  return aArr
endfunction
Spell[] function cArrayCreateSpell112() global
  Spell[] aArr = New Spell[112]
  return aArr
endfunction
Spell[] function cArrayCreateSpell113() global
  Spell[] aArr = New Spell[113]
  return aArr
endfunction
Spell[] function cArrayCreateSpell114() global
  Spell[] aArr = New Spell[114]
  return aArr
endfunction
Spell[] function cArrayCreateSpell115() global
  Spell[] aArr = New Spell[115]
  return aArr
endfunction
Spell[] function cArrayCreateSpell116() global
  Spell[] aArr = New Spell[116]
  return aArr
endfunction
Spell[] function cArrayCreateSpell117() global
  Spell[] aArr = New Spell[117]
  return aArr
endfunction
Spell[] function cArrayCreateSpell118() global
  Spell[] aArr = New Spell[118]
  return aArr
endfunction
Spell[] function cArrayCreateSpell119() global
  Spell[] aArr = New Spell[119]
  return aArr
endfunction
Spell[] function cArrayCreateSpell120() global
  Spell[] aArr = New Spell[120]
  return aArr
endfunction
Spell[] function cArrayCreateSpell121() global
  Spell[] aArr = New Spell[121]
  return aArr
endfunction
Spell[] function cArrayCreateSpell122() global
  Spell[] aArr = New Spell[122]
  return aArr
endfunction
Spell[] function cArrayCreateSpell123() global
  Spell[] aArr = New Spell[123]
  return aArr
endfunction
Spell[] function cArrayCreateSpell124() global
  Spell[] aArr = New Spell[124]
  return aArr
endfunction
Spell[] function cArrayCreateSpell125() global
  Spell[] aArr = New Spell[125]
  return aArr
endfunction
Spell[] function cArrayCreateSpell126() global
  Spell[] aArr = New Spell[126]
  return aArr
endfunction
Spell[] function cArrayCreateSpell127() global
  Spell[] aArr = New Spell[127]
  return aArr
endfunction
Spell[] function cArrayCreateSpell128() global
  Spell[] aArr = New Spell[128]
  return aArr
endfunction
