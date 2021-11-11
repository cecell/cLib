Scriptname cArrayWordOfPower Hidden

Int function cGetVersion() global
  return 9001
endfunction

WordOfPower[] function cArrayCreateWordOfPower(Int indices, WordOfPower filler = None, Bool outputTrace = TRUE, \
  Bool tryConsoleUtil = TRUE) global
  {Requirements: None}
  WordOfPower[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace WordOfPowers
    ; tryConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateWordOfPower()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayWordOfPower::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateWordOfPower001()
              elseif indices < 3
                aArray = cArrayCreateWordOfPower002()
              elseif indices < 4
                aArray = cArrayCreateWordOfPower003()
              else
                aArray = cArrayCreateWordOfPower004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateWordOfPower005()
              elseif indices < 7
                aArray = cArrayCreateWordOfPower006()
              elseif indices < 8
                aArray = cArrayCreateWordOfPower007()
              else
                aArray = cArrayCreateWordOfPower008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateWordOfPower009()
              elseif indices < 11
                aArray = cArrayCreateWordOfPower010()
              elseif indices < 12
                aArray = cArrayCreateWordOfPower011()
              else
                aArray = cArrayCreateWordOfPower012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateWordOfPower013()
              elseif indices < 15
                aArray = cArrayCreateWordOfPower014()
              elseif indices < 16
                aArray = cArrayCreateWordOfPower015()
              else
                aArray = cArrayCreateWordOfPower016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateWordOfPower017()
              elseif indices < 19
                aArray = cArrayCreateWordOfPower018()
              elseif indices < 20
                aArray = cArrayCreateWordOfPower019()
              else
                aArray = cArrayCreateWordOfPower020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateWordOfPower021()
              elseif indices < 23
                aArray = cArrayCreateWordOfPower022()
              elseif indices < 24
                aArray = cArrayCreateWordOfPower023()
              else
                aArray = cArrayCreateWordOfPower024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateWordOfPower025()
              elseif indices < 27
                aArray = cArrayCreateWordOfPower026()
              elseif indices < 28
                aArray = cArrayCreateWordOfPower027()
              else
                aArray = cArrayCreateWordOfPower028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateWordOfPower029()
              elseif indices < 31
                aArray = cArrayCreateWordOfPower030()
              elseif indices < 32
                aArray = cArrayCreateWordOfPower031()
              else
                aArray = cArrayCreateWordOfPower032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateWordOfPower033()
              elseif indices < 35
                aArray = cArrayCreateWordOfPower034()
              elseif indices < 36
                aArray = cArrayCreateWordOfPower035()
              else
                aArray = cArrayCreateWordOfPower036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateWordOfPower037()
              elseif indices < 39
                aArray = cArrayCreateWordOfPower038()
              elseif indices < 40
                aArray = cArrayCreateWordOfPower039()
              else
                aArray = cArrayCreateWordOfPower040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateWordOfPower041()
              elseif indices < 43
                aArray = cArrayCreateWordOfPower042()
              elseif indices < 44
                aArray = cArrayCreateWordOfPower043()
              else
                aArray = cArrayCreateWordOfPower044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateWordOfPower045()
              elseif indices < 47
                aArray = cArrayCreateWordOfPower046()
              elseif indices < 48
                aArray = cArrayCreateWordOfPower047()
              else
                aArray = cArrayCreateWordOfPower048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateWordOfPower049()
              elseif indices < 51
                aArray = cArrayCreateWordOfPower050()
              elseif indices < 52
                aArray = cArrayCreateWordOfPower051()
              else
                aArray = cArrayCreateWordOfPower052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateWordOfPower053()
              elseif indices < 55
                aArray = cArrayCreateWordOfPower054()
              elseif indices < 56
                aArray = cArrayCreateWordOfPower055()
              else
                aArray = cArrayCreateWordOfPower056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateWordOfPower057()
              elseif indices < 59
                aArray = cArrayCreateWordOfPower058()
              elseif indices < 60
                aArray = cArrayCreateWordOfPower059()
              else
                aArray = cArrayCreateWordOfPower060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateWordOfPower061()
              elseif indices < 63
                aArray = cArrayCreateWordOfPower062()
              elseif indices < 64
                aArray = cArrayCreateWordOfPower063()
              else
                aArray = cArrayCreateWordOfPower064()
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
                aArray = cArrayCreateWordOfPower065()
              elseif indices < 67
                aArray = cArrayCreateWordOfPower066()
              elseif indices < 68
                aArray = cArrayCreateWordOfPower067()
              else
                aArray = cArrayCreateWordOfPower068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateWordOfPower069()
              elseif indices < 71
                aArray = cArrayCreateWordOfPower070()
              elseif indices < 72
                aArray = cArrayCreateWordOfPower071()
              else
                aArray = cArrayCreateWordOfPower072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateWordOfPower073()
              elseif indices < 75
                aArray = cArrayCreateWordOfPower074()
              elseif indices < 76
                aArray = cArrayCreateWordOfPower075()
              else
                aArray = cArrayCreateWordOfPower076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateWordOfPower077()
              elseif indices < 79
                aArray = cArrayCreateWordOfPower078()
              elseif indices < 80
                aArray = cArrayCreateWordOfPower079()
              else
                aArray = cArrayCreateWordOfPower080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateWordOfPower081()
              elseif indices < 83
                aArray = cArrayCreateWordOfPower082()
              elseif indices < 84
                aArray = cArrayCreateWordOfPower083()
              else
                aArray = cArrayCreateWordOfPower084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateWordOfPower085()
              elseif indices < 87
                aArray = cArrayCreateWordOfPower086()
              elseif indices < 88
                aArray = cArrayCreateWordOfPower087()
              else
                aArray = cArrayCreateWordOfPower088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateWordOfPower089()
              elseif indices < 91
                aArray = cArrayCreateWordOfPower090()
              elseif indices < 92
                aArray = cArrayCreateWordOfPower091()
              else
                aArray = cArrayCreateWordOfPower092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateWordOfPower093()
              elseif indices < 95
                aArray = cArrayCreateWordOfPower094()
              elseif indices < 96
                aArray = cArrayCreateWordOfPower095()
              else
                aArray = cArrayCreateWordOfPower096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateWordOfPower097()
              elseif indices < 99
                aArray = cArrayCreateWordOfPower098()
              elseif indices < 100
                aArray = cArrayCreateWordOfPower099()
              else
                aArray = cArrayCreateWordOfPower100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateWordOfPower101()
              elseif indices < 103
                aArray = cArrayCreateWordOfPower102()
              elseif indices < 104
                aArray = cArrayCreateWordOfPower103()
              else
                aArray = cArrayCreateWordOfPower104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateWordOfPower105()
              elseif indices < 107
                aArray = cArrayCreateWordOfPower106()
              elseif indices < 108
                aArray = cArrayCreateWordOfPower107()
              else
                aArray = cArrayCreateWordOfPower108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateWordOfPower109()
              elseif indices < 111
                aArray = cArrayCreateWordOfPower110()
              elseif indices < 112
                aArray = cArrayCreateWordOfPower111()
              else
                aArray = cArrayCreateWordOfPower112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateWordOfPower113()
              elseif indices < 115
                aArray = cArrayCreateWordOfPower114()
              elseif indices < 116
                aArray = cArrayCreateWordOfPower115()
              else
                aArray = cArrayCreateWordOfPower116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateWordOfPower117()
              elseif indices < 119
                aArray = cArrayCreateWordOfPower118()
              elseif indices < 120
                aArray = cArrayCreateWordOfPower119()
              else
                aArray = cArrayCreateWordOfPower120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateWordOfPower121()
              elseif indices < 123
                aArray = cArrayCreateWordOfPower122()
              elseif indices < 124
                aArray = cArrayCreateWordOfPower123()
              else
                aArray = cArrayCreateWordOfPower124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateWordOfPower125()
              elseif indices < 127
                aArray = cArrayCreateWordOfPower126()
              elseif indices < 128
                aArray = cArrayCreateWordOfPower127()
              else
                aArray = cArrayCreateWordOfPower128()
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

WordOfPower[] function cArrayCreateWordOfPower001() global
  WordOfPower[] aArr = New WordOfPower[1]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower002() global
  WordOfPower[] aArr = New WordOfPower[2]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower003() global
  WordOfPower[] aArr = New WordOfPower[3]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower004() global
  WordOfPower[] aArr = New WordOfPower[4]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower005() global
  WordOfPower[] aArr = New WordOfPower[5]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower006() global
  WordOfPower[] aArr = New WordOfPower[6]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower007() global
  WordOfPower[] aArr = New WordOfPower[7]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower008() global
  WordOfPower[] aArr = New WordOfPower[8]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower009() global
  WordOfPower[] aArr = New WordOfPower[9]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower010() global
  WordOfPower[] aArr = New WordOfPower[10]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower011() global
  WordOfPower[] aArr = New WordOfPower[11]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower012() global
  WordOfPower[] aArr = New WordOfPower[12]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower013() global
  WordOfPower[] aArr = New WordOfPower[13]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower014() global
  WordOfPower[] aArr = New WordOfPower[14]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower015() global
  WordOfPower[] aArr = New WordOfPower[15]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower016() global
  WordOfPower[] aArr = New WordOfPower[16]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower017() global
  WordOfPower[] aArr = New WordOfPower[17]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower018() global
  WordOfPower[] aArr = New WordOfPower[18]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower019() global
  WordOfPower[] aArr = New WordOfPower[19]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower020() global
  WordOfPower[] aArr = New WordOfPower[20]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower021() global
  WordOfPower[] aArr = New WordOfPower[21]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower022() global
  WordOfPower[] aArr = New WordOfPower[22]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower023() global
  WordOfPower[] aArr = New WordOfPower[23]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower024() global
  WordOfPower[] aArr = New WordOfPower[24]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower025() global
  WordOfPower[] aArr = New WordOfPower[25]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower026() global
  WordOfPower[] aArr = New WordOfPower[26]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower027() global
  WordOfPower[] aArr = New WordOfPower[27]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower028() global
  WordOfPower[] aArr = New WordOfPower[28]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower029() global
  WordOfPower[] aArr = New WordOfPower[29]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower030() global
  WordOfPower[] aArr = New WordOfPower[30]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower031() global
  WordOfPower[] aArr = New WordOfPower[31]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower032() global
  WordOfPower[] aArr = New WordOfPower[32]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower033() global
  WordOfPower[] aArr = New WordOfPower[33]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower034() global
  WordOfPower[] aArr = New WordOfPower[34]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower035() global
  WordOfPower[] aArr = New WordOfPower[35]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower036() global
  WordOfPower[] aArr = New WordOfPower[36]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower037() global
  WordOfPower[] aArr = New WordOfPower[37]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower038() global
  WordOfPower[] aArr = New WordOfPower[38]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower039() global
  WordOfPower[] aArr = New WordOfPower[39]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower040() global
  WordOfPower[] aArr = New WordOfPower[40]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower041() global
  WordOfPower[] aArr = New WordOfPower[41]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower042() global
  WordOfPower[] aArr = New WordOfPower[42]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower043() global
  WordOfPower[] aArr = New WordOfPower[43]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower044() global
  WordOfPower[] aArr = New WordOfPower[44]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower045() global
  WordOfPower[] aArr = New WordOfPower[45]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower046() global
  WordOfPower[] aArr = New WordOfPower[46]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower047() global
  WordOfPower[] aArr = New WordOfPower[47]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower048() global
  WordOfPower[] aArr = New WordOfPower[48]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower049() global
  WordOfPower[] aArr = New WordOfPower[49]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower050() global
  WordOfPower[] aArr = New WordOfPower[50]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower051() global
  WordOfPower[] aArr = New WordOfPower[51]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower052() global
  WordOfPower[] aArr = New WordOfPower[52]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower053() global
  WordOfPower[] aArr = New WordOfPower[53]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower054() global
  WordOfPower[] aArr = New WordOfPower[54]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower055() global
  WordOfPower[] aArr = New WordOfPower[55]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower056() global
  WordOfPower[] aArr = New WordOfPower[56]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower057() global
  WordOfPower[] aArr = New WordOfPower[57]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower058() global
  WordOfPower[] aArr = New WordOfPower[58]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower059() global
  WordOfPower[] aArr = New WordOfPower[59]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower060() global
  WordOfPower[] aArr = New WordOfPower[60]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower061() global
  WordOfPower[] aArr = New WordOfPower[61]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower062() global
  WordOfPower[] aArr = New WordOfPower[62]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower063() global
  WordOfPower[] aArr = New WordOfPower[63]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower064() global
  WordOfPower[] aArr = New WordOfPower[64]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower065() global
  WordOfPower[] aArr = New WordOfPower[65]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower066() global
  WordOfPower[] aArr = New WordOfPower[66]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower067() global
  WordOfPower[] aArr = New WordOfPower[67]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower068() global
  WordOfPower[] aArr = New WordOfPower[68]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower069() global
  WordOfPower[] aArr = New WordOfPower[69]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower070() global
  WordOfPower[] aArr = New WordOfPower[70]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower071() global
  WordOfPower[] aArr = New WordOfPower[71]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower072() global
  WordOfPower[] aArr = New WordOfPower[72]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower073() global
  WordOfPower[] aArr = New WordOfPower[73]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower074() global
  WordOfPower[] aArr = New WordOfPower[74]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower075() global
  WordOfPower[] aArr = New WordOfPower[75]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower076() global
  WordOfPower[] aArr = New WordOfPower[76]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower077() global
  WordOfPower[] aArr = New WordOfPower[77]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower078() global
  WordOfPower[] aArr = New WordOfPower[78]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower079() global
  WordOfPower[] aArr = New WordOfPower[79]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower080() global
  WordOfPower[] aArr = New WordOfPower[80]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower081() global
  WordOfPower[] aArr = New WordOfPower[81]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower082() global
  WordOfPower[] aArr = New WordOfPower[82]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower083() global
  WordOfPower[] aArr = New WordOfPower[83]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower084() global
  WordOfPower[] aArr = New WordOfPower[84]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower085() global
  WordOfPower[] aArr = New WordOfPower[85]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower086() global
  WordOfPower[] aArr = New WordOfPower[86]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower087() global
  WordOfPower[] aArr = New WordOfPower[87]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower088() global
  WordOfPower[] aArr = New WordOfPower[88]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower089() global
  WordOfPower[] aArr = New WordOfPower[89]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower090() global
  WordOfPower[] aArr = New WordOfPower[90]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower091() global
  WordOfPower[] aArr = New WordOfPower[91]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower092() global
  WordOfPower[] aArr = New WordOfPower[92]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower093() global
  WordOfPower[] aArr = New WordOfPower[93]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower094() global
  WordOfPower[] aArr = New WordOfPower[94]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower095() global
  WordOfPower[] aArr = New WordOfPower[95]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower096() global
  WordOfPower[] aArr = New WordOfPower[96]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower097() global
  WordOfPower[] aArr = New WordOfPower[97]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower098() global
  WordOfPower[] aArr = New WordOfPower[98]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower099() global
  WordOfPower[] aArr = New WordOfPower[99]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower100() global
  WordOfPower[] aArr = New WordOfPower[100]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower101() global
  WordOfPower[] aArr = New WordOfPower[101]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower102() global
  WordOfPower[] aArr = New WordOfPower[102]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower103() global
  WordOfPower[] aArr = New WordOfPower[103]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower104() global
  WordOfPower[] aArr = New WordOfPower[104]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower105() global
  WordOfPower[] aArr = New WordOfPower[105]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower106() global
  WordOfPower[] aArr = New WordOfPower[106]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower107() global
  WordOfPower[] aArr = New WordOfPower[107]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower108() global
  WordOfPower[] aArr = New WordOfPower[108]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower109() global
  WordOfPower[] aArr = New WordOfPower[109]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower110() global
  WordOfPower[] aArr = New WordOfPower[110]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower111() global
  WordOfPower[] aArr = New WordOfPower[111]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower112() global
  WordOfPower[] aArr = New WordOfPower[112]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower113() global
  WordOfPower[] aArr = New WordOfPower[113]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower114() global
  WordOfPower[] aArr = New WordOfPower[114]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower115() global
  WordOfPower[] aArr = New WordOfPower[115]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower116() global
  WordOfPower[] aArr = New WordOfPower[116]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower117() global
  WordOfPower[] aArr = New WordOfPower[117]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower118() global
  WordOfPower[] aArr = New WordOfPower[118]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower119() global
  WordOfPower[] aArr = New WordOfPower[119]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower120() global
  WordOfPower[] aArr = New WordOfPower[120]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower121() global
  WordOfPower[] aArr = New WordOfPower[121]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower122() global
  WordOfPower[] aArr = New WordOfPower[122]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower123() global
  WordOfPower[] aArr = New WordOfPower[123]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower124() global
  WordOfPower[] aArr = New WordOfPower[124]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower125() global
  WordOfPower[] aArr = New WordOfPower[125]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower126() global
  WordOfPower[] aArr = New WordOfPower[126]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower127() global
  WordOfPower[] aArr = New WordOfPower[127]
  return aArr
endfunction
WordOfPower[] function cArrayCreateWordOfPower128() global
  WordOfPower[] aArr = New WordOfPower[128]
  return aArr
endfunction
