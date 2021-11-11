Scriptname cArrayWeather Hidden

Int function cGetVersion() global
  return 9001
endfunction

Weather[] function cArrayCreateWeather(Int indices, Weather filler = None, Bool outputTrace = TRUE, \
  Bool tryConsoleUtil = TRUE) global
  {Requirements: None}
  Weather[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace Weathers
    ; tryConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateWeather()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayWeather::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateWeather001()
              elseif indices < 3
                aArray = cArrayCreateWeather002()
              elseif indices < 4
                aArray = cArrayCreateWeather003()
              else
                aArray = cArrayCreateWeather004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateWeather005()
              elseif indices < 7
                aArray = cArrayCreateWeather006()
              elseif indices < 8
                aArray = cArrayCreateWeather007()
              else
                aArray = cArrayCreateWeather008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateWeather009()
              elseif indices < 11
                aArray = cArrayCreateWeather010()
              elseif indices < 12
                aArray = cArrayCreateWeather011()
              else
                aArray = cArrayCreateWeather012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateWeather013()
              elseif indices < 15
                aArray = cArrayCreateWeather014()
              elseif indices < 16
                aArray = cArrayCreateWeather015()
              else
                aArray = cArrayCreateWeather016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateWeather017()
              elseif indices < 19
                aArray = cArrayCreateWeather018()
              elseif indices < 20
                aArray = cArrayCreateWeather019()
              else
                aArray = cArrayCreateWeather020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateWeather021()
              elseif indices < 23
                aArray = cArrayCreateWeather022()
              elseif indices < 24
                aArray = cArrayCreateWeather023()
              else
                aArray = cArrayCreateWeather024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateWeather025()
              elseif indices < 27
                aArray = cArrayCreateWeather026()
              elseif indices < 28
                aArray = cArrayCreateWeather027()
              else
                aArray = cArrayCreateWeather028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateWeather029()
              elseif indices < 31
                aArray = cArrayCreateWeather030()
              elseif indices < 32
                aArray = cArrayCreateWeather031()
              else
                aArray = cArrayCreateWeather032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateWeather033()
              elseif indices < 35
                aArray = cArrayCreateWeather034()
              elseif indices < 36
                aArray = cArrayCreateWeather035()
              else
                aArray = cArrayCreateWeather036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateWeather037()
              elseif indices < 39
                aArray = cArrayCreateWeather038()
              elseif indices < 40
                aArray = cArrayCreateWeather039()
              else
                aArray = cArrayCreateWeather040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateWeather041()
              elseif indices < 43
                aArray = cArrayCreateWeather042()
              elseif indices < 44
                aArray = cArrayCreateWeather043()
              else
                aArray = cArrayCreateWeather044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateWeather045()
              elseif indices < 47
                aArray = cArrayCreateWeather046()
              elseif indices < 48
                aArray = cArrayCreateWeather047()
              else
                aArray = cArrayCreateWeather048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateWeather049()
              elseif indices < 51
                aArray = cArrayCreateWeather050()
              elseif indices < 52
                aArray = cArrayCreateWeather051()
              else
                aArray = cArrayCreateWeather052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateWeather053()
              elseif indices < 55
                aArray = cArrayCreateWeather054()
              elseif indices < 56
                aArray = cArrayCreateWeather055()
              else
                aArray = cArrayCreateWeather056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateWeather057()
              elseif indices < 59
                aArray = cArrayCreateWeather058()
              elseif indices < 60
                aArray = cArrayCreateWeather059()
              else
                aArray = cArrayCreateWeather060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateWeather061()
              elseif indices < 63
                aArray = cArrayCreateWeather062()
              elseif indices < 64
                aArray = cArrayCreateWeather063()
              else
                aArray = cArrayCreateWeather064()
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
                aArray = cArrayCreateWeather065()
              elseif indices < 67
                aArray = cArrayCreateWeather066()
              elseif indices < 68
                aArray = cArrayCreateWeather067()
              else
                aArray = cArrayCreateWeather068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateWeather069()
              elseif indices < 71
                aArray = cArrayCreateWeather070()
              elseif indices < 72
                aArray = cArrayCreateWeather071()
              else
                aArray = cArrayCreateWeather072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateWeather073()
              elseif indices < 75
                aArray = cArrayCreateWeather074()
              elseif indices < 76
                aArray = cArrayCreateWeather075()
              else
                aArray = cArrayCreateWeather076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateWeather077()
              elseif indices < 79
                aArray = cArrayCreateWeather078()
              elseif indices < 80
                aArray = cArrayCreateWeather079()
              else
                aArray = cArrayCreateWeather080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateWeather081()
              elseif indices < 83
                aArray = cArrayCreateWeather082()
              elseif indices < 84
                aArray = cArrayCreateWeather083()
              else
                aArray = cArrayCreateWeather084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateWeather085()
              elseif indices < 87
                aArray = cArrayCreateWeather086()
              elseif indices < 88
                aArray = cArrayCreateWeather087()
              else
                aArray = cArrayCreateWeather088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateWeather089()
              elseif indices < 91
                aArray = cArrayCreateWeather090()
              elseif indices < 92
                aArray = cArrayCreateWeather091()
              else
                aArray = cArrayCreateWeather092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateWeather093()
              elseif indices < 95
                aArray = cArrayCreateWeather094()
              elseif indices < 96
                aArray = cArrayCreateWeather095()
              else
                aArray = cArrayCreateWeather096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateWeather097()
              elseif indices < 99
                aArray = cArrayCreateWeather098()
              elseif indices < 100
                aArray = cArrayCreateWeather099()
              else
                aArray = cArrayCreateWeather100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateWeather101()
              elseif indices < 103
                aArray = cArrayCreateWeather102()
              elseif indices < 104
                aArray = cArrayCreateWeather103()
              else
                aArray = cArrayCreateWeather104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateWeather105()
              elseif indices < 107
                aArray = cArrayCreateWeather106()
              elseif indices < 108
                aArray = cArrayCreateWeather107()
              else
                aArray = cArrayCreateWeather108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateWeather109()
              elseif indices < 111
                aArray = cArrayCreateWeather110()
              elseif indices < 112
                aArray = cArrayCreateWeather111()
              else
                aArray = cArrayCreateWeather112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateWeather113()
              elseif indices < 115
                aArray = cArrayCreateWeather114()
              elseif indices < 116
                aArray = cArrayCreateWeather115()
              else
                aArray = cArrayCreateWeather116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateWeather117()
              elseif indices < 119
                aArray = cArrayCreateWeather118()
              elseif indices < 120
                aArray = cArrayCreateWeather119()
              else
                aArray = cArrayCreateWeather120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateWeather121()
              elseif indices < 123
                aArray = cArrayCreateWeather122()
              elseif indices < 124
                aArray = cArrayCreateWeather123()
              else
                aArray = cArrayCreateWeather124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateWeather125()
              elseif indices < 127
                aArray = cArrayCreateWeather126()
              elseif indices < 128
                aArray = cArrayCreateWeather127()
              else
                aArray = cArrayCreateWeather128()
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

Weather[] function cArrayCreateWeather001() global
  Weather[] aArr = New Weather[1]
  return aArr
endfunction
Weather[] function cArrayCreateWeather002() global
  Weather[] aArr = New Weather[2]
  return aArr
endfunction
Weather[] function cArrayCreateWeather003() global
  Weather[] aArr = New Weather[3]
  return aArr
endfunction
Weather[] function cArrayCreateWeather004() global
  Weather[] aArr = New Weather[4]
  return aArr
endfunction
Weather[] function cArrayCreateWeather005() global
  Weather[] aArr = New Weather[5]
  return aArr
endfunction
Weather[] function cArrayCreateWeather006() global
  Weather[] aArr = New Weather[6]
  return aArr
endfunction
Weather[] function cArrayCreateWeather007() global
  Weather[] aArr = New Weather[7]
  return aArr
endfunction
Weather[] function cArrayCreateWeather008() global
  Weather[] aArr = New Weather[8]
  return aArr
endfunction
Weather[] function cArrayCreateWeather009() global
  Weather[] aArr = New Weather[9]
  return aArr
endfunction
Weather[] function cArrayCreateWeather010() global
  Weather[] aArr = New Weather[10]
  return aArr
endfunction
Weather[] function cArrayCreateWeather011() global
  Weather[] aArr = New Weather[11]
  return aArr
endfunction
Weather[] function cArrayCreateWeather012() global
  Weather[] aArr = New Weather[12]
  return aArr
endfunction
Weather[] function cArrayCreateWeather013() global
  Weather[] aArr = New Weather[13]
  return aArr
endfunction
Weather[] function cArrayCreateWeather014() global
  Weather[] aArr = New Weather[14]
  return aArr
endfunction
Weather[] function cArrayCreateWeather015() global
  Weather[] aArr = New Weather[15]
  return aArr
endfunction
Weather[] function cArrayCreateWeather016() global
  Weather[] aArr = New Weather[16]
  return aArr
endfunction
Weather[] function cArrayCreateWeather017() global
  Weather[] aArr = New Weather[17]
  return aArr
endfunction
Weather[] function cArrayCreateWeather018() global
  Weather[] aArr = New Weather[18]
  return aArr
endfunction
Weather[] function cArrayCreateWeather019() global
  Weather[] aArr = New Weather[19]
  return aArr
endfunction
Weather[] function cArrayCreateWeather020() global
  Weather[] aArr = New Weather[20]
  return aArr
endfunction
Weather[] function cArrayCreateWeather021() global
  Weather[] aArr = New Weather[21]
  return aArr
endfunction
Weather[] function cArrayCreateWeather022() global
  Weather[] aArr = New Weather[22]
  return aArr
endfunction
Weather[] function cArrayCreateWeather023() global
  Weather[] aArr = New Weather[23]
  return aArr
endfunction
Weather[] function cArrayCreateWeather024() global
  Weather[] aArr = New Weather[24]
  return aArr
endfunction
Weather[] function cArrayCreateWeather025() global
  Weather[] aArr = New Weather[25]
  return aArr
endfunction
Weather[] function cArrayCreateWeather026() global
  Weather[] aArr = New Weather[26]
  return aArr
endfunction
Weather[] function cArrayCreateWeather027() global
  Weather[] aArr = New Weather[27]
  return aArr
endfunction
Weather[] function cArrayCreateWeather028() global
  Weather[] aArr = New Weather[28]
  return aArr
endfunction
Weather[] function cArrayCreateWeather029() global
  Weather[] aArr = New Weather[29]
  return aArr
endfunction
Weather[] function cArrayCreateWeather030() global
  Weather[] aArr = New Weather[30]
  return aArr
endfunction
Weather[] function cArrayCreateWeather031() global
  Weather[] aArr = New Weather[31]
  return aArr
endfunction
Weather[] function cArrayCreateWeather032() global
  Weather[] aArr = New Weather[32]
  return aArr
endfunction
Weather[] function cArrayCreateWeather033() global
  Weather[] aArr = New Weather[33]
  return aArr
endfunction
Weather[] function cArrayCreateWeather034() global
  Weather[] aArr = New Weather[34]
  return aArr
endfunction
Weather[] function cArrayCreateWeather035() global
  Weather[] aArr = New Weather[35]
  return aArr
endfunction
Weather[] function cArrayCreateWeather036() global
  Weather[] aArr = New Weather[36]
  return aArr
endfunction
Weather[] function cArrayCreateWeather037() global
  Weather[] aArr = New Weather[37]
  return aArr
endfunction
Weather[] function cArrayCreateWeather038() global
  Weather[] aArr = New Weather[38]
  return aArr
endfunction
Weather[] function cArrayCreateWeather039() global
  Weather[] aArr = New Weather[39]
  return aArr
endfunction
Weather[] function cArrayCreateWeather040() global
  Weather[] aArr = New Weather[40]
  return aArr
endfunction
Weather[] function cArrayCreateWeather041() global
  Weather[] aArr = New Weather[41]
  return aArr
endfunction
Weather[] function cArrayCreateWeather042() global
  Weather[] aArr = New Weather[42]
  return aArr
endfunction
Weather[] function cArrayCreateWeather043() global
  Weather[] aArr = New Weather[43]
  return aArr
endfunction
Weather[] function cArrayCreateWeather044() global
  Weather[] aArr = New Weather[44]
  return aArr
endfunction
Weather[] function cArrayCreateWeather045() global
  Weather[] aArr = New Weather[45]
  return aArr
endfunction
Weather[] function cArrayCreateWeather046() global
  Weather[] aArr = New Weather[46]
  return aArr
endfunction
Weather[] function cArrayCreateWeather047() global
  Weather[] aArr = New Weather[47]
  return aArr
endfunction
Weather[] function cArrayCreateWeather048() global
  Weather[] aArr = New Weather[48]
  return aArr
endfunction
Weather[] function cArrayCreateWeather049() global
  Weather[] aArr = New Weather[49]
  return aArr
endfunction
Weather[] function cArrayCreateWeather050() global
  Weather[] aArr = New Weather[50]
  return aArr
endfunction
Weather[] function cArrayCreateWeather051() global
  Weather[] aArr = New Weather[51]
  return aArr
endfunction
Weather[] function cArrayCreateWeather052() global
  Weather[] aArr = New Weather[52]
  return aArr
endfunction
Weather[] function cArrayCreateWeather053() global
  Weather[] aArr = New Weather[53]
  return aArr
endfunction
Weather[] function cArrayCreateWeather054() global
  Weather[] aArr = New Weather[54]
  return aArr
endfunction
Weather[] function cArrayCreateWeather055() global
  Weather[] aArr = New Weather[55]
  return aArr
endfunction
Weather[] function cArrayCreateWeather056() global
  Weather[] aArr = New Weather[56]
  return aArr
endfunction
Weather[] function cArrayCreateWeather057() global
  Weather[] aArr = New Weather[57]
  return aArr
endfunction
Weather[] function cArrayCreateWeather058() global
  Weather[] aArr = New Weather[58]
  return aArr
endfunction
Weather[] function cArrayCreateWeather059() global
  Weather[] aArr = New Weather[59]
  return aArr
endfunction
Weather[] function cArrayCreateWeather060() global
  Weather[] aArr = New Weather[60]
  return aArr
endfunction
Weather[] function cArrayCreateWeather061() global
  Weather[] aArr = New Weather[61]
  return aArr
endfunction
Weather[] function cArrayCreateWeather062() global
  Weather[] aArr = New Weather[62]
  return aArr
endfunction
Weather[] function cArrayCreateWeather063() global
  Weather[] aArr = New Weather[63]
  return aArr
endfunction
Weather[] function cArrayCreateWeather064() global
  Weather[] aArr = New Weather[64]
  return aArr
endfunction
Weather[] function cArrayCreateWeather065() global
  Weather[] aArr = New Weather[65]
  return aArr
endfunction
Weather[] function cArrayCreateWeather066() global
  Weather[] aArr = New Weather[66]
  return aArr
endfunction
Weather[] function cArrayCreateWeather067() global
  Weather[] aArr = New Weather[67]
  return aArr
endfunction
Weather[] function cArrayCreateWeather068() global
  Weather[] aArr = New Weather[68]
  return aArr
endfunction
Weather[] function cArrayCreateWeather069() global
  Weather[] aArr = New Weather[69]
  return aArr
endfunction
Weather[] function cArrayCreateWeather070() global
  Weather[] aArr = New Weather[70]
  return aArr
endfunction
Weather[] function cArrayCreateWeather071() global
  Weather[] aArr = New Weather[71]
  return aArr
endfunction
Weather[] function cArrayCreateWeather072() global
  Weather[] aArr = New Weather[72]
  return aArr
endfunction
Weather[] function cArrayCreateWeather073() global
  Weather[] aArr = New Weather[73]
  return aArr
endfunction
Weather[] function cArrayCreateWeather074() global
  Weather[] aArr = New Weather[74]
  return aArr
endfunction
Weather[] function cArrayCreateWeather075() global
  Weather[] aArr = New Weather[75]
  return aArr
endfunction
Weather[] function cArrayCreateWeather076() global
  Weather[] aArr = New Weather[76]
  return aArr
endfunction
Weather[] function cArrayCreateWeather077() global
  Weather[] aArr = New Weather[77]
  return aArr
endfunction
Weather[] function cArrayCreateWeather078() global
  Weather[] aArr = New Weather[78]
  return aArr
endfunction
Weather[] function cArrayCreateWeather079() global
  Weather[] aArr = New Weather[79]
  return aArr
endfunction
Weather[] function cArrayCreateWeather080() global
  Weather[] aArr = New Weather[80]
  return aArr
endfunction
Weather[] function cArrayCreateWeather081() global
  Weather[] aArr = New Weather[81]
  return aArr
endfunction
Weather[] function cArrayCreateWeather082() global
  Weather[] aArr = New Weather[82]
  return aArr
endfunction
Weather[] function cArrayCreateWeather083() global
  Weather[] aArr = New Weather[83]
  return aArr
endfunction
Weather[] function cArrayCreateWeather084() global
  Weather[] aArr = New Weather[84]
  return aArr
endfunction
Weather[] function cArrayCreateWeather085() global
  Weather[] aArr = New Weather[85]
  return aArr
endfunction
Weather[] function cArrayCreateWeather086() global
  Weather[] aArr = New Weather[86]
  return aArr
endfunction
Weather[] function cArrayCreateWeather087() global
  Weather[] aArr = New Weather[87]
  return aArr
endfunction
Weather[] function cArrayCreateWeather088() global
  Weather[] aArr = New Weather[88]
  return aArr
endfunction
Weather[] function cArrayCreateWeather089() global
  Weather[] aArr = New Weather[89]
  return aArr
endfunction
Weather[] function cArrayCreateWeather090() global
  Weather[] aArr = New Weather[90]
  return aArr
endfunction
Weather[] function cArrayCreateWeather091() global
  Weather[] aArr = New Weather[91]
  return aArr
endfunction
Weather[] function cArrayCreateWeather092() global
  Weather[] aArr = New Weather[92]
  return aArr
endfunction
Weather[] function cArrayCreateWeather093() global
  Weather[] aArr = New Weather[93]
  return aArr
endfunction
Weather[] function cArrayCreateWeather094() global
  Weather[] aArr = New Weather[94]
  return aArr
endfunction
Weather[] function cArrayCreateWeather095() global
  Weather[] aArr = New Weather[95]
  return aArr
endfunction
Weather[] function cArrayCreateWeather096() global
  Weather[] aArr = New Weather[96]
  return aArr
endfunction
Weather[] function cArrayCreateWeather097() global
  Weather[] aArr = New Weather[97]
  return aArr
endfunction
Weather[] function cArrayCreateWeather098() global
  Weather[] aArr = New Weather[98]
  return aArr
endfunction
Weather[] function cArrayCreateWeather099() global
  Weather[] aArr = New Weather[99]
  return aArr
endfunction
Weather[] function cArrayCreateWeather100() global
  Weather[] aArr = New Weather[100]
  return aArr
endfunction
Weather[] function cArrayCreateWeather101() global
  Weather[] aArr = New Weather[101]
  return aArr
endfunction
Weather[] function cArrayCreateWeather102() global
  Weather[] aArr = New Weather[102]
  return aArr
endfunction
Weather[] function cArrayCreateWeather103() global
  Weather[] aArr = New Weather[103]
  return aArr
endfunction
Weather[] function cArrayCreateWeather104() global
  Weather[] aArr = New Weather[104]
  return aArr
endfunction
Weather[] function cArrayCreateWeather105() global
  Weather[] aArr = New Weather[105]
  return aArr
endfunction
Weather[] function cArrayCreateWeather106() global
  Weather[] aArr = New Weather[106]
  return aArr
endfunction
Weather[] function cArrayCreateWeather107() global
  Weather[] aArr = New Weather[107]
  return aArr
endfunction
Weather[] function cArrayCreateWeather108() global
  Weather[] aArr = New Weather[108]
  return aArr
endfunction
Weather[] function cArrayCreateWeather109() global
  Weather[] aArr = New Weather[109]
  return aArr
endfunction
Weather[] function cArrayCreateWeather110() global
  Weather[] aArr = New Weather[110]
  return aArr
endfunction
Weather[] function cArrayCreateWeather111() global
  Weather[] aArr = New Weather[111]
  return aArr
endfunction
Weather[] function cArrayCreateWeather112() global
  Weather[] aArr = New Weather[112]
  return aArr
endfunction
Weather[] function cArrayCreateWeather113() global
  Weather[] aArr = New Weather[113]
  return aArr
endfunction
Weather[] function cArrayCreateWeather114() global
  Weather[] aArr = New Weather[114]
  return aArr
endfunction
Weather[] function cArrayCreateWeather115() global
  Weather[] aArr = New Weather[115]
  return aArr
endfunction
Weather[] function cArrayCreateWeather116() global
  Weather[] aArr = New Weather[116]
  return aArr
endfunction
Weather[] function cArrayCreateWeather117() global
  Weather[] aArr = New Weather[117]
  return aArr
endfunction
Weather[] function cArrayCreateWeather118() global
  Weather[] aArr = New Weather[118]
  return aArr
endfunction
Weather[] function cArrayCreateWeather119() global
  Weather[] aArr = New Weather[119]
  return aArr
endfunction
Weather[] function cArrayCreateWeather120() global
  Weather[] aArr = New Weather[120]
  return aArr
endfunction
Weather[] function cArrayCreateWeather121() global
  Weather[] aArr = New Weather[121]
  return aArr
endfunction
Weather[] function cArrayCreateWeather122() global
  Weather[] aArr = New Weather[122]
  return aArr
endfunction
Weather[] function cArrayCreateWeather123() global
  Weather[] aArr = New Weather[123]
  return aArr
endfunction
Weather[] function cArrayCreateWeather124() global
  Weather[] aArr = New Weather[124]
  return aArr
endfunction
Weather[] function cArrayCreateWeather125() global
  Weather[] aArr = New Weather[125]
  return aArr
endfunction
Weather[] function cArrayCreateWeather126() global
  Weather[] aArr = New Weather[126]
  return aArr
endfunction
Weather[] function cArrayCreateWeather127() global
  Weather[] aArr = New Weather[127]
  return aArr
endfunction
Weather[] function cArrayCreateWeather128() global
  Weather[] aArr = New Weather[128]
  return aArr
endfunction
