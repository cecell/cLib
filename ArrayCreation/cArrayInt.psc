Scriptname cArrayInt Hidden


Int[] function cArrayCreateInt(Int indices, Int filler = 0, Bool outputTrace = TRUE) global
  {Requirements: None}
  Int[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    if outputTrace
      String msg = "cArrayCreateInt()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayInt::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateInt001()
              elseif indices < 3
                return cArrayCreateInt002()
              elseif indices < 4
                return cArrayCreateInt003()
              else
                return cArrayCreateInt004()
              endif
            else
              if indices < 6
                return cArrayCreateInt005()
              elseif indices < 7
                return cArrayCreateInt006()
              elseif indices < 8
                return cArrayCreateInt007()
              else
                return cArrayCreateInt008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateInt009()
              elseif indices < 11
                return cArrayCreateInt010()
              elseif indices < 12
                return cArrayCreateInt011()
              else
                return cArrayCreateInt012()
              endif
            else
              if indices < 14
                return cArrayCreateInt013()
              elseif indices < 15
                return cArrayCreateInt014()
              elseif indices < 16
                return cArrayCreateInt015()
              else
                return cArrayCreateInt016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateInt017()
              elseif indices < 19
                return cArrayCreateInt018()
              elseif indices < 20
                return cArrayCreateInt019()
              else
                return cArrayCreateInt020()
              endif
            else
              if indices < 22
                return cArrayCreateInt021()
              elseif indices < 23
                return cArrayCreateInt022()
              elseif indices < 24
                return cArrayCreateInt023()
              else
                return cArrayCreateInt024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateInt025()
              elseif indices < 27
                return cArrayCreateInt026()
              elseif indices < 28
                return cArrayCreateInt027()
              else
                return cArrayCreateInt028()
              endif
            else
              if indices < 30
                return cArrayCreateInt029()
              elseif indices < 31
                return cArrayCreateInt030()
              elseif indices < 32
                return cArrayCreateInt031()
              else
                return cArrayCreateInt032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateInt033()
              elseif indices < 35
                return cArrayCreateInt034()
              elseif indices < 36
                return cArrayCreateInt035()
              else
                return cArrayCreateInt036()
              endif
            else
              if indices < 38
                return cArrayCreateInt037()
              elseif indices < 39
                return cArrayCreateInt038()
              elseif indices < 40
                return cArrayCreateInt039()
              else
                return cArrayCreateInt040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateInt041()
              elseif indices < 43
                return cArrayCreateInt042()
              elseif indices < 44
                return cArrayCreateInt043()
              else
                return cArrayCreateInt044()
              endif
            else
              if indices < 46
                return cArrayCreateInt045()
              elseif indices < 47
                return cArrayCreateInt046()
              elseif indices < 48
                return cArrayCreateInt047()
              else
                return cArrayCreateInt048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateInt049()
              elseif indices < 51
                return cArrayCreateInt050()
              elseif indices < 52
                return cArrayCreateInt051()
              else
                return cArrayCreateInt052()
              endif
            else
              if indices < 54
                return cArrayCreateInt053()
              elseif indices < 55
                return cArrayCreateInt054()
              elseif indices < 56
                return cArrayCreateInt055()
              else
                return cArrayCreateInt056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateInt057()
              elseif indices < 59
                return cArrayCreateInt058()
              elseif indices < 60
                return cArrayCreateInt059()
              else
                return cArrayCreateInt060()
              endif
            else
              if indices < 62
                return cArrayCreateInt061()
              elseif indices < 63
                return cArrayCreateInt062()
              elseif indices < 64
                return cArrayCreateInt063()
              else
                return cArrayCreateInt064()
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
                return cArrayCreateInt065()
              elseif indices < 67
                return cArrayCreateInt066()
              elseif indices < 68
                return cArrayCreateInt067()
              else
                return cArrayCreateInt068()
              endif
            else
              if indices < 70
                return cArrayCreateInt069()
              elseif indices < 71
                return cArrayCreateInt070()
              elseif indices < 72
                return cArrayCreateInt071()
              else
                return cArrayCreateInt072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateInt073()
              elseif indices < 75
                return cArrayCreateInt074()
              elseif indices < 76
                return cArrayCreateInt075()
              else
                return cArrayCreateInt076()
              endif
            else
              if indices < 78
                return cArrayCreateInt077()
              elseif indices < 79
                return cArrayCreateInt078()
              elseif indices < 80
                return cArrayCreateInt079()
              else
                return cArrayCreateInt080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateInt081()
              elseif indices < 83
                return cArrayCreateInt082()
              elseif indices < 84
                return cArrayCreateInt083()
              else
                return cArrayCreateInt084()
              endif
            else
              if indices < 86
                return cArrayCreateInt085()
              elseif indices < 87
                return cArrayCreateInt086()
              elseif indices < 88
                return cArrayCreateInt087()
              else
                return cArrayCreateInt088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateInt089()
              elseif indices < 91
                return cArrayCreateInt090()
              elseif indices < 92
                return cArrayCreateInt091()
              else
                return cArrayCreateInt092()
              endif
            else
              if indices < 94
                return cArrayCreateInt093()
              elseif indices < 95
                return cArrayCreateInt094()
              elseif indices < 96
                return cArrayCreateInt095()
              else
                return cArrayCreateInt096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateInt097()
              elseif indices < 99
                return cArrayCreateInt098()
              elseif indices < 100
                return cArrayCreateInt099()
              else
                return cArrayCreateInt100()
              endif
            else
              if indices < 102
                return cArrayCreateInt101()
              elseif indices < 103
                return cArrayCreateInt102()
              elseif indices < 104
                return cArrayCreateInt103()
              else
                return cArrayCreateInt104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateInt105()
              elseif indices < 107
                return cArrayCreateInt106()
              elseif indices < 108
                return cArrayCreateInt107()
              else
                return cArrayCreateInt108()
              endif
            else
              if indices < 110
                return cArrayCreateInt109()
              elseif indices < 111
                return cArrayCreateInt110()
              elseif indices < 112
                return cArrayCreateInt111()
              else
                return cArrayCreateInt112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateInt113()
              elseif indices < 115
                return cArrayCreateInt114()
              elseif indices < 116
                return cArrayCreateInt115()
              else
                return cArrayCreateInt116()
              endif
            else
              if indices < 118
                return cArrayCreateInt117()
              elseif indices < 119
                return cArrayCreateInt118()
              elseif indices < 120
                return cArrayCreateInt119()
              else
                return cArrayCreateInt120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateInt121()
              elseif indices < 123
                return cArrayCreateInt122()
              elseif indices < 124
                return cArrayCreateInt123()
              else
                return cArrayCreateInt124()
              endif
            else
              if indices < 126
                return cArrayCreateInt125()
              elseif indices < 127
                return cArrayCreateInt126()
              elseif indices < 128
                return cArrayCreateInt127()
              else
                return cArrayCreateInt128()
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

Int[] function cArrayCreateInt001() global
  Int[] aArr = New Int[1]
  return aArr
endfunction
Int[] function cArrayCreateInt002() global
  Int[] aArr = New Int[2]
  return aArr
endfunction
Int[] function cArrayCreateInt003() global
  Int[] aArr = New Int[3]
  return aArr
endfunction
Int[] function cArrayCreateInt004() global
  Int[] aArr = New Int[4]
  return aArr
endfunction
Int[] function cArrayCreateInt005() global
  Int[] aArr = New Int[5]
  return aArr
endfunction
Int[] function cArrayCreateInt006() global
  Int[] aArr = New Int[6]
  return aArr
endfunction
Int[] function cArrayCreateInt007() global
  Int[] aArr = New Int[7]
  return aArr
endfunction
Int[] function cArrayCreateInt008() global
  Int[] aArr = New Int[8]
  return aArr
endfunction
Int[] function cArrayCreateInt009() global
  Int[] aArr = New Int[9]
  return aArr
endfunction
Int[] function cArrayCreateInt010() global
  Int[] aArr = New Int[10]
  return aArr
endfunction
Int[] function cArrayCreateInt011() global
  Int[] aArr = New Int[11]
  return aArr
endfunction
Int[] function cArrayCreateInt012() global
  Int[] aArr = New Int[12]
  return aArr
endfunction
Int[] function cArrayCreateInt013() global
  Int[] aArr = New Int[13]
  return aArr
endfunction
Int[] function cArrayCreateInt014() global
  Int[] aArr = New Int[14]
  return aArr
endfunction
Int[] function cArrayCreateInt015() global
  Int[] aArr = New Int[15]
  return aArr
endfunction
Int[] function cArrayCreateInt016() global
  Int[] aArr = New Int[16]
  return aArr
endfunction
Int[] function cArrayCreateInt017() global
  Int[] aArr = New Int[17]
  return aArr
endfunction
Int[] function cArrayCreateInt018() global
  Int[] aArr = New Int[18]
  return aArr
endfunction
Int[] function cArrayCreateInt019() global
  Int[] aArr = New Int[19]
  return aArr
endfunction
Int[] function cArrayCreateInt020() global
  Int[] aArr = New Int[20]
  return aArr
endfunction
Int[] function cArrayCreateInt021() global
  Int[] aArr = New Int[21]
  return aArr
endfunction
Int[] function cArrayCreateInt022() global
  Int[] aArr = New Int[22]
  return aArr
endfunction
Int[] function cArrayCreateInt023() global
  Int[] aArr = New Int[23]
  return aArr
endfunction
Int[] function cArrayCreateInt024() global
  Int[] aArr = New Int[24]
  return aArr
endfunction
Int[] function cArrayCreateInt025() global
  Int[] aArr = New Int[25]
  return aArr
endfunction
Int[] function cArrayCreateInt026() global
  Int[] aArr = New Int[26]
  return aArr
endfunction
Int[] function cArrayCreateInt027() global
  Int[] aArr = New Int[27]
  return aArr
endfunction
Int[] function cArrayCreateInt028() global
  Int[] aArr = New Int[28]
  return aArr
endfunction
Int[] function cArrayCreateInt029() global
  Int[] aArr = New Int[29]
  return aArr
endfunction
Int[] function cArrayCreateInt030() global
  Int[] aArr = New Int[30]
  return aArr
endfunction
Int[] function cArrayCreateInt031() global
  Int[] aArr = New Int[31]
  return aArr
endfunction
Int[] function cArrayCreateInt032() global
  Int[] aArr = New Int[32]
  return aArr
endfunction
Int[] function cArrayCreateInt033() global
  Int[] aArr = New Int[33]
  return aArr
endfunction
Int[] function cArrayCreateInt034() global
  Int[] aArr = New Int[34]
  return aArr
endfunction
Int[] function cArrayCreateInt035() global
  Int[] aArr = New Int[35]
  return aArr
endfunction
Int[] function cArrayCreateInt036() global
  Int[] aArr = New Int[36]
  return aArr
endfunction
Int[] function cArrayCreateInt037() global
  Int[] aArr = New Int[37]
  return aArr
endfunction
Int[] function cArrayCreateInt038() global
  Int[] aArr = New Int[38]
  return aArr
endfunction
Int[] function cArrayCreateInt039() global
  Int[] aArr = New Int[39]
  return aArr
endfunction
Int[] function cArrayCreateInt040() global
  Int[] aArr = New Int[40]
  return aArr
endfunction
Int[] function cArrayCreateInt041() global
  Int[] aArr = New Int[41]
  return aArr
endfunction
Int[] function cArrayCreateInt042() global
  Int[] aArr = New Int[42]
  return aArr
endfunction
Int[] function cArrayCreateInt043() global
  Int[] aArr = New Int[43]
  return aArr
endfunction
Int[] function cArrayCreateInt044() global
  Int[] aArr = New Int[44]
  return aArr
endfunction
Int[] function cArrayCreateInt045() global
  Int[] aArr = New Int[45]
  return aArr
endfunction
Int[] function cArrayCreateInt046() global
  Int[] aArr = New Int[46]
  return aArr
endfunction
Int[] function cArrayCreateInt047() global
  Int[] aArr = New Int[47]
  return aArr
endfunction
Int[] function cArrayCreateInt048() global
  Int[] aArr = New Int[48]
  return aArr
endfunction
Int[] function cArrayCreateInt049() global
  Int[] aArr = New Int[49]
  return aArr
endfunction
Int[] function cArrayCreateInt050() global
  Int[] aArr = New Int[50]
  return aArr
endfunction
Int[] function cArrayCreateInt051() global
  Int[] aArr = New Int[51]
  return aArr
endfunction
Int[] function cArrayCreateInt052() global
  Int[] aArr = New Int[52]
  return aArr
endfunction
Int[] function cArrayCreateInt053() global
  Int[] aArr = New Int[53]
  return aArr
endfunction
Int[] function cArrayCreateInt054() global
  Int[] aArr = New Int[54]
  return aArr
endfunction
Int[] function cArrayCreateInt055() global
  Int[] aArr = New Int[55]
  return aArr
endfunction
Int[] function cArrayCreateInt056() global
  Int[] aArr = New Int[56]
  return aArr
endfunction
Int[] function cArrayCreateInt057() global
  Int[] aArr = New Int[57]
  return aArr
endfunction
Int[] function cArrayCreateInt058() global
  Int[] aArr = New Int[58]
  return aArr
endfunction
Int[] function cArrayCreateInt059() global
  Int[] aArr = New Int[59]
  return aArr
endfunction
Int[] function cArrayCreateInt060() global
  Int[] aArr = New Int[60]
  return aArr
endfunction
Int[] function cArrayCreateInt061() global
  Int[] aArr = New Int[61]
  return aArr
endfunction
Int[] function cArrayCreateInt062() global
  Int[] aArr = New Int[62]
  return aArr
endfunction
Int[] function cArrayCreateInt063() global
  Int[] aArr = New Int[63]
  return aArr
endfunction
Int[] function cArrayCreateInt064() global
  Int[] aArr = New Int[64]
  return aArr
endfunction
Int[] function cArrayCreateInt065() global
  Int[] aArr = New Int[65]
  return aArr
endfunction
Int[] function cArrayCreateInt066() global
  Int[] aArr = New Int[66]
  return aArr
endfunction
Int[] function cArrayCreateInt067() global
  Int[] aArr = New Int[67]
  return aArr
endfunction
Int[] function cArrayCreateInt068() global
  Int[] aArr = New Int[68]
  return aArr
endfunction
Int[] function cArrayCreateInt069() global
  Int[] aArr = New Int[69]
  return aArr
endfunction
Int[] function cArrayCreateInt070() global
  Int[] aArr = New Int[70]
  return aArr
endfunction
Int[] function cArrayCreateInt071() global
  Int[] aArr = New Int[71]
  return aArr
endfunction
Int[] function cArrayCreateInt072() global
  Int[] aArr = New Int[72]
  return aArr
endfunction
Int[] function cArrayCreateInt073() global
  Int[] aArr = New Int[73]
  return aArr
endfunction
Int[] function cArrayCreateInt074() global
  Int[] aArr = New Int[74]
  return aArr
endfunction
Int[] function cArrayCreateInt075() global
  Int[] aArr = New Int[75]
  return aArr
endfunction
Int[] function cArrayCreateInt076() global
  Int[] aArr = New Int[76]
  return aArr
endfunction
Int[] function cArrayCreateInt077() global
  Int[] aArr = New Int[77]
  return aArr
endfunction
Int[] function cArrayCreateInt078() global
  Int[] aArr = New Int[78]
  return aArr
endfunction
Int[] function cArrayCreateInt079() global
  Int[] aArr = New Int[79]
  return aArr
endfunction
Int[] function cArrayCreateInt080() global
  Int[] aArr = New Int[80]
  return aArr
endfunction
Int[] function cArrayCreateInt081() global
  Int[] aArr = New Int[81]
  return aArr
endfunction
Int[] function cArrayCreateInt082() global
  Int[] aArr = New Int[82]
  return aArr
endfunction
Int[] function cArrayCreateInt083() global
  Int[] aArr = New Int[83]
  return aArr
endfunction
Int[] function cArrayCreateInt084() global
  Int[] aArr = New Int[84]
  return aArr
endfunction
Int[] function cArrayCreateInt085() global
  Int[] aArr = New Int[85]
  return aArr
endfunction
Int[] function cArrayCreateInt086() global
  Int[] aArr = New Int[86]
  return aArr
endfunction
Int[] function cArrayCreateInt087() global
  Int[] aArr = New Int[87]
  return aArr
endfunction
Int[] function cArrayCreateInt088() global
  Int[] aArr = New Int[88]
  return aArr
endfunction
Int[] function cArrayCreateInt089() global
  Int[] aArr = New Int[89]
  return aArr
endfunction
Int[] function cArrayCreateInt090() global
  Int[] aArr = New Int[90]
  return aArr
endfunction
Int[] function cArrayCreateInt091() global
  Int[] aArr = New Int[91]
  return aArr
endfunction
Int[] function cArrayCreateInt092() global
  Int[] aArr = New Int[92]
  return aArr
endfunction
Int[] function cArrayCreateInt093() global
  Int[] aArr = New Int[93]
  return aArr
endfunction
Int[] function cArrayCreateInt094() global
  Int[] aArr = New Int[94]
  return aArr
endfunction
Int[] function cArrayCreateInt095() global
  Int[] aArr = New Int[95]
  return aArr
endfunction
Int[] function cArrayCreateInt096() global
  Int[] aArr = New Int[96]
  return aArr
endfunction
Int[] function cArrayCreateInt097() global
  Int[] aArr = New Int[97]
  return aArr
endfunction
Int[] function cArrayCreateInt098() global
  Int[] aArr = New Int[98]
  return aArr
endfunction
Int[] function cArrayCreateInt099() global
  Int[] aArr = New Int[99]
  return aArr
endfunction
Int[] function cArrayCreateInt100() global
  Int[] aArr = New Int[100]
  return aArr
endfunction
Int[] function cArrayCreateInt101() global
  Int[] aArr = New Int[101]
  return aArr
endfunction
Int[] function cArrayCreateInt102() global
  Int[] aArr = New Int[102]
  return aArr
endfunction
Int[] function cArrayCreateInt103() global
  Int[] aArr = New Int[103]
  return aArr
endfunction
Int[] function cArrayCreateInt104() global
  Int[] aArr = New Int[104]
  return aArr
endfunction
Int[] function cArrayCreateInt105() global
  Int[] aArr = New Int[105]
  return aArr
endfunction
Int[] function cArrayCreateInt106() global
  Int[] aArr = New Int[106]
  return aArr
endfunction
Int[] function cArrayCreateInt107() global
  Int[] aArr = New Int[107]
  return aArr
endfunction
Int[] function cArrayCreateInt108() global
  Int[] aArr = New Int[108]
  return aArr
endfunction
Int[] function cArrayCreateInt109() global
  Int[] aArr = New Int[109]
  return aArr
endfunction
Int[] function cArrayCreateInt110() global
  Int[] aArr = New Int[110]
  return aArr
endfunction
Int[] function cArrayCreateInt111() global
  Int[] aArr = New Int[111]
  return aArr
endfunction
Int[] function cArrayCreateInt112() global
  Int[] aArr = New Int[112]
  return aArr
endfunction
Int[] function cArrayCreateInt113() global
  Int[] aArr = New Int[113]
  return aArr
endfunction
Int[] function cArrayCreateInt114() global
  Int[] aArr = New Int[114]
  return aArr
endfunction
Int[] function cArrayCreateInt115() global
  Int[] aArr = New Int[115]
  return aArr
endfunction
Int[] function cArrayCreateInt116() global
  Int[] aArr = New Int[116]
  return aArr
endfunction
Int[] function cArrayCreateInt117() global
  Int[] aArr = New Int[117]
  return aArr
endfunction
Int[] function cArrayCreateInt118() global
  Int[] aArr = New Int[118]
  return aArr
endfunction
Int[] function cArrayCreateInt119() global
  Int[] aArr = New Int[119]
  return aArr
endfunction
Int[] function cArrayCreateInt120() global
  Int[] aArr = New Int[120]
  return aArr
endfunction
Int[] function cArrayCreateInt121() global
  Int[] aArr = New Int[121]
  return aArr
endfunction
Int[] function cArrayCreateInt122() global
  Int[] aArr = New Int[122]
  return aArr
endfunction
Int[] function cArrayCreateInt123() global
  Int[] aArr = New Int[123]
  return aArr
endfunction
Int[] function cArrayCreateInt124() global
  Int[] aArr = New Int[124]
  return aArr
endfunction
Int[] function cArrayCreateInt125() global
  Int[] aArr = New Int[125]
  return aArr
endfunction
Int[] function cArrayCreateInt126() global
  Int[] aArr = New Int[126]
  return aArr
endfunction
Int[] function cArrayCreateInt127() global
  Int[] aArr = New Int[127]
  return aArr
endfunction
Int[] function cArrayCreateInt128() global
  Int[] aArr = New Int[128]
  return aArr
endfunction
