Scriptname cArrayLeveledSpell Hidden

Int function cGetVersion() global
  return 9001
endfunction

LeveledSpell[] function cArrayCreateLeveledSpell(Int indices, LeveledSpell filler = None, Bool outputTrace = TRUE, \
  Bool tryConsoleUtil = TRUE) global
  {Requirements: None}
  LeveledSpell[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; tryConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateLeveledSpell()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayLeveledSpell::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateLeveledSpell001()
              elseif indices < 3
                aArray = cArrayCreateLeveledSpell002()
              elseif indices < 4
                aArray = cArrayCreateLeveledSpell003()
              else
                aArray = cArrayCreateLeveledSpell004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateLeveledSpell005()
              elseif indices < 7
                aArray = cArrayCreateLeveledSpell006()
              elseif indices < 8
                aArray = cArrayCreateLeveledSpell007()
              else
                aArray = cArrayCreateLeveledSpell008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateLeveledSpell009()
              elseif indices < 11
                aArray = cArrayCreateLeveledSpell010()
              elseif indices < 12
                aArray = cArrayCreateLeveledSpell011()
              else
                aArray = cArrayCreateLeveledSpell012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateLeveledSpell013()
              elseif indices < 15
                aArray = cArrayCreateLeveledSpell014()
              elseif indices < 16
                aArray = cArrayCreateLeveledSpell015()
              else
                aArray = cArrayCreateLeveledSpell016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateLeveledSpell017()
              elseif indices < 19
                aArray = cArrayCreateLeveledSpell018()
              elseif indices < 20
                aArray = cArrayCreateLeveledSpell019()
              else
                aArray = cArrayCreateLeveledSpell020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateLeveledSpell021()
              elseif indices < 23
                aArray = cArrayCreateLeveledSpell022()
              elseif indices < 24
                aArray = cArrayCreateLeveledSpell023()
              else
                aArray = cArrayCreateLeveledSpell024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateLeveledSpell025()
              elseif indices < 27
                aArray = cArrayCreateLeveledSpell026()
              elseif indices < 28
                aArray = cArrayCreateLeveledSpell027()
              else
                aArray = cArrayCreateLeveledSpell028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateLeveledSpell029()
              elseif indices < 31
                aArray = cArrayCreateLeveledSpell030()
              elseif indices < 32
                aArray = cArrayCreateLeveledSpell031()
              else
                aArray = cArrayCreateLeveledSpell032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateLeveledSpell033()
              elseif indices < 35
                aArray = cArrayCreateLeveledSpell034()
              elseif indices < 36
                aArray = cArrayCreateLeveledSpell035()
              else
                aArray = cArrayCreateLeveledSpell036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateLeveledSpell037()
              elseif indices < 39
                aArray = cArrayCreateLeveledSpell038()
              elseif indices < 40
                aArray = cArrayCreateLeveledSpell039()
              else
                aArray = cArrayCreateLeveledSpell040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateLeveledSpell041()
              elseif indices < 43
                aArray = cArrayCreateLeveledSpell042()
              elseif indices < 44
                aArray = cArrayCreateLeveledSpell043()
              else
                aArray = cArrayCreateLeveledSpell044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateLeveledSpell045()
              elseif indices < 47
                aArray = cArrayCreateLeveledSpell046()
              elseif indices < 48
                aArray = cArrayCreateLeveledSpell047()
              else
                aArray = cArrayCreateLeveledSpell048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateLeveledSpell049()
              elseif indices < 51
                aArray = cArrayCreateLeveledSpell050()
              elseif indices < 52
                aArray = cArrayCreateLeveledSpell051()
              else
                aArray = cArrayCreateLeveledSpell052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateLeveledSpell053()
              elseif indices < 55
                aArray = cArrayCreateLeveledSpell054()
              elseif indices < 56
                aArray = cArrayCreateLeveledSpell055()
              else
                aArray = cArrayCreateLeveledSpell056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateLeveledSpell057()
              elseif indices < 59
                aArray = cArrayCreateLeveledSpell058()
              elseif indices < 60
                aArray = cArrayCreateLeveledSpell059()
              else
                aArray = cArrayCreateLeveledSpell060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateLeveledSpell061()
              elseif indices < 63
                aArray = cArrayCreateLeveledSpell062()
              elseif indices < 64
                aArray = cArrayCreateLeveledSpell063()
              else
                aArray = cArrayCreateLeveledSpell064()
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
                aArray = cArrayCreateLeveledSpell065()
              elseif indices < 67
                aArray = cArrayCreateLeveledSpell066()
              elseif indices < 68
                aArray = cArrayCreateLeveledSpell067()
              else
                aArray = cArrayCreateLeveledSpell068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateLeveledSpell069()
              elseif indices < 71
                aArray = cArrayCreateLeveledSpell070()
              elseif indices < 72
                aArray = cArrayCreateLeveledSpell071()
              else
                aArray = cArrayCreateLeveledSpell072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateLeveledSpell073()
              elseif indices < 75
                aArray = cArrayCreateLeveledSpell074()
              elseif indices < 76
                aArray = cArrayCreateLeveledSpell075()
              else
                aArray = cArrayCreateLeveledSpell076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateLeveledSpell077()
              elseif indices < 79
                aArray = cArrayCreateLeveledSpell078()
              elseif indices < 80
                aArray = cArrayCreateLeveledSpell079()
              else
                aArray = cArrayCreateLeveledSpell080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateLeveledSpell081()
              elseif indices < 83
                aArray = cArrayCreateLeveledSpell082()
              elseif indices < 84
                aArray = cArrayCreateLeveledSpell083()
              else
                aArray = cArrayCreateLeveledSpell084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateLeveledSpell085()
              elseif indices < 87
                aArray = cArrayCreateLeveledSpell086()
              elseif indices < 88
                aArray = cArrayCreateLeveledSpell087()
              else
                aArray = cArrayCreateLeveledSpell088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateLeveledSpell089()
              elseif indices < 91
                aArray = cArrayCreateLeveledSpell090()
              elseif indices < 92
                aArray = cArrayCreateLeveledSpell091()
              else
                aArray = cArrayCreateLeveledSpell092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateLeveledSpell093()
              elseif indices < 95
                aArray = cArrayCreateLeveledSpell094()
              elseif indices < 96
                aArray = cArrayCreateLeveledSpell095()
              else
                aArray = cArrayCreateLeveledSpell096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateLeveledSpell097()
              elseif indices < 99
                aArray = cArrayCreateLeveledSpell098()
              elseif indices < 100
                aArray = cArrayCreateLeveledSpell099()
              else
                aArray = cArrayCreateLeveledSpell100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateLeveledSpell101()
              elseif indices < 103
                aArray = cArrayCreateLeveledSpell102()
              elseif indices < 104
                aArray = cArrayCreateLeveledSpell103()
              else
                aArray = cArrayCreateLeveledSpell104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateLeveledSpell105()
              elseif indices < 107
                aArray = cArrayCreateLeveledSpell106()
              elseif indices < 108
                aArray = cArrayCreateLeveledSpell107()
              else
                aArray = cArrayCreateLeveledSpell108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateLeveledSpell109()
              elseif indices < 111
                aArray = cArrayCreateLeveledSpell110()
              elseif indices < 112
                aArray = cArrayCreateLeveledSpell111()
              else
                aArray = cArrayCreateLeveledSpell112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateLeveledSpell113()
              elseif indices < 115
                aArray = cArrayCreateLeveledSpell114()
              elseif indices < 116
                aArray = cArrayCreateLeveledSpell115()
              else
                aArray = cArrayCreateLeveledSpell116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateLeveledSpell117()
              elseif indices < 119
                aArray = cArrayCreateLeveledSpell118()
              elseif indices < 120
                aArray = cArrayCreateLeveledSpell119()
              else
                aArray = cArrayCreateLeveledSpell120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateLeveledSpell121()
              elseif indices < 123
                aArray = cArrayCreateLeveledSpell122()
              elseif indices < 124
                aArray = cArrayCreateLeveledSpell123()
              else
                aArray = cArrayCreateLeveledSpell124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateLeveledSpell125()
              elseif indices < 127
                aArray = cArrayCreateLeveledSpell126()
              elseif indices < 128
                aArray = cArrayCreateLeveledSpell127()
              else
                aArray = cArrayCreateLeveledSpell128()
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

LeveledSpell[] function cArrayCreateLeveledSpell001() global
  LeveledSpell[] aArr = New LeveledSpell[1]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell002() global
  LeveledSpell[] aArr = New LeveledSpell[2]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell003() global
  LeveledSpell[] aArr = New LeveledSpell[3]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell004() global
  LeveledSpell[] aArr = New LeveledSpell[4]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell005() global
  LeveledSpell[] aArr = New LeveledSpell[5]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell006() global
  LeveledSpell[] aArr = New LeveledSpell[6]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell007() global
  LeveledSpell[] aArr = New LeveledSpell[7]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell008() global
  LeveledSpell[] aArr = New LeveledSpell[8]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell009() global
  LeveledSpell[] aArr = New LeveledSpell[9]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell010() global
  LeveledSpell[] aArr = New LeveledSpell[10]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell011() global
  LeveledSpell[] aArr = New LeveledSpell[11]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell012() global
  LeveledSpell[] aArr = New LeveledSpell[12]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell013() global
  LeveledSpell[] aArr = New LeveledSpell[13]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell014() global
  LeveledSpell[] aArr = New LeveledSpell[14]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell015() global
  LeveledSpell[] aArr = New LeveledSpell[15]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell016() global
  LeveledSpell[] aArr = New LeveledSpell[16]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell017() global
  LeveledSpell[] aArr = New LeveledSpell[17]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell018() global
  LeveledSpell[] aArr = New LeveledSpell[18]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell019() global
  LeveledSpell[] aArr = New LeveledSpell[19]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell020() global
  LeveledSpell[] aArr = New LeveledSpell[20]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell021() global
  LeveledSpell[] aArr = New LeveledSpell[21]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell022() global
  LeveledSpell[] aArr = New LeveledSpell[22]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell023() global
  LeveledSpell[] aArr = New LeveledSpell[23]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell024() global
  LeveledSpell[] aArr = New LeveledSpell[24]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell025() global
  LeveledSpell[] aArr = New LeveledSpell[25]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell026() global
  LeveledSpell[] aArr = New LeveledSpell[26]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell027() global
  LeveledSpell[] aArr = New LeveledSpell[27]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell028() global
  LeveledSpell[] aArr = New LeveledSpell[28]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell029() global
  LeveledSpell[] aArr = New LeveledSpell[29]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell030() global
  LeveledSpell[] aArr = New LeveledSpell[30]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell031() global
  LeveledSpell[] aArr = New LeveledSpell[31]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell032() global
  LeveledSpell[] aArr = New LeveledSpell[32]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell033() global
  LeveledSpell[] aArr = New LeveledSpell[33]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell034() global
  LeveledSpell[] aArr = New LeveledSpell[34]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell035() global
  LeveledSpell[] aArr = New LeveledSpell[35]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell036() global
  LeveledSpell[] aArr = New LeveledSpell[36]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell037() global
  LeveledSpell[] aArr = New LeveledSpell[37]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell038() global
  LeveledSpell[] aArr = New LeveledSpell[38]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell039() global
  LeveledSpell[] aArr = New LeveledSpell[39]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell040() global
  LeveledSpell[] aArr = New LeveledSpell[40]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell041() global
  LeveledSpell[] aArr = New LeveledSpell[41]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell042() global
  LeveledSpell[] aArr = New LeveledSpell[42]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell043() global
  LeveledSpell[] aArr = New LeveledSpell[43]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell044() global
  LeveledSpell[] aArr = New LeveledSpell[44]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell045() global
  LeveledSpell[] aArr = New LeveledSpell[45]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell046() global
  LeveledSpell[] aArr = New LeveledSpell[46]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell047() global
  LeveledSpell[] aArr = New LeveledSpell[47]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell048() global
  LeveledSpell[] aArr = New LeveledSpell[48]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell049() global
  LeveledSpell[] aArr = New LeveledSpell[49]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell050() global
  LeveledSpell[] aArr = New LeveledSpell[50]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell051() global
  LeveledSpell[] aArr = New LeveledSpell[51]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell052() global
  LeveledSpell[] aArr = New LeveledSpell[52]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell053() global
  LeveledSpell[] aArr = New LeveledSpell[53]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell054() global
  LeveledSpell[] aArr = New LeveledSpell[54]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell055() global
  LeveledSpell[] aArr = New LeveledSpell[55]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell056() global
  LeveledSpell[] aArr = New LeveledSpell[56]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell057() global
  LeveledSpell[] aArr = New LeveledSpell[57]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell058() global
  LeveledSpell[] aArr = New LeveledSpell[58]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell059() global
  LeveledSpell[] aArr = New LeveledSpell[59]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell060() global
  LeveledSpell[] aArr = New LeveledSpell[60]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell061() global
  LeveledSpell[] aArr = New LeveledSpell[61]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell062() global
  LeveledSpell[] aArr = New LeveledSpell[62]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell063() global
  LeveledSpell[] aArr = New LeveledSpell[63]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell064() global
  LeveledSpell[] aArr = New LeveledSpell[64]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell065() global
  LeveledSpell[] aArr = New LeveledSpell[65]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell066() global
  LeveledSpell[] aArr = New LeveledSpell[66]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell067() global
  LeveledSpell[] aArr = New LeveledSpell[67]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell068() global
  LeveledSpell[] aArr = New LeveledSpell[68]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell069() global
  LeveledSpell[] aArr = New LeveledSpell[69]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell070() global
  LeveledSpell[] aArr = New LeveledSpell[70]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell071() global
  LeveledSpell[] aArr = New LeveledSpell[71]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell072() global
  LeveledSpell[] aArr = New LeveledSpell[72]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell073() global
  LeveledSpell[] aArr = New LeveledSpell[73]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell074() global
  LeveledSpell[] aArr = New LeveledSpell[74]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell075() global
  LeveledSpell[] aArr = New LeveledSpell[75]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell076() global
  LeveledSpell[] aArr = New LeveledSpell[76]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell077() global
  LeveledSpell[] aArr = New LeveledSpell[77]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell078() global
  LeveledSpell[] aArr = New LeveledSpell[78]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell079() global
  LeveledSpell[] aArr = New LeveledSpell[79]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell080() global
  LeveledSpell[] aArr = New LeveledSpell[80]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell081() global
  LeveledSpell[] aArr = New LeveledSpell[81]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell082() global
  LeveledSpell[] aArr = New LeveledSpell[82]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell083() global
  LeveledSpell[] aArr = New LeveledSpell[83]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell084() global
  LeveledSpell[] aArr = New LeveledSpell[84]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell085() global
  LeveledSpell[] aArr = New LeveledSpell[85]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell086() global
  LeveledSpell[] aArr = New LeveledSpell[86]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell087() global
  LeveledSpell[] aArr = New LeveledSpell[87]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell088() global
  LeveledSpell[] aArr = New LeveledSpell[88]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell089() global
  LeveledSpell[] aArr = New LeveledSpell[89]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell090() global
  LeveledSpell[] aArr = New LeveledSpell[90]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell091() global
  LeveledSpell[] aArr = New LeveledSpell[91]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell092() global
  LeveledSpell[] aArr = New LeveledSpell[92]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell093() global
  LeveledSpell[] aArr = New LeveledSpell[93]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell094() global
  LeveledSpell[] aArr = New LeveledSpell[94]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell095() global
  LeveledSpell[] aArr = New LeveledSpell[95]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell096() global
  LeveledSpell[] aArr = New LeveledSpell[96]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell097() global
  LeveledSpell[] aArr = New LeveledSpell[97]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell098() global
  LeveledSpell[] aArr = New LeveledSpell[98]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell099() global
  LeveledSpell[] aArr = New LeveledSpell[99]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell100() global
  LeveledSpell[] aArr = New LeveledSpell[100]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell101() global
  LeveledSpell[] aArr = New LeveledSpell[101]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell102() global
  LeveledSpell[] aArr = New LeveledSpell[102]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell103() global
  LeveledSpell[] aArr = New LeveledSpell[103]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell104() global
  LeveledSpell[] aArr = New LeveledSpell[104]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell105() global
  LeveledSpell[] aArr = New LeveledSpell[105]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell106() global
  LeveledSpell[] aArr = New LeveledSpell[106]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell107() global
  LeveledSpell[] aArr = New LeveledSpell[107]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell108() global
  LeveledSpell[] aArr = New LeveledSpell[108]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell109() global
  LeveledSpell[] aArr = New LeveledSpell[109]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell110() global
  LeveledSpell[] aArr = New LeveledSpell[110]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell111() global
  LeveledSpell[] aArr = New LeveledSpell[111]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell112() global
  LeveledSpell[] aArr = New LeveledSpell[112]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell113() global
  LeveledSpell[] aArr = New LeveledSpell[113]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell114() global
  LeveledSpell[] aArr = New LeveledSpell[114]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell115() global
  LeveledSpell[] aArr = New LeveledSpell[115]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell116() global
  LeveledSpell[] aArr = New LeveledSpell[116]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell117() global
  LeveledSpell[] aArr = New LeveledSpell[117]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell118() global
  LeveledSpell[] aArr = New LeveledSpell[118]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell119() global
  LeveledSpell[] aArr = New LeveledSpell[119]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell120() global
  LeveledSpell[] aArr = New LeveledSpell[120]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell121() global
  LeveledSpell[] aArr = New LeveledSpell[121]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell122() global
  LeveledSpell[] aArr = New LeveledSpell[122]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell123() global
  LeveledSpell[] aArr = New LeveledSpell[123]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell124() global
  LeveledSpell[] aArr = New LeveledSpell[124]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell125() global
  LeveledSpell[] aArr = New LeveledSpell[125]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell126() global
  LeveledSpell[] aArr = New LeveledSpell[126]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell127() global
  LeveledSpell[] aArr = New LeveledSpell[127]
  return aArr
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell128() global
  LeveledSpell[] aArr = New LeveledSpell[128]
  return aArr
endfunction
