Scriptname cArrayEnchantment Hidden

Int function cGetVersion() global
  return 9001
endfunction

Enchantment[] function cArrayCreateEnchantment(Int indices, Enchantment filler = None, Bool outputTrace = TRUE, \
  Bool useConsoleUtil = TRUE) global
  {Requirements: None}
  Enchantment[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; useConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateEnchantment()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayEnchantment::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateEnchantment001()
              elseif indices < 3
                aArray = cArrayCreateEnchantment002()
              elseif indices < 4
                aArray = cArrayCreateEnchantment003()
              else
                aArray = cArrayCreateEnchantment004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateEnchantment005()
              elseif indices < 7
                aArray = cArrayCreateEnchantment006()
              elseif indices < 8
                aArray = cArrayCreateEnchantment007()
              else
                aArray = cArrayCreateEnchantment008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateEnchantment009()
              elseif indices < 11
                aArray = cArrayCreateEnchantment010()
              elseif indices < 12
                aArray = cArrayCreateEnchantment011()
              else
                aArray = cArrayCreateEnchantment012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateEnchantment013()
              elseif indices < 15
                aArray = cArrayCreateEnchantment014()
              elseif indices < 16
                aArray = cArrayCreateEnchantment015()
              else
                aArray = cArrayCreateEnchantment016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateEnchantment017()
              elseif indices < 19
                aArray = cArrayCreateEnchantment018()
              elseif indices < 20
                aArray = cArrayCreateEnchantment019()
              else
                aArray = cArrayCreateEnchantment020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateEnchantment021()
              elseif indices < 23
                aArray = cArrayCreateEnchantment022()
              elseif indices < 24
                aArray = cArrayCreateEnchantment023()
              else
                aArray = cArrayCreateEnchantment024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateEnchantment025()
              elseif indices < 27
                aArray = cArrayCreateEnchantment026()
              elseif indices < 28
                aArray = cArrayCreateEnchantment027()
              else
                aArray = cArrayCreateEnchantment028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateEnchantment029()
              elseif indices < 31
                aArray = cArrayCreateEnchantment030()
              elseif indices < 32
                aArray = cArrayCreateEnchantment031()
              else
                aArray = cArrayCreateEnchantment032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateEnchantment033()
              elseif indices < 35
                aArray = cArrayCreateEnchantment034()
              elseif indices < 36
                aArray = cArrayCreateEnchantment035()
              else
                aArray = cArrayCreateEnchantment036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateEnchantment037()
              elseif indices < 39
                aArray = cArrayCreateEnchantment038()
              elseif indices < 40
                aArray = cArrayCreateEnchantment039()
              else
                aArray = cArrayCreateEnchantment040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateEnchantment041()
              elseif indices < 43
                aArray = cArrayCreateEnchantment042()
              elseif indices < 44
                aArray = cArrayCreateEnchantment043()
              else
                aArray = cArrayCreateEnchantment044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateEnchantment045()
              elseif indices < 47
                aArray = cArrayCreateEnchantment046()
              elseif indices < 48
                aArray = cArrayCreateEnchantment047()
              else
                aArray = cArrayCreateEnchantment048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateEnchantment049()
              elseif indices < 51
                aArray = cArrayCreateEnchantment050()
              elseif indices < 52
                aArray = cArrayCreateEnchantment051()
              else
                aArray = cArrayCreateEnchantment052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateEnchantment053()
              elseif indices < 55
                aArray = cArrayCreateEnchantment054()
              elseif indices < 56
                aArray = cArrayCreateEnchantment055()
              else
                aArray = cArrayCreateEnchantment056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateEnchantment057()
              elseif indices < 59
                aArray = cArrayCreateEnchantment058()
              elseif indices < 60
                aArray = cArrayCreateEnchantment059()
              else
                aArray = cArrayCreateEnchantment060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateEnchantment061()
              elseif indices < 63
                aArray = cArrayCreateEnchantment062()
              elseif indices < 64
                aArray = cArrayCreateEnchantment063()
              else
                aArray = cArrayCreateEnchantment064()
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
                aArray = cArrayCreateEnchantment065()
              elseif indices < 67
                aArray = cArrayCreateEnchantment066()
              elseif indices < 68
                aArray = cArrayCreateEnchantment067()
              else
                aArray = cArrayCreateEnchantment068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateEnchantment069()
              elseif indices < 71
                aArray = cArrayCreateEnchantment070()
              elseif indices < 72
                aArray = cArrayCreateEnchantment071()
              else
                aArray = cArrayCreateEnchantment072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateEnchantment073()
              elseif indices < 75
                aArray = cArrayCreateEnchantment074()
              elseif indices < 76
                aArray = cArrayCreateEnchantment075()
              else
                aArray = cArrayCreateEnchantment076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateEnchantment077()
              elseif indices < 79
                aArray = cArrayCreateEnchantment078()
              elseif indices < 80
                aArray = cArrayCreateEnchantment079()
              else
                aArray = cArrayCreateEnchantment080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateEnchantment081()
              elseif indices < 83
                aArray = cArrayCreateEnchantment082()
              elseif indices < 84
                aArray = cArrayCreateEnchantment083()
              else
                aArray = cArrayCreateEnchantment084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateEnchantment085()
              elseif indices < 87
                aArray = cArrayCreateEnchantment086()
              elseif indices < 88
                aArray = cArrayCreateEnchantment087()
              else
                aArray = cArrayCreateEnchantment088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateEnchantment089()
              elseif indices < 91
                aArray = cArrayCreateEnchantment090()
              elseif indices < 92
                aArray = cArrayCreateEnchantment091()
              else
                aArray = cArrayCreateEnchantment092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateEnchantment093()
              elseif indices < 95
                aArray = cArrayCreateEnchantment094()
              elseif indices < 96
                aArray = cArrayCreateEnchantment095()
              else
                aArray = cArrayCreateEnchantment096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateEnchantment097()
              elseif indices < 99
                aArray = cArrayCreateEnchantment098()
              elseif indices < 100
                aArray = cArrayCreateEnchantment099()
              else
                aArray = cArrayCreateEnchantment100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateEnchantment101()
              elseif indices < 103
                aArray = cArrayCreateEnchantment102()
              elseif indices < 104
                aArray = cArrayCreateEnchantment103()
              else
                aArray = cArrayCreateEnchantment104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateEnchantment105()
              elseif indices < 107
                aArray = cArrayCreateEnchantment106()
              elseif indices < 108
                aArray = cArrayCreateEnchantment107()
              else
                aArray = cArrayCreateEnchantment108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateEnchantment109()
              elseif indices < 111
                aArray = cArrayCreateEnchantment110()
              elseif indices < 112
                aArray = cArrayCreateEnchantment111()
              else
                aArray = cArrayCreateEnchantment112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateEnchantment113()
              elseif indices < 115
                aArray = cArrayCreateEnchantment114()
              elseif indices < 116
                aArray = cArrayCreateEnchantment115()
              else
                aArray = cArrayCreateEnchantment116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateEnchantment117()
              elseif indices < 119
                aArray = cArrayCreateEnchantment118()
              elseif indices < 120
                aArray = cArrayCreateEnchantment119()
              else
                aArray = cArrayCreateEnchantment120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateEnchantment121()
              elseif indices < 123
                aArray = cArrayCreateEnchantment122()
              elseif indices < 124
                aArray = cArrayCreateEnchantment123()
              else
                aArray = cArrayCreateEnchantment124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateEnchantment125()
              elseif indices < 127
                aArray = cArrayCreateEnchantment126()
              elseif indices < 128
                aArray = cArrayCreateEnchantment127()
              else
                aArray = cArrayCreateEnchantment128()
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
