Scriptname cArrayFloat Hidden


Float[] function cArrayCreateFloat(Int indices, Float filler = 0.0, Bool outputTrace = TRUE) global
  {Requirements: None}
  Float[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    if outputTrace
      String msg = "cArrayCreateFloat()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayFloat::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateFloat001()
              elseif indices < 3
                return cArrayCreateFloat002()
              elseif indices < 4
                return cArrayCreateFloat003()
              else
                return cArrayCreateFloat004()
              endif
            else
              if indices < 6
                return cArrayCreateFloat005()
              elseif indices < 7
                return cArrayCreateFloat006()
              elseif indices < 8
                return cArrayCreateFloat007()
              else
                return cArrayCreateFloat008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateFloat009()
              elseif indices < 11
                return cArrayCreateFloat010()
              elseif indices < 12
                return cArrayCreateFloat011()
              else
                return cArrayCreateFloat012()
              endif
            else
              if indices < 14
                return cArrayCreateFloat013()
              elseif indices < 15
                return cArrayCreateFloat014()
              elseif indices < 16
                return cArrayCreateFloat015()
              else
                return cArrayCreateFloat016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateFloat017()
              elseif indices < 19
                return cArrayCreateFloat018()
              elseif indices < 20
                return cArrayCreateFloat019()
              else
                return cArrayCreateFloat020()
              endif
            else
              if indices < 22
                return cArrayCreateFloat021()
              elseif indices < 23
                return cArrayCreateFloat022()
              elseif indices < 24
                return cArrayCreateFloat023()
              else
                return cArrayCreateFloat024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateFloat025()
              elseif indices < 27
                return cArrayCreateFloat026()
              elseif indices < 28
                return cArrayCreateFloat027()
              else
                return cArrayCreateFloat028()
              endif
            else
              if indices < 30
                return cArrayCreateFloat029()
              elseif indices < 31
                return cArrayCreateFloat030()
              elseif indices < 32
                return cArrayCreateFloat031()
              else
                return cArrayCreateFloat032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateFloat033()
              elseif indices < 35
                return cArrayCreateFloat034()
              elseif indices < 36
                return cArrayCreateFloat035()
              else
                return cArrayCreateFloat036()
              endif
            else
              if indices < 38
                return cArrayCreateFloat037()
              elseif indices < 39
                return cArrayCreateFloat038()
              elseif indices < 40
                return cArrayCreateFloat039()
              else
                return cArrayCreateFloat040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateFloat041()
              elseif indices < 43
                return cArrayCreateFloat042()
              elseif indices < 44
                return cArrayCreateFloat043()
              else
                return cArrayCreateFloat044()
              endif
            else
              if indices < 46
                return cArrayCreateFloat045()
              elseif indices < 47
                return cArrayCreateFloat046()
              elseif indices < 48
                return cArrayCreateFloat047()
              else
                return cArrayCreateFloat048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateFloat049()
              elseif indices < 51
                return cArrayCreateFloat050()
              elseif indices < 52
                return cArrayCreateFloat051()
              else
                return cArrayCreateFloat052()
              endif
            else
              if indices < 54
                return cArrayCreateFloat053()
              elseif indices < 55
                return cArrayCreateFloat054()
              elseif indices < 56
                return cArrayCreateFloat055()
              else
                return cArrayCreateFloat056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateFloat057()
              elseif indices < 59
                return cArrayCreateFloat058()
              elseif indices < 60
                return cArrayCreateFloat059()
              else
                return cArrayCreateFloat060()
              endif
            else
              if indices < 62
                return cArrayCreateFloat061()
              elseif indices < 63
                return cArrayCreateFloat062()
              elseif indices < 64
                return cArrayCreateFloat063()
              else
                return cArrayCreateFloat064()
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
                return cArrayCreateFloat065()
              elseif indices < 67
                return cArrayCreateFloat066()
              elseif indices < 68
                return cArrayCreateFloat067()
              else
                return cArrayCreateFloat068()
              endif
            else
              if indices < 70
                return cArrayCreateFloat069()
              elseif indices < 71
                return cArrayCreateFloat070()
              elseif indices < 72
                return cArrayCreateFloat071()
              else
                return cArrayCreateFloat072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateFloat073()
              elseif indices < 75
                return cArrayCreateFloat074()
              elseif indices < 76
                return cArrayCreateFloat075()
              else
                return cArrayCreateFloat076()
              endif
            else
              if indices < 78
                return cArrayCreateFloat077()
              elseif indices < 79
                return cArrayCreateFloat078()
              elseif indices < 80
                return cArrayCreateFloat079()
              else
                return cArrayCreateFloat080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateFloat081()
              elseif indices < 83
                return cArrayCreateFloat082()
              elseif indices < 84
                return cArrayCreateFloat083()
              else
                return cArrayCreateFloat084()
              endif
            else
              if indices < 86
                return cArrayCreateFloat085()
              elseif indices < 87
                return cArrayCreateFloat086()
              elseif indices < 88
                return cArrayCreateFloat087()
              else
                return cArrayCreateFloat088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateFloat089()
              elseif indices < 91
                return cArrayCreateFloat090()
              elseif indices < 92
                return cArrayCreateFloat091()
              else
                return cArrayCreateFloat092()
              endif
            else
              if indices < 94
                return cArrayCreateFloat093()
              elseif indices < 95
                return cArrayCreateFloat094()
              elseif indices < 96
                return cArrayCreateFloat095()
              else
                return cArrayCreateFloat096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateFloat097()
              elseif indices < 99
                return cArrayCreateFloat098()
              elseif indices < 100
                return cArrayCreateFloat099()
              else
                return cArrayCreateFloat100()
              endif
            else
              if indices < 102
                return cArrayCreateFloat101()
              elseif indices < 103
                return cArrayCreateFloat102()
              elseif indices < 104
                return cArrayCreateFloat103()
              else
                return cArrayCreateFloat104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateFloat105()
              elseif indices < 107
                return cArrayCreateFloat106()
              elseif indices < 108
                return cArrayCreateFloat107()
              else
                return cArrayCreateFloat108()
              endif
            else
              if indices < 110
                return cArrayCreateFloat109()
              elseif indices < 111
                return cArrayCreateFloat110()
              elseif indices < 112
                return cArrayCreateFloat111()
              else
                return cArrayCreateFloat112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateFloat113()
              elseif indices < 115
                return cArrayCreateFloat114()
              elseif indices < 116
                return cArrayCreateFloat115()
              else
                return cArrayCreateFloat116()
              endif
            else
              if indices < 118
                return cArrayCreateFloat117()
              elseif indices < 119
                return cArrayCreateFloat118()
              elseif indices < 120
                return cArrayCreateFloat119()
              else
                return cArrayCreateFloat120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateFloat121()
              elseif indices < 123
                return cArrayCreateFloat122()
              elseif indices < 124
                return cArrayCreateFloat123()
              else
                return cArrayCreateFloat124()
              endif
            else
              if indices < 126
                return cArrayCreateFloat125()
              elseif indices < 127
                return cArrayCreateFloat126()
              elseif indices < 128
                return cArrayCreateFloat127()
              else
                return cArrayCreateFloat128()
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

Float[] function cArrayCreateFloat001() global
  Float[] aArr = New Float[1]
  return aArr
endfunction
Float[] function cArrayCreateFloat002() global
  Float[] aArr = New Float[2]
  return aArr
endfunction
Float[] function cArrayCreateFloat003() global
  Float[] aArr = New Float[3]
  return aArr
endfunction
Float[] function cArrayCreateFloat004() global
  Float[] aArr = New Float[4]
  return aArr
endfunction
Float[] function cArrayCreateFloat005() global
  Float[] aArr = New Float[5]
  return aArr
endfunction
Float[] function cArrayCreateFloat006() global
  Float[] aArr = New Float[6]
  return aArr
endfunction
Float[] function cArrayCreateFloat007() global
  Float[] aArr = New Float[7]
  return aArr
endfunction
Float[] function cArrayCreateFloat008() global
  Float[] aArr = New Float[8]
  return aArr
endfunction
Float[] function cArrayCreateFloat009() global
  Float[] aArr = New Float[9]
  return aArr
endfunction
Float[] function cArrayCreateFloat010() global
  Float[] aArr = New Float[10]
  return aArr
endfunction
Float[] function cArrayCreateFloat011() global
  Float[] aArr = New Float[11]
  return aArr
endfunction
Float[] function cArrayCreateFloat012() global
  Float[] aArr = New Float[12]
  return aArr
endfunction
Float[] function cArrayCreateFloat013() global
  Float[] aArr = New Float[13]
  return aArr
endfunction
Float[] function cArrayCreateFloat014() global
  Float[] aArr = New Float[14]
  return aArr
endfunction
Float[] function cArrayCreateFloat015() global
  Float[] aArr = New Float[15]
  return aArr
endfunction
Float[] function cArrayCreateFloat016() global
  Float[] aArr = New Float[16]
  return aArr
endfunction
Float[] function cArrayCreateFloat017() global
  Float[] aArr = New Float[17]
  return aArr
endfunction
Float[] function cArrayCreateFloat018() global
  Float[] aArr = New Float[18]
  return aArr
endfunction
Float[] function cArrayCreateFloat019() global
  Float[] aArr = New Float[19]
  return aArr
endfunction
Float[] function cArrayCreateFloat020() global
  Float[] aArr = New Float[20]
  return aArr
endfunction
Float[] function cArrayCreateFloat021() global
  Float[] aArr = New Float[21]
  return aArr
endfunction
Float[] function cArrayCreateFloat022() global
  Float[] aArr = New Float[22]
  return aArr
endfunction
Float[] function cArrayCreateFloat023() global
  Float[] aArr = New Float[23]
  return aArr
endfunction
Float[] function cArrayCreateFloat024() global
  Float[] aArr = New Float[24]
  return aArr
endfunction
Float[] function cArrayCreateFloat025() global
  Float[] aArr = New Float[25]
  return aArr
endfunction
Float[] function cArrayCreateFloat026() global
  Float[] aArr = New Float[26]
  return aArr
endfunction
Float[] function cArrayCreateFloat027() global
  Float[] aArr = New Float[27]
  return aArr
endfunction
Float[] function cArrayCreateFloat028() global
  Float[] aArr = New Float[28]
  return aArr
endfunction
Float[] function cArrayCreateFloat029() global
  Float[] aArr = New Float[29]
  return aArr
endfunction
Float[] function cArrayCreateFloat030() global
  Float[] aArr = New Float[30]
  return aArr
endfunction
Float[] function cArrayCreateFloat031() global
  Float[] aArr = New Float[31]
  return aArr
endfunction
Float[] function cArrayCreateFloat032() global
  Float[] aArr = New Float[32]
  return aArr
endfunction
Float[] function cArrayCreateFloat033() global
  Float[] aArr = New Float[33]
  return aArr
endfunction
Float[] function cArrayCreateFloat034() global
  Float[] aArr = New Float[34]
  return aArr
endfunction
Float[] function cArrayCreateFloat035() global
  Float[] aArr = New Float[35]
  return aArr
endfunction
Float[] function cArrayCreateFloat036() global
  Float[] aArr = New Float[36]
  return aArr
endfunction
Float[] function cArrayCreateFloat037() global
  Float[] aArr = New Float[37]
  return aArr
endfunction
Float[] function cArrayCreateFloat038() global
  Float[] aArr = New Float[38]
  return aArr
endfunction
Float[] function cArrayCreateFloat039() global
  Float[] aArr = New Float[39]
  return aArr
endfunction
Float[] function cArrayCreateFloat040() global
  Float[] aArr = New Float[40]
  return aArr
endfunction
Float[] function cArrayCreateFloat041() global
  Float[] aArr = New Float[41]
  return aArr
endfunction
Float[] function cArrayCreateFloat042() global
  Float[] aArr = New Float[42]
  return aArr
endfunction
Float[] function cArrayCreateFloat043() global
  Float[] aArr = New Float[43]
  return aArr
endfunction
Float[] function cArrayCreateFloat044() global
  Float[] aArr = New Float[44]
  return aArr
endfunction
Float[] function cArrayCreateFloat045() global
  Float[] aArr = New Float[45]
  return aArr
endfunction
Float[] function cArrayCreateFloat046() global
  Float[] aArr = New Float[46]
  return aArr
endfunction
Float[] function cArrayCreateFloat047() global
  Float[] aArr = New Float[47]
  return aArr
endfunction
Float[] function cArrayCreateFloat048() global
  Float[] aArr = New Float[48]
  return aArr
endfunction
Float[] function cArrayCreateFloat049() global
  Float[] aArr = New Float[49]
  return aArr
endfunction
Float[] function cArrayCreateFloat050() global
  Float[] aArr = New Float[50]
  return aArr
endfunction
Float[] function cArrayCreateFloat051() global
  Float[] aArr = New Float[51]
  return aArr
endfunction
Float[] function cArrayCreateFloat052() global
  Float[] aArr = New Float[52]
  return aArr
endfunction
Float[] function cArrayCreateFloat053() global
  Float[] aArr = New Float[53]
  return aArr
endfunction
Float[] function cArrayCreateFloat054() global
  Float[] aArr = New Float[54]
  return aArr
endfunction
Float[] function cArrayCreateFloat055() global
  Float[] aArr = New Float[55]
  return aArr
endfunction
Float[] function cArrayCreateFloat056() global
  Float[] aArr = New Float[56]
  return aArr
endfunction
Float[] function cArrayCreateFloat057() global
  Float[] aArr = New Float[57]
  return aArr
endfunction
Float[] function cArrayCreateFloat058() global
  Float[] aArr = New Float[58]
  return aArr
endfunction
Float[] function cArrayCreateFloat059() global
  Float[] aArr = New Float[59]
  return aArr
endfunction
Float[] function cArrayCreateFloat060() global
  Float[] aArr = New Float[60]
  return aArr
endfunction
Float[] function cArrayCreateFloat061() global
  Float[] aArr = New Float[61]
  return aArr
endfunction
Float[] function cArrayCreateFloat062() global
  Float[] aArr = New Float[62]
  return aArr
endfunction
Float[] function cArrayCreateFloat063() global
  Float[] aArr = New Float[63]
  return aArr
endfunction
Float[] function cArrayCreateFloat064() global
  Float[] aArr = New Float[64]
  return aArr
endfunction
Float[] function cArrayCreateFloat065() global
  Float[] aArr = New Float[65]
  return aArr
endfunction
Float[] function cArrayCreateFloat066() global
  Float[] aArr = New Float[66]
  return aArr
endfunction
Float[] function cArrayCreateFloat067() global
  Float[] aArr = New Float[67]
  return aArr
endfunction
Float[] function cArrayCreateFloat068() global
  Float[] aArr = New Float[68]
  return aArr
endfunction
Float[] function cArrayCreateFloat069() global
  Float[] aArr = New Float[69]
  return aArr
endfunction
Float[] function cArrayCreateFloat070() global
  Float[] aArr = New Float[70]
  return aArr
endfunction
Float[] function cArrayCreateFloat071() global
  Float[] aArr = New Float[71]
  return aArr
endfunction
Float[] function cArrayCreateFloat072() global
  Float[] aArr = New Float[72]
  return aArr
endfunction
Float[] function cArrayCreateFloat073() global
  Float[] aArr = New Float[73]
  return aArr
endfunction
Float[] function cArrayCreateFloat074() global
  Float[] aArr = New Float[74]
  return aArr
endfunction
Float[] function cArrayCreateFloat075() global
  Float[] aArr = New Float[75]
  return aArr
endfunction
Float[] function cArrayCreateFloat076() global
  Float[] aArr = New Float[76]
  return aArr
endfunction
Float[] function cArrayCreateFloat077() global
  Float[] aArr = New Float[77]
  return aArr
endfunction
Float[] function cArrayCreateFloat078() global
  Float[] aArr = New Float[78]
  return aArr
endfunction
Float[] function cArrayCreateFloat079() global
  Float[] aArr = New Float[79]
  return aArr
endfunction
Float[] function cArrayCreateFloat080() global
  Float[] aArr = New Float[80]
  return aArr
endfunction
Float[] function cArrayCreateFloat081() global
  Float[] aArr = New Float[81]
  return aArr
endfunction
Float[] function cArrayCreateFloat082() global
  Float[] aArr = New Float[82]
  return aArr
endfunction
Float[] function cArrayCreateFloat083() global
  Float[] aArr = New Float[83]
  return aArr
endfunction
Float[] function cArrayCreateFloat084() global
  Float[] aArr = New Float[84]
  return aArr
endfunction
Float[] function cArrayCreateFloat085() global
  Float[] aArr = New Float[85]
  return aArr
endfunction
Float[] function cArrayCreateFloat086() global
  Float[] aArr = New Float[86]
  return aArr
endfunction
Float[] function cArrayCreateFloat087() global
  Float[] aArr = New Float[87]
  return aArr
endfunction
Float[] function cArrayCreateFloat088() global
  Float[] aArr = New Float[88]
  return aArr
endfunction
Float[] function cArrayCreateFloat089() global
  Float[] aArr = New Float[89]
  return aArr
endfunction
Float[] function cArrayCreateFloat090() global
  Float[] aArr = New Float[90]
  return aArr
endfunction
Float[] function cArrayCreateFloat091() global
  Float[] aArr = New Float[91]
  return aArr
endfunction
Float[] function cArrayCreateFloat092() global
  Float[] aArr = New Float[92]
  return aArr
endfunction
Float[] function cArrayCreateFloat093() global
  Float[] aArr = New Float[93]
  return aArr
endfunction
Float[] function cArrayCreateFloat094() global
  Float[] aArr = New Float[94]
  return aArr
endfunction
Float[] function cArrayCreateFloat095() global
  Float[] aArr = New Float[95]
  return aArr
endfunction
Float[] function cArrayCreateFloat096() global
  Float[] aArr = New Float[96]
  return aArr
endfunction
Float[] function cArrayCreateFloat097() global
  Float[] aArr = New Float[97]
  return aArr
endfunction
Float[] function cArrayCreateFloat098() global
  Float[] aArr = New Float[98]
  return aArr
endfunction
Float[] function cArrayCreateFloat099() global
  Float[] aArr = New Float[99]
  return aArr
endfunction
Float[] function cArrayCreateFloat100() global
  Float[] aArr = New Float[100]
  return aArr
endfunction
Float[] function cArrayCreateFloat101() global
  Float[] aArr = New Float[101]
  return aArr
endfunction
Float[] function cArrayCreateFloat102() global
  Float[] aArr = New Float[102]
  return aArr
endfunction
Float[] function cArrayCreateFloat103() global
  Float[] aArr = New Float[103]
  return aArr
endfunction
Float[] function cArrayCreateFloat104() global
  Float[] aArr = New Float[104]
  return aArr
endfunction
Float[] function cArrayCreateFloat105() global
  Float[] aArr = New Float[105]
  return aArr
endfunction
Float[] function cArrayCreateFloat106() global
  Float[] aArr = New Float[106]
  return aArr
endfunction
Float[] function cArrayCreateFloat107() global
  Float[] aArr = New Float[107]
  return aArr
endfunction
Float[] function cArrayCreateFloat108() global
  Float[] aArr = New Float[108]
  return aArr
endfunction
Float[] function cArrayCreateFloat109() global
  Float[] aArr = New Float[109]
  return aArr
endfunction
Float[] function cArrayCreateFloat110() global
  Float[] aArr = New Float[110]
  return aArr
endfunction
Float[] function cArrayCreateFloat111() global
  Float[] aArr = New Float[111]
  return aArr
endfunction
Float[] function cArrayCreateFloat112() global
  Float[] aArr = New Float[112]
  return aArr
endfunction
Float[] function cArrayCreateFloat113() global
  Float[] aArr = New Float[113]
  return aArr
endfunction
Float[] function cArrayCreateFloat114() global
  Float[] aArr = New Float[114]
  return aArr
endfunction
Float[] function cArrayCreateFloat115() global
  Float[] aArr = New Float[115]
  return aArr
endfunction
Float[] function cArrayCreateFloat116() global
  Float[] aArr = New Float[116]
  return aArr
endfunction
Float[] function cArrayCreateFloat117() global
  Float[] aArr = New Float[117]
  return aArr
endfunction
Float[] function cArrayCreateFloat118() global
  Float[] aArr = New Float[118]
  return aArr
endfunction
Float[] function cArrayCreateFloat119() global
  Float[] aArr = New Float[119]
  return aArr
endfunction
Float[] function cArrayCreateFloat120() global
  Float[] aArr = New Float[120]
  return aArr
endfunction
Float[] function cArrayCreateFloat121() global
  Float[] aArr = New Float[121]
  return aArr
endfunction
Float[] function cArrayCreateFloat122() global
  Float[] aArr = New Float[122]
  return aArr
endfunction
Float[] function cArrayCreateFloat123() global
  Float[] aArr = New Float[123]
  return aArr
endfunction
Float[] function cArrayCreateFloat124() global
  Float[] aArr = New Float[124]
  return aArr
endfunction
Float[] function cArrayCreateFloat125() global
  Float[] aArr = New Float[125]
  return aArr
endfunction
Float[] function cArrayCreateFloat126() global
  Float[] aArr = New Float[126]
  return aArr
endfunction
Float[] function cArrayCreateFloat127() global
  Float[] aArr = New Float[127]
  return aArr
endfunction
Float[] function cArrayCreateFloat128() global
  Float[] aArr = New Float[128]
  return aArr
endfunction
