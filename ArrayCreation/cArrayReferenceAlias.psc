Scriptname cArrayReferenceAlias Hidden


ReferenceAlias[] function cArrayCreateRefAlias(Int indices, ReferenceAlias filler = None, Bool outputTrace = TRUE) global
    return cArrayCreateReferenceAlias(indices, filler, outputTrace)
endfunction

ReferenceAlias[] function cArrayCreateReferenceAlias(Int indices, ReferenceAlias filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  ReferenceAlias[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    if outputTrace
      String msg = "cArrayCreateReferenceAlias()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayReferenceAlias::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateReferenceAlias001()
              elseif indices < 3
                return cArrayCreateReferenceAlias002()
              elseif indices < 4
                return cArrayCreateReferenceAlias003()
              else
                return cArrayCreateReferenceAlias004()
              endif
            else
              if indices < 6
                return cArrayCreateReferenceAlias005()
              elseif indices < 7
                return cArrayCreateReferenceAlias006()
              elseif indices < 8
                return cArrayCreateReferenceAlias007()
              else
                return cArrayCreateReferenceAlias008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateReferenceAlias009()
              elseif indices < 11
                return cArrayCreateReferenceAlias010()
              elseif indices < 12
                return cArrayCreateReferenceAlias011()
              else
                return cArrayCreateReferenceAlias012()
              endif
            else
              if indices < 14
                return cArrayCreateReferenceAlias013()
              elseif indices < 15
                return cArrayCreateReferenceAlias014()
              elseif indices < 16
                return cArrayCreateReferenceAlias015()
              else
                return cArrayCreateReferenceAlias016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateReferenceAlias017()
              elseif indices < 19
                return cArrayCreateReferenceAlias018()
              elseif indices < 20
                return cArrayCreateReferenceAlias019()
              else
                return cArrayCreateReferenceAlias020()
              endif
            else
              if indices < 22
                return cArrayCreateReferenceAlias021()
              elseif indices < 23
                return cArrayCreateReferenceAlias022()
              elseif indices < 24
                return cArrayCreateReferenceAlias023()
              else
                return cArrayCreateReferenceAlias024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateReferenceAlias025()
              elseif indices < 27
                return cArrayCreateReferenceAlias026()
              elseif indices < 28
                return cArrayCreateReferenceAlias027()
              else
                return cArrayCreateReferenceAlias028()
              endif
            else
              if indices < 30
                return cArrayCreateReferenceAlias029()
              elseif indices < 31
                return cArrayCreateReferenceAlias030()
              elseif indices < 32
                return cArrayCreateReferenceAlias031()
              else
                return cArrayCreateReferenceAlias032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateReferenceAlias033()
              elseif indices < 35
                return cArrayCreateReferenceAlias034()
              elseif indices < 36
                return cArrayCreateReferenceAlias035()
              else
                return cArrayCreateReferenceAlias036()
              endif
            else
              if indices < 38
                return cArrayCreateReferenceAlias037()
              elseif indices < 39
                return cArrayCreateReferenceAlias038()
              elseif indices < 40
                return cArrayCreateReferenceAlias039()
              else
                return cArrayCreateReferenceAlias040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateReferenceAlias041()
              elseif indices < 43
                return cArrayCreateReferenceAlias042()
              elseif indices < 44
                return cArrayCreateReferenceAlias043()
              else
                return cArrayCreateReferenceAlias044()
              endif
            else
              if indices < 46
                return cArrayCreateReferenceAlias045()
              elseif indices < 47
                return cArrayCreateReferenceAlias046()
              elseif indices < 48
                return cArrayCreateReferenceAlias047()
              else
                return cArrayCreateReferenceAlias048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateReferenceAlias049()
              elseif indices < 51
                return cArrayCreateReferenceAlias050()
              elseif indices < 52
                return cArrayCreateReferenceAlias051()
              else
                return cArrayCreateReferenceAlias052()
              endif
            else
              if indices < 54
                return cArrayCreateReferenceAlias053()
              elseif indices < 55
                return cArrayCreateReferenceAlias054()
              elseif indices < 56
                return cArrayCreateReferenceAlias055()
              else
                return cArrayCreateReferenceAlias056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateReferenceAlias057()
              elseif indices < 59
                return cArrayCreateReferenceAlias058()
              elseif indices < 60
                return cArrayCreateReferenceAlias059()
              else
                return cArrayCreateReferenceAlias060()
              endif
            else
              if indices < 62
                return cArrayCreateReferenceAlias061()
              elseif indices < 63
                return cArrayCreateReferenceAlias062()
              elseif indices < 64
                return cArrayCreateReferenceAlias063()
              else
                return cArrayCreateReferenceAlias064()
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
                return cArrayCreateReferenceAlias065()
              elseif indices < 67
                return cArrayCreateReferenceAlias066()
              elseif indices < 68
                return cArrayCreateReferenceAlias067()
              else
                return cArrayCreateReferenceAlias068()
              endif
            else
              if indices < 70
                return cArrayCreateReferenceAlias069()
              elseif indices < 71
                return cArrayCreateReferenceAlias070()
              elseif indices < 72
                return cArrayCreateReferenceAlias071()
              else
                return cArrayCreateReferenceAlias072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateReferenceAlias073()
              elseif indices < 75
                return cArrayCreateReferenceAlias074()
              elseif indices < 76
                return cArrayCreateReferenceAlias075()
              else
                return cArrayCreateReferenceAlias076()
              endif
            else
              if indices < 78
                return cArrayCreateReferenceAlias077()
              elseif indices < 79
                return cArrayCreateReferenceAlias078()
              elseif indices < 80
                return cArrayCreateReferenceAlias079()
              else
                return cArrayCreateReferenceAlias080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateReferenceAlias081()
              elseif indices < 83
                return cArrayCreateReferenceAlias082()
              elseif indices < 84
                return cArrayCreateReferenceAlias083()
              else
                return cArrayCreateReferenceAlias084()
              endif
            else
              if indices < 86
                return cArrayCreateReferenceAlias085()
              elseif indices < 87
                return cArrayCreateReferenceAlias086()
              elseif indices < 88
                return cArrayCreateReferenceAlias087()
              else
                return cArrayCreateReferenceAlias088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateReferenceAlias089()
              elseif indices < 91
                return cArrayCreateReferenceAlias090()
              elseif indices < 92
                return cArrayCreateReferenceAlias091()
              else
                return cArrayCreateReferenceAlias092()
              endif
            else
              if indices < 94
                return cArrayCreateReferenceAlias093()
              elseif indices < 95
                return cArrayCreateReferenceAlias094()
              elseif indices < 96
                return cArrayCreateReferenceAlias095()
              else
                return cArrayCreateReferenceAlias096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateReferenceAlias097()
              elseif indices < 99
                return cArrayCreateReferenceAlias098()
              elseif indices < 100
                return cArrayCreateReferenceAlias099()
              else
                return cArrayCreateReferenceAlias100()
              endif
            else
              if indices < 102
                return cArrayCreateReferenceAlias101()
              elseif indices < 103
                return cArrayCreateReferenceAlias102()
              elseif indices < 104
                return cArrayCreateReferenceAlias103()
              else
                return cArrayCreateReferenceAlias104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateReferenceAlias105()
              elseif indices < 107
                return cArrayCreateReferenceAlias106()
              elseif indices < 108
                return cArrayCreateReferenceAlias107()
              else
                return cArrayCreateReferenceAlias108()
              endif
            else
              if indices < 110
                return cArrayCreateReferenceAlias109()
              elseif indices < 111
                return cArrayCreateReferenceAlias110()
              elseif indices < 112
                return cArrayCreateReferenceAlias111()
              else
                return cArrayCreateReferenceAlias112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateReferenceAlias113()
              elseif indices < 115
                return cArrayCreateReferenceAlias114()
              elseif indices < 116
                return cArrayCreateReferenceAlias115()
              else
                return cArrayCreateReferenceAlias116()
              endif
            else
              if indices < 118
                return cArrayCreateReferenceAlias117()
              elseif indices < 119
                return cArrayCreateReferenceAlias118()
              elseif indices < 120
                return cArrayCreateReferenceAlias119()
              else
                return cArrayCreateReferenceAlias120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateReferenceAlias121()
              elseif indices < 123
                return cArrayCreateReferenceAlias122()
              elseif indices < 124
                return cArrayCreateReferenceAlias123()
              else
                return cArrayCreateReferenceAlias124()
              endif
            else
              if indices < 126
                return cArrayCreateReferenceAlias125()
              elseif indices < 127
                return cArrayCreateReferenceAlias126()
              elseif indices < 128
                return cArrayCreateReferenceAlias127()
              else
                return cArrayCreateReferenceAlias128()
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

ReferenceAlias[] function cArrayCreateReferenceAlias001() global
  ReferenceAlias[] aArr = New ReferenceAlias[1]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias002() global
  ReferenceAlias[] aArr = New ReferenceAlias[2]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias003() global
  ReferenceAlias[] aArr = New ReferenceAlias[3]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias004() global
  ReferenceAlias[] aArr = New ReferenceAlias[4]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias005() global
  ReferenceAlias[] aArr = New ReferenceAlias[5]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias006() global
  ReferenceAlias[] aArr = New ReferenceAlias[6]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias007() global
  ReferenceAlias[] aArr = New ReferenceAlias[7]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias008() global
  ReferenceAlias[] aArr = New ReferenceAlias[8]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias009() global
  ReferenceAlias[] aArr = New ReferenceAlias[9]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias010() global
  ReferenceAlias[] aArr = New ReferenceAlias[10]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias011() global
  ReferenceAlias[] aArr = New ReferenceAlias[11]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias012() global
  ReferenceAlias[] aArr = New ReferenceAlias[12]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias013() global
  ReferenceAlias[] aArr = New ReferenceAlias[13]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias014() global
  ReferenceAlias[] aArr = New ReferenceAlias[14]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias015() global
  ReferenceAlias[] aArr = New ReferenceAlias[15]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias016() global
  ReferenceAlias[] aArr = New ReferenceAlias[16]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias017() global
  ReferenceAlias[] aArr = New ReferenceAlias[17]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias018() global
  ReferenceAlias[] aArr = New ReferenceAlias[18]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias019() global
  ReferenceAlias[] aArr = New ReferenceAlias[19]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias020() global
  ReferenceAlias[] aArr = New ReferenceAlias[20]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias021() global
  ReferenceAlias[] aArr = New ReferenceAlias[21]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias022() global
  ReferenceAlias[] aArr = New ReferenceAlias[22]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias023() global
  ReferenceAlias[] aArr = New ReferenceAlias[23]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias024() global
  ReferenceAlias[] aArr = New ReferenceAlias[24]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias025() global
  ReferenceAlias[] aArr = New ReferenceAlias[25]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias026() global
  ReferenceAlias[] aArr = New ReferenceAlias[26]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias027() global
  ReferenceAlias[] aArr = New ReferenceAlias[27]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias028() global
  ReferenceAlias[] aArr = New ReferenceAlias[28]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias029() global
  ReferenceAlias[] aArr = New ReferenceAlias[29]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias030() global
  ReferenceAlias[] aArr = New ReferenceAlias[30]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias031() global
  ReferenceAlias[] aArr = New ReferenceAlias[31]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias032() global
  ReferenceAlias[] aArr = New ReferenceAlias[32]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias033() global
  ReferenceAlias[] aArr = New ReferenceAlias[33]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias034() global
  ReferenceAlias[] aArr = New ReferenceAlias[34]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias035() global
  ReferenceAlias[] aArr = New ReferenceAlias[35]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias036() global
  ReferenceAlias[] aArr = New ReferenceAlias[36]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias037() global
  ReferenceAlias[] aArr = New ReferenceAlias[37]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias038() global
  ReferenceAlias[] aArr = New ReferenceAlias[38]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias039() global
  ReferenceAlias[] aArr = New ReferenceAlias[39]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias040() global
  ReferenceAlias[] aArr = New ReferenceAlias[40]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias041() global
  ReferenceAlias[] aArr = New ReferenceAlias[41]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias042() global
  ReferenceAlias[] aArr = New ReferenceAlias[42]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias043() global
  ReferenceAlias[] aArr = New ReferenceAlias[43]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias044() global
  ReferenceAlias[] aArr = New ReferenceAlias[44]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias045() global
  ReferenceAlias[] aArr = New ReferenceAlias[45]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias046() global
  ReferenceAlias[] aArr = New ReferenceAlias[46]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias047() global
  ReferenceAlias[] aArr = New ReferenceAlias[47]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias048() global
  ReferenceAlias[] aArr = New ReferenceAlias[48]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias049() global
  ReferenceAlias[] aArr = New ReferenceAlias[49]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias050() global
  ReferenceAlias[] aArr = New ReferenceAlias[50]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias051() global
  ReferenceAlias[] aArr = New ReferenceAlias[51]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias052() global
  ReferenceAlias[] aArr = New ReferenceAlias[52]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias053() global
  ReferenceAlias[] aArr = New ReferenceAlias[53]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias054() global
  ReferenceAlias[] aArr = New ReferenceAlias[54]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias055() global
  ReferenceAlias[] aArr = New ReferenceAlias[55]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias056() global
  ReferenceAlias[] aArr = New ReferenceAlias[56]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias057() global
  ReferenceAlias[] aArr = New ReferenceAlias[57]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias058() global
  ReferenceAlias[] aArr = New ReferenceAlias[58]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias059() global
  ReferenceAlias[] aArr = New ReferenceAlias[59]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias060() global
  ReferenceAlias[] aArr = New ReferenceAlias[60]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias061() global
  ReferenceAlias[] aArr = New ReferenceAlias[61]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias062() global
  ReferenceAlias[] aArr = New ReferenceAlias[62]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias063() global
  ReferenceAlias[] aArr = New ReferenceAlias[63]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias064() global
  ReferenceAlias[] aArr = New ReferenceAlias[64]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias065() global
  ReferenceAlias[] aArr = New ReferenceAlias[65]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias066() global
  ReferenceAlias[] aArr = New ReferenceAlias[66]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias067() global
  ReferenceAlias[] aArr = New ReferenceAlias[67]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias068() global
  ReferenceAlias[] aArr = New ReferenceAlias[68]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias069() global
  ReferenceAlias[] aArr = New ReferenceAlias[69]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias070() global
  ReferenceAlias[] aArr = New ReferenceAlias[70]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias071() global
  ReferenceAlias[] aArr = New ReferenceAlias[71]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias072() global
  ReferenceAlias[] aArr = New ReferenceAlias[72]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias073() global
  ReferenceAlias[] aArr = New ReferenceAlias[73]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias074() global
  ReferenceAlias[] aArr = New ReferenceAlias[74]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias075() global
  ReferenceAlias[] aArr = New ReferenceAlias[75]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias076() global
  ReferenceAlias[] aArr = New ReferenceAlias[76]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias077() global
  ReferenceAlias[] aArr = New ReferenceAlias[77]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias078() global
  ReferenceAlias[] aArr = New ReferenceAlias[78]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias079() global
  ReferenceAlias[] aArr = New ReferenceAlias[79]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias080() global
  ReferenceAlias[] aArr = New ReferenceAlias[80]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias081() global
  ReferenceAlias[] aArr = New ReferenceAlias[81]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias082() global
  ReferenceAlias[] aArr = New ReferenceAlias[82]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias083() global
  ReferenceAlias[] aArr = New ReferenceAlias[83]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias084() global
  ReferenceAlias[] aArr = New ReferenceAlias[84]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias085() global
  ReferenceAlias[] aArr = New ReferenceAlias[85]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias086() global
  ReferenceAlias[] aArr = New ReferenceAlias[86]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias087() global
  ReferenceAlias[] aArr = New ReferenceAlias[87]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias088() global
  ReferenceAlias[] aArr = New ReferenceAlias[88]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias089() global
  ReferenceAlias[] aArr = New ReferenceAlias[89]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias090() global
  ReferenceAlias[] aArr = New ReferenceAlias[90]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias091() global
  ReferenceAlias[] aArr = New ReferenceAlias[91]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias092() global
  ReferenceAlias[] aArr = New ReferenceAlias[92]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias093() global
  ReferenceAlias[] aArr = New ReferenceAlias[93]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias094() global
  ReferenceAlias[] aArr = New ReferenceAlias[94]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias095() global
  ReferenceAlias[] aArr = New ReferenceAlias[95]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias096() global
  ReferenceAlias[] aArr = New ReferenceAlias[96]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias097() global
  ReferenceAlias[] aArr = New ReferenceAlias[97]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias098() global
  ReferenceAlias[] aArr = New ReferenceAlias[98]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias099() global
  ReferenceAlias[] aArr = New ReferenceAlias[99]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias100() global
  ReferenceAlias[] aArr = New ReferenceAlias[100]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias101() global
  ReferenceAlias[] aArr = New ReferenceAlias[101]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias102() global
  ReferenceAlias[] aArr = New ReferenceAlias[102]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias103() global
  ReferenceAlias[] aArr = New ReferenceAlias[103]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias104() global
  ReferenceAlias[] aArr = New ReferenceAlias[104]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias105() global
  ReferenceAlias[] aArr = New ReferenceAlias[105]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias106() global
  ReferenceAlias[] aArr = New ReferenceAlias[106]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias107() global
  ReferenceAlias[] aArr = New ReferenceAlias[107]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias108() global
  ReferenceAlias[] aArr = New ReferenceAlias[108]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias109() global
  ReferenceAlias[] aArr = New ReferenceAlias[109]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias110() global
  ReferenceAlias[] aArr = New ReferenceAlias[110]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias111() global
  ReferenceAlias[] aArr = New ReferenceAlias[111]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias112() global
  ReferenceAlias[] aArr = New ReferenceAlias[112]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias113() global
  ReferenceAlias[] aArr = New ReferenceAlias[113]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias114() global
  ReferenceAlias[] aArr = New ReferenceAlias[114]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias115() global
  ReferenceAlias[] aArr = New ReferenceAlias[115]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias116() global
  ReferenceAlias[] aArr = New ReferenceAlias[116]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias117() global
  ReferenceAlias[] aArr = New ReferenceAlias[117]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias118() global
  ReferenceAlias[] aArr = New ReferenceAlias[118]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias119() global
  ReferenceAlias[] aArr = New ReferenceAlias[119]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias120() global
  ReferenceAlias[] aArr = New ReferenceAlias[120]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias121() global
  ReferenceAlias[] aArr = New ReferenceAlias[121]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias122() global
  ReferenceAlias[] aArr = New ReferenceAlias[122]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias123() global
  ReferenceAlias[] aArr = New ReferenceAlias[123]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias124() global
  ReferenceAlias[] aArr = New ReferenceAlias[124]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias125() global
  ReferenceAlias[] aArr = New ReferenceAlias[125]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias126() global
  ReferenceAlias[] aArr = New ReferenceAlias[126]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias127() global
  ReferenceAlias[] aArr = New ReferenceAlias[127]
  return aArr
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias128() global
  ReferenceAlias[] aArr = New ReferenceAlias[128]
  return aArr
endfunction
