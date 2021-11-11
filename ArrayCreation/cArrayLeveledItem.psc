Scriptname cArrayLeveledItem Hidden

Int function cGetVersion() global
  return 9001
endfunction

LeveledItem[] function cArrayCreateLeveledItem(Int indices, LeveledItem filler = None, Bool outputTrace = TRUE, \
  Bool tryConsoleUtil = TRUE) global
  {Requirements: None}
  LeveledItem[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; tryConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateLeveledItem()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayLeveledItem::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateLeveledItem001()
              elseif indices < 3
                aArray = cArrayCreateLeveledItem002()
              elseif indices < 4
                aArray = cArrayCreateLeveledItem003()
              else
                aArray = cArrayCreateLeveledItem004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateLeveledItem005()
              elseif indices < 7
                aArray = cArrayCreateLeveledItem006()
              elseif indices < 8
                aArray = cArrayCreateLeveledItem007()
              else
                aArray = cArrayCreateLeveledItem008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateLeveledItem009()
              elseif indices < 11
                aArray = cArrayCreateLeveledItem010()
              elseif indices < 12
                aArray = cArrayCreateLeveledItem011()
              else
                aArray = cArrayCreateLeveledItem012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateLeveledItem013()
              elseif indices < 15
                aArray = cArrayCreateLeveledItem014()
              elseif indices < 16
                aArray = cArrayCreateLeveledItem015()
              else
                aArray = cArrayCreateLeveledItem016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateLeveledItem017()
              elseif indices < 19
                aArray = cArrayCreateLeveledItem018()
              elseif indices < 20
                aArray = cArrayCreateLeveledItem019()
              else
                aArray = cArrayCreateLeveledItem020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateLeveledItem021()
              elseif indices < 23
                aArray = cArrayCreateLeveledItem022()
              elseif indices < 24
                aArray = cArrayCreateLeveledItem023()
              else
                aArray = cArrayCreateLeveledItem024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateLeveledItem025()
              elseif indices < 27
                aArray = cArrayCreateLeveledItem026()
              elseif indices < 28
                aArray = cArrayCreateLeveledItem027()
              else
                aArray = cArrayCreateLeveledItem028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateLeveledItem029()
              elseif indices < 31
                aArray = cArrayCreateLeveledItem030()
              elseif indices < 32
                aArray = cArrayCreateLeveledItem031()
              else
                aArray = cArrayCreateLeveledItem032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateLeveledItem033()
              elseif indices < 35
                aArray = cArrayCreateLeveledItem034()
              elseif indices < 36
                aArray = cArrayCreateLeveledItem035()
              else
                aArray = cArrayCreateLeveledItem036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateLeveledItem037()
              elseif indices < 39
                aArray = cArrayCreateLeveledItem038()
              elseif indices < 40
                aArray = cArrayCreateLeveledItem039()
              else
                aArray = cArrayCreateLeveledItem040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateLeveledItem041()
              elseif indices < 43
                aArray = cArrayCreateLeveledItem042()
              elseif indices < 44
                aArray = cArrayCreateLeveledItem043()
              else
                aArray = cArrayCreateLeveledItem044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateLeveledItem045()
              elseif indices < 47
                aArray = cArrayCreateLeveledItem046()
              elseif indices < 48
                aArray = cArrayCreateLeveledItem047()
              else
                aArray = cArrayCreateLeveledItem048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateLeveledItem049()
              elseif indices < 51
                aArray = cArrayCreateLeveledItem050()
              elseif indices < 52
                aArray = cArrayCreateLeveledItem051()
              else
                aArray = cArrayCreateLeveledItem052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateLeveledItem053()
              elseif indices < 55
                aArray = cArrayCreateLeveledItem054()
              elseif indices < 56
                aArray = cArrayCreateLeveledItem055()
              else
                aArray = cArrayCreateLeveledItem056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateLeveledItem057()
              elseif indices < 59
                aArray = cArrayCreateLeveledItem058()
              elseif indices < 60
                aArray = cArrayCreateLeveledItem059()
              else
                aArray = cArrayCreateLeveledItem060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateLeveledItem061()
              elseif indices < 63
                aArray = cArrayCreateLeveledItem062()
              elseif indices < 64
                aArray = cArrayCreateLeveledItem063()
              else
                aArray = cArrayCreateLeveledItem064()
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
                aArray = cArrayCreateLeveledItem065()
              elseif indices < 67
                aArray = cArrayCreateLeveledItem066()
              elseif indices < 68
                aArray = cArrayCreateLeveledItem067()
              else
                aArray = cArrayCreateLeveledItem068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateLeveledItem069()
              elseif indices < 71
                aArray = cArrayCreateLeveledItem070()
              elseif indices < 72
                aArray = cArrayCreateLeveledItem071()
              else
                aArray = cArrayCreateLeveledItem072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateLeveledItem073()
              elseif indices < 75
                aArray = cArrayCreateLeveledItem074()
              elseif indices < 76
                aArray = cArrayCreateLeveledItem075()
              else
                aArray = cArrayCreateLeveledItem076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateLeveledItem077()
              elseif indices < 79
                aArray = cArrayCreateLeveledItem078()
              elseif indices < 80
                aArray = cArrayCreateLeveledItem079()
              else
                aArray = cArrayCreateLeveledItem080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateLeveledItem081()
              elseif indices < 83
                aArray = cArrayCreateLeveledItem082()
              elseif indices < 84
                aArray = cArrayCreateLeveledItem083()
              else
                aArray = cArrayCreateLeveledItem084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateLeveledItem085()
              elseif indices < 87
                aArray = cArrayCreateLeveledItem086()
              elseif indices < 88
                aArray = cArrayCreateLeveledItem087()
              else
                aArray = cArrayCreateLeveledItem088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateLeveledItem089()
              elseif indices < 91
                aArray = cArrayCreateLeveledItem090()
              elseif indices < 92
                aArray = cArrayCreateLeveledItem091()
              else
                aArray = cArrayCreateLeveledItem092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateLeveledItem093()
              elseif indices < 95
                aArray = cArrayCreateLeveledItem094()
              elseif indices < 96
                aArray = cArrayCreateLeveledItem095()
              else
                aArray = cArrayCreateLeveledItem096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateLeveledItem097()
              elseif indices < 99
                aArray = cArrayCreateLeveledItem098()
              elseif indices < 100
                aArray = cArrayCreateLeveledItem099()
              else
                aArray = cArrayCreateLeveledItem100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateLeveledItem101()
              elseif indices < 103
                aArray = cArrayCreateLeveledItem102()
              elseif indices < 104
                aArray = cArrayCreateLeveledItem103()
              else
                aArray = cArrayCreateLeveledItem104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateLeveledItem105()
              elseif indices < 107
                aArray = cArrayCreateLeveledItem106()
              elseif indices < 108
                aArray = cArrayCreateLeveledItem107()
              else
                aArray = cArrayCreateLeveledItem108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateLeveledItem109()
              elseif indices < 111
                aArray = cArrayCreateLeveledItem110()
              elseif indices < 112
                aArray = cArrayCreateLeveledItem111()
              else
                aArray = cArrayCreateLeveledItem112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateLeveledItem113()
              elseif indices < 115
                aArray = cArrayCreateLeveledItem114()
              elseif indices < 116
                aArray = cArrayCreateLeveledItem115()
              else
                aArray = cArrayCreateLeveledItem116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateLeveledItem117()
              elseif indices < 119
                aArray = cArrayCreateLeveledItem118()
              elseif indices < 120
                aArray = cArrayCreateLeveledItem119()
              else
                aArray = cArrayCreateLeveledItem120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateLeveledItem121()
              elseif indices < 123
                aArray = cArrayCreateLeveledItem122()
              elseif indices < 124
                aArray = cArrayCreateLeveledItem123()
              else
                aArray = cArrayCreateLeveledItem124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateLeveledItem125()
              elseif indices < 127
                aArray = cArrayCreateLeveledItem126()
              elseif indices < 128
                aArray = cArrayCreateLeveledItem127()
              else
                aArray = cArrayCreateLeveledItem128()
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

LeveledItem[] function cArrayCreateLeveledItem001() global
  LeveledItem[] aArr = New LeveledItem[1]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem002() global
  LeveledItem[] aArr = New LeveledItem[2]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem003() global
  LeveledItem[] aArr = New LeveledItem[3]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem004() global
  LeveledItem[] aArr = New LeveledItem[4]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem005() global
  LeveledItem[] aArr = New LeveledItem[5]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem006() global
  LeveledItem[] aArr = New LeveledItem[6]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem007() global
  LeveledItem[] aArr = New LeveledItem[7]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem008() global
  LeveledItem[] aArr = New LeveledItem[8]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem009() global
  LeveledItem[] aArr = New LeveledItem[9]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem010() global
  LeveledItem[] aArr = New LeveledItem[10]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem011() global
  LeveledItem[] aArr = New LeveledItem[11]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem012() global
  LeveledItem[] aArr = New LeveledItem[12]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem013() global
  LeveledItem[] aArr = New LeveledItem[13]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem014() global
  LeveledItem[] aArr = New LeveledItem[14]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem015() global
  LeveledItem[] aArr = New LeveledItem[15]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem016() global
  LeveledItem[] aArr = New LeveledItem[16]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem017() global
  LeveledItem[] aArr = New LeveledItem[17]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem018() global
  LeveledItem[] aArr = New LeveledItem[18]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem019() global
  LeveledItem[] aArr = New LeveledItem[19]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem020() global
  LeveledItem[] aArr = New LeveledItem[20]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem021() global
  LeveledItem[] aArr = New LeveledItem[21]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem022() global
  LeveledItem[] aArr = New LeveledItem[22]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem023() global
  LeveledItem[] aArr = New LeveledItem[23]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem024() global
  LeveledItem[] aArr = New LeveledItem[24]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem025() global
  LeveledItem[] aArr = New LeveledItem[25]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem026() global
  LeveledItem[] aArr = New LeveledItem[26]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem027() global
  LeveledItem[] aArr = New LeveledItem[27]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem028() global
  LeveledItem[] aArr = New LeveledItem[28]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem029() global
  LeveledItem[] aArr = New LeveledItem[29]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem030() global
  LeveledItem[] aArr = New LeveledItem[30]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem031() global
  LeveledItem[] aArr = New LeveledItem[31]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem032() global
  LeveledItem[] aArr = New LeveledItem[32]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem033() global
  LeveledItem[] aArr = New LeveledItem[33]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem034() global
  LeveledItem[] aArr = New LeveledItem[34]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem035() global
  LeveledItem[] aArr = New LeveledItem[35]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem036() global
  LeveledItem[] aArr = New LeveledItem[36]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem037() global
  LeveledItem[] aArr = New LeveledItem[37]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem038() global
  LeveledItem[] aArr = New LeveledItem[38]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem039() global
  LeveledItem[] aArr = New LeveledItem[39]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem040() global
  LeveledItem[] aArr = New LeveledItem[40]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem041() global
  LeveledItem[] aArr = New LeveledItem[41]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem042() global
  LeveledItem[] aArr = New LeveledItem[42]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem043() global
  LeveledItem[] aArr = New LeveledItem[43]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem044() global
  LeveledItem[] aArr = New LeveledItem[44]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem045() global
  LeveledItem[] aArr = New LeveledItem[45]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem046() global
  LeveledItem[] aArr = New LeveledItem[46]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem047() global
  LeveledItem[] aArr = New LeveledItem[47]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem048() global
  LeveledItem[] aArr = New LeveledItem[48]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem049() global
  LeveledItem[] aArr = New LeveledItem[49]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem050() global
  LeveledItem[] aArr = New LeveledItem[50]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem051() global
  LeveledItem[] aArr = New LeveledItem[51]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem052() global
  LeveledItem[] aArr = New LeveledItem[52]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem053() global
  LeveledItem[] aArr = New LeveledItem[53]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem054() global
  LeveledItem[] aArr = New LeveledItem[54]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem055() global
  LeveledItem[] aArr = New LeveledItem[55]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem056() global
  LeveledItem[] aArr = New LeveledItem[56]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem057() global
  LeveledItem[] aArr = New LeveledItem[57]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem058() global
  LeveledItem[] aArr = New LeveledItem[58]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem059() global
  LeveledItem[] aArr = New LeveledItem[59]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem060() global
  LeveledItem[] aArr = New LeveledItem[60]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem061() global
  LeveledItem[] aArr = New LeveledItem[61]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem062() global
  LeveledItem[] aArr = New LeveledItem[62]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem063() global
  LeveledItem[] aArr = New LeveledItem[63]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem064() global
  LeveledItem[] aArr = New LeveledItem[64]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem065() global
  LeveledItem[] aArr = New LeveledItem[65]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem066() global
  LeveledItem[] aArr = New LeveledItem[66]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem067() global
  LeveledItem[] aArr = New LeveledItem[67]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem068() global
  LeveledItem[] aArr = New LeveledItem[68]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem069() global
  LeveledItem[] aArr = New LeveledItem[69]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem070() global
  LeveledItem[] aArr = New LeveledItem[70]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem071() global
  LeveledItem[] aArr = New LeveledItem[71]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem072() global
  LeveledItem[] aArr = New LeveledItem[72]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem073() global
  LeveledItem[] aArr = New LeveledItem[73]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem074() global
  LeveledItem[] aArr = New LeveledItem[74]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem075() global
  LeveledItem[] aArr = New LeveledItem[75]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem076() global
  LeveledItem[] aArr = New LeveledItem[76]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem077() global
  LeveledItem[] aArr = New LeveledItem[77]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem078() global
  LeveledItem[] aArr = New LeveledItem[78]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem079() global
  LeveledItem[] aArr = New LeveledItem[79]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem080() global
  LeveledItem[] aArr = New LeveledItem[80]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem081() global
  LeveledItem[] aArr = New LeveledItem[81]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem082() global
  LeveledItem[] aArr = New LeveledItem[82]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem083() global
  LeveledItem[] aArr = New LeveledItem[83]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem084() global
  LeveledItem[] aArr = New LeveledItem[84]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem085() global
  LeveledItem[] aArr = New LeveledItem[85]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem086() global
  LeveledItem[] aArr = New LeveledItem[86]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem087() global
  LeveledItem[] aArr = New LeveledItem[87]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem088() global
  LeveledItem[] aArr = New LeveledItem[88]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem089() global
  LeveledItem[] aArr = New LeveledItem[89]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem090() global
  LeveledItem[] aArr = New LeveledItem[90]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem091() global
  LeveledItem[] aArr = New LeveledItem[91]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem092() global
  LeveledItem[] aArr = New LeveledItem[92]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem093() global
  LeveledItem[] aArr = New LeveledItem[93]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem094() global
  LeveledItem[] aArr = New LeveledItem[94]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem095() global
  LeveledItem[] aArr = New LeveledItem[95]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem096() global
  LeveledItem[] aArr = New LeveledItem[96]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem097() global
  LeveledItem[] aArr = New LeveledItem[97]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem098() global
  LeveledItem[] aArr = New LeveledItem[98]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem099() global
  LeveledItem[] aArr = New LeveledItem[99]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem100() global
  LeveledItem[] aArr = New LeveledItem[100]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem101() global
  LeveledItem[] aArr = New LeveledItem[101]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem102() global
  LeveledItem[] aArr = New LeveledItem[102]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem103() global
  LeveledItem[] aArr = New LeveledItem[103]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem104() global
  LeveledItem[] aArr = New LeveledItem[104]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem105() global
  LeveledItem[] aArr = New LeveledItem[105]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem106() global
  LeveledItem[] aArr = New LeveledItem[106]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem107() global
  LeveledItem[] aArr = New LeveledItem[107]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem108() global
  LeveledItem[] aArr = New LeveledItem[108]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem109() global
  LeveledItem[] aArr = New LeveledItem[109]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem110() global
  LeveledItem[] aArr = New LeveledItem[110]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem111() global
  LeveledItem[] aArr = New LeveledItem[111]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem112() global
  LeveledItem[] aArr = New LeveledItem[112]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem113() global
  LeveledItem[] aArr = New LeveledItem[113]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem114() global
  LeveledItem[] aArr = New LeveledItem[114]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem115() global
  LeveledItem[] aArr = New LeveledItem[115]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem116() global
  LeveledItem[] aArr = New LeveledItem[116]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem117() global
  LeveledItem[] aArr = New LeveledItem[117]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem118() global
  LeveledItem[] aArr = New LeveledItem[118]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem119() global
  LeveledItem[] aArr = New LeveledItem[119]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem120() global
  LeveledItem[] aArr = New LeveledItem[120]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem121() global
  LeveledItem[] aArr = New LeveledItem[121]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem122() global
  LeveledItem[] aArr = New LeveledItem[122]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem123() global
  LeveledItem[] aArr = New LeveledItem[123]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem124() global
  LeveledItem[] aArr = New LeveledItem[124]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem125() global
  LeveledItem[] aArr = New LeveledItem[125]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem126() global
  LeveledItem[] aArr = New LeveledItem[126]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem127() global
  LeveledItem[] aArr = New LeveledItem[127]
  return aArr
endfunction
LeveledItem[] function cArrayCreateLeveledItem128() global
  LeveledItem[] aArr = New LeveledItem[128]
  return aArr
endfunction
