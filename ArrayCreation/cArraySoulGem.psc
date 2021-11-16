Scriptname cArraySoulGem Hidden


SoulGem[] function cArrayCreateSoulGem(Int indices, SoulGem filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  SoulGem[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace SoulGems
    if outputTrace
      String msg = "cArrayCreateSoulGem()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArraySoulGem::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateSoulGem001()
              elseif indices < 3
                return cArrayCreateSoulGem002()
              elseif indices < 4
                return cArrayCreateSoulGem003()
              else
                return cArrayCreateSoulGem004()
              endif
            else
              if indices < 6
                return cArrayCreateSoulGem005()
              elseif indices < 7
                return cArrayCreateSoulGem006()
              elseif indices < 8
                return cArrayCreateSoulGem007()
              else
                return cArrayCreateSoulGem008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateSoulGem009()
              elseif indices < 11
                return cArrayCreateSoulGem010()
              elseif indices < 12
                return cArrayCreateSoulGem011()
              else
                return cArrayCreateSoulGem012()
              endif
            else
              if indices < 14
                return cArrayCreateSoulGem013()
              elseif indices < 15
                return cArrayCreateSoulGem014()
              elseif indices < 16
                return cArrayCreateSoulGem015()
              else
                return cArrayCreateSoulGem016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateSoulGem017()
              elseif indices < 19
                return cArrayCreateSoulGem018()
              elseif indices < 20
                return cArrayCreateSoulGem019()
              else
                return cArrayCreateSoulGem020()
              endif
            else
              if indices < 22
                return cArrayCreateSoulGem021()
              elseif indices < 23
                return cArrayCreateSoulGem022()
              elseif indices < 24
                return cArrayCreateSoulGem023()
              else
                return cArrayCreateSoulGem024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateSoulGem025()
              elseif indices < 27
                return cArrayCreateSoulGem026()
              elseif indices < 28
                return cArrayCreateSoulGem027()
              else
                return cArrayCreateSoulGem028()
              endif
            else
              if indices < 30
                return cArrayCreateSoulGem029()
              elseif indices < 31
                return cArrayCreateSoulGem030()
              elseif indices < 32
                return cArrayCreateSoulGem031()
              else
                return cArrayCreateSoulGem032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateSoulGem033()
              elseif indices < 35
                return cArrayCreateSoulGem034()
              elseif indices < 36
                return cArrayCreateSoulGem035()
              else
                return cArrayCreateSoulGem036()
              endif
            else
              if indices < 38
                return cArrayCreateSoulGem037()
              elseif indices < 39
                return cArrayCreateSoulGem038()
              elseif indices < 40
                return cArrayCreateSoulGem039()
              else
                return cArrayCreateSoulGem040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateSoulGem041()
              elseif indices < 43
                return cArrayCreateSoulGem042()
              elseif indices < 44
                return cArrayCreateSoulGem043()
              else
                return cArrayCreateSoulGem044()
              endif
            else
              if indices < 46
                return cArrayCreateSoulGem045()
              elseif indices < 47
                return cArrayCreateSoulGem046()
              elseif indices < 48
                return cArrayCreateSoulGem047()
              else
                return cArrayCreateSoulGem048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateSoulGem049()
              elseif indices < 51
                return cArrayCreateSoulGem050()
              elseif indices < 52
                return cArrayCreateSoulGem051()
              else
                return cArrayCreateSoulGem052()
              endif
            else
              if indices < 54
                return cArrayCreateSoulGem053()
              elseif indices < 55
                return cArrayCreateSoulGem054()
              elseif indices < 56
                return cArrayCreateSoulGem055()
              else
                return cArrayCreateSoulGem056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateSoulGem057()
              elseif indices < 59
                return cArrayCreateSoulGem058()
              elseif indices < 60
                return cArrayCreateSoulGem059()
              else
                return cArrayCreateSoulGem060()
              endif
            else
              if indices < 62
                return cArrayCreateSoulGem061()
              elseif indices < 63
                return cArrayCreateSoulGem062()
              elseif indices < 64
                return cArrayCreateSoulGem063()
              else
                return cArrayCreateSoulGem064()
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
                return cArrayCreateSoulGem065()
              elseif indices < 67
                return cArrayCreateSoulGem066()
              elseif indices < 68
                return cArrayCreateSoulGem067()
              else
                return cArrayCreateSoulGem068()
              endif
            else
              if indices < 70
                return cArrayCreateSoulGem069()
              elseif indices < 71
                return cArrayCreateSoulGem070()
              elseif indices < 72
                return cArrayCreateSoulGem071()
              else
                return cArrayCreateSoulGem072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateSoulGem073()
              elseif indices < 75
                return cArrayCreateSoulGem074()
              elseif indices < 76
                return cArrayCreateSoulGem075()
              else
                return cArrayCreateSoulGem076()
              endif
            else
              if indices < 78
                return cArrayCreateSoulGem077()
              elseif indices < 79
                return cArrayCreateSoulGem078()
              elseif indices < 80
                return cArrayCreateSoulGem079()
              else
                return cArrayCreateSoulGem080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateSoulGem081()
              elseif indices < 83
                return cArrayCreateSoulGem082()
              elseif indices < 84
                return cArrayCreateSoulGem083()
              else
                return cArrayCreateSoulGem084()
              endif
            else
              if indices < 86
                return cArrayCreateSoulGem085()
              elseif indices < 87
                return cArrayCreateSoulGem086()
              elseif indices < 88
                return cArrayCreateSoulGem087()
              else
                return cArrayCreateSoulGem088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateSoulGem089()
              elseif indices < 91
                return cArrayCreateSoulGem090()
              elseif indices < 92
                return cArrayCreateSoulGem091()
              else
                return cArrayCreateSoulGem092()
              endif
            else
              if indices < 94
                return cArrayCreateSoulGem093()
              elseif indices < 95
                return cArrayCreateSoulGem094()
              elseif indices < 96
                return cArrayCreateSoulGem095()
              else
                return cArrayCreateSoulGem096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateSoulGem097()
              elseif indices < 99
                return cArrayCreateSoulGem098()
              elseif indices < 100
                return cArrayCreateSoulGem099()
              else
                return cArrayCreateSoulGem100()
              endif
            else
              if indices < 102
                return cArrayCreateSoulGem101()
              elseif indices < 103
                return cArrayCreateSoulGem102()
              elseif indices < 104
                return cArrayCreateSoulGem103()
              else
                return cArrayCreateSoulGem104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateSoulGem105()
              elseif indices < 107
                return cArrayCreateSoulGem106()
              elseif indices < 108
                return cArrayCreateSoulGem107()
              else
                return cArrayCreateSoulGem108()
              endif
            else
              if indices < 110
                return cArrayCreateSoulGem109()
              elseif indices < 111
                return cArrayCreateSoulGem110()
              elseif indices < 112
                return cArrayCreateSoulGem111()
              else
                return cArrayCreateSoulGem112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateSoulGem113()
              elseif indices < 115
                return cArrayCreateSoulGem114()
              elseif indices < 116
                return cArrayCreateSoulGem115()
              else
                return cArrayCreateSoulGem116()
              endif
            else
              if indices < 118
                return cArrayCreateSoulGem117()
              elseif indices < 119
                return cArrayCreateSoulGem118()
              elseif indices < 120
                return cArrayCreateSoulGem119()
              else
                return cArrayCreateSoulGem120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateSoulGem121()
              elseif indices < 123
                return cArrayCreateSoulGem122()
              elseif indices < 124
                return cArrayCreateSoulGem123()
              else
                return cArrayCreateSoulGem124()
              endif
            else
              if indices < 126
                return cArrayCreateSoulGem125()
              elseif indices < 127
                return cArrayCreateSoulGem126()
              elseif indices < 128
                return cArrayCreateSoulGem127()
              else
                return cArrayCreateSoulGem128()
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

SoulGem[] function cArrayCreateSoulGem001() global
  SoulGem[] aArr = New SoulGem[1]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem002() global
  SoulGem[] aArr = New SoulGem[2]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem003() global
  SoulGem[] aArr = New SoulGem[3]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem004() global
  SoulGem[] aArr = New SoulGem[4]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem005() global
  SoulGem[] aArr = New SoulGem[5]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem006() global
  SoulGem[] aArr = New SoulGem[6]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem007() global
  SoulGem[] aArr = New SoulGem[7]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem008() global
  SoulGem[] aArr = New SoulGem[8]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem009() global
  SoulGem[] aArr = New SoulGem[9]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem010() global
  SoulGem[] aArr = New SoulGem[10]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem011() global
  SoulGem[] aArr = New SoulGem[11]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem012() global
  SoulGem[] aArr = New SoulGem[12]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem013() global
  SoulGem[] aArr = New SoulGem[13]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem014() global
  SoulGem[] aArr = New SoulGem[14]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem015() global
  SoulGem[] aArr = New SoulGem[15]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem016() global
  SoulGem[] aArr = New SoulGem[16]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem017() global
  SoulGem[] aArr = New SoulGem[17]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem018() global
  SoulGem[] aArr = New SoulGem[18]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem019() global
  SoulGem[] aArr = New SoulGem[19]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem020() global
  SoulGem[] aArr = New SoulGem[20]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem021() global
  SoulGem[] aArr = New SoulGem[21]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem022() global
  SoulGem[] aArr = New SoulGem[22]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem023() global
  SoulGem[] aArr = New SoulGem[23]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem024() global
  SoulGem[] aArr = New SoulGem[24]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem025() global
  SoulGem[] aArr = New SoulGem[25]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem026() global
  SoulGem[] aArr = New SoulGem[26]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem027() global
  SoulGem[] aArr = New SoulGem[27]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem028() global
  SoulGem[] aArr = New SoulGem[28]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem029() global
  SoulGem[] aArr = New SoulGem[29]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem030() global
  SoulGem[] aArr = New SoulGem[30]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem031() global
  SoulGem[] aArr = New SoulGem[31]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem032() global
  SoulGem[] aArr = New SoulGem[32]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem033() global
  SoulGem[] aArr = New SoulGem[33]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem034() global
  SoulGem[] aArr = New SoulGem[34]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem035() global
  SoulGem[] aArr = New SoulGem[35]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem036() global
  SoulGem[] aArr = New SoulGem[36]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem037() global
  SoulGem[] aArr = New SoulGem[37]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem038() global
  SoulGem[] aArr = New SoulGem[38]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem039() global
  SoulGem[] aArr = New SoulGem[39]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem040() global
  SoulGem[] aArr = New SoulGem[40]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem041() global
  SoulGem[] aArr = New SoulGem[41]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem042() global
  SoulGem[] aArr = New SoulGem[42]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem043() global
  SoulGem[] aArr = New SoulGem[43]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem044() global
  SoulGem[] aArr = New SoulGem[44]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem045() global
  SoulGem[] aArr = New SoulGem[45]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem046() global
  SoulGem[] aArr = New SoulGem[46]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem047() global
  SoulGem[] aArr = New SoulGem[47]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem048() global
  SoulGem[] aArr = New SoulGem[48]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem049() global
  SoulGem[] aArr = New SoulGem[49]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem050() global
  SoulGem[] aArr = New SoulGem[50]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem051() global
  SoulGem[] aArr = New SoulGem[51]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem052() global
  SoulGem[] aArr = New SoulGem[52]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem053() global
  SoulGem[] aArr = New SoulGem[53]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem054() global
  SoulGem[] aArr = New SoulGem[54]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem055() global
  SoulGem[] aArr = New SoulGem[55]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem056() global
  SoulGem[] aArr = New SoulGem[56]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem057() global
  SoulGem[] aArr = New SoulGem[57]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem058() global
  SoulGem[] aArr = New SoulGem[58]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem059() global
  SoulGem[] aArr = New SoulGem[59]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem060() global
  SoulGem[] aArr = New SoulGem[60]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem061() global
  SoulGem[] aArr = New SoulGem[61]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem062() global
  SoulGem[] aArr = New SoulGem[62]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem063() global
  SoulGem[] aArr = New SoulGem[63]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem064() global
  SoulGem[] aArr = New SoulGem[64]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem065() global
  SoulGem[] aArr = New SoulGem[65]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem066() global
  SoulGem[] aArr = New SoulGem[66]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem067() global
  SoulGem[] aArr = New SoulGem[67]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem068() global
  SoulGem[] aArr = New SoulGem[68]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem069() global
  SoulGem[] aArr = New SoulGem[69]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem070() global
  SoulGem[] aArr = New SoulGem[70]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem071() global
  SoulGem[] aArr = New SoulGem[71]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem072() global
  SoulGem[] aArr = New SoulGem[72]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem073() global
  SoulGem[] aArr = New SoulGem[73]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem074() global
  SoulGem[] aArr = New SoulGem[74]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem075() global
  SoulGem[] aArr = New SoulGem[75]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem076() global
  SoulGem[] aArr = New SoulGem[76]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem077() global
  SoulGem[] aArr = New SoulGem[77]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem078() global
  SoulGem[] aArr = New SoulGem[78]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem079() global
  SoulGem[] aArr = New SoulGem[79]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem080() global
  SoulGem[] aArr = New SoulGem[80]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem081() global
  SoulGem[] aArr = New SoulGem[81]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem082() global
  SoulGem[] aArr = New SoulGem[82]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem083() global
  SoulGem[] aArr = New SoulGem[83]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem084() global
  SoulGem[] aArr = New SoulGem[84]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem085() global
  SoulGem[] aArr = New SoulGem[85]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem086() global
  SoulGem[] aArr = New SoulGem[86]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem087() global
  SoulGem[] aArr = New SoulGem[87]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem088() global
  SoulGem[] aArr = New SoulGem[88]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem089() global
  SoulGem[] aArr = New SoulGem[89]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem090() global
  SoulGem[] aArr = New SoulGem[90]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem091() global
  SoulGem[] aArr = New SoulGem[91]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem092() global
  SoulGem[] aArr = New SoulGem[92]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem093() global
  SoulGem[] aArr = New SoulGem[93]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem094() global
  SoulGem[] aArr = New SoulGem[94]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem095() global
  SoulGem[] aArr = New SoulGem[95]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem096() global
  SoulGem[] aArr = New SoulGem[96]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem097() global
  SoulGem[] aArr = New SoulGem[97]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem098() global
  SoulGem[] aArr = New SoulGem[98]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem099() global
  SoulGem[] aArr = New SoulGem[99]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem100() global
  SoulGem[] aArr = New SoulGem[100]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem101() global
  SoulGem[] aArr = New SoulGem[101]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem102() global
  SoulGem[] aArr = New SoulGem[102]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem103() global
  SoulGem[] aArr = New SoulGem[103]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem104() global
  SoulGem[] aArr = New SoulGem[104]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem105() global
  SoulGem[] aArr = New SoulGem[105]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem106() global
  SoulGem[] aArr = New SoulGem[106]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem107() global
  SoulGem[] aArr = New SoulGem[107]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem108() global
  SoulGem[] aArr = New SoulGem[108]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem109() global
  SoulGem[] aArr = New SoulGem[109]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem110() global
  SoulGem[] aArr = New SoulGem[110]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem111() global
  SoulGem[] aArr = New SoulGem[111]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem112() global
  SoulGem[] aArr = New SoulGem[112]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem113() global
  SoulGem[] aArr = New SoulGem[113]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem114() global
  SoulGem[] aArr = New SoulGem[114]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem115() global
  SoulGem[] aArr = New SoulGem[115]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem116() global
  SoulGem[] aArr = New SoulGem[116]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem117() global
  SoulGem[] aArr = New SoulGem[117]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem118() global
  SoulGem[] aArr = New SoulGem[118]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem119() global
  SoulGem[] aArr = New SoulGem[119]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem120() global
  SoulGem[] aArr = New SoulGem[120]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem121() global
  SoulGem[] aArr = New SoulGem[121]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem122() global
  SoulGem[] aArr = New SoulGem[122]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem123() global
  SoulGem[] aArr = New SoulGem[123]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem124() global
  SoulGem[] aArr = New SoulGem[124]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem125() global
  SoulGem[] aArr = New SoulGem[125]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem126() global
  SoulGem[] aArr = New SoulGem[126]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem127() global
  SoulGem[] aArr = New SoulGem[127]
  return aArr
endfunction
SoulGem[] function cArrayCreateSoulGem128() global
  SoulGem[] aArr = New SoulGem[128]
  return aArr
endfunction
