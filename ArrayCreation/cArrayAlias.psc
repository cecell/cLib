Scriptname cArrayAlias Hidden

Int function cGetVersion() global
  return 9001
endfunction

Alias[] function cArrayCreateAlias(Int indices, Alias filler = None, Bool useSKSE = TRUE, Bool outputTrace = TRUE, \
    Bool useConsoleUtil = TRUE) global
  {Requirements: None, SKSE:Soft}
  Alias[] aArray
  if useSKSE && indices > 0
    aArray = Utility.CreateAliasArray(indices, filler)
  elseif indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; useConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateAlias()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayAlias::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateAlias001()
              elseif indices < 3
                aArray = cArrayCreateAlias002()
              elseif indices < 4
                aArray = cArrayCreateAlias003()
              else
                aArray = cArrayCreateAlias004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateAlias005()
              elseif indices < 7
                aArray = cArrayCreateAlias006()
              elseif indices < 8
                aArray = cArrayCreateAlias007()
              else
                aArray = cArrayCreateAlias008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateAlias009()
              elseif indices < 11
                aArray = cArrayCreateAlias010()
              elseif indices < 12
                aArray = cArrayCreateAlias011()
              else
                aArray = cArrayCreateAlias012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateAlias013()
              elseif indices < 15
                aArray = cArrayCreateAlias014()
              elseif indices < 16
                aArray = cArrayCreateAlias015()
              else
                aArray = cArrayCreateAlias016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateAlias017()
              elseif indices < 19
                aArray = cArrayCreateAlias018()
              elseif indices < 20
                aArray = cArrayCreateAlias019()
              else
                aArray = cArrayCreateAlias020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateAlias021()
              elseif indices < 23
                aArray = cArrayCreateAlias022()
              elseif indices < 24
                aArray = cArrayCreateAlias023()
              else
                aArray = cArrayCreateAlias024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateAlias025()
              elseif indices < 27
                aArray = cArrayCreateAlias026()
              elseif indices < 28
                aArray = cArrayCreateAlias027()
              else
                aArray = cArrayCreateAlias028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateAlias029()
              elseif indices < 31
                aArray = cArrayCreateAlias030()
              elseif indices < 32
                aArray = cArrayCreateAlias031()
              else
                aArray = cArrayCreateAlias032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateAlias033()
              elseif indices < 35
                aArray = cArrayCreateAlias034()
              elseif indices < 36
                aArray = cArrayCreateAlias035()
              else
                aArray = cArrayCreateAlias036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateAlias037()
              elseif indices < 39
                aArray = cArrayCreateAlias038()
              elseif indices < 40
                aArray = cArrayCreateAlias039()
              else
                aArray = cArrayCreateAlias040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateAlias041()
              elseif indices < 43
                aArray = cArrayCreateAlias042()
              elseif indices < 44
                aArray = cArrayCreateAlias043()
              else
                aArray = cArrayCreateAlias044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateAlias045()
              elseif indices < 47
                aArray = cArrayCreateAlias046()
              elseif indices < 48
                aArray = cArrayCreateAlias047()
              else
                aArray = cArrayCreateAlias048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateAlias049()
              elseif indices < 51
                aArray = cArrayCreateAlias050()
              elseif indices < 52
                aArray = cArrayCreateAlias051()
              else
                aArray = cArrayCreateAlias052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateAlias053()
              elseif indices < 55
                aArray = cArrayCreateAlias054()
              elseif indices < 56
                aArray = cArrayCreateAlias055()
              else
                aArray = cArrayCreateAlias056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateAlias057()
              elseif indices < 59
                aArray = cArrayCreateAlias058()
              elseif indices < 60
                aArray = cArrayCreateAlias059()
              else
                aArray = cArrayCreateAlias060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateAlias061()
              elseif indices < 63
                aArray = cArrayCreateAlias062()
              elseif indices < 64
                aArray = cArrayCreateAlias063()
              else
                aArray = cArrayCreateAlias064()
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
                aArray = cArrayCreateAlias065()
              elseif indices < 67
                aArray = cArrayCreateAlias066()
              elseif indices < 68
                aArray = cArrayCreateAlias067()
              else
                aArray = cArrayCreateAlias068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateAlias069()
              elseif indices < 71
                aArray = cArrayCreateAlias070()
              elseif indices < 72
                aArray = cArrayCreateAlias071()
              else
                aArray = cArrayCreateAlias072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateAlias073()
              elseif indices < 75
                aArray = cArrayCreateAlias074()
              elseif indices < 76
                aArray = cArrayCreateAlias075()
              else
                aArray = cArrayCreateAlias076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateAlias077()
              elseif indices < 79
                aArray = cArrayCreateAlias078()
              elseif indices < 80
                aArray = cArrayCreateAlias079()
              else
                aArray = cArrayCreateAlias080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateAlias081()
              elseif indices < 83
                aArray = cArrayCreateAlias082()
              elseif indices < 84
                aArray = cArrayCreateAlias083()
              else
                aArray = cArrayCreateAlias084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateAlias085()
              elseif indices < 87
                aArray = cArrayCreateAlias086()
              elseif indices < 88
                aArray = cArrayCreateAlias087()
              else
                aArray = cArrayCreateAlias088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateAlias089()
              elseif indices < 91
                aArray = cArrayCreateAlias090()
              elseif indices < 92
                aArray = cArrayCreateAlias091()
              else
                aArray = cArrayCreateAlias092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateAlias093()
              elseif indices < 95
                aArray = cArrayCreateAlias094()
              elseif indices < 96
                aArray = cArrayCreateAlias095()
              else
                aArray = cArrayCreateAlias096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateAlias097()
              elseif indices < 99
                aArray = cArrayCreateAlias098()
              elseif indices < 100
                aArray = cArrayCreateAlias099()
              else
                aArray = cArrayCreateAlias100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateAlias101()
              elseif indices < 103
                aArray = cArrayCreateAlias102()
              elseif indices < 104
                aArray = cArrayCreateAlias103()
              else
                aArray = cArrayCreateAlias104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateAlias105()
              elseif indices < 107
                aArray = cArrayCreateAlias106()
              elseif indices < 108
                aArray = cArrayCreateAlias107()
              else
                aArray = cArrayCreateAlias108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateAlias109()
              elseif indices < 111
                aArray = cArrayCreateAlias110()
              elseif indices < 112
                aArray = cArrayCreateAlias111()
              else
                aArray = cArrayCreateAlias112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateAlias113()
              elseif indices < 115
                aArray = cArrayCreateAlias114()
              elseif indices < 116
                aArray = cArrayCreateAlias115()
              else
                aArray = cArrayCreateAlias116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateAlias117()
              elseif indices < 119
                aArray = cArrayCreateAlias118()
              elseif indices < 120
                aArray = cArrayCreateAlias119()
              else
                aArray = cArrayCreateAlias120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateAlias121()
              elseif indices < 123
                aArray = cArrayCreateAlias122()
              elseif indices < 124
                aArray = cArrayCreateAlias123()
              else
                aArray = cArrayCreateAlias124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateAlias125()
              elseif indices < 127
                aArray = cArrayCreateAlias126()
              elseif indices < 128
                aArray = cArrayCreateAlias127()
              else
                aArray = cArrayCreateAlias128()
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

Alias[] function cArrayCreateAlias001() global
  Alias[] aArr = New Alias[1]
  return aArr
endfunction
Alias[] function cArrayCreateAlias002() global
  Alias[] aArr = New Alias[2]
  return aArr
endfunction
Alias[] function cArrayCreateAlias003() global
  Alias[] aArr = New Alias[3]
  return aArr
endfunction
Alias[] function cArrayCreateAlias004() global
  Alias[] aArr = New Alias[4]
  return aArr
endfunction
Alias[] function cArrayCreateAlias005() global
  Alias[] aArr = New Alias[5]
  return aArr
endfunction
Alias[] function cArrayCreateAlias006() global
  Alias[] aArr = New Alias[6]
  return aArr
endfunction
Alias[] function cArrayCreateAlias007() global
  Alias[] aArr = New Alias[7]
  return aArr
endfunction
Alias[] function cArrayCreateAlias008() global
  Alias[] aArr = New Alias[8]
  return aArr
endfunction
Alias[] function cArrayCreateAlias009() global
  Alias[] aArr = New Alias[9]
  return aArr
endfunction
Alias[] function cArrayCreateAlias010() global
  Alias[] aArr = New Alias[10]
  return aArr
endfunction
Alias[] function cArrayCreateAlias011() global
  Alias[] aArr = New Alias[11]
  return aArr
endfunction
Alias[] function cArrayCreateAlias012() global
  Alias[] aArr = New Alias[12]
  return aArr
endfunction
Alias[] function cArrayCreateAlias013() global
  Alias[] aArr = New Alias[13]
  return aArr
endfunction
Alias[] function cArrayCreateAlias014() global
  Alias[] aArr = New Alias[14]
  return aArr
endfunction
Alias[] function cArrayCreateAlias015() global
  Alias[] aArr = New Alias[15]
  return aArr
endfunction
Alias[] function cArrayCreateAlias016() global
  Alias[] aArr = New Alias[16]
  return aArr
endfunction
Alias[] function cArrayCreateAlias017() global
  Alias[] aArr = New Alias[17]
  return aArr
endfunction
Alias[] function cArrayCreateAlias018() global
  Alias[] aArr = New Alias[18]
  return aArr
endfunction
Alias[] function cArrayCreateAlias019() global
  Alias[] aArr = New Alias[19]
  return aArr
endfunction
Alias[] function cArrayCreateAlias020() global
  Alias[] aArr = New Alias[20]
  return aArr
endfunction
Alias[] function cArrayCreateAlias021() global
  Alias[] aArr = New Alias[21]
  return aArr
endfunction
Alias[] function cArrayCreateAlias022() global
  Alias[] aArr = New Alias[22]
  return aArr
endfunction
Alias[] function cArrayCreateAlias023() global
  Alias[] aArr = New Alias[23]
  return aArr
endfunction
Alias[] function cArrayCreateAlias024() global
  Alias[] aArr = New Alias[24]
  return aArr
endfunction
Alias[] function cArrayCreateAlias025() global
  Alias[] aArr = New Alias[25]
  return aArr
endfunction
Alias[] function cArrayCreateAlias026() global
  Alias[] aArr = New Alias[26]
  return aArr
endfunction
Alias[] function cArrayCreateAlias027() global
  Alias[] aArr = New Alias[27]
  return aArr
endfunction
Alias[] function cArrayCreateAlias028() global
  Alias[] aArr = New Alias[28]
  return aArr
endfunction
Alias[] function cArrayCreateAlias029() global
  Alias[] aArr = New Alias[29]
  return aArr
endfunction
Alias[] function cArrayCreateAlias030() global
  Alias[] aArr = New Alias[30]
  return aArr
endfunction
Alias[] function cArrayCreateAlias031() global
  Alias[] aArr = New Alias[31]
  return aArr
endfunction
Alias[] function cArrayCreateAlias032() global
  Alias[] aArr = New Alias[32]
  return aArr
endfunction
Alias[] function cArrayCreateAlias033() global
  Alias[] aArr = New Alias[33]
  return aArr
endfunction
Alias[] function cArrayCreateAlias034() global
  Alias[] aArr = New Alias[34]
  return aArr
endfunction
Alias[] function cArrayCreateAlias035() global
  Alias[] aArr = New Alias[35]
  return aArr
endfunction
Alias[] function cArrayCreateAlias036() global
  Alias[] aArr = New Alias[36]
  return aArr
endfunction
Alias[] function cArrayCreateAlias037() global
  Alias[] aArr = New Alias[37]
  return aArr
endfunction
Alias[] function cArrayCreateAlias038() global
  Alias[] aArr = New Alias[38]
  return aArr
endfunction
Alias[] function cArrayCreateAlias039() global
  Alias[] aArr = New Alias[39]
  return aArr
endfunction
Alias[] function cArrayCreateAlias040() global
  Alias[] aArr = New Alias[40]
  return aArr
endfunction
Alias[] function cArrayCreateAlias041() global
  Alias[] aArr = New Alias[41]
  return aArr
endfunction
Alias[] function cArrayCreateAlias042() global
  Alias[] aArr = New Alias[42]
  return aArr
endfunction
Alias[] function cArrayCreateAlias043() global
  Alias[] aArr = New Alias[43]
  return aArr
endfunction
Alias[] function cArrayCreateAlias044() global
  Alias[] aArr = New Alias[44]
  return aArr
endfunction
Alias[] function cArrayCreateAlias045() global
  Alias[] aArr = New Alias[45]
  return aArr
endfunction
Alias[] function cArrayCreateAlias046() global
  Alias[] aArr = New Alias[46]
  return aArr
endfunction
Alias[] function cArrayCreateAlias047() global
  Alias[] aArr = New Alias[47]
  return aArr
endfunction
Alias[] function cArrayCreateAlias048() global
  Alias[] aArr = New Alias[48]
  return aArr
endfunction
Alias[] function cArrayCreateAlias049() global
  Alias[] aArr = New Alias[49]
  return aArr
endfunction
Alias[] function cArrayCreateAlias050() global
  Alias[] aArr = New Alias[50]
  return aArr
endfunction
Alias[] function cArrayCreateAlias051() global
  Alias[] aArr = New Alias[51]
  return aArr
endfunction
Alias[] function cArrayCreateAlias052() global
  Alias[] aArr = New Alias[52]
  return aArr
endfunction
Alias[] function cArrayCreateAlias053() global
  Alias[] aArr = New Alias[53]
  return aArr
endfunction
Alias[] function cArrayCreateAlias054() global
  Alias[] aArr = New Alias[54]
  return aArr
endfunction
Alias[] function cArrayCreateAlias055() global
  Alias[] aArr = New Alias[55]
  return aArr
endfunction
Alias[] function cArrayCreateAlias056() global
  Alias[] aArr = New Alias[56]
  return aArr
endfunction
Alias[] function cArrayCreateAlias057() global
  Alias[] aArr = New Alias[57]
  return aArr
endfunction
Alias[] function cArrayCreateAlias058() global
  Alias[] aArr = New Alias[58]
  return aArr
endfunction
Alias[] function cArrayCreateAlias059() global
  Alias[] aArr = New Alias[59]
  return aArr
endfunction
Alias[] function cArrayCreateAlias060() global
  Alias[] aArr = New Alias[60]
  return aArr
endfunction
Alias[] function cArrayCreateAlias061() global
  Alias[] aArr = New Alias[61]
  return aArr
endfunction
Alias[] function cArrayCreateAlias062() global
  Alias[] aArr = New Alias[62]
  return aArr
endfunction
Alias[] function cArrayCreateAlias063() global
  Alias[] aArr = New Alias[63]
  return aArr
endfunction
Alias[] function cArrayCreateAlias064() global
  Alias[] aArr = New Alias[64]
  return aArr
endfunction
Alias[] function cArrayCreateAlias065() global
  Alias[] aArr = New Alias[65]
  return aArr
endfunction
Alias[] function cArrayCreateAlias066() global
  Alias[] aArr = New Alias[66]
  return aArr
endfunction
Alias[] function cArrayCreateAlias067() global
  Alias[] aArr = New Alias[67]
  return aArr
endfunction
Alias[] function cArrayCreateAlias068() global
  Alias[] aArr = New Alias[68]
  return aArr
endfunction
Alias[] function cArrayCreateAlias069() global
  Alias[] aArr = New Alias[69]
  return aArr
endfunction
Alias[] function cArrayCreateAlias070() global
  Alias[] aArr = New Alias[70]
  return aArr
endfunction
Alias[] function cArrayCreateAlias071() global
  Alias[] aArr = New Alias[71]
  return aArr
endfunction
Alias[] function cArrayCreateAlias072() global
  Alias[] aArr = New Alias[72]
  return aArr
endfunction
Alias[] function cArrayCreateAlias073() global
  Alias[] aArr = New Alias[73]
  return aArr
endfunction
Alias[] function cArrayCreateAlias074() global
  Alias[] aArr = New Alias[74]
  return aArr
endfunction
Alias[] function cArrayCreateAlias075() global
  Alias[] aArr = New Alias[75]
  return aArr
endfunction
Alias[] function cArrayCreateAlias076() global
  Alias[] aArr = New Alias[76]
  return aArr
endfunction
Alias[] function cArrayCreateAlias077() global
  Alias[] aArr = New Alias[77]
  return aArr
endfunction
Alias[] function cArrayCreateAlias078() global
  Alias[] aArr = New Alias[78]
  return aArr
endfunction
Alias[] function cArrayCreateAlias079() global
  Alias[] aArr = New Alias[79]
  return aArr
endfunction
Alias[] function cArrayCreateAlias080() global
  Alias[] aArr = New Alias[80]
  return aArr
endfunction
Alias[] function cArrayCreateAlias081() global
  Alias[] aArr = New Alias[81]
  return aArr
endfunction
Alias[] function cArrayCreateAlias082() global
  Alias[] aArr = New Alias[82]
  return aArr
endfunction
Alias[] function cArrayCreateAlias083() global
  Alias[] aArr = New Alias[83]
  return aArr
endfunction
Alias[] function cArrayCreateAlias084() global
  Alias[] aArr = New Alias[84]
  return aArr
endfunction
Alias[] function cArrayCreateAlias085() global
  Alias[] aArr = New Alias[85]
  return aArr
endfunction
Alias[] function cArrayCreateAlias086() global
  Alias[] aArr = New Alias[86]
  return aArr
endfunction
Alias[] function cArrayCreateAlias087() global
  Alias[] aArr = New Alias[87]
  return aArr
endfunction
Alias[] function cArrayCreateAlias088() global
  Alias[] aArr = New Alias[88]
  return aArr
endfunction
Alias[] function cArrayCreateAlias089() global
  Alias[] aArr = New Alias[89]
  return aArr
endfunction
Alias[] function cArrayCreateAlias090() global
  Alias[] aArr = New Alias[90]
  return aArr
endfunction
Alias[] function cArrayCreateAlias091() global
  Alias[] aArr = New Alias[91]
  return aArr
endfunction
Alias[] function cArrayCreateAlias092() global
  Alias[] aArr = New Alias[92]
  return aArr
endfunction
Alias[] function cArrayCreateAlias093() global
  Alias[] aArr = New Alias[93]
  return aArr
endfunction
Alias[] function cArrayCreateAlias094() global
  Alias[] aArr = New Alias[94]
  return aArr
endfunction
Alias[] function cArrayCreateAlias095() global
  Alias[] aArr = New Alias[95]
  return aArr
endfunction
Alias[] function cArrayCreateAlias096() global
  Alias[] aArr = New Alias[96]
  return aArr
endfunction
Alias[] function cArrayCreateAlias097() global
  Alias[] aArr = New Alias[97]
  return aArr
endfunction
Alias[] function cArrayCreateAlias098() global
  Alias[] aArr = New Alias[98]
  return aArr
endfunction
Alias[] function cArrayCreateAlias099() global
  Alias[] aArr = New Alias[99]
  return aArr
endfunction
Alias[] function cArrayCreateAlias100() global
  Alias[] aArr = New Alias[100]
  return aArr
endfunction
Alias[] function cArrayCreateAlias101() global
  Alias[] aArr = New Alias[101]
  return aArr
endfunction
Alias[] function cArrayCreateAlias102() global
  Alias[] aArr = New Alias[102]
  return aArr
endfunction
Alias[] function cArrayCreateAlias103() global
  Alias[] aArr = New Alias[103]
  return aArr
endfunction
Alias[] function cArrayCreateAlias104() global
  Alias[] aArr = New Alias[104]
  return aArr
endfunction
Alias[] function cArrayCreateAlias105() global
  Alias[] aArr = New Alias[105]
  return aArr
endfunction
Alias[] function cArrayCreateAlias106() global
  Alias[] aArr = New Alias[106]
  return aArr
endfunction
Alias[] function cArrayCreateAlias107() global
  Alias[] aArr = New Alias[107]
  return aArr
endfunction
Alias[] function cArrayCreateAlias108() global
  Alias[] aArr = New Alias[108]
  return aArr
endfunction
Alias[] function cArrayCreateAlias109() global
  Alias[] aArr = New Alias[109]
  return aArr
endfunction
Alias[] function cArrayCreateAlias110() global
  Alias[] aArr = New Alias[110]
  return aArr
endfunction
Alias[] function cArrayCreateAlias111() global
  Alias[] aArr = New Alias[111]
  return aArr
endfunction
Alias[] function cArrayCreateAlias112() global
  Alias[] aArr = New Alias[112]
  return aArr
endfunction
Alias[] function cArrayCreateAlias113() global
  Alias[] aArr = New Alias[113]
  return aArr
endfunction
Alias[] function cArrayCreateAlias114() global
  Alias[] aArr = New Alias[114]
  return aArr
endfunction
Alias[] function cArrayCreateAlias115() global
  Alias[] aArr = New Alias[115]
  return aArr
endfunction
Alias[] function cArrayCreateAlias116() global
  Alias[] aArr = New Alias[116]
  return aArr
endfunction
Alias[] function cArrayCreateAlias117() global
  Alias[] aArr = New Alias[117]
  return aArr
endfunction
Alias[] function cArrayCreateAlias118() global
  Alias[] aArr = New Alias[118]
  return aArr
endfunction
Alias[] function cArrayCreateAlias119() global
  Alias[] aArr = New Alias[119]
  return aArr
endfunction
Alias[] function cArrayCreateAlias120() global
  Alias[] aArr = New Alias[120]
  return aArr
endfunction
Alias[] function cArrayCreateAlias121() global
  Alias[] aArr = New Alias[121]
  return aArr
endfunction
Alias[] function cArrayCreateAlias122() global
  Alias[] aArr = New Alias[122]
  return aArr
endfunction
Alias[] function cArrayCreateAlias123() global
  Alias[] aArr = New Alias[123]
  return aArr
endfunction
Alias[] function cArrayCreateAlias124() global
  Alias[] aArr = New Alias[124]
  return aArr
endfunction
Alias[] function cArrayCreateAlias125() global
  Alias[] aArr = New Alias[125]
  return aArr
endfunction
Alias[] function cArrayCreateAlias126() global
  Alias[] aArr = New Alias[126]
  return aArr
endfunction
Alias[] function cArrayCreateAlias127() global
  Alias[] aArr = New Alias[127]
  return aArr
endfunction
Alias[] function cArrayCreateAlias128() global
  Alias[] aArr = New Alias[128]
  return aArr
endfunction
