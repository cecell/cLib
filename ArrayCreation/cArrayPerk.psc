Scriptname cArrayPerk Hidden


Perk[] function cArrayCreatePerk(Int indices, Perk filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  Perk[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace Perks
    if outputTrace
      String msg = "cArrayCreatePerk()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayPerk::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreatePerk001()
              elseif indices < 3
                return cArrayCreatePerk002()
              elseif indices < 4
                return cArrayCreatePerk003()
              else
                return cArrayCreatePerk004()
              endif
            else
              if indices < 6
                return cArrayCreatePerk005()
              elseif indices < 7
                return cArrayCreatePerk006()
              elseif indices < 8
                return cArrayCreatePerk007()
              else
                return cArrayCreatePerk008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreatePerk009()
              elseif indices < 11
                return cArrayCreatePerk010()
              elseif indices < 12
                return cArrayCreatePerk011()
              else
                return cArrayCreatePerk012()
              endif
            else
              if indices < 14
                return cArrayCreatePerk013()
              elseif indices < 15
                return cArrayCreatePerk014()
              elseif indices < 16
                return cArrayCreatePerk015()
              else
                return cArrayCreatePerk016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreatePerk017()
              elseif indices < 19
                return cArrayCreatePerk018()
              elseif indices < 20
                return cArrayCreatePerk019()
              else
                return cArrayCreatePerk020()
              endif
            else
              if indices < 22
                return cArrayCreatePerk021()
              elseif indices < 23
                return cArrayCreatePerk022()
              elseif indices < 24
                return cArrayCreatePerk023()
              else
                return cArrayCreatePerk024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreatePerk025()
              elseif indices < 27
                return cArrayCreatePerk026()
              elseif indices < 28
                return cArrayCreatePerk027()
              else
                return cArrayCreatePerk028()
              endif
            else
              if indices < 30
                return cArrayCreatePerk029()
              elseif indices < 31
                return cArrayCreatePerk030()
              elseif indices < 32
                return cArrayCreatePerk031()
              else
                return cArrayCreatePerk032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreatePerk033()
              elseif indices < 35
                return cArrayCreatePerk034()
              elseif indices < 36
                return cArrayCreatePerk035()
              else
                return cArrayCreatePerk036()
              endif
            else
              if indices < 38
                return cArrayCreatePerk037()
              elseif indices < 39
                return cArrayCreatePerk038()
              elseif indices < 40
                return cArrayCreatePerk039()
              else
                return cArrayCreatePerk040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreatePerk041()
              elseif indices < 43
                return cArrayCreatePerk042()
              elseif indices < 44
                return cArrayCreatePerk043()
              else
                return cArrayCreatePerk044()
              endif
            else
              if indices < 46
                return cArrayCreatePerk045()
              elseif indices < 47
                return cArrayCreatePerk046()
              elseif indices < 48
                return cArrayCreatePerk047()
              else
                return cArrayCreatePerk048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreatePerk049()
              elseif indices < 51
                return cArrayCreatePerk050()
              elseif indices < 52
                return cArrayCreatePerk051()
              else
                return cArrayCreatePerk052()
              endif
            else
              if indices < 54
                return cArrayCreatePerk053()
              elseif indices < 55
                return cArrayCreatePerk054()
              elseif indices < 56
                return cArrayCreatePerk055()
              else
                return cArrayCreatePerk056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreatePerk057()
              elseif indices < 59
                return cArrayCreatePerk058()
              elseif indices < 60
                return cArrayCreatePerk059()
              else
                return cArrayCreatePerk060()
              endif
            else
              if indices < 62
                return cArrayCreatePerk061()
              elseif indices < 63
                return cArrayCreatePerk062()
              elseif indices < 64
                return cArrayCreatePerk063()
              else
                return cArrayCreatePerk064()
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
                return cArrayCreatePerk065()
              elseif indices < 67
                return cArrayCreatePerk066()
              elseif indices < 68
                return cArrayCreatePerk067()
              else
                return cArrayCreatePerk068()
              endif
            else
              if indices < 70
                return cArrayCreatePerk069()
              elseif indices < 71
                return cArrayCreatePerk070()
              elseif indices < 72
                return cArrayCreatePerk071()
              else
                return cArrayCreatePerk072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreatePerk073()
              elseif indices < 75
                return cArrayCreatePerk074()
              elseif indices < 76
                return cArrayCreatePerk075()
              else
                return cArrayCreatePerk076()
              endif
            else
              if indices < 78
                return cArrayCreatePerk077()
              elseif indices < 79
                return cArrayCreatePerk078()
              elseif indices < 80
                return cArrayCreatePerk079()
              else
                return cArrayCreatePerk080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreatePerk081()
              elseif indices < 83
                return cArrayCreatePerk082()
              elseif indices < 84
                return cArrayCreatePerk083()
              else
                return cArrayCreatePerk084()
              endif
            else
              if indices < 86
                return cArrayCreatePerk085()
              elseif indices < 87
                return cArrayCreatePerk086()
              elseif indices < 88
                return cArrayCreatePerk087()
              else
                return cArrayCreatePerk088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreatePerk089()
              elseif indices < 91
                return cArrayCreatePerk090()
              elseif indices < 92
                return cArrayCreatePerk091()
              else
                return cArrayCreatePerk092()
              endif
            else
              if indices < 94
                return cArrayCreatePerk093()
              elseif indices < 95
                return cArrayCreatePerk094()
              elseif indices < 96
                return cArrayCreatePerk095()
              else
                return cArrayCreatePerk096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreatePerk097()
              elseif indices < 99
                return cArrayCreatePerk098()
              elseif indices < 100
                return cArrayCreatePerk099()
              else
                return cArrayCreatePerk100()
              endif
            else
              if indices < 102
                return cArrayCreatePerk101()
              elseif indices < 103
                return cArrayCreatePerk102()
              elseif indices < 104
                return cArrayCreatePerk103()
              else
                return cArrayCreatePerk104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreatePerk105()
              elseif indices < 107
                return cArrayCreatePerk106()
              elseif indices < 108
                return cArrayCreatePerk107()
              else
                return cArrayCreatePerk108()
              endif
            else
              if indices < 110
                return cArrayCreatePerk109()
              elseif indices < 111
                return cArrayCreatePerk110()
              elseif indices < 112
                return cArrayCreatePerk111()
              else
                return cArrayCreatePerk112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreatePerk113()
              elseif indices < 115
                return cArrayCreatePerk114()
              elseif indices < 116
                return cArrayCreatePerk115()
              else
                return cArrayCreatePerk116()
              endif
            else
              if indices < 118
                return cArrayCreatePerk117()
              elseif indices < 119
                return cArrayCreatePerk118()
              elseif indices < 120
                return cArrayCreatePerk119()
              else
                return cArrayCreatePerk120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreatePerk121()
              elseif indices < 123
                return cArrayCreatePerk122()
              elseif indices < 124
                return cArrayCreatePerk123()
              else
                return cArrayCreatePerk124()
              endif
            else
              if indices < 126
                return cArrayCreatePerk125()
              elseif indices < 127
                return cArrayCreatePerk126()
              elseif indices < 128
                return cArrayCreatePerk127()
              else
                return cArrayCreatePerk128()
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

Perk[] function cArrayCreatePerk001() global
  Perk[] aArr = New Perk[1]
  return aArr
endfunction
Perk[] function cArrayCreatePerk002() global
  Perk[] aArr = New Perk[2]
  return aArr
endfunction
Perk[] function cArrayCreatePerk003() global
  Perk[] aArr = New Perk[3]
  return aArr
endfunction
Perk[] function cArrayCreatePerk004() global
  Perk[] aArr = New Perk[4]
  return aArr
endfunction
Perk[] function cArrayCreatePerk005() global
  Perk[] aArr = New Perk[5]
  return aArr
endfunction
Perk[] function cArrayCreatePerk006() global
  Perk[] aArr = New Perk[6]
  return aArr
endfunction
Perk[] function cArrayCreatePerk007() global
  Perk[] aArr = New Perk[7]
  return aArr
endfunction
Perk[] function cArrayCreatePerk008() global
  Perk[] aArr = New Perk[8]
  return aArr
endfunction
Perk[] function cArrayCreatePerk009() global
  Perk[] aArr = New Perk[9]
  return aArr
endfunction
Perk[] function cArrayCreatePerk010() global
  Perk[] aArr = New Perk[10]
  return aArr
endfunction
Perk[] function cArrayCreatePerk011() global
  Perk[] aArr = New Perk[11]
  return aArr
endfunction
Perk[] function cArrayCreatePerk012() global
  Perk[] aArr = New Perk[12]
  return aArr
endfunction
Perk[] function cArrayCreatePerk013() global
  Perk[] aArr = New Perk[13]
  return aArr
endfunction
Perk[] function cArrayCreatePerk014() global
  Perk[] aArr = New Perk[14]
  return aArr
endfunction
Perk[] function cArrayCreatePerk015() global
  Perk[] aArr = New Perk[15]
  return aArr
endfunction
Perk[] function cArrayCreatePerk016() global
  Perk[] aArr = New Perk[16]
  return aArr
endfunction
Perk[] function cArrayCreatePerk017() global
  Perk[] aArr = New Perk[17]
  return aArr
endfunction
Perk[] function cArrayCreatePerk018() global
  Perk[] aArr = New Perk[18]
  return aArr
endfunction
Perk[] function cArrayCreatePerk019() global
  Perk[] aArr = New Perk[19]
  return aArr
endfunction
Perk[] function cArrayCreatePerk020() global
  Perk[] aArr = New Perk[20]
  return aArr
endfunction
Perk[] function cArrayCreatePerk021() global
  Perk[] aArr = New Perk[21]
  return aArr
endfunction
Perk[] function cArrayCreatePerk022() global
  Perk[] aArr = New Perk[22]
  return aArr
endfunction
Perk[] function cArrayCreatePerk023() global
  Perk[] aArr = New Perk[23]
  return aArr
endfunction
Perk[] function cArrayCreatePerk024() global
  Perk[] aArr = New Perk[24]
  return aArr
endfunction
Perk[] function cArrayCreatePerk025() global
  Perk[] aArr = New Perk[25]
  return aArr
endfunction
Perk[] function cArrayCreatePerk026() global
  Perk[] aArr = New Perk[26]
  return aArr
endfunction
Perk[] function cArrayCreatePerk027() global
  Perk[] aArr = New Perk[27]
  return aArr
endfunction
Perk[] function cArrayCreatePerk028() global
  Perk[] aArr = New Perk[28]
  return aArr
endfunction
Perk[] function cArrayCreatePerk029() global
  Perk[] aArr = New Perk[29]
  return aArr
endfunction
Perk[] function cArrayCreatePerk030() global
  Perk[] aArr = New Perk[30]
  return aArr
endfunction
Perk[] function cArrayCreatePerk031() global
  Perk[] aArr = New Perk[31]
  return aArr
endfunction
Perk[] function cArrayCreatePerk032() global
  Perk[] aArr = New Perk[32]
  return aArr
endfunction
Perk[] function cArrayCreatePerk033() global
  Perk[] aArr = New Perk[33]
  return aArr
endfunction
Perk[] function cArrayCreatePerk034() global
  Perk[] aArr = New Perk[34]
  return aArr
endfunction
Perk[] function cArrayCreatePerk035() global
  Perk[] aArr = New Perk[35]
  return aArr
endfunction
Perk[] function cArrayCreatePerk036() global
  Perk[] aArr = New Perk[36]
  return aArr
endfunction
Perk[] function cArrayCreatePerk037() global
  Perk[] aArr = New Perk[37]
  return aArr
endfunction
Perk[] function cArrayCreatePerk038() global
  Perk[] aArr = New Perk[38]
  return aArr
endfunction
Perk[] function cArrayCreatePerk039() global
  Perk[] aArr = New Perk[39]
  return aArr
endfunction
Perk[] function cArrayCreatePerk040() global
  Perk[] aArr = New Perk[40]
  return aArr
endfunction
Perk[] function cArrayCreatePerk041() global
  Perk[] aArr = New Perk[41]
  return aArr
endfunction
Perk[] function cArrayCreatePerk042() global
  Perk[] aArr = New Perk[42]
  return aArr
endfunction
Perk[] function cArrayCreatePerk043() global
  Perk[] aArr = New Perk[43]
  return aArr
endfunction
Perk[] function cArrayCreatePerk044() global
  Perk[] aArr = New Perk[44]
  return aArr
endfunction
Perk[] function cArrayCreatePerk045() global
  Perk[] aArr = New Perk[45]
  return aArr
endfunction
Perk[] function cArrayCreatePerk046() global
  Perk[] aArr = New Perk[46]
  return aArr
endfunction
Perk[] function cArrayCreatePerk047() global
  Perk[] aArr = New Perk[47]
  return aArr
endfunction
Perk[] function cArrayCreatePerk048() global
  Perk[] aArr = New Perk[48]
  return aArr
endfunction
Perk[] function cArrayCreatePerk049() global
  Perk[] aArr = New Perk[49]
  return aArr
endfunction
Perk[] function cArrayCreatePerk050() global
  Perk[] aArr = New Perk[50]
  return aArr
endfunction
Perk[] function cArrayCreatePerk051() global
  Perk[] aArr = New Perk[51]
  return aArr
endfunction
Perk[] function cArrayCreatePerk052() global
  Perk[] aArr = New Perk[52]
  return aArr
endfunction
Perk[] function cArrayCreatePerk053() global
  Perk[] aArr = New Perk[53]
  return aArr
endfunction
Perk[] function cArrayCreatePerk054() global
  Perk[] aArr = New Perk[54]
  return aArr
endfunction
Perk[] function cArrayCreatePerk055() global
  Perk[] aArr = New Perk[55]
  return aArr
endfunction
Perk[] function cArrayCreatePerk056() global
  Perk[] aArr = New Perk[56]
  return aArr
endfunction
Perk[] function cArrayCreatePerk057() global
  Perk[] aArr = New Perk[57]
  return aArr
endfunction
Perk[] function cArrayCreatePerk058() global
  Perk[] aArr = New Perk[58]
  return aArr
endfunction
Perk[] function cArrayCreatePerk059() global
  Perk[] aArr = New Perk[59]
  return aArr
endfunction
Perk[] function cArrayCreatePerk060() global
  Perk[] aArr = New Perk[60]
  return aArr
endfunction
Perk[] function cArrayCreatePerk061() global
  Perk[] aArr = New Perk[61]
  return aArr
endfunction
Perk[] function cArrayCreatePerk062() global
  Perk[] aArr = New Perk[62]
  return aArr
endfunction
Perk[] function cArrayCreatePerk063() global
  Perk[] aArr = New Perk[63]
  return aArr
endfunction
Perk[] function cArrayCreatePerk064() global
  Perk[] aArr = New Perk[64]
  return aArr
endfunction
Perk[] function cArrayCreatePerk065() global
  Perk[] aArr = New Perk[65]
  return aArr
endfunction
Perk[] function cArrayCreatePerk066() global
  Perk[] aArr = New Perk[66]
  return aArr
endfunction
Perk[] function cArrayCreatePerk067() global
  Perk[] aArr = New Perk[67]
  return aArr
endfunction
Perk[] function cArrayCreatePerk068() global
  Perk[] aArr = New Perk[68]
  return aArr
endfunction
Perk[] function cArrayCreatePerk069() global
  Perk[] aArr = New Perk[69]
  return aArr
endfunction
Perk[] function cArrayCreatePerk070() global
  Perk[] aArr = New Perk[70]
  return aArr
endfunction
Perk[] function cArrayCreatePerk071() global
  Perk[] aArr = New Perk[71]
  return aArr
endfunction
Perk[] function cArrayCreatePerk072() global
  Perk[] aArr = New Perk[72]
  return aArr
endfunction
Perk[] function cArrayCreatePerk073() global
  Perk[] aArr = New Perk[73]
  return aArr
endfunction
Perk[] function cArrayCreatePerk074() global
  Perk[] aArr = New Perk[74]
  return aArr
endfunction
Perk[] function cArrayCreatePerk075() global
  Perk[] aArr = New Perk[75]
  return aArr
endfunction
Perk[] function cArrayCreatePerk076() global
  Perk[] aArr = New Perk[76]
  return aArr
endfunction
Perk[] function cArrayCreatePerk077() global
  Perk[] aArr = New Perk[77]
  return aArr
endfunction
Perk[] function cArrayCreatePerk078() global
  Perk[] aArr = New Perk[78]
  return aArr
endfunction
Perk[] function cArrayCreatePerk079() global
  Perk[] aArr = New Perk[79]
  return aArr
endfunction
Perk[] function cArrayCreatePerk080() global
  Perk[] aArr = New Perk[80]
  return aArr
endfunction
Perk[] function cArrayCreatePerk081() global
  Perk[] aArr = New Perk[81]
  return aArr
endfunction
Perk[] function cArrayCreatePerk082() global
  Perk[] aArr = New Perk[82]
  return aArr
endfunction
Perk[] function cArrayCreatePerk083() global
  Perk[] aArr = New Perk[83]
  return aArr
endfunction
Perk[] function cArrayCreatePerk084() global
  Perk[] aArr = New Perk[84]
  return aArr
endfunction
Perk[] function cArrayCreatePerk085() global
  Perk[] aArr = New Perk[85]
  return aArr
endfunction
Perk[] function cArrayCreatePerk086() global
  Perk[] aArr = New Perk[86]
  return aArr
endfunction
Perk[] function cArrayCreatePerk087() global
  Perk[] aArr = New Perk[87]
  return aArr
endfunction
Perk[] function cArrayCreatePerk088() global
  Perk[] aArr = New Perk[88]
  return aArr
endfunction
Perk[] function cArrayCreatePerk089() global
  Perk[] aArr = New Perk[89]
  return aArr
endfunction
Perk[] function cArrayCreatePerk090() global
  Perk[] aArr = New Perk[90]
  return aArr
endfunction
Perk[] function cArrayCreatePerk091() global
  Perk[] aArr = New Perk[91]
  return aArr
endfunction
Perk[] function cArrayCreatePerk092() global
  Perk[] aArr = New Perk[92]
  return aArr
endfunction
Perk[] function cArrayCreatePerk093() global
  Perk[] aArr = New Perk[93]
  return aArr
endfunction
Perk[] function cArrayCreatePerk094() global
  Perk[] aArr = New Perk[94]
  return aArr
endfunction
Perk[] function cArrayCreatePerk095() global
  Perk[] aArr = New Perk[95]
  return aArr
endfunction
Perk[] function cArrayCreatePerk096() global
  Perk[] aArr = New Perk[96]
  return aArr
endfunction
Perk[] function cArrayCreatePerk097() global
  Perk[] aArr = New Perk[97]
  return aArr
endfunction
Perk[] function cArrayCreatePerk098() global
  Perk[] aArr = New Perk[98]
  return aArr
endfunction
Perk[] function cArrayCreatePerk099() global
  Perk[] aArr = New Perk[99]
  return aArr
endfunction
Perk[] function cArrayCreatePerk100() global
  Perk[] aArr = New Perk[100]
  return aArr
endfunction
Perk[] function cArrayCreatePerk101() global
  Perk[] aArr = New Perk[101]
  return aArr
endfunction
Perk[] function cArrayCreatePerk102() global
  Perk[] aArr = New Perk[102]
  return aArr
endfunction
Perk[] function cArrayCreatePerk103() global
  Perk[] aArr = New Perk[103]
  return aArr
endfunction
Perk[] function cArrayCreatePerk104() global
  Perk[] aArr = New Perk[104]
  return aArr
endfunction
Perk[] function cArrayCreatePerk105() global
  Perk[] aArr = New Perk[105]
  return aArr
endfunction
Perk[] function cArrayCreatePerk106() global
  Perk[] aArr = New Perk[106]
  return aArr
endfunction
Perk[] function cArrayCreatePerk107() global
  Perk[] aArr = New Perk[107]
  return aArr
endfunction
Perk[] function cArrayCreatePerk108() global
  Perk[] aArr = New Perk[108]
  return aArr
endfunction
Perk[] function cArrayCreatePerk109() global
  Perk[] aArr = New Perk[109]
  return aArr
endfunction
Perk[] function cArrayCreatePerk110() global
  Perk[] aArr = New Perk[110]
  return aArr
endfunction
Perk[] function cArrayCreatePerk111() global
  Perk[] aArr = New Perk[111]
  return aArr
endfunction
Perk[] function cArrayCreatePerk112() global
  Perk[] aArr = New Perk[112]
  return aArr
endfunction
Perk[] function cArrayCreatePerk113() global
  Perk[] aArr = New Perk[113]
  return aArr
endfunction
Perk[] function cArrayCreatePerk114() global
  Perk[] aArr = New Perk[114]
  return aArr
endfunction
Perk[] function cArrayCreatePerk115() global
  Perk[] aArr = New Perk[115]
  return aArr
endfunction
Perk[] function cArrayCreatePerk116() global
  Perk[] aArr = New Perk[116]
  return aArr
endfunction
Perk[] function cArrayCreatePerk117() global
  Perk[] aArr = New Perk[117]
  return aArr
endfunction
Perk[] function cArrayCreatePerk118() global
  Perk[] aArr = New Perk[118]
  return aArr
endfunction
Perk[] function cArrayCreatePerk119() global
  Perk[] aArr = New Perk[119]
  return aArr
endfunction
Perk[] function cArrayCreatePerk120() global
  Perk[] aArr = New Perk[120]
  return aArr
endfunction
Perk[] function cArrayCreatePerk121() global
  Perk[] aArr = New Perk[121]
  return aArr
endfunction
Perk[] function cArrayCreatePerk122() global
  Perk[] aArr = New Perk[122]
  return aArr
endfunction
Perk[] function cArrayCreatePerk123() global
  Perk[] aArr = New Perk[123]
  return aArr
endfunction
Perk[] function cArrayCreatePerk124() global
  Perk[] aArr = New Perk[124]
  return aArr
endfunction
Perk[] function cArrayCreatePerk125() global
  Perk[] aArr = New Perk[125]
  return aArr
endfunction
Perk[] function cArrayCreatePerk126() global
  Perk[] aArr = New Perk[126]
  return aArr
endfunction
Perk[] function cArrayCreatePerk127() global
  Perk[] aArr = New Perk[127]
  return aArr
endfunction
Perk[] function cArrayCreatePerk128() global
  Perk[] aArr = New Perk[128]
  return aArr
endfunction
