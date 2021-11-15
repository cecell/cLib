Scriptname cArrayArmor Hidden

Int function cGetVersion() global
  return 9001
endfunction

Armor[] function cArrayCreateArmor(Int indices, Armor filler = None, Bool outputTrace = TRUE, \
  Bool useConsoleUtil = TRUE) global
  {Requirements: None}
  Armor[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; useConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateArmor()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayArmor::" + msg + " Returning ArrayNone", 2)
      if useConsoleUtil && clibUse.cUseConsoleUtil()
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
                aArray = cArrayCreateArmor001()
              elseif indices < 3
                aArray = cArrayCreateArmor002()
              elseif indices < 4
                aArray = cArrayCreateArmor003()
              else
                aArray = cArrayCreateArmor004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateArmor005()
              elseif indices < 7
                aArray = cArrayCreateArmor006()
              elseif indices < 8
                aArray = cArrayCreateArmor007()
              else
                aArray = cArrayCreateArmor008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateArmor009()
              elseif indices < 11
                aArray = cArrayCreateArmor010()
              elseif indices < 12
                aArray = cArrayCreateArmor011()
              else
                aArray = cArrayCreateArmor012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateArmor013()
              elseif indices < 15
                aArray = cArrayCreateArmor014()
              elseif indices < 16
                aArray = cArrayCreateArmor015()
              else
                aArray = cArrayCreateArmor016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateArmor017()
              elseif indices < 19
                aArray = cArrayCreateArmor018()
              elseif indices < 20
                aArray = cArrayCreateArmor019()
              else
                aArray = cArrayCreateArmor020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateArmor021()
              elseif indices < 23
                aArray = cArrayCreateArmor022()
              elseif indices < 24
                aArray = cArrayCreateArmor023()
              else
                aArray = cArrayCreateArmor024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateArmor025()
              elseif indices < 27
                aArray = cArrayCreateArmor026()
              elseif indices < 28
                aArray = cArrayCreateArmor027()
              else
                aArray = cArrayCreateArmor028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateArmor029()
              elseif indices < 31
                aArray = cArrayCreateArmor030()
              elseif indices < 32
                aArray = cArrayCreateArmor031()
              else
                aArray = cArrayCreateArmor032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateArmor033()
              elseif indices < 35
                aArray = cArrayCreateArmor034()
              elseif indices < 36
                aArray = cArrayCreateArmor035()
              else
                aArray = cArrayCreateArmor036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateArmor037()
              elseif indices < 39
                aArray = cArrayCreateArmor038()
              elseif indices < 40
                aArray = cArrayCreateArmor039()
              else
                aArray = cArrayCreateArmor040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateArmor041()
              elseif indices < 43
                aArray = cArrayCreateArmor042()
              elseif indices < 44
                aArray = cArrayCreateArmor043()
              else
                aArray = cArrayCreateArmor044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateArmor045()
              elseif indices < 47
                aArray = cArrayCreateArmor046()
              elseif indices < 48
                aArray = cArrayCreateArmor047()
              else
                aArray = cArrayCreateArmor048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateArmor049()
              elseif indices < 51
                aArray = cArrayCreateArmor050()
              elseif indices < 52
                aArray = cArrayCreateArmor051()
              else
                aArray = cArrayCreateArmor052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateArmor053()
              elseif indices < 55
                aArray = cArrayCreateArmor054()
              elseif indices < 56
                aArray = cArrayCreateArmor055()
              else
                aArray = cArrayCreateArmor056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateArmor057()
              elseif indices < 59
                aArray = cArrayCreateArmor058()
              elseif indices < 60
                aArray = cArrayCreateArmor059()
              else
                aArray = cArrayCreateArmor060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateArmor061()
              elseif indices < 63
                aArray = cArrayCreateArmor062()
              elseif indices < 64
                aArray = cArrayCreateArmor063()
              else
                aArray = cArrayCreateArmor064()
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
                aArray = cArrayCreateArmor065()
              elseif indices < 67
                aArray = cArrayCreateArmor066()
              elseif indices < 68
                aArray = cArrayCreateArmor067()
              else
                aArray = cArrayCreateArmor068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateArmor069()
              elseif indices < 71
                aArray = cArrayCreateArmor070()
              elseif indices < 72
                aArray = cArrayCreateArmor071()
              else
                aArray = cArrayCreateArmor072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateArmor073()
              elseif indices < 75
                aArray = cArrayCreateArmor074()
              elseif indices < 76
                aArray = cArrayCreateArmor075()
              else
                aArray = cArrayCreateArmor076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateArmor077()
              elseif indices < 79
                aArray = cArrayCreateArmor078()
              elseif indices < 80
                aArray = cArrayCreateArmor079()
              else
                aArray = cArrayCreateArmor080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateArmor081()
              elseif indices < 83
                aArray = cArrayCreateArmor082()
              elseif indices < 84
                aArray = cArrayCreateArmor083()
              else
                aArray = cArrayCreateArmor084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateArmor085()
              elseif indices < 87
                aArray = cArrayCreateArmor086()
              elseif indices < 88
                aArray = cArrayCreateArmor087()
              else
                aArray = cArrayCreateArmor088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateArmor089()
              elseif indices < 91
                aArray = cArrayCreateArmor090()
              elseif indices < 92
                aArray = cArrayCreateArmor091()
              else
                aArray = cArrayCreateArmor092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateArmor093()
              elseif indices < 95
                aArray = cArrayCreateArmor094()
              elseif indices < 96
                aArray = cArrayCreateArmor095()
              else
                aArray = cArrayCreateArmor096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateArmor097()
              elseif indices < 99
                aArray = cArrayCreateArmor098()
              elseif indices < 100
                aArray = cArrayCreateArmor099()
              else
                aArray = cArrayCreateArmor100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateArmor101()
              elseif indices < 103
                aArray = cArrayCreateArmor102()
              elseif indices < 104
                aArray = cArrayCreateArmor103()
              else
                aArray = cArrayCreateArmor104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateArmor105()
              elseif indices < 107
                aArray = cArrayCreateArmor106()
              elseif indices < 108
                aArray = cArrayCreateArmor107()
              else
                aArray = cArrayCreateArmor108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateArmor109()
              elseif indices < 111
                aArray = cArrayCreateArmor110()
              elseif indices < 112
                aArray = cArrayCreateArmor111()
              else
                aArray = cArrayCreateArmor112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateArmor113()
              elseif indices < 115
                aArray = cArrayCreateArmor114()
              elseif indices < 116
                aArray = cArrayCreateArmor115()
              else
                aArray = cArrayCreateArmor116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateArmor117()
              elseif indices < 119
                aArray = cArrayCreateArmor118()
              elseif indices < 120
                aArray = cArrayCreateArmor119()
              else
                aArray = cArrayCreateArmor120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateArmor121()
              elseif indices < 123
                aArray = cArrayCreateArmor122()
              elseif indices < 124
                aArray = cArrayCreateArmor123()
              else
                aArray = cArrayCreateArmor124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateArmor125()
              elseif indices < 127
                aArray = cArrayCreateArmor126()
              elseif indices < 128
                aArray = cArrayCreateArmor127()
              else
                aArray = cArrayCreateArmor128()
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

Armor[] function cArrayCreateArmor001() global
  Armor[] aArr = New Armor[1]
  return aArr
endfunction
Armor[] function cArrayCreateArmor002() global
  Armor[] aArr = New Armor[2]
  return aArr
endfunction
Armor[] function cArrayCreateArmor003() global
  Armor[] aArr = New Armor[3]
  return aArr
endfunction
Armor[] function cArrayCreateArmor004() global
  Armor[] aArr = New Armor[4]
  return aArr
endfunction
Armor[] function cArrayCreateArmor005() global
  Armor[] aArr = New Armor[5]
  return aArr
endfunction
Armor[] function cArrayCreateArmor006() global
  Armor[] aArr = New Armor[6]
  return aArr
endfunction
Armor[] function cArrayCreateArmor007() global
  Armor[] aArr = New Armor[7]
  return aArr
endfunction
Armor[] function cArrayCreateArmor008() global
  Armor[] aArr = New Armor[8]
  return aArr
endfunction
Armor[] function cArrayCreateArmor009() global
  Armor[] aArr = New Armor[9]
  return aArr
endfunction
Armor[] function cArrayCreateArmor010() global
  Armor[] aArr = New Armor[10]
  return aArr
endfunction
Armor[] function cArrayCreateArmor011() global
  Armor[] aArr = New Armor[11]
  return aArr
endfunction
Armor[] function cArrayCreateArmor012() global
  Armor[] aArr = New Armor[12]
  return aArr
endfunction
Armor[] function cArrayCreateArmor013() global
  Armor[] aArr = New Armor[13]
  return aArr
endfunction
Armor[] function cArrayCreateArmor014() global
  Armor[] aArr = New Armor[14]
  return aArr
endfunction
Armor[] function cArrayCreateArmor015() global
  Armor[] aArr = New Armor[15]
  return aArr
endfunction
Armor[] function cArrayCreateArmor016() global
  Armor[] aArr = New Armor[16]
  return aArr
endfunction
Armor[] function cArrayCreateArmor017() global
  Armor[] aArr = New Armor[17]
  return aArr
endfunction
Armor[] function cArrayCreateArmor018() global
  Armor[] aArr = New Armor[18]
  return aArr
endfunction
Armor[] function cArrayCreateArmor019() global
  Armor[] aArr = New Armor[19]
  return aArr
endfunction
Armor[] function cArrayCreateArmor020() global
  Armor[] aArr = New Armor[20]
  return aArr
endfunction
Armor[] function cArrayCreateArmor021() global
  Armor[] aArr = New Armor[21]
  return aArr
endfunction
Armor[] function cArrayCreateArmor022() global
  Armor[] aArr = New Armor[22]
  return aArr
endfunction
Armor[] function cArrayCreateArmor023() global
  Armor[] aArr = New Armor[23]
  return aArr
endfunction
Armor[] function cArrayCreateArmor024() global
  Armor[] aArr = New Armor[24]
  return aArr
endfunction
Armor[] function cArrayCreateArmor025() global
  Armor[] aArr = New Armor[25]
  return aArr
endfunction
Armor[] function cArrayCreateArmor026() global
  Armor[] aArr = New Armor[26]
  return aArr
endfunction
Armor[] function cArrayCreateArmor027() global
  Armor[] aArr = New Armor[27]
  return aArr
endfunction
Armor[] function cArrayCreateArmor028() global
  Armor[] aArr = New Armor[28]
  return aArr
endfunction
Armor[] function cArrayCreateArmor029() global
  Armor[] aArr = New Armor[29]
  return aArr
endfunction
Armor[] function cArrayCreateArmor030() global
  Armor[] aArr = New Armor[30]
  return aArr
endfunction
Armor[] function cArrayCreateArmor031() global
  Armor[] aArr = New Armor[31]
  return aArr
endfunction
Armor[] function cArrayCreateArmor032() global
  Armor[] aArr = New Armor[32]
  return aArr
endfunction
Armor[] function cArrayCreateArmor033() global
  Armor[] aArr = New Armor[33]
  return aArr
endfunction
Armor[] function cArrayCreateArmor034() global
  Armor[] aArr = New Armor[34]
  return aArr
endfunction
Armor[] function cArrayCreateArmor035() global
  Armor[] aArr = New Armor[35]
  return aArr
endfunction
Armor[] function cArrayCreateArmor036() global
  Armor[] aArr = New Armor[36]
  return aArr
endfunction
Armor[] function cArrayCreateArmor037() global
  Armor[] aArr = New Armor[37]
  return aArr
endfunction
Armor[] function cArrayCreateArmor038() global
  Armor[] aArr = New Armor[38]
  return aArr
endfunction
Armor[] function cArrayCreateArmor039() global
  Armor[] aArr = New Armor[39]
  return aArr
endfunction
Armor[] function cArrayCreateArmor040() global
  Armor[] aArr = New Armor[40]
  return aArr
endfunction
Armor[] function cArrayCreateArmor041() global
  Armor[] aArr = New Armor[41]
  return aArr
endfunction
Armor[] function cArrayCreateArmor042() global
  Armor[] aArr = New Armor[42]
  return aArr
endfunction
Armor[] function cArrayCreateArmor043() global
  Armor[] aArr = New Armor[43]
  return aArr
endfunction
Armor[] function cArrayCreateArmor044() global
  Armor[] aArr = New Armor[44]
  return aArr
endfunction
Armor[] function cArrayCreateArmor045() global
  Armor[] aArr = New Armor[45]
  return aArr
endfunction
Armor[] function cArrayCreateArmor046() global
  Armor[] aArr = New Armor[46]
  return aArr
endfunction
Armor[] function cArrayCreateArmor047() global
  Armor[] aArr = New Armor[47]
  return aArr
endfunction
Armor[] function cArrayCreateArmor048() global
  Armor[] aArr = New Armor[48]
  return aArr
endfunction
Armor[] function cArrayCreateArmor049() global
  Armor[] aArr = New Armor[49]
  return aArr
endfunction
Armor[] function cArrayCreateArmor050() global
  Armor[] aArr = New Armor[50]
  return aArr
endfunction
Armor[] function cArrayCreateArmor051() global
  Armor[] aArr = New Armor[51]
  return aArr
endfunction
Armor[] function cArrayCreateArmor052() global
  Armor[] aArr = New Armor[52]
  return aArr
endfunction
Armor[] function cArrayCreateArmor053() global
  Armor[] aArr = New Armor[53]
  return aArr
endfunction
Armor[] function cArrayCreateArmor054() global
  Armor[] aArr = New Armor[54]
  return aArr
endfunction
Armor[] function cArrayCreateArmor055() global
  Armor[] aArr = New Armor[55]
  return aArr
endfunction
Armor[] function cArrayCreateArmor056() global
  Armor[] aArr = New Armor[56]
  return aArr
endfunction
Armor[] function cArrayCreateArmor057() global
  Armor[] aArr = New Armor[57]
  return aArr
endfunction
Armor[] function cArrayCreateArmor058() global
  Armor[] aArr = New Armor[58]
  return aArr
endfunction
Armor[] function cArrayCreateArmor059() global
  Armor[] aArr = New Armor[59]
  return aArr
endfunction
Armor[] function cArrayCreateArmor060() global
  Armor[] aArr = New Armor[60]
  return aArr
endfunction
Armor[] function cArrayCreateArmor061() global
  Armor[] aArr = New Armor[61]
  return aArr
endfunction
Armor[] function cArrayCreateArmor062() global
  Armor[] aArr = New Armor[62]
  return aArr
endfunction
Armor[] function cArrayCreateArmor063() global
  Armor[] aArr = New Armor[63]
  return aArr
endfunction
Armor[] function cArrayCreateArmor064() global
  Armor[] aArr = New Armor[64]
  return aArr
endfunction
Armor[] function cArrayCreateArmor065() global
  Armor[] aArr = New Armor[65]
  return aArr
endfunction
Armor[] function cArrayCreateArmor066() global
  Armor[] aArr = New Armor[66]
  return aArr
endfunction
Armor[] function cArrayCreateArmor067() global
  Armor[] aArr = New Armor[67]
  return aArr
endfunction
Armor[] function cArrayCreateArmor068() global
  Armor[] aArr = New Armor[68]
  return aArr
endfunction
Armor[] function cArrayCreateArmor069() global
  Armor[] aArr = New Armor[69]
  return aArr
endfunction
Armor[] function cArrayCreateArmor070() global
  Armor[] aArr = New Armor[70]
  return aArr
endfunction
Armor[] function cArrayCreateArmor071() global
  Armor[] aArr = New Armor[71]
  return aArr
endfunction
Armor[] function cArrayCreateArmor072() global
  Armor[] aArr = New Armor[72]
  return aArr
endfunction
Armor[] function cArrayCreateArmor073() global
  Armor[] aArr = New Armor[73]
  return aArr
endfunction
Armor[] function cArrayCreateArmor074() global
  Armor[] aArr = New Armor[74]
  return aArr
endfunction
Armor[] function cArrayCreateArmor075() global
  Armor[] aArr = New Armor[75]
  return aArr
endfunction
Armor[] function cArrayCreateArmor076() global
  Armor[] aArr = New Armor[76]
  return aArr
endfunction
Armor[] function cArrayCreateArmor077() global
  Armor[] aArr = New Armor[77]
  return aArr
endfunction
Armor[] function cArrayCreateArmor078() global
  Armor[] aArr = New Armor[78]
  return aArr
endfunction
Armor[] function cArrayCreateArmor079() global
  Armor[] aArr = New Armor[79]
  return aArr
endfunction
Armor[] function cArrayCreateArmor080() global
  Armor[] aArr = New Armor[80]
  return aArr
endfunction
Armor[] function cArrayCreateArmor081() global
  Armor[] aArr = New Armor[81]
  return aArr
endfunction
Armor[] function cArrayCreateArmor082() global
  Armor[] aArr = New Armor[82]
  return aArr
endfunction
Armor[] function cArrayCreateArmor083() global
  Armor[] aArr = New Armor[83]
  return aArr
endfunction
Armor[] function cArrayCreateArmor084() global
  Armor[] aArr = New Armor[84]
  return aArr
endfunction
Armor[] function cArrayCreateArmor085() global
  Armor[] aArr = New Armor[85]
  return aArr
endfunction
Armor[] function cArrayCreateArmor086() global
  Armor[] aArr = New Armor[86]
  return aArr
endfunction
Armor[] function cArrayCreateArmor087() global
  Armor[] aArr = New Armor[87]
  return aArr
endfunction
Armor[] function cArrayCreateArmor088() global
  Armor[] aArr = New Armor[88]
  return aArr
endfunction
Armor[] function cArrayCreateArmor089() global
  Armor[] aArr = New Armor[89]
  return aArr
endfunction
Armor[] function cArrayCreateArmor090() global
  Armor[] aArr = New Armor[90]
  return aArr
endfunction
Armor[] function cArrayCreateArmor091() global
  Armor[] aArr = New Armor[91]
  return aArr
endfunction
Armor[] function cArrayCreateArmor092() global
  Armor[] aArr = New Armor[92]
  return aArr
endfunction
Armor[] function cArrayCreateArmor093() global
  Armor[] aArr = New Armor[93]
  return aArr
endfunction
Armor[] function cArrayCreateArmor094() global
  Armor[] aArr = New Armor[94]
  return aArr
endfunction
Armor[] function cArrayCreateArmor095() global
  Armor[] aArr = New Armor[95]
  return aArr
endfunction
Armor[] function cArrayCreateArmor096() global
  Armor[] aArr = New Armor[96]
  return aArr
endfunction
Armor[] function cArrayCreateArmor097() global
  Armor[] aArr = New Armor[97]
  return aArr
endfunction
Armor[] function cArrayCreateArmor098() global
  Armor[] aArr = New Armor[98]
  return aArr
endfunction
Armor[] function cArrayCreateArmor099() global
  Armor[] aArr = New Armor[99]
  return aArr
endfunction
Armor[] function cArrayCreateArmor100() global
  Armor[] aArr = New Armor[100]
  return aArr
endfunction
Armor[] function cArrayCreateArmor101() global
  Armor[] aArr = New Armor[101]
  return aArr
endfunction
Armor[] function cArrayCreateArmor102() global
  Armor[] aArr = New Armor[102]
  return aArr
endfunction
Armor[] function cArrayCreateArmor103() global
  Armor[] aArr = New Armor[103]
  return aArr
endfunction
Armor[] function cArrayCreateArmor104() global
  Armor[] aArr = New Armor[104]
  return aArr
endfunction
Armor[] function cArrayCreateArmor105() global
  Armor[] aArr = New Armor[105]
  return aArr
endfunction
Armor[] function cArrayCreateArmor106() global
  Armor[] aArr = New Armor[106]
  return aArr
endfunction
Armor[] function cArrayCreateArmor107() global
  Armor[] aArr = New Armor[107]
  return aArr
endfunction
Armor[] function cArrayCreateArmor108() global
  Armor[] aArr = New Armor[108]
  return aArr
endfunction
Armor[] function cArrayCreateArmor109() global
  Armor[] aArr = New Armor[109]
  return aArr
endfunction
Armor[] function cArrayCreateArmor110() global
  Armor[] aArr = New Armor[110]
  return aArr
endfunction
Armor[] function cArrayCreateArmor111() global
  Armor[] aArr = New Armor[111]
  return aArr
endfunction
Armor[] function cArrayCreateArmor112() global
  Armor[] aArr = New Armor[112]
  return aArr
endfunction
Armor[] function cArrayCreateArmor113() global
  Armor[] aArr = New Armor[113]
  return aArr
endfunction
Armor[] function cArrayCreateArmor114() global
  Armor[] aArr = New Armor[114]
  return aArr
endfunction
Armor[] function cArrayCreateArmor115() global
  Armor[] aArr = New Armor[115]
  return aArr
endfunction
Armor[] function cArrayCreateArmor116() global
  Armor[] aArr = New Armor[116]
  return aArr
endfunction
Armor[] function cArrayCreateArmor117() global
  Armor[] aArr = New Armor[117]
  return aArr
endfunction
Armor[] function cArrayCreateArmor118() global
  Armor[] aArr = New Armor[118]
  return aArr
endfunction
Armor[] function cArrayCreateArmor119() global
  Armor[] aArr = New Armor[119]
  return aArr
endfunction
Armor[] function cArrayCreateArmor120() global
  Armor[] aArr = New Armor[120]
  return aArr
endfunction
Armor[] function cArrayCreateArmor121() global
  Armor[] aArr = New Armor[121]
  return aArr
endfunction
Armor[] function cArrayCreateArmor122() global
  Armor[] aArr = New Armor[122]
  return aArr
endfunction
Armor[] function cArrayCreateArmor123() global
  Armor[] aArr = New Armor[123]
  return aArr
endfunction
Armor[] function cArrayCreateArmor124() global
  Armor[] aArr = New Armor[124]
  return aArr
endfunction
Armor[] function cArrayCreateArmor125() global
  Armor[] aArr = New Armor[125]
  return aArr
endfunction
Armor[] function cArrayCreateArmor126() global
  Armor[] aArr = New Armor[126]
  return aArr
endfunction
Armor[] function cArrayCreateArmor127() global
  Armor[] aArr = New Armor[127]
  return aArr
endfunction
Armor[] function cArrayCreateArmor128() global
  Armor[] aArr = New Armor[128]
  return aArr
endfunction
