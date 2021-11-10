Scriptname cArrayWeapon Hidden

Int function cGetVersion() global
  return 9001
endfunction

Weapon[] function cArrayCreateWeapon(Int indices, Weapon filler = None, Bool outputTrace = TRUE, \
  Bool tryConsoleUtil = TRUE) global
  {Requirements: None}
  Weapon[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace Weapons
    ; tryConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateWeapon()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayWeapon::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateWeapon001()
              elseif indices < 3
                aArray = cArrayCreateWeapon002()
              elseif indices < 4
                aArray = cArrayCreateWeapon003()
              else
                aArray = cArrayCreateWeapon004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateWeapon005()
              elseif indices < 7
                aArray = cArrayCreateWeapon006()
              elseif indices < 8
                aArray = cArrayCreateWeapon007()
              else
                aArray = cArrayCreateWeapon008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateWeapon009()
              elseif indices < 11
                aArray = cArrayCreateWeapon010()
              elseif indices < 12
                aArray = cArrayCreateWeapon011()
              else
                aArray = cArrayCreateWeapon012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateWeapon013()
              elseif indices < 15
                aArray = cArrayCreateWeapon014()
              elseif indices < 16
                aArray = cArrayCreateWeapon015()
              else
                aArray = cArrayCreateWeapon016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateWeapon017()
              elseif indices < 19
                aArray = cArrayCreateWeapon018()
              elseif indices < 20
                aArray = cArrayCreateWeapon019()
              else
                aArray = cArrayCreateWeapon020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateWeapon021()
              elseif indices < 23
                aArray = cArrayCreateWeapon022()
              elseif indices < 24
                aArray = cArrayCreateWeapon023()
              else
                aArray = cArrayCreateWeapon024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateWeapon025()
              elseif indices < 27
                aArray = cArrayCreateWeapon026()
              elseif indices < 28
                aArray = cArrayCreateWeapon027()
              else
                aArray = cArrayCreateWeapon028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateWeapon029()
              elseif indices < 31
                aArray = cArrayCreateWeapon030()
              elseif indices < 32
                aArray = cArrayCreateWeapon031()
              else
                aArray = cArrayCreateWeapon032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateWeapon033()
              elseif indices < 35
                aArray = cArrayCreateWeapon034()
              elseif indices < 36
                aArray = cArrayCreateWeapon035()
              else
                aArray = cArrayCreateWeapon036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateWeapon037()
              elseif indices < 39
                aArray = cArrayCreateWeapon038()
              elseif indices < 40
                aArray = cArrayCreateWeapon039()
              else
                aArray = cArrayCreateWeapon040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateWeapon041()
              elseif indices < 43
                aArray = cArrayCreateWeapon042()
              elseif indices < 44
                aArray = cArrayCreateWeapon043()
              else
                aArray = cArrayCreateWeapon044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateWeapon045()
              elseif indices < 47
                aArray = cArrayCreateWeapon046()
              elseif indices < 48
                aArray = cArrayCreateWeapon047()
              else
                aArray = cArrayCreateWeapon048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateWeapon049()
              elseif indices < 51
                aArray = cArrayCreateWeapon050()
              elseif indices < 52
                aArray = cArrayCreateWeapon051()
              else
                aArray = cArrayCreateWeapon052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateWeapon053()
              elseif indices < 55
                aArray = cArrayCreateWeapon054()
              elseif indices < 56
                aArray = cArrayCreateWeapon055()
              else
                aArray = cArrayCreateWeapon056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateWeapon057()
              elseif indices < 59
                aArray = cArrayCreateWeapon058()
              elseif indices < 60
                aArray = cArrayCreateWeapon059()
              else
                aArray = cArrayCreateWeapon060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateWeapon061()
              elseif indices < 63
                aArray = cArrayCreateWeapon062()
              elseif indices < 64
                aArray = cArrayCreateWeapon063()
              else
                aArray = cArrayCreateWeapon064()
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
                aArray = cArrayCreateWeapon065()
              elseif indices < 67
                aArray = cArrayCreateWeapon066()
              elseif indices < 68
                aArray = cArrayCreateWeapon067()
              else
                aArray = cArrayCreateWeapon068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateWeapon069()
              elseif indices < 71
                aArray = cArrayCreateWeapon070()
              elseif indices < 72
                aArray = cArrayCreateWeapon071()
              else
                aArray = cArrayCreateWeapon072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateWeapon073()
              elseif indices < 75
                aArray = cArrayCreateWeapon074()
              elseif indices < 76
                aArray = cArrayCreateWeapon075()
              else
                aArray = cArrayCreateWeapon076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateWeapon077()
              elseif indices < 79
                aArray = cArrayCreateWeapon078()
              elseif indices < 80
                aArray = cArrayCreateWeapon079()
              else
                aArray = cArrayCreateWeapon080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateWeapon081()
              elseif indices < 83
                aArray = cArrayCreateWeapon082()
              elseif indices < 84
                aArray = cArrayCreateWeapon083()
              else
                aArray = cArrayCreateWeapon084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateWeapon085()
              elseif indices < 87
                aArray = cArrayCreateWeapon086()
              elseif indices < 88
                aArray = cArrayCreateWeapon087()
              else
                aArray = cArrayCreateWeapon088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateWeapon089()
              elseif indices < 91
                aArray = cArrayCreateWeapon090()
              elseif indices < 92
                aArray = cArrayCreateWeapon091()
              else
                aArray = cArrayCreateWeapon092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateWeapon093()
              elseif indices < 95
                aArray = cArrayCreateWeapon094()
              elseif indices < 96
                aArray = cArrayCreateWeapon095()
              else
                aArray = cArrayCreateWeapon096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateWeapon097()
              elseif indices < 99
                aArray = cArrayCreateWeapon098()
              elseif indices < 100
                aArray = cArrayCreateWeapon099()
              else
                aArray = cArrayCreateWeapon100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateWeapon101()
              elseif indices < 103
                aArray = cArrayCreateWeapon102()
              elseif indices < 104
                aArray = cArrayCreateWeapon103()
              else
                aArray = cArrayCreateWeapon104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateWeapon105()
              elseif indices < 107
                aArray = cArrayCreateWeapon106()
              elseif indices < 108
                aArray = cArrayCreateWeapon107()
              else
                aArray = cArrayCreateWeapon108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateWeapon109()
              elseif indices < 111
                aArray = cArrayCreateWeapon110()
              elseif indices < 112
                aArray = cArrayCreateWeapon111()
              else
                aArray = cArrayCreateWeapon112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateWeapon113()
              elseif indices < 115
                aArray = cArrayCreateWeapon114()
              elseif indices < 116
                aArray = cArrayCreateWeapon115()
              else
                aArray = cArrayCreateWeapon116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateWeapon117()
              elseif indices < 119
                aArray = cArrayCreateWeapon118()
              elseif indices < 120
                aArray = cArrayCreateWeapon119()
              else
                aArray = cArrayCreateWeapon120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateWeapon121()
              elseif indices < 123
                aArray = cArrayCreateWeapon122()
              elseif indices < 124
                aArray = cArrayCreateWeapon123()
              else
                aArray = cArrayCreateWeapon124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateWeapon125()
              elseif indices < 127
                aArray = cArrayCreateWeapon126()
              elseif indices < 128
                aArray = cArrayCreateWeapon127()
              else
                aArray = cArrayCreateWeapon128()
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

Weapon[] function cArrayCreateWeapon001() global
  Weapon[] aArr = New Weapon[1]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon002() global
  Weapon[] aArr = New Weapon[2]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon003() global
  Weapon[] aArr = New Weapon[3]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon004() global
  Weapon[] aArr = New Weapon[4]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon005() global
  Weapon[] aArr = New Weapon[5]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon006() global
  Weapon[] aArr = New Weapon[6]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon007() global
  Weapon[] aArr = New Weapon[7]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon008() global
  Weapon[] aArr = New Weapon[8]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon009() global
  Weapon[] aArr = New Weapon[9]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon010() global
  Weapon[] aArr = New Weapon[10]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon011() global
  Weapon[] aArr = New Weapon[11]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon012() global
  Weapon[] aArr = New Weapon[12]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon013() global
  Weapon[] aArr = New Weapon[13]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon014() global
  Weapon[] aArr = New Weapon[14]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon015() global
  Weapon[] aArr = New Weapon[15]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon016() global
  Weapon[] aArr = New Weapon[16]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon017() global
  Weapon[] aArr = New Weapon[17]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon018() global
  Weapon[] aArr = New Weapon[18]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon019() global
  Weapon[] aArr = New Weapon[19]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon020() global
  Weapon[] aArr = New Weapon[20]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon021() global
  Weapon[] aArr = New Weapon[21]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon022() global
  Weapon[] aArr = New Weapon[22]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon023() global
  Weapon[] aArr = New Weapon[23]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon024() global
  Weapon[] aArr = New Weapon[24]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon025() global
  Weapon[] aArr = New Weapon[25]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon026() global
  Weapon[] aArr = New Weapon[26]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon027() global
  Weapon[] aArr = New Weapon[27]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon028() global
  Weapon[] aArr = New Weapon[28]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon029() global
  Weapon[] aArr = New Weapon[29]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon030() global
  Weapon[] aArr = New Weapon[30]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon031() global
  Weapon[] aArr = New Weapon[31]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon032() global
  Weapon[] aArr = New Weapon[32]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon033() global
  Weapon[] aArr = New Weapon[33]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon034() global
  Weapon[] aArr = New Weapon[34]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon035() global
  Weapon[] aArr = New Weapon[35]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon036() global
  Weapon[] aArr = New Weapon[36]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon037() global
  Weapon[] aArr = New Weapon[37]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon038() global
  Weapon[] aArr = New Weapon[38]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon039() global
  Weapon[] aArr = New Weapon[39]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon040() global
  Weapon[] aArr = New Weapon[40]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon041() global
  Weapon[] aArr = New Weapon[41]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon042() global
  Weapon[] aArr = New Weapon[42]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon043() global
  Weapon[] aArr = New Weapon[43]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon044() global
  Weapon[] aArr = New Weapon[44]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon045() global
  Weapon[] aArr = New Weapon[45]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon046() global
  Weapon[] aArr = New Weapon[46]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon047() global
  Weapon[] aArr = New Weapon[47]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon048() global
  Weapon[] aArr = New Weapon[48]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon049() global
  Weapon[] aArr = New Weapon[49]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon050() global
  Weapon[] aArr = New Weapon[50]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon051() global
  Weapon[] aArr = New Weapon[51]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon052() global
  Weapon[] aArr = New Weapon[52]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon053() global
  Weapon[] aArr = New Weapon[53]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon054() global
  Weapon[] aArr = New Weapon[54]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon055() global
  Weapon[] aArr = New Weapon[55]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon056() global
  Weapon[] aArr = New Weapon[56]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon057() global
  Weapon[] aArr = New Weapon[57]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon058() global
  Weapon[] aArr = New Weapon[58]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon059() global
  Weapon[] aArr = New Weapon[59]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon060() global
  Weapon[] aArr = New Weapon[60]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon061() global
  Weapon[] aArr = New Weapon[61]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon062() global
  Weapon[] aArr = New Weapon[62]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon063() global
  Weapon[] aArr = New Weapon[63]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon064() global
  Weapon[] aArr = New Weapon[64]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon065() global
  Weapon[] aArr = New Weapon[65]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon066() global
  Weapon[] aArr = New Weapon[66]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon067() global
  Weapon[] aArr = New Weapon[67]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon068() global
  Weapon[] aArr = New Weapon[68]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon069() global
  Weapon[] aArr = New Weapon[69]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon070() global
  Weapon[] aArr = New Weapon[70]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon071() global
  Weapon[] aArr = New Weapon[71]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon072() global
  Weapon[] aArr = New Weapon[72]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon073() global
  Weapon[] aArr = New Weapon[73]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon074() global
  Weapon[] aArr = New Weapon[74]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon075() global
  Weapon[] aArr = New Weapon[75]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon076() global
  Weapon[] aArr = New Weapon[76]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon077() global
  Weapon[] aArr = New Weapon[77]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon078() global
  Weapon[] aArr = New Weapon[78]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon079() global
  Weapon[] aArr = New Weapon[79]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon080() global
  Weapon[] aArr = New Weapon[80]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon081() global
  Weapon[] aArr = New Weapon[81]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon082() global
  Weapon[] aArr = New Weapon[82]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon083() global
  Weapon[] aArr = New Weapon[83]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon084() global
  Weapon[] aArr = New Weapon[84]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon085() global
  Weapon[] aArr = New Weapon[85]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon086() global
  Weapon[] aArr = New Weapon[86]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon087() global
  Weapon[] aArr = New Weapon[87]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon088() global
  Weapon[] aArr = New Weapon[88]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon089() global
  Weapon[] aArr = New Weapon[89]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon090() global
  Weapon[] aArr = New Weapon[90]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon091() global
  Weapon[] aArr = New Weapon[91]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon092() global
  Weapon[] aArr = New Weapon[92]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon093() global
  Weapon[] aArr = New Weapon[93]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon094() global
  Weapon[] aArr = New Weapon[94]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon095() global
  Weapon[] aArr = New Weapon[95]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon096() global
  Weapon[] aArr = New Weapon[96]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon097() global
  Weapon[] aArr = New Weapon[97]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon098() global
  Weapon[] aArr = New Weapon[98]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon099() global
  Weapon[] aArr = New Weapon[99]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon100() global
  Weapon[] aArr = New Weapon[100]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon101() global
  Weapon[] aArr = New Weapon[101]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon102() global
  Weapon[] aArr = New Weapon[102]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon103() global
  Weapon[] aArr = New Weapon[103]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon104() global
  Weapon[] aArr = New Weapon[104]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon105() global
  Weapon[] aArr = New Weapon[105]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon106() global
  Weapon[] aArr = New Weapon[106]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon107() global
  Weapon[] aArr = New Weapon[107]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon108() global
  Weapon[] aArr = New Weapon[108]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon109() global
  Weapon[] aArr = New Weapon[109]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon110() global
  Weapon[] aArr = New Weapon[110]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon111() global
  Weapon[] aArr = New Weapon[111]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon112() global
  Weapon[] aArr = New Weapon[112]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon113() global
  Weapon[] aArr = New Weapon[113]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon114() global
  Weapon[] aArr = New Weapon[114]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon115() global
  Weapon[] aArr = New Weapon[115]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon116() global
  Weapon[] aArr = New Weapon[116]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon117() global
  Weapon[] aArr = New Weapon[117]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon118() global
  Weapon[] aArr = New Weapon[118]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon119() global
  Weapon[] aArr = New Weapon[119]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon120() global
  Weapon[] aArr = New Weapon[120]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon121() global
  Weapon[] aArr = New Weapon[121]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon122() global
  Weapon[] aArr = New Weapon[122]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon123() global
  Weapon[] aArr = New Weapon[123]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon124() global
  Weapon[] aArr = New Weapon[124]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon125() global
  Weapon[] aArr = New Weapon[125]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon126() global
  Weapon[] aArr = New Weapon[126]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon127() global
  Weapon[] aArr = New Weapon[127]
  return aArr
endfunction
Weapon[] function cArrayCreateWeapon128() global
  Weapon[] aArr = New Weapon[128]
  return aArr
endfunction
