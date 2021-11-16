Scriptname cArrayEnchantment Hidden


Enchantment[] function cArrayCreateEnchantment(Int indices, Enchantment filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  Enchantment[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    if outputTrace
      String msg = "cArrayCreateEnchantment()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayEnchantment::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateEnchantment001()
              elseif indices < 3
                return cArrayCreateEnchantment002()
              elseif indices < 4
                return cArrayCreateEnchantment003()
              else
                return cArrayCreateEnchantment004()
              endif
            else
              if indices < 6
                return cArrayCreateEnchantment005()
              elseif indices < 7
                return cArrayCreateEnchantment006()
              elseif indices < 8
                return cArrayCreateEnchantment007()
              else
                return cArrayCreateEnchantment008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateEnchantment009()
              elseif indices < 11
                return cArrayCreateEnchantment010()
              elseif indices < 12
                return cArrayCreateEnchantment011()
              else
                return cArrayCreateEnchantment012()
              endif
            else
              if indices < 14
                return cArrayCreateEnchantment013()
              elseif indices < 15
                return cArrayCreateEnchantment014()
              elseif indices < 16
                return cArrayCreateEnchantment015()
              else
                return cArrayCreateEnchantment016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateEnchantment017()
              elseif indices < 19
                return cArrayCreateEnchantment018()
              elseif indices < 20
                return cArrayCreateEnchantment019()
              else
                return cArrayCreateEnchantment020()
              endif
            else
              if indices < 22
                return cArrayCreateEnchantment021()
              elseif indices < 23
                return cArrayCreateEnchantment022()
              elseif indices < 24
                return cArrayCreateEnchantment023()
              else
                return cArrayCreateEnchantment024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateEnchantment025()
              elseif indices < 27
                return cArrayCreateEnchantment026()
              elseif indices < 28
                return cArrayCreateEnchantment027()
              else
                return cArrayCreateEnchantment028()
              endif
            else
              if indices < 30
                return cArrayCreateEnchantment029()
              elseif indices < 31
                return cArrayCreateEnchantment030()
              elseif indices < 32
                return cArrayCreateEnchantment031()
              else
                return cArrayCreateEnchantment032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateEnchantment033()
              elseif indices < 35
                return cArrayCreateEnchantment034()
              elseif indices < 36
                return cArrayCreateEnchantment035()
              else
                return cArrayCreateEnchantment036()
              endif
            else
              if indices < 38
                return cArrayCreateEnchantment037()
              elseif indices < 39
                return cArrayCreateEnchantment038()
              elseif indices < 40
                return cArrayCreateEnchantment039()
              else
                return cArrayCreateEnchantment040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateEnchantment041()
              elseif indices < 43
                return cArrayCreateEnchantment042()
              elseif indices < 44
                return cArrayCreateEnchantment043()
              else
                return cArrayCreateEnchantment044()
              endif
            else
              if indices < 46
                return cArrayCreateEnchantment045()
              elseif indices < 47
                return cArrayCreateEnchantment046()
              elseif indices < 48
                return cArrayCreateEnchantment047()
              else
                return cArrayCreateEnchantment048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateEnchantment049()
              elseif indices < 51
                return cArrayCreateEnchantment050()
              elseif indices < 52
                return cArrayCreateEnchantment051()
              else
                return cArrayCreateEnchantment052()
              endif
            else
              if indices < 54
                return cArrayCreateEnchantment053()
              elseif indices < 55
                return cArrayCreateEnchantment054()
              elseif indices < 56
                return cArrayCreateEnchantment055()
              else
                return cArrayCreateEnchantment056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateEnchantment057()
              elseif indices < 59
                return cArrayCreateEnchantment058()
              elseif indices < 60
                return cArrayCreateEnchantment059()
              else
                return cArrayCreateEnchantment060()
              endif
            else
              if indices < 62
                return cArrayCreateEnchantment061()
              elseif indices < 63
                return cArrayCreateEnchantment062()
              elseif indices < 64
                return cArrayCreateEnchantment063()
              else
                return cArrayCreateEnchantment064()
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
                return cArrayCreateEnchantment065()
              elseif indices < 67
                return cArrayCreateEnchantment066()
              elseif indices < 68
                return cArrayCreateEnchantment067()
              else
                return cArrayCreateEnchantment068()
              endif
            else
              if indices < 70
                return cArrayCreateEnchantment069()
              elseif indices < 71
                return cArrayCreateEnchantment070()
              elseif indices < 72
                return cArrayCreateEnchantment071()
              else
                return cArrayCreateEnchantment072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateEnchantment073()
              elseif indices < 75
                return cArrayCreateEnchantment074()
              elseif indices < 76
                return cArrayCreateEnchantment075()
              else
                return cArrayCreateEnchantment076()
              endif
            else
              if indices < 78
                return cArrayCreateEnchantment077()
              elseif indices < 79
                return cArrayCreateEnchantment078()
              elseif indices < 80
                return cArrayCreateEnchantment079()
              else
                return cArrayCreateEnchantment080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateEnchantment081()
              elseif indices < 83
                return cArrayCreateEnchantment082()
              elseif indices < 84
                return cArrayCreateEnchantment083()
              else
                return cArrayCreateEnchantment084()
              endif
            else
              if indices < 86
                return cArrayCreateEnchantment085()
              elseif indices < 87
                return cArrayCreateEnchantment086()
              elseif indices < 88
                return cArrayCreateEnchantment087()
              else
                return cArrayCreateEnchantment088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateEnchantment089()
              elseif indices < 91
                return cArrayCreateEnchantment090()
              elseif indices < 92
                return cArrayCreateEnchantment091()
              else
                return cArrayCreateEnchantment092()
              endif
            else
              if indices < 94
                return cArrayCreateEnchantment093()
              elseif indices < 95
                return cArrayCreateEnchantment094()
              elseif indices < 96
                return cArrayCreateEnchantment095()
              else
                return cArrayCreateEnchantment096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateEnchantment097()
              elseif indices < 99
                return cArrayCreateEnchantment098()
              elseif indices < 100
                return cArrayCreateEnchantment099()
              else
                return cArrayCreateEnchantment100()
              endif
            else
              if indices < 102
                return cArrayCreateEnchantment101()
              elseif indices < 103
                return cArrayCreateEnchantment102()
              elseif indices < 104
                return cArrayCreateEnchantment103()
              else
                return cArrayCreateEnchantment104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateEnchantment105()
              elseif indices < 107
                return cArrayCreateEnchantment106()
              elseif indices < 108
                return cArrayCreateEnchantment107()
              else
                return cArrayCreateEnchantment108()
              endif
            else
              if indices < 110
                return cArrayCreateEnchantment109()
              elseif indices < 111
                return cArrayCreateEnchantment110()
              elseif indices < 112
                return cArrayCreateEnchantment111()
              else
                return cArrayCreateEnchantment112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateEnchantment113()
              elseif indices < 115
                return cArrayCreateEnchantment114()
              elseif indices < 116
                return cArrayCreateEnchantment115()
              else
                return cArrayCreateEnchantment116()
              endif
            else
              if indices < 118
                return cArrayCreateEnchantment117()
              elseif indices < 119
                return cArrayCreateEnchantment118()
              elseif indices < 120
                return cArrayCreateEnchantment119()
              else
                return cArrayCreateEnchantment120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateEnchantment121()
              elseif indices < 123
                return cArrayCreateEnchantment122()
              elseif indices < 124
                return cArrayCreateEnchantment123()
              else
                return cArrayCreateEnchantment124()
              endif
            else
              if indices < 126
                return cArrayCreateEnchantment125()
              elseif indices < 127
                return cArrayCreateEnchantment126()
              elseif indices < 128
                return cArrayCreateEnchantment127()
              else
                return cArrayCreateEnchantment128()
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

Enchantment[] function cArrayCreateEnchantment001() global
  Enchantment[] aArr = New Enchantment[1]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment002() global
  Enchantment[] aArr = New Enchantment[2]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment003() global
  Enchantment[] aArr = New Enchantment[3]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment004() global
  Enchantment[] aArr = New Enchantment[4]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment005() global
  Enchantment[] aArr = New Enchantment[5]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment006() global
  Enchantment[] aArr = New Enchantment[6]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment007() global
  Enchantment[] aArr = New Enchantment[7]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment008() global
  Enchantment[] aArr = New Enchantment[8]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment009() global
  Enchantment[] aArr = New Enchantment[9]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment010() global
  Enchantment[] aArr = New Enchantment[10]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment011() global
  Enchantment[] aArr = New Enchantment[11]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment012() global
  Enchantment[] aArr = New Enchantment[12]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment013() global
  Enchantment[] aArr = New Enchantment[13]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment014() global
  Enchantment[] aArr = New Enchantment[14]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment015() global
  Enchantment[] aArr = New Enchantment[15]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment016() global
  Enchantment[] aArr = New Enchantment[16]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment017() global
  Enchantment[] aArr = New Enchantment[17]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment018() global
  Enchantment[] aArr = New Enchantment[18]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment019() global
  Enchantment[] aArr = New Enchantment[19]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment020() global
  Enchantment[] aArr = New Enchantment[20]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment021() global
  Enchantment[] aArr = New Enchantment[21]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment022() global
  Enchantment[] aArr = New Enchantment[22]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment023() global
  Enchantment[] aArr = New Enchantment[23]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment024() global
  Enchantment[] aArr = New Enchantment[24]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment025() global
  Enchantment[] aArr = New Enchantment[25]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment026() global
  Enchantment[] aArr = New Enchantment[26]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment027() global
  Enchantment[] aArr = New Enchantment[27]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment028() global
  Enchantment[] aArr = New Enchantment[28]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment029() global
  Enchantment[] aArr = New Enchantment[29]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment030() global
  Enchantment[] aArr = New Enchantment[30]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment031() global
  Enchantment[] aArr = New Enchantment[31]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment032() global
  Enchantment[] aArr = New Enchantment[32]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment033() global
  Enchantment[] aArr = New Enchantment[33]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment034() global
  Enchantment[] aArr = New Enchantment[34]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment035() global
  Enchantment[] aArr = New Enchantment[35]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment036() global
  Enchantment[] aArr = New Enchantment[36]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment037() global
  Enchantment[] aArr = New Enchantment[37]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment038() global
  Enchantment[] aArr = New Enchantment[38]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment039() global
  Enchantment[] aArr = New Enchantment[39]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment040() global
  Enchantment[] aArr = New Enchantment[40]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment041() global
  Enchantment[] aArr = New Enchantment[41]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment042() global
  Enchantment[] aArr = New Enchantment[42]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment043() global
  Enchantment[] aArr = New Enchantment[43]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment044() global
  Enchantment[] aArr = New Enchantment[44]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment045() global
  Enchantment[] aArr = New Enchantment[45]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment046() global
  Enchantment[] aArr = New Enchantment[46]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment047() global
  Enchantment[] aArr = New Enchantment[47]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment048() global
  Enchantment[] aArr = New Enchantment[48]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment049() global
  Enchantment[] aArr = New Enchantment[49]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment050() global
  Enchantment[] aArr = New Enchantment[50]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment051() global
  Enchantment[] aArr = New Enchantment[51]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment052() global
  Enchantment[] aArr = New Enchantment[52]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment053() global
  Enchantment[] aArr = New Enchantment[53]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment054() global
  Enchantment[] aArr = New Enchantment[54]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment055() global
  Enchantment[] aArr = New Enchantment[55]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment056() global
  Enchantment[] aArr = New Enchantment[56]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment057() global
  Enchantment[] aArr = New Enchantment[57]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment058() global
  Enchantment[] aArr = New Enchantment[58]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment059() global
  Enchantment[] aArr = New Enchantment[59]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment060() global
  Enchantment[] aArr = New Enchantment[60]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment061() global
  Enchantment[] aArr = New Enchantment[61]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment062() global
  Enchantment[] aArr = New Enchantment[62]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment063() global
  Enchantment[] aArr = New Enchantment[63]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment064() global
  Enchantment[] aArr = New Enchantment[64]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment065() global
  Enchantment[] aArr = New Enchantment[65]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment066() global
  Enchantment[] aArr = New Enchantment[66]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment067() global
  Enchantment[] aArr = New Enchantment[67]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment068() global
  Enchantment[] aArr = New Enchantment[68]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment069() global
  Enchantment[] aArr = New Enchantment[69]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment070() global
  Enchantment[] aArr = New Enchantment[70]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment071() global
  Enchantment[] aArr = New Enchantment[71]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment072() global
  Enchantment[] aArr = New Enchantment[72]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment073() global
  Enchantment[] aArr = New Enchantment[73]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment074() global
  Enchantment[] aArr = New Enchantment[74]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment075() global
  Enchantment[] aArr = New Enchantment[75]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment076() global
  Enchantment[] aArr = New Enchantment[76]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment077() global
  Enchantment[] aArr = New Enchantment[77]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment078() global
  Enchantment[] aArr = New Enchantment[78]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment079() global
  Enchantment[] aArr = New Enchantment[79]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment080() global
  Enchantment[] aArr = New Enchantment[80]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment081() global
  Enchantment[] aArr = New Enchantment[81]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment082() global
  Enchantment[] aArr = New Enchantment[82]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment083() global
  Enchantment[] aArr = New Enchantment[83]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment084() global
  Enchantment[] aArr = New Enchantment[84]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment085() global
  Enchantment[] aArr = New Enchantment[85]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment086() global
  Enchantment[] aArr = New Enchantment[86]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment087() global
  Enchantment[] aArr = New Enchantment[87]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment088() global
  Enchantment[] aArr = New Enchantment[88]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment089() global
  Enchantment[] aArr = New Enchantment[89]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment090() global
  Enchantment[] aArr = New Enchantment[90]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment091() global
  Enchantment[] aArr = New Enchantment[91]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment092() global
  Enchantment[] aArr = New Enchantment[92]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment093() global
  Enchantment[] aArr = New Enchantment[93]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment094() global
  Enchantment[] aArr = New Enchantment[94]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment095() global
  Enchantment[] aArr = New Enchantment[95]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment096() global
  Enchantment[] aArr = New Enchantment[96]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment097() global
  Enchantment[] aArr = New Enchantment[97]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment098() global
  Enchantment[] aArr = New Enchantment[98]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment099() global
  Enchantment[] aArr = New Enchantment[99]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment100() global
  Enchantment[] aArr = New Enchantment[100]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment101() global
  Enchantment[] aArr = New Enchantment[101]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment102() global
  Enchantment[] aArr = New Enchantment[102]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment103() global
  Enchantment[] aArr = New Enchantment[103]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment104() global
  Enchantment[] aArr = New Enchantment[104]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment105() global
  Enchantment[] aArr = New Enchantment[105]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment106() global
  Enchantment[] aArr = New Enchantment[106]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment107() global
  Enchantment[] aArr = New Enchantment[107]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment108() global
  Enchantment[] aArr = New Enchantment[108]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment109() global
  Enchantment[] aArr = New Enchantment[109]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment110() global
  Enchantment[] aArr = New Enchantment[110]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment111() global
  Enchantment[] aArr = New Enchantment[111]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment112() global
  Enchantment[] aArr = New Enchantment[112]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment113() global
  Enchantment[] aArr = New Enchantment[113]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment114() global
  Enchantment[] aArr = New Enchantment[114]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment115() global
  Enchantment[] aArr = New Enchantment[115]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment116() global
  Enchantment[] aArr = New Enchantment[116]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment117() global
  Enchantment[] aArr = New Enchantment[117]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment118() global
  Enchantment[] aArr = New Enchantment[118]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment119() global
  Enchantment[] aArr = New Enchantment[119]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment120() global
  Enchantment[] aArr = New Enchantment[120]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment121() global
  Enchantment[] aArr = New Enchantment[121]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment122() global
  Enchantment[] aArr = New Enchantment[122]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment123() global
  Enchantment[] aArr = New Enchantment[123]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment124() global
  Enchantment[] aArr = New Enchantment[124]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment125() global
  Enchantment[] aArr = New Enchantment[125]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment126() global
  Enchantment[] aArr = New Enchantment[126]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment127() global
  Enchantment[] aArr = New Enchantment[127]
  return aArr
endfunction
Enchantment[] function cArrayCreateEnchantment128() global
  Enchantment[] aArr = New Enchantment[128]
  return aArr
endfunction
