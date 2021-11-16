Scriptname cArrayAlias Hidden


Alias[] function cArrayCreateAlias(Int indices, Alias filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  Alias[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    if outputTrace
      String msg = "cArrayCreateAlias()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayAlias::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateAlias001()
              elseif indices < 3
                return cArrayCreateAlias002()
              elseif indices < 4
                return cArrayCreateAlias003()
              else
                return cArrayCreateAlias004()
              endif
            else
              if indices < 6
                return cArrayCreateAlias005()
              elseif indices < 7
                return cArrayCreateAlias006()
              elseif indices < 8
                return cArrayCreateAlias007()
              else
                return cArrayCreateAlias008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateAlias009()
              elseif indices < 11
                return cArrayCreateAlias010()
              elseif indices < 12
                return cArrayCreateAlias011()
              else
                return cArrayCreateAlias012()
              endif
            else
              if indices < 14
                return cArrayCreateAlias013()
              elseif indices < 15
                return cArrayCreateAlias014()
              elseif indices < 16
                return cArrayCreateAlias015()
              else
                return cArrayCreateAlias016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateAlias017()
              elseif indices < 19
                return cArrayCreateAlias018()
              elseif indices < 20
                return cArrayCreateAlias019()
              else
                return cArrayCreateAlias020()
              endif
            else
              if indices < 22
                return cArrayCreateAlias021()
              elseif indices < 23
                return cArrayCreateAlias022()
              elseif indices < 24
                return cArrayCreateAlias023()
              else
                return cArrayCreateAlias024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateAlias025()
              elseif indices < 27
                return cArrayCreateAlias026()
              elseif indices < 28
                return cArrayCreateAlias027()
              else
                return cArrayCreateAlias028()
              endif
            else
              if indices < 30
                return cArrayCreateAlias029()
              elseif indices < 31
                return cArrayCreateAlias030()
              elseif indices < 32
                return cArrayCreateAlias031()
              else
                return cArrayCreateAlias032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateAlias033()
              elseif indices < 35
                return cArrayCreateAlias034()
              elseif indices < 36
                return cArrayCreateAlias035()
              else
                return cArrayCreateAlias036()
              endif
            else
              if indices < 38
                return cArrayCreateAlias037()
              elseif indices < 39
                return cArrayCreateAlias038()
              elseif indices < 40
                return cArrayCreateAlias039()
              else
                return cArrayCreateAlias040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateAlias041()
              elseif indices < 43
                return cArrayCreateAlias042()
              elseif indices < 44
                return cArrayCreateAlias043()
              else
                return cArrayCreateAlias044()
              endif
            else
              if indices < 46
                return cArrayCreateAlias045()
              elseif indices < 47
                return cArrayCreateAlias046()
              elseif indices < 48
                return cArrayCreateAlias047()
              else
                return cArrayCreateAlias048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateAlias049()
              elseif indices < 51
                return cArrayCreateAlias050()
              elseif indices < 52
                return cArrayCreateAlias051()
              else
                return cArrayCreateAlias052()
              endif
            else
              if indices < 54
                return cArrayCreateAlias053()
              elseif indices < 55
                return cArrayCreateAlias054()
              elseif indices < 56
                return cArrayCreateAlias055()
              else
                return cArrayCreateAlias056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateAlias057()
              elseif indices < 59
                return cArrayCreateAlias058()
              elseif indices < 60
                return cArrayCreateAlias059()
              else
                return cArrayCreateAlias060()
              endif
            else
              if indices < 62
                return cArrayCreateAlias061()
              elseif indices < 63
                return cArrayCreateAlias062()
              elseif indices < 64
                return cArrayCreateAlias063()
              else
                return cArrayCreateAlias064()
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
                return cArrayCreateAlias065()
              elseif indices < 67
                return cArrayCreateAlias066()
              elseif indices < 68
                return cArrayCreateAlias067()
              else
                return cArrayCreateAlias068()
              endif
            else
              if indices < 70
                return cArrayCreateAlias069()
              elseif indices < 71
                return cArrayCreateAlias070()
              elseif indices < 72
                return cArrayCreateAlias071()
              else
                return cArrayCreateAlias072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateAlias073()
              elseif indices < 75
                return cArrayCreateAlias074()
              elseif indices < 76
                return cArrayCreateAlias075()
              else
                return cArrayCreateAlias076()
              endif
            else
              if indices < 78
                return cArrayCreateAlias077()
              elseif indices < 79
                return cArrayCreateAlias078()
              elseif indices < 80
                return cArrayCreateAlias079()
              else
                return cArrayCreateAlias080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateAlias081()
              elseif indices < 83
                return cArrayCreateAlias082()
              elseif indices < 84
                return cArrayCreateAlias083()
              else
                return cArrayCreateAlias084()
              endif
            else
              if indices < 86
                return cArrayCreateAlias085()
              elseif indices < 87
                return cArrayCreateAlias086()
              elseif indices < 88
                return cArrayCreateAlias087()
              else
                return cArrayCreateAlias088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateAlias089()
              elseif indices < 91
                return cArrayCreateAlias090()
              elseif indices < 92
                return cArrayCreateAlias091()
              else
                return cArrayCreateAlias092()
              endif
            else
              if indices < 94
                return cArrayCreateAlias093()
              elseif indices < 95
                return cArrayCreateAlias094()
              elseif indices < 96
                return cArrayCreateAlias095()
              else
                return cArrayCreateAlias096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateAlias097()
              elseif indices < 99
                return cArrayCreateAlias098()
              elseif indices < 100
                return cArrayCreateAlias099()
              else
                return cArrayCreateAlias100()
              endif
            else
              if indices < 102
                return cArrayCreateAlias101()
              elseif indices < 103
                return cArrayCreateAlias102()
              elseif indices < 104
                return cArrayCreateAlias103()
              else
                return cArrayCreateAlias104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateAlias105()
              elseif indices < 107
                return cArrayCreateAlias106()
              elseif indices < 108
                return cArrayCreateAlias107()
              else
                return cArrayCreateAlias108()
              endif
            else
              if indices < 110
                return cArrayCreateAlias109()
              elseif indices < 111
                return cArrayCreateAlias110()
              elseif indices < 112
                return cArrayCreateAlias111()
              else
                return cArrayCreateAlias112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateAlias113()
              elseif indices < 115
                return cArrayCreateAlias114()
              elseif indices < 116
                return cArrayCreateAlias115()
              else
                return cArrayCreateAlias116()
              endif
            else
              if indices < 118
                return cArrayCreateAlias117()
              elseif indices < 119
                return cArrayCreateAlias118()
              elseif indices < 120
                return cArrayCreateAlias119()
              else
                return cArrayCreateAlias120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateAlias121()
              elseif indices < 123
                return cArrayCreateAlias122()
              elseif indices < 124
                return cArrayCreateAlias123()
              else
                return cArrayCreateAlias124()
              endif
            else
              if indices < 126
                return cArrayCreateAlias125()
              elseif indices < 127
                return cArrayCreateAlias126()
              elseif indices < 128
                return cArrayCreateAlias127()
              else
                return cArrayCreateAlias128()
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
