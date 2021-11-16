Scriptname cArrayShout Hidden


Shout[] function cArrayCreateShout(Int indices, Shout filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  Shout[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace Shouts
    if outputTrace
      String msg = "cArrayCreateShout()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayShout::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateShout001()
              elseif indices < 3
                return cArrayCreateShout002()
              elseif indices < 4
                return cArrayCreateShout003()
              else
                return cArrayCreateShout004()
              endif
            else
              if indices < 6
                return cArrayCreateShout005()
              elseif indices < 7
                return cArrayCreateShout006()
              elseif indices < 8
                return cArrayCreateShout007()
              else
                return cArrayCreateShout008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateShout009()
              elseif indices < 11
                return cArrayCreateShout010()
              elseif indices < 12
                return cArrayCreateShout011()
              else
                return cArrayCreateShout012()
              endif
            else
              if indices < 14
                return cArrayCreateShout013()
              elseif indices < 15
                return cArrayCreateShout014()
              elseif indices < 16
                return cArrayCreateShout015()
              else
                return cArrayCreateShout016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateShout017()
              elseif indices < 19
                return cArrayCreateShout018()
              elseif indices < 20
                return cArrayCreateShout019()
              else
                return cArrayCreateShout020()
              endif
            else
              if indices < 22
                return cArrayCreateShout021()
              elseif indices < 23
                return cArrayCreateShout022()
              elseif indices < 24
                return cArrayCreateShout023()
              else
                return cArrayCreateShout024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateShout025()
              elseif indices < 27
                return cArrayCreateShout026()
              elseif indices < 28
                return cArrayCreateShout027()
              else
                return cArrayCreateShout028()
              endif
            else
              if indices < 30
                return cArrayCreateShout029()
              elseif indices < 31
                return cArrayCreateShout030()
              elseif indices < 32
                return cArrayCreateShout031()
              else
                return cArrayCreateShout032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateShout033()
              elseif indices < 35
                return cArrayCreateShout034()
              elseif indices < 36
                return cArrayCreateShout035()
              else
                return cArrayCreateShout036()
              endif
            else
              if indices < 38
                return cArrayCreateShout037()
              elseif indices < 39
                return cArrayCreateShout038()
              elseif indices < 40
                return cArrayCreateShout039()
              else
                return cArrayCreateShout040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateShout041()
              elseif indices < 43
                return cArrayCreateShout042()
              elseif indices < 44
                return cArrayCreateShout043()
              else
                return cArrayCreateShout044()
              endif
            else
              if indices < 46
                return cArrayCreateShout045()
              elseif indices < 47
                return cArrayCreateShout046()
              elseif indices < 48
                return cArrayCreateShout047()
              else
                return cArrayCreateShout048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateShout049()
              elseif indices < 51
                return cArrayCreateShout050()
              elseif indices < 52
                return cArrayCreateShout051()
              else
                return cArrayCreateShout052()
              endif
            else
              if indices < 54
                return cArrayCreateShout053()
              elseif indices < 55
                return cArrayCreateShout054()
              elseif indices < 56
                return cArrayCreateShout055()
              else
                return cArrayCreateShout056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateShout057()
              elseif indices < 59
                return cArrayCreateShout058()
              elseif indices < 60
                return cArrayCreateShout059()
              else
                return cArrayCreateShout060()
              endif
            else
              if indices < 62
                return cArrayCreateShout061()
              elseif indices < 63
                return cArrayCreateShout062()
              elseif indices < 64
                return cArrayCreateShout063()
              else
                return cArrayCreateShout064()
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
                return cArrayCreateShout065()
              elseif indices < 67
                return cArrayCreateShout066()
              elseif indices < 68
                return cArrayCreateShout067()
              else
                return cArrayCreateShout068()
              endif
            else
              if indices < 70
                return cArrayCreateShout069()
              elseif indices < 71
                return cArrayCreateShout070()
              elseif indices < 72
                return cArrayCreateShout071()
              else
                return cArrayCreateShout072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateShout073()
              elseif indices < 75
                return cArrayCreateShout074()
              elseif indices < 76
                return cArrayCreateShout075()
              else
                return cArrayCreateShout076()
              endif
            else
              if indices < 78
                return cArrayCreateShout077()
              elseif indices < 79
                return cArrayCreateShout078()
              elseif indices < 80
                return cArrayCreateShout079()
              else
                return cArrayCreateShout080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateShout081()
              elseif indices < 83
                return cArrayCreateShout082()
              elseif indices < 84
                return cArrayCreateShout083()
              else
                return cArrayCreateShout084()
              endif
            else
              if indices < 86
                return cArrayCreateShout085()
              elseif indices < 87
                return cArrayCreateShout086()
              elseif indices < 88
                return cArrayCreateShout087()
              else
                return cArrayCreateShout088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateShout089()
              elseif indices < 91
                return cArrayCreateShout090()
              elseif indices < 92
                return cArrayCreateShout091()
              else
                return cArrayCreateShout092()
              endif
            else
              if indices < 94
                return cArrayCreateShout093()
              elseif indices < 95
                return cArrayCreateShout094()
              elseif indices < 96
                return cArrayCreateShout095()
              else
                return cArrayCreateShout096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateShout097()
              elseif indices < 99
                return cArrayCreateShout098()
              elseif indices < 100
                return cArrayCreateShout099()
              else
                return cArrayCreateShout100()
              endif
            else
              if indices < 102
                return cArrayCreateShout101()
              elseif indices < 103
                return cArrayCreateShout102()
              elseif indices < 104
                return cArrayCreateShout103()
              else
                return cArrayCreateShout104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateShout105()
              elseif indices < 107
                return cArrayCreateShout106()
              elseif indices < 108
                return cArrayCreateShout107()
              else
                return cArrayCreateShout108()
              endif
            else
              if indices < 110
                return cArrayCreateShout109()
              elseif indices < 111
                return cArrayCreateShout110()
              elseif indices < 112
                return cArrayCreateShout111()
              else
                return cArrayCreateShout112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateShout113()
              elseif indices < 115
                return cArrayCreateShout114()
              elseif indices < 116
                return cArrayCreateShout115()
              else
                return cArrayCreateShout116()
              endif
            else
              if indices < 118
                return cArrayCreateShout117()
              elseif indices < 119
                return cArrayCreateShout118()
              elseif indices < 120
                return cArrayCreateShout119()
              else
                return cArrayCreateShout120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateShout121()
              elseif indices < 123
                return cArrayCreateShout122()
              elseif indices < 124
                return cArrayCreateShout123()
              else
                return cArrayCreateShout124()
              endif
            else
              if indices < 126
                return cArrayCreateShout125()
              elseif indices < 127
                return cArrayCreateShout126()
              elseif indices < 128
                return cArrayCreateShout127()
              else
                return cArrayCreateShout128()
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

Shout[] function cArrayCreateShout001() global
  Shout[] aArr = New Shout[1]
  return aArr
endfunction
Shout[] function cArrayCreateShout002() global
  Shout[] aArr = New Shout[2]
  return aArr
endfunction
Shout[] function cArrayCreateShout003() global
  Shout[] aArr = New Shout[3]
  return aArr
endfunction
Shout[] function cArrayCreateShout004() global
  Shout[] aArr = New Shout[4]
  return aArr
endfunction
Shout[] function cArrayCreateShout005() global
  Shout[] aArr = New Shout[5]
  return aArr
endfunction
Shout[] function cArrayCreateShout006() global
  Shout[] aArr = New Shout[6]
  return aArr
endfunction
Shout[] function cArrayCreateShout007() global
  Shout[] aArr = New Shout[7]
  return aArr
endfunction
Shout[] function cArrayCreateShout008() global
  Shout[] aArr = New Shout[8]
  return aArr
endfunction
Shout[] function cArrayCreateShout009() global
  Shout[] aArr = New Shout[9]
  return aArr
endfunction
Shout[] function cArrayCreateShout010() global
  Shout[] aArr = New Shout[10]
  return aArr
endfunction
Shout[] function cArrayCreateShout011() global
  Shout[] aArr = New Shout[11]
  return aArr
endfunction
Shout[] function cArrayCreateShout012() global
  Shout[] aArr = New Shout[12]
  return aArr
endfunction
Shout[] function cArrayCreateShout013() global
  Shout[] aArr = New Shout[13]
  return aArr
endfunction
Shout[] function cArrayCreateShout014() global
  Shout[] aArr = New Shout[14]
  return aArr
endfunction
Shout[] function cArrayCreateShout015() global
  Shout[] aArr = New Shout[15]
  return aArr
endfunction
Shout[] function cArrayCreateShout016() global
  Shout[] aArr = New Shout[16]
  return aArr
endfunction
Shout[] function cArrayCreateShout017() global
  Shout[] aArr = New Shout[17]
  return aArr
endfunction
Shout[] function cArrayCreateShout018() global
  Shout[] aArr = New Shout[18]
  return aArr
endfunction
Shout[] function cArrayCreateShout019() global
  Shout[] aArr = New Shout[19]
  return aArr
endfunction
Shout[] function cArrayCreateShout020() global
  Shout[] aArr = New Shout[20]
  return aArr
endfunction
Shout[] function cArrayCreateShout021() global
  Shout[] aArr = New Shout[21]
  return aArr
endfunction
Shout[] function cArrayCreateShout022() global
  Shout[] aArr = New Shout[22]
  return aArr
endfunction
Shout[] function cArrayCreateShout023() global
  Shout[] aArr = New Shout[23]
  return aArr
endfunction
Shout[] function cArrayCreateShout024() global
  Shout[] aArr = New Shout[24]
  return aArr
endfunction
Shout[] function cArrayCreateShout025() global
  Shout[] aArr = New Shout[25]
  return aArr
endfunction
Shout[] function cArrayCreateShout026() global
  Shout[] aArr = New Shout[26]
  return aArr
endfunction
Shout[] function cArrayCreateShout027() global
  Shout[] aArr = New Shout[27]
  return aArr
endfunction
Shout[] function cArrayCreateShout028() global
  Shout[] aArr = New Shout[28]
  return aArr
endfunction
Shout[] function cArrayCreateShout029() global
  Shout[] aArr = New Shout[29]
  return aArr
endfunction
Shout[] function cArrayCreateShout030() global
  Shout[] aArr = New Shout[30]
  return aArr
endfunction
Shout[] function cArrayCreateShout031() global
  Shout[] aArr = New Shout[31]
  return aArr
endfunction
Shout[] function cArrayCreateShout032() global
  Shout[] aArr = New Shout[32]
  return aArr
endfunction
Shout[] function cArrayCreateShout033() global
  Shout[] aArr = New Shout[33]
  return aArr
endfunction
Shout[] function cArrayCreateShout034() global
  Shout[] aArr = New Shout[34]
  return aArr
endfunction
Shout[] function cArrayCreateShout035() global
  Shout[] aArr = New Shout[35]
  return aArr
endfunction
Shout[] function cArrayCreateShout036() global
  Shout[] aArr = New Shout[36]
  return aArr
endfunction
Shout[] function cArrayCreateShout037() global
  Shout[] aArr = New Shout[37]
  return aArr
endfunction
Shout[] function cArrayCreateShout038() global
  Shout[] aArr = New Shout[38]
  return aArr
endfunction
Shout[] function cArrayCreateShout039() global
  Shout[] aArr = New Shout[39]
  return aArr
endfunction
Shout[] function cArrayCreateShout040() global
  Shout[] aArr = New Shout[40]
  return aArr
endfunction
Shout[] function cArrayCreateShout041() global
  Shout[] aArr = New Shout[41]
  return aArr
endfunction
Shout[] function cArrayCreateShout042() global
  Shout[] aArr = New Shout[42]
  return aArr
endfunction
Shout[] function cArrayCreateShout043() global
  Shout[] aArr = New Shout[43]
  return aArr
endfunction
Shout[] function cArrayCreateShout044() global
  Shout[] aArr = New Shout[44]
  return aArr
endfunction
Shout[] function cArrayCreateShout045() global
  Shout[] aArr = New Shout[45]
  return aArr
endfunction
Shout[] function cArrayCreateShout046() global
  Shout[] aArr = New Shout[46]
  return aArr
endfunction
Shout[] function cArrayCreateShout047() global
  Shout[] aArr = New Shout[47]
  return aArr
endfunction
Shout[] function cArrayCreateShout048() global
  Shout[] aArr = New Shout[48]
  return aArr
endfunction
Shout[] function cArrayCreateShout049() global
  Shout[] aArr = New Shout[49]
  return aArr
endfunction
Shout[] function cArrayCreateShout050() global
  Shout[] aArr = New Shout[50]
  return aArr
endfunction
Shout[] function cArrayCreateShout051() global
  Shout[] aArr = New Shout[51]
  return aArr
endfunction
Shout[] function cArrayCreateShout052() global
  Shout[] aArr = New Shout[52]
  return aArr
endfunction
Shout[] function cArrayCreateShout053() global
  Shout[] aArr = New Shout[53]
  return aArr
endfunction
Shout[] function cArrayCreateShout054() global
  Shout[] aArr = New Shout[54]
  return aArr
endfunction
Shout[] function cArrayCreateShout055() global
  Shout[] aArr = New Shout[55]
  return aArr
endfunction
Shout[] function cArrayCreateShout056() global
  Shout[] aArr = New Shout[56]
  return aArr
endfunction
Shout[] function cArrayCreateShout057() global
  Shout[] aArr = New Shout[57]
  return aArr
endfunction
Shout[] function cArrayCreateShout058() global
  Shout[] aArr = New Shout[58]
  return aArr
endfunction
Shout[] function cArrayCreateShout059() global
  Shout[] aArr = New Shout[59]
  return aArr
endfunction
Shout[] function cArrayCreateShout060() global
  Shout[] aArr = New Shout[60]
  return aArr
endfunction
Shout[] function cArrayCreateShout061() global
  Shout[] aArr = New Shout[61]
  return aArr
endfunction
Shout[] function cArrayCreateShout062() global
  Shout[] aArr = New Shout[62]
  return aArr
endfunction
Shout[] function cArrayCreateShout063() global
  Shout[] aArr = New Shout[63]
  return aArr
endfunction
Shout[] function cArrayCreateShout064() global
  Shout[] aArr = New Shout[64]
  return aArr
endfunction
Shout[] function cArrayCreateShout065() global
  Shout[] aArr = New Shout[65]
  return aArr
endfunction
Shout[] function cArrayCreateShout066() global
  Shout[] aArr = New Shout[66]
  return aArr
endfunction
Shout[] function cArrayCreateShout067() global
  Shout[] aArr = New Shout[67]
  return aArr
endfunction
Shout[] function cArrayCreateShout068() global
  Shout[] aArr = New Shout[68]
  return aArr
endfunction
Shout[] function cArrayCreateShout069() global
  Shout[] aArr = New Shout[69]
  return aArr
endfunction
Shout[] function cArrayCreateShout070() global
  Shout[] aArr = New Shout[70]
  return aArr
endfunction
Shout[] function cArrayCreateShout071() global
  Shout[] aArr = New Shout[71]
  return aArr
endfunction
Shout[] function cArrayCreateShout072() global
  Shout[] aArr = New Shout[72]
  return aArr
endfunction
Shout[] function cArrayCreateShout073() global
  Shout[] aArr = New Shout[73]
  return aArr
endfunction
Shout[] function cArrayCreateShout074() global
  Shout[] aArr = New Shout[74]
  return aArr
endfunction
Shout[] function cArrayCreateShout075() global
  Shout[] aArr = New Shout[75]
  return aArr
endfunction
Shout[] function cArrayCreateShout076() global
  Shout[] aArr = New Shout[76]
  return aArr
endfunction
Shout[] function cArrayCreateShout077() global
  Shout[] aArr = New Shout[77]
  return aArr
endfunction
Shout[] function cArrayCreateShout078() global
  Shout[] aArr = New Shout[78]
  return aArr
endfunction
Shout[] function cArrayCreateShout079() global
  Shout[] aArr = New Shout[79]
  return aArr
endfunction
Shout[] function cArrayCreateShout080() global
  Shout[] aArr = New Shout[80]
  return aArr
endfunction
Shout[] function cArrayCreateShout081() global
  Shout[] aArr = New Shout[81]
  return aArr
endfunction
Shout[] function cArrayCreateShout082() global
  Shout[] aArr = New Shout[82]
  return aArr
endfunction
Shout[] function cArrayCreateShout083() global
  Shout[] aArr = New Shout[83]
  return aArr
endfunction
Shout[] function cArrayCreateShout084() global
  Shout[] aArr = New Shout[84]
  return aArr
endfunction
Shout[] function cArrayCreateShout085() global
  Shout[] aArr = New Shout[85]
  return aArr
endfunction
Shout[] function cArrayCreateShout086() global
  Shout[] aArr = New Shout[86]
  return aArr
endfunction
Shout[] function cArrayCreateShout087() global
  Shout[] aArr = New Shout[87]
  return aArr
endfunction
Shout[] function cArrayCreateShout088() global
  Shout[] aArr = New Shout[88]
  return aArr
endfunction
Shout[] function cArrayCreateShout089() global
  Shout[] aArr = New Shout[89]
  return aArr
endfunction
Shout[] function cArrayCreateShout090() global
  Shout[] aArr = New Shout[90]
  return aArr
endfunction
Shout[] function cArrayCreateShout091() global
  Shout[] aArr = New Shout[91]
  return aArr
endfunction
Shout[] function cArrayCreateShout092() global
  Shout[] aArr = New Shout[92]
  return aArr
endfunction
Shout[] function cArrayCreateShout093() global
  Shout[] aArr = New Shout[93]
  return aArr
endfunction
Shout[] function cArrayCreateShout094() global
  Shout[] aArr = New Shout[94]
  return aArr
endfunction
Shout[] function cArrayCreateShout095() global
  Shout[] aArr = New Shout[95]
  return aArr
endfunction
Shout[] function cArrayCreateShout096() global
  Shout[] aArr = New Shout[96]
  return aArr
endfunction
Shout[] function cArrayCreateShout097() global
  Shout[] aArr = New Shout[97]
  return aArr
endfunction
Shout[] function cArrayCreateShout098() global
  Shout[] aArr = New Shout[98]
  return aArr
endfunction
Shout[] function cArrayCreateShout099() global
  Shout[] aArr = New Shout[99]
  return aArr
endfunction
Shout[] function cArrayCreateShout100() global
  Shout[] aArr = New Shout[100]
  return aArr
endfunction
Shout[] function cArrayCreateShout101() global
  Shout[] aArr = New Shout[101]
  return aArr
endfunction
Shout[] function cArrayCreateShout102() global
  Shout[] aArr = New Shout[102]
  return aArr
endfunction
Shout[] function cArrayCreateShout103() global
  Shout[] aArr = New Shout[103]
  return aArr
endfunction
Shout[] function cArrayCreateShout104() global
  Shout[] aArr = New Shout[104]
  return aArr
endfunction
Shout[] function cArrayCreateShout105() global
  Shout[] aArr = New Shout[105]
  return aArr
endfunction
Shout[] function cArrayCreateShout106() global
  Shout[] aArr = New Shout[106]
  return aArr
endfunction
Shout[] function cArrayCreateShout107() global
  Shout[] aArr = New Shout[107]
  return aArr
endfunction
Shout[] function cArrayCreateShout108() global
  Shout[] aArr = New Shout[108]
  return aArr
endfunction
Shout[] function cArrayCreateShout109() global
  Shout[] aArr = New Shout[109]
  return aArr
endfunction
Shout[] function cArrayCreateShout110() global
  Shout[] aArr = New Shout[110]
  return aArr
endfunction
Shout[] function cArrayCreateShout111() global
  Shout[] aArr = New Shout[111]
  return aArr
endfunction
Shout[] function cArrayCreateShout112() global
  Shout[] aArr = New Shout[112]
  return aArr
endfunction
Shout[] function cArrayCreateShout113() global
  Shout[] aArr = New Shout[113]
  return aArr
endfunction
Shout[] function cArrayCreateShout114() global
  Shout[] aArr = New Shout[114]
  return aArr
endfunction
Shout[] function cArrayCreateShout115() global
  Shout[] aArr = New Shout[115]
  return aArr
endfunction
Shout[] function cArrayCreateShout116() global
  Shout[] aArr = New Shout[116]
  return aArr
endfunction
Shout[] function cArrayCreateShout117() global
  Shout[] aArr = New Shout[117]
  return aArr
endfunction
Shout[] function cArrayCreateShout118() global
  Shout[] aArr = New Shout[118]
  return aArr
endfunction
Shout[] function cArrayCreateShout119() global
  Shout[] aArr = New Shout[119]
  return aArr
endfunction
Shout[] function cArrayCreateShout120() global
  Shout[] aArr = New Shout[120]
  return aArr
endfunction
Shout[] function cArrayCreateShout121() global
  Shout[] aArr = New Shout[121]
  return aArr
endfunction
Shout[] function cArrayCreateShout122() global
  Shout[] aArr = New Shout[122]
  return aArr
endfunction
Shout[] function cArrayCreateShout123() global
  Shout[] aArr = New Shout[123]
  return aArr
endfunction
Shout[] function cArrayCreateShout124() global
  Shout[] aArr = New Shout[124]
  return aArr
endfunction
Shout[] function cArrayCreateShout125() global
  Shout[] aArr = New Shout[125]
  return aArr
endfunction
Shout[] function cArrayCreateShout126() global
  Shout[] aArr = New Shout[126]
  return aArr
endfunction
Shout[] function cArrayCreateShout127() global
  Shout[] aArr = New Shout[127]
  return aArr
endfunction
Shout[] function cArrayCreateShout128() global
  Shout[] aArr = New Shout[128]
  return aArr
endfunction
