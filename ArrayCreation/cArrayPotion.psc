Scriptname cArrayPotion Hidden

Int function cGetVersion() global
  return 9001
endfunction

Potion[] function cArrayCreatePotion(Int indices, Potion filler = None, Bool outputTrace = TRUE, \
  Bool useConsoleUtil = TRUE) global
  {Requirements: None}
  Potion[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace Potions
    ; useConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreatePotion()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayPotion::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreatePotion001()
              elseif indices < 3
                aArray = cArrayCreatePotion002()
              elseif indices < 4
                aArray = cArrayCreatePotion003()
              else
                aArray = cArrayCreatePotion004()
              endif
            else
              if indices < 6
                aArray = cArrayCreatePotion005()
              elseif indices < 7
                aArray = cArrayCreatePotion006()
              elseif indices < 8
                aArray = cArrayCreatePotion007()
              else
                aArray = cArrayCreatePotion008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreatePotion009()
              elseif indices < 11
                aArray = cArrayCreatePotion010()
              elseif indices < 12
                aArray = cArrayCreatePotion011()
              else
                aArray = cArrayCreatePotion012()
              endif
            else
              if indices < 14
                aArray = cArrayCreatePotion013()
              elseif indices < 15
                aArray = cArrayCreatePotion014()
              elseif indices < 16
                aArray = cArrayCreatePotion015()
              else
                aArray = cArrayCreatePotion016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreatePotion017()
              elseif indices < 19
                aArray = cArrayCreatePotion018()
              elseif indices < 20
                aArray = cArrayCreatePotion019()
              else
                aArray = cArrayCreatePotion020()
              endif
            else
              if indices < 22
                aArray = cArrayCreatePotion021()
              elseif indices < 23
                aArray = cArrayCreatePotion022()
              elseif indices < 24
                aArray = cArrayCreatePotion023()
              else
                aArray = cArrayCreatePotion024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreatePotion025()
              elseif indices < 27
                aArray = cArrayCreatePotion026()
              elseif indices < 28
                aArray = cArrayCreatePotion027()
              else
                aArray = cArrayCreatePotion028()
              endif
            else
              if indices < 30
                aArray = cArrayCreatePotion029()
              elseif indices < 31
                aArray = cArrayCreatePotion030()
              elseif indices < 32
                aArray = cArrayCreatePotion031()
              else
                aArray = cArrayCreatePotion032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreatePotion033()
              elseif indices < 35
                aArray = cArrayCreatePotion034()
              elseif indices < 36
                aArray = cArrayCreatePotion035()
              else
                aArray = cArrayCreatePotion036()
              endif
            else
              if indices < 38
                aArray = cArrayCreatePotion037()
              elseif indices < 39
                aArray = cArrayCreatePotion038()
              elseif indices < 40
                aArray = cArrayCreatePotion039()
              else
                aArray = cArrayCreatePotion040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreatePotion041()
              elseif indices < 43
                aArray = cArrayCreatePotion042()
              elseif indices < 44
                aArray = cArrayCreatePotion043()
              else
                aArray = cArrayCreatePotion044()
              endif
            else
              if indices < 46
                aArray = cArrayCreatePotion045()
              elseif indices < 47
                aArray = cArrayCreatePotion046()
              elseif indices < 48
                aArray = cArrayCreatePotion047()
              else
                aArray = cArrayCreatePotion048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreatePotion049()
              elseif indices < 51
                aArray = cArrayCreatePotion050()
              elseif indices < 52
                aArray = cArrayCreatePotion051()
              else
                aArray = cArrayCreatePotion052()
              endif
            else
              if indices < 54
                aArray = cArrayCreatePotion053()
              elseif indices < 55
                aArray = cArrayCreatePotion054()
              elseif indices < 56
                aArray = cArrayCreatePotion055()
              else
                aArray = cArrayCreatePotion056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreatePotion057()
              elseif indices < 59
                aArray = cArrayCreatePotion058()
              elseif indices < 60
                aArray = cArrayCreatePotion059()
              else
                aArray = cArrayCreatePotion060()
              endif
            else
              if indices < 62
                aArray = cArrayCreatePotion061()
              elseif indices < 63
                aArray = cArrayCreatePotion062()
              elseif indices < 64
                aArray = cArrayCreatePotion063()
              else
                aArray = cArrayCreatePotion064()
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
                aArray = cArrayCreatePotion065()
              elseif indices < 67
                aArray = cArrayCreatePotion066()
              elseif indices < 68
                aArray = cArrayCreatePotion067()
              else
                aArray = cArrayCreatePotion068()
              endif
            else
              if indices < 70
                aArray = cArrayCreatePotion069()
              elseif indices < 71
                aArray = cArrayCreatePotion070()
              elseif indices < 72
                aArray = cArrayCreatePotion071()
              else
                aArray = cArrayCreatePotion072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreatePotion073()
              elseif indices < 75
                aArray = cArrayCreatePotion074()
              elseif indices < 76
                aArray = cArrayCreatePotion075()
              else
                aArray = cArrayCreatePotion076()
              endif
            else
              if indices < 78
                aArray = cArrayCreatePotion077()
              elseif indices < 79
                aArray = cArrayCreatePotion078()
              elseif indices < 80
                aArray = cArrayCreatePotion079()
              else
                aArray = cArrayCreatePotion080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreatePotion081()
              elseif indices < 83
                aArray = cArrayCreatePotion082()
              elseif indices < 84
                aArray = cArrayCreatePotion083()
              else
                aArray = cArrayCreatePotion084()
              endif
            else
              if indices < 86
                aArray = cArrayCreatePotion085()
              elseif indices < 87
                aArray = cArrayCreatePotion086()
              elseif indices < 88
                aArray = cArrayCreatePotion087()
              else
                aArray = cArrayCreatePotion088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreatePotion089()
              elseif indices < 91
                aArray = cArrayCreatePotion090()
              elseif indices < 92
                aArray = cArrayCreatePotion091()
              else
                aArray = cArrayCreatePotion092()
              endif
            else
              if indices < 94
                aArray = cArrayCreatePotion093()
              elseif indices < 95
                aArray = cArrayCreatePotion094()
              elseif indices < 96
                aArray = cArrayCreatePotion095()
              else
                aArray = cArrayCreatePotion096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreatePotion097()
              elseif indices < 99
                aArray = cArrayCreatePotion098()
              elseif indices < 100
                aArray = cArrayCreatePotion099()
              else
                aArray = cArrayCreatePotion100()
              endif
            else
              if indices < 102
                aArray = cArrayCreatePotion101()
              elseif indices < 103
                aArray = cArrayCreatePotion102()
              elseif indices < 104
                aArray = cArrayCreatePotion103()
              else
                aArray = cArrayCreatePotion104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreatePotion105()
              elseif indices < 107
                aArray = cArrayCreatePotion106()
              elseif indices < 108
                aArray = cArrayCreatePotion107()
              else
                aArray = cArrayCreatePotion108()
              endif
            else
              if indices < 110
                aArray = cArrayCreatePotion109()
              elseif indices < 111
                aArray = cArrayCreatePotion110()
              elseif indices < 112
                aArray = cArrayCreatePotion111()
              else
                aArray = cArrayCreatePotion112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreatePotion113()
              elseif indices < 115
                aArray = cArrayCreatePotion114()
              elseif indices < 116
                aArray = cArrayCreatePotion115()
              else
                aArray = cArrayCreatePotion116()
              endif
            else
              if indices < 118
                aArray = cArrayCreatePotion117()
              elseif indices < 119
                aArray = cArrayCreatePotion118()
              elseif indices < 120
                aArray = cArrayCreatePotion119()
              else
                aArray = cArrayCreatePotion120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreatePotion121()
              elseif indices < 123
                aArray = cArrayCreatePotion122()
              elseif indices < 124
                aArray = cArrayCreatePotion123()
              else
                aArray = cArrayCreatePotion124()
              endif
            else
              if indices < 126
                aArray = cArrayCreatePotion125()
              elseif indices < 127
                aArray = cArrayCreatePotion126()
              elseif indices < 128
                aArray = cArrayCreatePotion127()
              else
                aArray = cArrayCreatePotion128()
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

Potion[] function cArrayCreatePotion001() global
  Potion[] aArr = New Potion[1]
  return aArr
endfunction
Potion[] function cArrayCreatePotion002() global
  Potion[] aArr = New Potion[2]
  return aArr
endfunction
Potion[] function cArrayCreatePotion003() global
  Potion[] aArr = New Potion[3]
  return aArr
endfunction
Potion[] function cArrayCreatePotion004() global
  Potion[] aArr = New Potion[4]
  return aArr
endfunction
Potion[] function cArrayCreatePotion005() global
  Potion[] aArr = New Potion[5]
  return aArr
endfunction
Potion[] function cArrayCreatePotion006() global
  Potion[] aArr = New Potion[6]
  return aArr
endfunction
Potion[] function cArrayCreatePotion007() global
  Potion[] aArr = New Potion[7]
  return aArr
endfunction
Potion[] function cArrayCreatePotion008() global
  Potion[] aArr = New Potion[8]
  return aArr
endfunction
Potion[] function cArrayCreatePotion009() global
  Potion[] aArr = New Potion[9]
  return aArr
endfunction
Potion[] function cArrayCreatePotion010() global
  Potion[] aArr = New Potion[10]
  return aArr
endfunction
Potion[] function cArrayCreatePotion011() global
  Potion[] aArr = New Potion[11]
  return aArr
endfunction
Potion[] function cArrayCreatePotion012() global
  Potion[] aArr = New Potion[12]
  return aArr
endfunction
Potion[] function cArrayCreatePotion013() global
  Potion[] aArr = New Potion[13]
  return aArr
endfunction
Potion[] function cArrayCreatePotion014() global
  Potion[] aArr = New Potion[14]
  return aArr
endfunction
Potion[] function cArrayCreatePotion015() global
  Potion[] aArr = New Potion[15]
  return aArr
endfunction
Potion[] function cArrayCreatePotion016() global
  Potion[] aArr = New Potion[16]
  return aArr
endfunction
Potion[] function cArrayCreatePotion017() global
  Potion[] aArr = New Potion[17]
  return aArr
endfunction
Potion[] function cArrayCreatePotion018() global
  Potion[] aArr = New Potion[18]
  return aArr
endfunction
Potion[] function cArrayCreatePotion019() global
  Potion[] aArr = New Potion[19]
  return aArr
endfunction
Potion[] function cArrayCreatePotion020() global
  Potion[] aArr = New Potion[20]
  return aArr
endfunction
Potion[] function cArrayCreatePotion021() global
  Potion[] aArr = New Potion[21]
  return aArr
endfunction
Potion[] function cArrayCreatePotion022() global
  Potion[] aArr = New Potion[22]
  return aArr
endfunction
Potion[] function cArrayCreatePotion023() global
  Potion[] aArr = New Potion[23]
  return aArr
endfunction
Potion[] function cArrayCreatePotion024() global
  Potion[] aArr = New Potion[24]
  return aArr
endfunction
Potion[] function cArrayCreatePotion025() global
  Potion[] aArr = New Potion[25]
  return aArr
endfunction
Potion[] function cArrayCreatePotion026() global
  Potion[] aArr = New Potion[26]
  return aArr
endfunction
Potion[] function cArrayCreatePotion027() global
  Potion[] aArr = New Potion[27]
  return aArr
endfunction
Potion[] function cArrayCreatePotion028() global
  Potion[] aArr = New Potion[28]
  return aArr
endfunction
Potion[] function cArrayCreatePotion029() global
  Potion[] aArr = New Potion[29]
  return aArr
endfunction
Potion[] function cArrayCreatePotion030() global
  Potion[] aArr = New Potion[30]
  return aArr
endfunction
Potion[] function cArrayCreatePotion031() global
  Potion[] aArr = New Potion[31]
  return aArr
endfunction
Potion[] function cArrayCreatePotion032() global
  Potion[] aArr = New Potion[32]
  return aArr
endfunction
Potion[] function cArrayCreatePotion033() global
  Potion[] aArr = New Potion[33]
  return aArr
endfunction
Potion[] function cArrayCreatePotion034() global
  Potion[] aArr = New Potion[34]
  return aArr
endfunction
Potion[] function cArrayCreatePotion035() global
  Potion[] aArr = New Potion[35]
  return aArr
endfunction
Potion[] function cArrayCreatePotion036() global
  Potion[] aArr = New Potion[36]
  return aArr
endfunction
Potion[] function cArrayCreatePotion037() global
  Potion[] aArr = New Potion[37]
  return aArr
endfunction
Potion[] function cArrayCreatePotion038() global
  Potion[] aArr = New Potion[38]
  return aArr
endfunction
Potion[] function cArrayCreatePotion039() global
  Potion[] aArr = New Potion[39]
  return aArr
endfunction
Potion[] function cArrayCreatePotion040() global
  Potion[] aArr = New Potion[40]
  return aArr
endfunction
Potion[] function cArrayCreatePotion041() global
  Potion[] aArr = New Potion[41]
  return aArr
endfunction
Potion[] function cArrayCreatePotion042() global
  Potion[] aArr = New Potion[42]
  return aArr
endfunction
Potion[] function cArrayCreatePotion043() global
  Potion[] aArr = New Potion[43]
  return aArr
endfunction
Potion[] function cArrayCreatePotion044() global
  Potion[] aArr = New Potion[44]
  return aArr
endfunction
Potion[] function cArrayCreatePotion045() global
  Potion[] aArr = New Potion[45]
  return aArr
endfunction
Potion[] function cArrayCreatePotion046() global
  Potion[] aArr = New Potion[46]
  return aArr
endfunction
Potion[] function cArrayCreatePotion047() global
  Potion[] aArr = New Potion[47]
  return aArr
endfunction
Potion[] function cArrayCreatePotion048() global
  Potion[] aArr = New Potion[48]
  return aArr
endfunction
Potion[] function cArrayCreatePotion049() global
  Potion[] aArr = New Potion[49]
  return aArr
endfunction
Potion[] function cArrayCreatePotion050() global
  Potion[] aArr = New Potion[50]
  return aArr
endfunction
Potion[] function cArrayCreatePotion051() global
  Potion[] aArr = New Potion[51]
  return aArr
endfunction
Potion[] function cArrayCreatePotion052() global
  Potion[] aArr = New Potion[52]
  return aArr
endfunction
Potion[] function cArrayCreatePotion053() global
  Potion[] aArr = New Potion[53]
  return aArr
endfunction
Potion[] function cArrayCreatePotion054() global
  Potion[] aArr = New Potion[54]
  return aArr
endfunction
Potion[] function cArrayCreatePotion055() global
  Potion[] aArr = New Potion[55]
  return aArr
endfunction
Potion[] function cArrayCreatePotion056() global
  Potion[] aArr = New Potion[56]
  return aArr
endfunction
Potion[] function cArrayCreatePotion057() global
  Potion[] aArr = New Potion[57]
  return aArr
endfunction
Potion[] function cArrayCreatePotion058() global
  Potion[] aArr = New Potion[58]
  return aArr
endfunction
Potion[] function cArrayCreatePotion059() global
  Potion[] aArr = New Potion[59]
  return aArr
endfunction
Potion[] function cArrayCreatePotion060() global
  Potion[] aArr = New Potion[60]
  return aArr
endfunction
Potion[] function cArrayCreatePotion061() global
  Potion[] aArr = New Potion[61]
  return aArr
endfunction
Potion[] function cArrayCreatePotion062() global
  Potion[] aArr = New Potion[62]
  return aArr
endfunction
Potion[] function cArrayCreatePotion063() global
  Potion[] aArr = New Potion[63]
  return aArr
endfunction
Potion[] function cArrayCreatePotion064() global
  Potion[] aArr = New Potion[64]
  return aArr
endfunction
Potion[] function cArrayCreatePotion065() global
  Potion[] aArr = New Potion[65]
  return aArr
endfunction
Potion[] function cArrayCreatePotion066() global
  Potion[] aArr = New Potion[66]
  return aArr
endfunction
Potion[] function cArrayCreatePotion067() global
  Potion[] aArr = New Potion[67]
  return aArr
endfunction
Potion[] function cArrayCreatePotion068() global
  Potion[] aArr = New Potion[68]
  return aArr
endfunction
Potion[] function cArrayCreatePotion069() global
  Potion[] aArr = New Potion[69]
  return aArr
endfunction
Potion[] function cArrayCreatePotion070() global
  Potion[] aArr = New Potion[70]
  return aArr
endfunction
Potion[] function cArrayCreatePotion071() global
  Potion[] aArr = New Potion[71]
  return aArr
endfunction
Potion[] function cArrayCreatePotion072() global
  Potion[] aArr = New Potion[72]
  return aArr
endfunction
Potion[] function cArrayCreatePotion073() global
  Potion[] aArr = New Potion[73]
  return aArr
endfunction
Potion[] function cArrayCreatePotion074() global
  Potion[] aArr = New Potion[74]
  return aArr
endfunction
Potion[] function cArrayCreatePotion075() global
  Potion[] aArr = New Potion[75]
  return aArr
endfunction
Potion[] function cArrayCreatePotion076() global
  Potion[] aArr = New Potion[76]
  return aArr
endfunction
Potion[] function cArrayCreatePotion077() global
  Potion[] aArr = New Potion[77]
  return aArr
endfunction
Potion[] function cArrayCreatePotion078() global
  Potion[] aArr = New Potion[78]
  return aArr
endfunction
Potion[] function cArrayCreatePotion079() global
  Potion[] aArr = New Potion[79]
  return aArr
endfunction
Potion[] function cArrayCreatePotion080() global
  Potion[] aArr = New Potion[80]
  return aArr
endfunction
Potion[] function cArrayCreatePotion081() global
  Potion[] aArr = New Potion[81]
  return aArr
endfunction
Potion[] function cArrayCreatePotion082() global
  Potion[] aArr = New Potion[82]
  return aArr
endfunction
Potion[] function cArrayCreatePotion083() global
  Potion[] aArr = New Potion[83]
  return aArr
endfunction
Potion[] function cArrayCreatePotion084() global
  Potion[] aArr = New Potion[84]
  return aArr
endfunction
Potion[] function cArrayCreatePotion085() global
  Potion[] aArr = New Potion[85]
  return aArr
endfunction
Potion[] function cArrayCreatePotion086() global
  Potion[] aArr = New Potion[86]
  return aArr
endfunction
Potion[] function cArrayCreatePotion087() global
  Potion[] aArr = New Potion[87]
  return aArr
endfunction
Potion[] function cArrayCreatePotion088() global
  Potion[] aArr = New Potion[88]
  return aArr
endfunction
Potion[] function cArrayCreatePotion089() global
  Potion[] aArr = New Potion[89]
  return aArr
endfunction
Potion[] function cArrayCreatePotion090() global
  Potion[] aArr = New Potion[90]
  return aArr
endfunction
Potion[] function cArrayCreatePotion091() global
  Potion[] aArr = New Potion[91]
  return aArr
endfunction
Potion[] function cArrayCreatePotion092() global
  Potion[] aArr = New Potion[92]
  return aArr
endfunction
Potion[] function cArrayCreatePotion093() global
  Potion[] aArr = New Potion[93]
  return aArr
endfunction
Potion[] function cArrayCreatePotion094() global
  Potion[] aArr = New Potion[94]
  return aArr
endfunction
Potion[] function cArrayCreatePotion095() global
  Potion[] aArr = New Potion[95]
  return aArr
endfunction
Potion[] function cArrayCreatePotion096() global
  Potion[] aArr = New Potion[96]
  return aArr
endfunction
Potion[] function cArrayCreatePotion097() global
  Potion[] aArr = New Potion[97]
  return aArr
endfunction
Potion[] function cArrayCreatePotion098() global
  Potion[] aArr = New Potion[98]
  return aArr
endfunction
Potion[] function cArrayCreatePotion099() global
  Potion[] aArr = New Potion[99]
  return aArr
endfunction
Potion[] function cArrayCreatePotion100() global
  Potion[] aArr = New Potion[100]
  return aArr
endfunction
Potion[] function cArrayCreatePotion101() global
  Potion[] aArr = New Potion[101]
  return aArr
endfunction
Potion[] function cArrayCreatePotion102() global
  Potion[] aArr = New Potion[102]
  return aArr
endfunction
Potion[] function cArrayCreatePotion103() global
  Potion[] aArr = New Potion[103]
  return aArr
endfunction
Potion[] function cArrayCreatePotion104() global
  Potion[] aArr = New Potion[104]
  return aArr
endfunction
Potion[] function cArrayCreatePotion105() global
  Potion[] aArr = New Potion[105]
  return aArr
endfunction
Potion[] function cArrayCreatePotion106() global
  Potion[] aArr = New Potion[106]
  return aArr
endfunction
Potion[] function cArrayCreatePotion107() global
  Potion[] aArr = New Potion[107]
  return aArr
endfunction
Potion[] function cArrayCreatePotion108() global
  Potion[] aArr = New Potion[108]
  return aArr
endfunction
Potion[] function cArrayCreatePotion109() global
  Potion[] aArr = New Potion[109]
  return aArr
endfunction
Potion[] function cArrayCreatePotion110() global
  Potion[] aArr = New Potion[110]
  return aArr
endfunction
Potion[] function cArrayCreatePotion111() global
  Potion[] aArr = New Potion[111]
  return aArr
endfunction
Potion[] function cArrayCreatePotion112() global
  Potion[] aArr = New Potion[112]
  return aArr
endfunction
Potion[] function cArrayCreatePotion113() global
  Potion[] aArr = New Potion[113]
  return aArr
endfunction
Potion[] function cArrayCreatePotion114() global
  Potion[] aArr = New Potion[114]
  return aArr
endfunction
Potion[] function cArrayCreatePotion115() global
  Potion[] aArr = New Potion[115]
  return aArr
endfunction
Potion[] function cArrayCreatePotion116() global
  Potion[] aArr = New Potion[116]
  return aArr
endfunction
Potion[] function cArrayCreatePotion117() global
  Potion[] aArr = New Potion[117]
  return aArr
endfunction
Potion[] function cArrayCreatePotion118() global
  Potion[] aArr = New Potion[118]
  return aArr
endfunction
Potion[] function cArrayCreatePotion119() global
  Potion[] aArr = New Potion[119]
  return aArr
endfunction
Potion[] function cArrayCreatePotion120() global
  Potion[] aArr = New Potion[120]
  return aArr
endfunction
Potion[] function cArrayCreatePotion121() global
  Potion[] aArr = New Potion[121]
  return aArr
endfunction
Potion[] function cArrayCreatePotion122() global
  Potion[] aArr = New Potion[122]
  return aArr
endfunction
Potion[] function cArrayCreatePotion123() global
  Potion[] aArr = New Potion[123]
  return aArr
endfunction
Potion[] function cArrayCreatePotion124() global
  Potion[] aArr = New Potion[124]
  return aArr
endfunction
Potion[] function cArrayCreatePotion125() global
  Potion[] aArr = New Potion[125]
  return aArr
endfunction
Potion[] function cArrayCreatePotion126() global
  Potion[] aArr = New Potion[126]
  return aArr
endfunction
Potion[] function cArrayCreatePotion127() global
  Potion[] aArr = New Potion[127]
  return aArr
endfunction
Potion[] function cArrayCreatePotion128() global
  Potion[] aArr = New Potion[128]
  return aArr
endfunction
