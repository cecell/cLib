Scriptname cArrayIngredient Hidden

Int function cGetVersion() global
  return 9001
endfunction

Ingredient[] function cArrayCreateIngredient(Int indices, Ingredient filler = None, Bool outputTrace = TRUE, \
  Bool tryConsoleUtil = TRUE) global
  {Requirements: None}
  Ingredient[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; tryConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateIngredient()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayIngredient::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateIngredient001()
              elseif indices < 3
                aArray = cArrayCreateIngredient002()
              elseif indices < 4
                aArray = cArrayCreateIngredient003()
              else
                aArray = cArrayCreateIngredient004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateIngredient005()
              elseif indices < 7
                aArray = cArrayCreateIngredient006()
              elseif indices < 8
                aArray = cArrayCreateIngredient007()
              else
                aArray = cArrayCreateIngredient008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateIngredient009()
              elseif indices < 11
                aArray = cArrayCreateIngredient010()
              elseif indices < 12
                aArray = cArrayCreateIngredient011()
              else
                aArray = cArrayCreateIngredient012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateIngredient013()
              elseif indices < 15
                aArray = cArrayCreateIngredient014()
              elseif indices < 16
                aArray = cArrayCreateIngredient015()
              else
                aArray = cArrayCreateIngredient016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateIngredient017()
              elseif indices < 19
                aArray = cArrayCreateIngredient018()
              elseif indices < 20
                aArray = cArrayCreateIngredient019()
              else
                aArray = cArrayCreateIngredient020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateIngredient021()
              elseif indices < 23
                aArray = cArrayCreateIngredient022()
              elseif indices < 24
                aArray = cArrayCreateIngredient023()
              else
                aArray = cArrayCreateIngredient024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateIngredient025()
              elseif indices < 27
                aArray = cArrayCreateIngredient026()
              elseif indices < 28
                aArray = cArrayCreateIngredient027()
              else
                aArray = cArrayCreateIngredient028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateIngredient029()
              elseif indices < 31
                aArray = cArrayCreateIngredient030()
              elseif indices < 32
                aArray = cArrayCreateIngredient031()
              else
                aArray = cArrayCreateIngredient032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateIngredient033()
              elseif indices < 35
                aArray = cArrayCreateIngredient034()
              elseif indices < 36
                aArray = cArrayCreateIngredient035()
              else
                aArray = cArrayCreateIngredient036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateIngredient037()
              elseif indices < 39
                aArray = cArrayCreateIngredient038()
              elseif indices < 40
                aArray = cArrayCreateIngredient039()
              else
                aArray = cArrayCreateIngredient040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateIngredient041()
              elseif indices < 43
                aArray = cArrayCreateIngredient042()
              elseif indices < 44
                aArray = cArrayCreateIngredient043()
              else
                aArray = cArrayCreateIngredient044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateIngredient045()
              elseif indices < 47
                aArray = cArrayCreateIngredient046()
              elseif indices < 48
                aArray = cArrayCreateIngredient047()
              else
                aArray = cArrayCreateIngredient048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateIngredient049()
              elseif indices < 51
                aArray = cArrayCreateIngredient050()
              elseif indices < 52
                aArray = cArrayCreateIngredient051()
              else
                aArray = cArrayCreateIngredient052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateIngredient053()
              elseif indices < 55
                aArray = cArrayCreateIngredient054()
              elseif indices < 56
                aArray = cArrayCreateIngredient055()
              else
                aArray = cArrayCreateIngredient056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateIngredient057()
              elseif indices < 59
                aArray = cArrayCreateIngredient058()
              elseif indices < 60
                aArray = cArrayCreateIngredient059()
              else
                aArray = cArrayCreateIngredient060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateIngredient061()
              elseif indices < 63
                aArray = cArrayCreateIngredient062()
              elseif indices < 64
                aArray = cArrayCreateIngredient063()
              else
                aArray = cArrayCreateIngredient064()
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
                aArray = cArrayCreateIngredient065()
              elseif indices < 67
                aArray = cArrayCreateIngredient066()
              elseif indices < 68
                aArray = cArrayCreateIngredient067()
              else
                aArray = cArrayCreateIngredient068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateIngredient069()
              elseif indices < 71
                aArray = cArrayCreateIngredient070()
              elseif indices < 72
                aArray = cArrayCreateIngredient071()
              else
                aArray = cArrayCreateIngredient072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateIngredient073()
              elseif indices < 75
                aArray = cArrayCreateIngredient074()
              elseif indices < 76
                aArray = cArrayCreateIngredient075()
              else
                aArray = cArrayCreateIngredient076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateIngredient077()
              elseif indices < 79
                aArray = cArrayCreateIngredient078()
              elseif indices < 80
                aArray = cArrayCreateIngredient079()
              else
                aArray = cArrayCreateIngredient080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateIngredient081()
              elseif indices < 83
                aArray = cArrayCreateIngredient082()
              elseif indices < 84
                aArray = cArrayCreateIngredient083()
              else
                aArray = cArrayCreateIngredient084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateIngredient085()
              elseif indices < 87
                aArray = cArrayCreateIngredient086()
              elseif indices < 88
                aArray = cArrayCreateIngredient087()
              else
                aArray = cArrayCreateIngredient088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateIngredient089()
              elseif indices < 91
                aArray = cArrayCreateIngredient090()
              elseif indices < 92
                aArray = cArrayCreateIngredient091()
              else
                aArray = cArrayCreateIngredient092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateIngredient093()
              elseif indices < 95
                aArray = cArrayCreateIngredient094()
              elseif indices < 96
                aArray = cArrayCreateIngredient095()
              else
                aArray = cArrayCreateIngredient096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateIngredient097()
              elseif indices < 99
                aArray = cArrayCreateIngredient098()
              elseif indices < 100
                aArray = cArrayCreateIngredient099()
              else
                aArray = cArrayCreateIngredient100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateIngredient101()
              elseif indices < 103
                aArray = cArrayCreateIngredient102()
              elseif indices < 104
                aArray = cArrayCreateIngredient103()
              else
                aArray = cArrayCreateIngredient104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateIngredient105()
              elseif indices < 107
                aArray = cArrayCreateIngredient106()
              elseif indices < 108
                aArray = cArrayCreateIngredient107()
              else
                aArray = cArrayCreateIngredient108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateIngredient109()
              elseif indices < 111
                aArray = cArrayCreateIngredient110()
              elseif indices < 112
                aArray = cArrayCreateIngredient111()
              else
                aArray = cArrayCreateIngredient112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateIngredient113()
              elseif indices < 115
                aArray = cArrayCreateIngredient114()
              elseif indices < 116
                aArray = cArrayCreateIngredient115()
              else
                aArray = cArrayCreateIngredient116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateIngredient117()
              elseif indices < 119
                aArray = cArrayCreateIngredient118()
              elseif indices < 120
                aArray = cArrayCreateIngredient119()
              else
                aArray = cArrayCreateIngredient120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateIngredient121()
              elseif indices < 123
                aArray = cArrayCreateIngredient122()
              elseif indices < 124
                aArray = cArrayCreateIngredient123()
              else
                aArray = cArrayCreateIngredient124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateIngredient125()
              elseif indices < 127
                aArray = cArrayCreateIngredient126()
              elseif indices < 128
                aArray = cArrayCreateIngredient127()
              else
                aArray = cArrayCreateIngredient128()
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

Ingredient[] function cArrayCreateIngredient001() global
  Ingredient[] aArr = New Ingredient[1]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient002() global
  Ingredient[] aArr = New Ingredient[2]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient003() global
  Ingredient[] aArr = New Ingredient[3]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient004() global
  Ingredient[] aArr = New Ingredient[4]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient005() global
  Ingredient[] aArr = New Ingredient[5]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient006() global
  Ingredient[] aArr = New Ingredient[6]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient007() global
  Ingredient[] aArr = New Ingredient[7]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient008() global
  Ingredient[] aArr = New Ingredient[8]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient009() global
  Ingredient[] aArr = New Ingredient[9]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient010() global
  Ingredient[] aArr = New Ingredient[10]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient011() global
  Ingredient[] aArr = New Ingredient[11]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient012() global
  Ingredient[] aArr = New Ingredient[12]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient013() global
  Ingredient[] aArr = New Ingredient[13]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient014() global
  Ingredient[] aArr = New Ingredient[14]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient015() global
  Ingredient[] aArr = New Ingredient[15]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient016() global
  Ingredient[] aArr = New Ingredient[16]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient017() global
  Ingredient[] aArr = New Ingredient[17]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient018() global
  Ingredient[] aArr = New Ingredient[18]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient019() global
  Ingredient[] aArr = New Ingredient[19]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient020() global
  Ingredient[] aArr = New Ingredient[20]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient021() global
  Ingredient[] aArr = New Ingredient[21]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient022() global
  Ingredient[] aArr = New Ingredient[22]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient023() global
  Ingredient[] aArr = New Ingredient[23]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient024() global
  Ingredient[] aArr = New Ingredient[24]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient025() global
  Ingredient[] aArr = New Ingredient[25]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient026() global
  Ingredient[] aArr = New Ingredient[26]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient027() global
  Ingredient[] aArr = New Ingredient[27]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient028() global
  Ingredient[] aArr = New Ingredient[28]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient029() global
  Ingredient[] aArr = New Ingredient[29]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient030() global
  Ingredient[] aArr = New Ingredient[30]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient031() global
  Ingredient[] aArr = New Ingredient[31]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient032() global
  Ingredient[] aArr = New Ingredient[32]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient033() global
  Ingredient[] aArr = New Ingredient[33]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient034() global
  Ingredient[] aArr = New Ingredient[34]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient035() global
  Ingredient[] aArr = New Ingredient[35]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient036() global
  Ingredient[] aArr = New Ingredient[36]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient037() global
  Ingredient[] aArr = New Ingredient[37]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient038() global
  Ingredient[] aArr = New Ingredient[38]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient039() global
  Ingredient[] aArr = New Ingredient[39]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient040() global
  Ingredient[] aArr = New Ingredient[40]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient041() global
  Ingredient[] aArr = New Ingredient[41]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient042() global
  Ingredient[] aArr = New Ingredient[42]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient043() global
  Ingredient[] aArr = New Ingredient[43]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient044() global
  Ingredient[] aArr = New Ingredient[44]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient045() global
  Ingredient[] aArr = New Ingredient[45]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient046() global
  Ingredient[] aArr = New Ingredient[46]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient047() global
  Ingredient[] aArr = New Ingredient[47]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient048() global
  Ingredient[] aArr = New Ingredient[48]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient049() global
  Ingredient[] aArr = New Ingredient[49]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient050() global
  Ingredient[] aArr = New Ingredient[50]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient051() global
  Ingredient[] aArr = New Ingredient[51]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient052() global
  Ingredient[] aArr = New Ingredient[52]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient053() global
  Ingredient[] aArr = New Ingredient[53]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient054() global
  Ingredient[] aArr = New Ingredient[54]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient055() global
  Ingredient[] aArr = New Ingredient[55]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient056() global
  Ingredient[] aArr = New Ingredient[56]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient057() global
  Ingredient[] aArr = New Ingredient[57]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient058() global
  Ingredient[] aArr = New Ingredient[58]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient059() global
  Ingredient[] aArr = New Ingredient[59]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient060() global
  Ingredient[] aArr = New Ingredient[60]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient061() global
  Ingredient[] aArr = New Ingredient[61]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient062() global
  Ingredient[] aArr = New Ingredient[62]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient063() global
  Ingredient[] aArr = New Ingredient[63]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient064() global
  Ingredient[] aArr = New Ingredient[64]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient065() global
  Ingredient[] aArr = New Ingredient[65]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient066() global
  Ingredient[] aArr = New Ingredient[66]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient067() global
  Ingredient[] aArr = New Ingredient[67]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient068() global
  Ingredient[] aArr = New Ingredient[68]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient069() global
  Ingredient[] aArr = New Ingredient[69]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient070() global
  Ingredient[] aArr = New Ingredient[70]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient071() global
  Ingredient[] aArr = New Ingredient[71]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient072() global
  Ingredient[] aArr = New Ingredient[72]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient073() global
  Ingredient[] aArr = New Ingredient[73]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient074() global
  Ingredient[] aArr = New Ingredient[74]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient075() global
  Ingredient[] aArr = New Ingredient[75]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient076() global
  Ingredient[] aArr = New Ingredient[76]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient077() global
  Ingredient[] aArr = New Ingredient[77]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient078() global
  Ingredient[] aArr = New Ingredient[78]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient079() global
  Ingredient[] aArr = New Ingredient[79]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient080() global
  Ingredient[] aArr = New Ingredient[80]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient081() global
  Ingredient[] aArr = New Ingredient[81]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient082() global
  Ingredient[] aArr = New Ingredient[82]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient083() global
  Ingredient[] aArr = New Ingredient[83]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient084() global
  Ingredient[] aArr = New Ingredient[84]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient085() global
  Ingredient[] aArr = New Ingredient[85]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient086() global
  Ingredient[] aArr = New Ingredient[86]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient087() global
  Ingredient[] aArr = New Ingredient[87]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient088() global
  Ingredient[] aArr = New Ingredient[88]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient089() global
  Ingredient[] aArr = New Ingredient[89]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient090() global
  Ingredient[] aArr = New Ingredient[90]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient091() global
  Ingredient[] aArr = New Ingredient[91]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient092() global
  Ingredient[] aArr = New Ingredient[92]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient093() global
  Ingredient[] aArr = New Ingredient[93]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient094() global
  Ingredient[] aArr = New Ingredient[94]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient095() global
  Ingredient[] aArr = New Ingredient[95]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient096() global
  Ingredient[] aArr = New Ingredient[96]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient097() global
  Ingredient[] aArr = New Ingredient[97]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient098() global
  Ingredient[] aArr = New Ingredient[98]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient099() global
  Ingredient[] aArr = New Ingredient[99]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient100() global
  Ingredient[] aArr = New Ingredient[100]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient101() global
  Ingredient[] aArr = New Ingredient[101]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient102() global
  Ingredient[] aArr = New Ingredient[102]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient103() global
  Ingredient[] aArr = New Ingredient[103]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient104() global
  Ingredient[] aArr = New Ingredient[104]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient105() global
  Ingredient[] aArr = New Ingredient[105]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient106() global
  Ingredient[] aArr = New Ingredient[106]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient107() global
  Ingredient[] aArr = New Ingredient[107]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient108() global
  Ingredient[] aArr = New Ingredient[108]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient109() global
  Ingredient[] aArr = New Ingredient[109]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient110() global
  Ingredient[] aArr = New Ingredient[110]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient111() global
  Ingredient[] aArr = New Ingredient[111]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient112() global
  Ingredient[] aArr = New Ingredient[112]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient113() global
  Ingredient[] aArr = New Ingredient[113]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient114() global
  Ingredient[] aArr = New Ingredient[114]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient115() global
  Ingredient[] aArr = New Ingredient[115]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient116() global
  Ingredient[] aArr = New Ingredient[116]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient117() global
  Ingredient[] aArr = New Ingredient[117]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient118() global
  Ingredient[] aArr = New Ingredient[118]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient119() global
  Ingredient[] aArr = New Ingredient[119]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient120() global
  Ingredient[] aArr = New Ingredient[120]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient121() global
  Ingredient[] aArr = New Ingredient[121]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient122() global
  Ingredient[] aArr = New Ingredient[122]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient123() global
  Ingredient[] aArr = New Ingredient[123]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient124() global
  Ingredient[] aArr = New Ingredient[124]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient125() global
  Ingredient[] aArr = New Ingredient[125]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient126() global
  Ingredient[] aArr = New Ingredient[126]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient127() global
  Ingredient[] aArr = New Ingredient[127]
  return aArr
endfunction
Ingredient[] function cArrayCreateIngredient128() global
  Ingredient[] aArr = New Ingredient[128]
  return aArr
endfunction
