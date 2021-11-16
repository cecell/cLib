Scriptname cArrayPackage Hidden


Package[] function cArrayCreatePackage(Int indices, Package filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  Package[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace Packages
    if outputTrace
      String msg = "cArrayCreatePackage()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayPackage::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreatePackage001()
              elseif indices < 3
                return cArrayCreatePackage002()
              elseif indices < 4
                return cArrayCreatePackage003()
              else
                return cArrayCreatePackage004()
              endif
            else
              if indices < 6
                return cArrayCreatePackage005()
              elseif indices < 7
                return cArrayCreatePackage006()
              elseif indices < 8
                return cArrayCreatePackage007()
              else
                return cArrayCreatePackage008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreatePackage009()
              elseif indices < 11
                return cArrayCreatePackage010()
              elseif indices < 12
                return cArrayCreatePackage011()
              else
                return cArrayCreatePackage012()
              endif
            else
              if indices < 14
                return cArrayCreatePackage013()
              elseif indices < 15
                return cArrayCreatePackage014()
              elseif indices < 16
                return cArrayCreatePackage015()
              else
                return cArrayCreatePackage016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreatePackage017()
              elseif indices < 19
                return cArrayCreatePackage018()
              elseif indices < 20
                return cArrayCreatePackage019()
              else
                return cArrayCreatePackage020()
              endif
            else
              if indices < 22
                return cArrayCreatePackage021()
              elseif indices < 23
                return cArrayCreatePackage022()
              elseif indices < 24
                return cArrayCreatePackage023()
              else
                return cArrayCreatePackage024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreatePackage025()
              elseif indices < 27
                return cArrayCreatePackage026()
              elseif indices < 28
                return cArrayCreatePackage027()
              else
                return cArrayCreatePackage028()
              endif
            else
              if indices < 30
                return cArrayCreatePackage029()
              elseif indices < 31
                return cArrayCreatePackage030()
              elseif indices < 32
                return cArrayCreatePackage031()
              else
                return cArrayCreatePackage032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreatePackage033()
              elseif indices < 35
                return cArrayCreatePackage034()
              elseif indices < 36
                return cArrayCreatePackage035()
              else
                return cArrayCreatePackage036()
              endif
            else
              if indices < 38
                return cArrayCreatePackage037()
              elseif indices < 39
                return cArrayCreatePackage038()
              elseif indices < 40
                return cArrayCreatePackage039()
              else
                return cArrayCreatePackage040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreatePackage041()
              elseif indices < 43
                return cArrayCreatePackage042()
              elseif indices < 44
                return cArrayCreatePackage043()
              else
                return cArrayCreatePackage044()
              endif
            else
              if indices < 46
                return cArrayCreatePackage045()
              elseif indices < 47
                return cArrayCreatePackage046()
              elseif indices < 48
                return cArrayCreatePackage047()
              else
                return cArrayCreatePackage048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreatePackage049()
              elseif indices < 51
                return cArrayCreatePackage050()
              elseif indices < 52
                return cArrayCreatePackage051()
              else
                return cArrayCreatePackage052()
              endif
            else
              if indices < 54
                return cArrayCreatePackage053()
              elseif indices < 55
                return cArrayCreatePackage054()
              elseif indices < 56
                return cArrayCreatePackage055()
              else
                return cArrayCreatePackage056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreatePackage057()
              elseif indices < 59
                return cArrayCreatePackage058()
              elseif indices < 60
                return cArrayCreatePackage059()
              else
                return cArrayCreatePackage060()
              endif
            else
              if indices < 62
                return cArrayCreatePackage061()
              elseif indices < 63
                return cArrayCreatePackage062()
              elseif indices < 64
                return cArrayCreatePackage063()
              else
                return cArrayCreatePackage064()
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
                return cArrayCreatePackage065()
              elseif indices < 67
                return cArrayCreatePackage066()
              elseif indices < 68
                return cArrayCreatePackage067()
              else
                return cArrayCreatePackage068()
              endif
            else
              if indices < 70
                return cArrayCreatePackage069()
              elseif indices < 71
                return cArrayCreatePackage070()
              elseif indices < 72
                return cArrayCreatePackage071()
              else
                return cArrayCreatePackage072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreatePackage073()
              elseif indices < 75
                return cArrayCreatePackage074()
              elseif indices < 76
                return cArrayCreatePackage075()
              else
                return cArrayCreatePackage076()
              endif
            else
              if indices < 78
                return cArrayCreatePackage077()
              elseif indices < 79
                return cArrayCreatePackage078()
              elseif indices < 80
                return cArrayCreatePackage079()
              else
                return cArrayCreatePackage080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreatePackage081()
              elseif indices < 83
                return cArrayCreatePackage082()
              elseif indices < 84
                return cArrayCreatePackage083()
              else
                return cArrayCreatePackage084()
              endif
            else
              if indices < 86
                return cArrayCreatePackage085()
              elseif indices < 87
                return cArrayCreatePackage086()
              elseif indices < 88
                return cArrayCreatePackage087()
              else
                return cArrayCreatePackage088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreatePackage089()
              elseif indices < 91
                return cArrayCreatePackage090()
              elseif indices < 92
                return cArrayCreatePackage091()
              else
                return cArrayCreatePackage092()
              endif
            else
              if indices < 94
                return cArrayCreatePackage093()
              elseif indices < 95
                return cArrayCreatePackage094()
              elseif indices < 96
                return cArrayCreatePackage095()
              else
                return cArrayCreatePackage096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreatePackage097()
              elseif indices < 99
                return cArrayCreatePackage098()
              elseif indices < 100
                return cArrayCreatePackage099()
              else
                return cArrayCreatePackage100()
              endif
            else
              if indices < 102
                return cArrayCreatePackage101()
              elseif indices < 103
                return cArrayCreatePackage102()
              elseif indices < 104
                return cArrayCreatePackage103()
              else
                return cArrayCreatePackage104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreatePackage105()
              elseif indices < 107
                return cArrayCreatePackage106()
              elseif indices < 108
                return cArrayCreatePackage107()
              else
                return cArrayCreatePackage108()
              endif
            else
              if indices < 110
                return cArrayCreatePackage109()
              elseif indices < 111
                return cArrayCreatePackage110()
              elseif indices < 112
                return cArrayCreatePackage111()
              else
                return cArrayCreatePackage112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreatePackage113()
              elseif indices < 115
                return cArrayCreatePackage114()
              elseif indices < 116
                return cArrayCreatePackage115()
              else
                return cArrayCreatePackage116()
              endif
            else
              if indices < 118
                return cArrayCreatePackage117()
              elseif indices < 119
                return cArrayCreatePackage118()
              elseif indices < 120
                return cArrayCreatePackage119()
              else
                return cArrayCreatePackage120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreatePackage121()
              elseif indices < 123
                return cArrayCreatePackage122()
              elseif indices < 124
                return cArrayCreatePackage123()
              else
                return cArrayCreatePackage124()
              endif
            else
              if indices < 126
                return cArrayCreatePackage125()
              elseif indices < 127
                return cArrayCreatePackage126()
              elseif indices < 128
                return cArrayCreatePackage127()
              else
                return cArrayCreatePackage128()
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

Package[] function cArrayCreatePackage001() global
  Package[] aArr = New Package[1]
  return aArr
endfunction
Package[] function cArrayCreatePackage002() global
  Package[] aArr = New Package[2]
  return aArr
endfunction
Package[] function cArrayCreatePackage003() global
  Package[] aArr = New Package[3]
  return aArr
endfunction
Package[] function cArrayCreatePackage004() global
  Package[] aArr = New Package[4]
  return aArr
endfunction
Package[] function cArrayCreatePackage005() global
  Package[] aArr = New Package[5]
  return aArr
endfunction
Package[] function cArrayCreatePackage006() global
  Package[] aArr = New Package[6]
  return aArr
endfunction
Package[] function cArrayCreatePackage007() global
  Package[] aArr = New Package[7]
  return aArr
endfunction
Package[] function cArrayCreatePackage008() global
  Package[] aArr = New Package[8]
  return aArr
endfunction
Package[] function cArrayCreatePackage009() global
  Package[] aArr = New Package[9]
  return aArr
endfunction
Package[] function cArrayCreatePackage010() global
  Package[] aArr = New Package[10]
  return aArr
endfunction
Package[] function cArrayCreatePackage011() global
  Package[] aArr = New Package[11]
  return aArr
endfunction
Package[] function cArrayCreatePackage012() global
  Package[] aArr = New Package[12]
  return aArr
endfunction
Package[] function cArrayCreatePackage013() global
  Package[] aArr = New Package[13]
  return aArr
endfunction
Package[] function cArrayCreatePackage014() global
  Package[] aArr = New Package[14]
  return aArr
endfunction
Package[] function cArrayCreatePackage015() global
  Package[] aArr = New Package[15]
  return aArr
endfunction
Package[] function cArrayCreatePackage016() global
  Package[] aArr = New Package[16]
  return aArr
endfunction
Package[] function cArrayCreatePackage017() global
  Package[] aArr = New Package[17]
  return aArr
endfunction
Package[] function cArrayCreatePackage018() global
  Package[] aArr = New Package[18]
  return aArr
endfunction
Package[] function cArrayCreatePackage019() global
  Package[] aArr = New Package[19]
  return aArr
endfunction
Package[] function cArrayCreatePackage020() global
  Package[] aArr = New Package[20]
  return aArr
endfunction
Package[] function cArrayCreatePackage021() global
  Package[] aArr = New Package[21]
  return aArr
endfunction
Package[] function cArrayCreatePackage022() global
  Package[] aArr = New Package[22]
  return aArr
endfunction
Package[] function cArrayCreatePackage023() global
  Package[] aArr = New Package[23]
  return aArr
endfunction
Package[] function cArrayCreatePackage024() global
  Package[] aArr = New Package[24]
  return aArr
endfunction
Package[] function cArrayCreatePackage025() global
  Package[] aArr = New Package[25]
  return aArr
endfunction
Package[] function cArrayCreatePackage026() global
  Package[] aArr = New Package[26]
  return aArr
endfunction
Package[] function cArrayCreatePackage027() global
  Package[] aArr = New Package[27]
  return aArr
endfunction
Package[] function cArrayCreatePackage028() global
  Package[] aArr = New Package[28]
  return aArr
endfunction
Package[] function cArrayCreatePackage029() global
  Package[] aArr = New Package[29]
  return aArr
endfunction
Package[] function cArrayCreatePackage030() global
  Package[] aArr = New Package[30]
  return aArr
endfunction
Package[] function cArrayCreatePackage031() global
  Package[] aArr = New Package[31]
  return aArr
endfunction
Package[] function cArrayCreatePackage032() global
  Package[] aArr = New Package[32]
  return aArr
endfunction
Package[] function cArrayCreatePackage033() global
  Package[] aArr = New Package[33]
  return aArr
endfunction
Package[] function cArrayCreatePackage034() global
  Package[] aArr = New Package[34]
  return aArr
endfunction
Package[] function cArrayCreatePackage035() global
  Package[] aArr = New Package[35]
  return aArr
endfunction
Package[] function cArrayCreatePackage036() global
  Package[] aArr = New Package[36]
  return aArr
endfunction
Package[] function cArrayCreatePackage037() global
  Package[] aArr = New Package[37]
  return aArr
endfunction
Package[] function cArrayCreatePackage038() global
  Package[] aArr = New Package[38]
  return aArr
endfunction
Package[] function cArrayCreatePackage039() global
  Package[] aArr = New Package[39]
  return aArr
endfunction
Package[] function cArrayCreatePackage040() global
  Package[] aArr = New Package[40]
  return aArr
endfunction
Package[] function cArrayCreatePackage041() global
  Package[] aArr = New Package[41]
  return aArr
endfunction
Package[] function cArrayCreatePackage042() global
  Package[] aArr = New Package[42]
  return aArr
endfunction
Package[] function cArrayCreatePackage043() global
  Package[] aArr = New Package[43]
  return aArr
endfunction
Package[] function cArrayCreatePackage044() global
  Package[] aArr = New Package[44]
  return aArr
endfunction
Package[] function cArrayCreatePackage045() global
  Package[] aArr = New Package[45]
  return aArr
endfunction
Package[] function cArrayCreatePackage046() global
  Package[] aArr = New Package[46]
  return aArr
endfunction
Package[] function cArrayCreatePackage047() global
  Package[] aArr = New Package[47]
  return aArr
endfunction
Package[] function cArrayCreatePackage048() global
  Package[] aArr = New Package[48]
  return aArr
endfunction
Package[] function cArrayCreatePackage049() global
  Package[] aArr = New Package[49]
  return aArr
endfunction
Package[] function cArrayCreatePackage050() global
  Package[] aArr = New Package[50]
  return aArr
endfunction
Package[] function cArrayCreatePackage051() global
  Package[] aArr = New Package[51]
  return aArr
endfunction
Package[] function cArrayCreatePackage052() global
  Package[] aArr = New Package[52]
  return aArr
endfunction
Package[] function cArrayCreatePackage053() global
  Package[] aArr = New Package[53]
  return aArr
endfunction
Package[] function cArrayCreatePackage054() global
  Package[] aArr = New Package[54]
  return aArr
endfunction
Package[] function cArrayCreatePackage055() global
  Package[] aArr = New Package[55]
  return aArr
endfunction
Package[] function cArrayCreatePackage056() global
  Package[] aArr = New Package[56]
  return aArr
endfunction
Package[] function cArrayCreatePackage057() global
  Package[] aArr = New Package[57]
  return aArr
endfunction
Package[] function cArrayCreatePackage058() global
  Package[] aArr = New Package[58]
  return aArr
endfunction
Package[] function cArrayCreatePackage059() global
  Package[] aArr = New Package[59]
  return aArr
endfunction
Package[] function cArrayCreatePackage060() global
  Package[] aArr = New Package[60]
  return aArr
endfunction
Package[] function cArrayCreatePackage061() global
  Package[] aArr = New Package[61]
  return aArr
endfunction
Package[] function cArrayCreatePackage062() global
  Package[] aArr = New Package[62]
  return aArr
endfunction
Package[] function cArrayCreatePackage063() global
  Package[] aArr = New Package[63]
  return aArr
endfunction
Package[] function cArrayCreatePackage064() global
  Package[] aArr = New Package[64]
  return aArr
endfunction
Package[] function cArrayCreatePackage065() global
  Package[] aArr = New Package[65]
  return aArr
endfunction
Package[] function cArrayCreatePackage066() global
  Package[] aArr = New Package[66]
  return aArr
endfunction
Package[] function cArrayCreatePackage067() global
  Package[] aArr = New Package[67]
  return aArr
endfunction
Package[] function cArrayCreatePackage068() global
  Package[] aArr = New Package[68]
  return aArr
endfunction
Package[] function cArrayCreatePackage069() global
  Package[] aArr = New Package[69]
  return aArr
endfunction
Package[] function cArrayCreatePackage070() global
  Package[] aArr = New Package[70]
  return aArr
endfunction
Package[] function cArrayCreatePackage071() global
  Package[] aArr = New Package[71]
  return aArr
endfunction
Package[] function cArrayCreatePackage072() global
  Package[] aArr = New Package[72]
  return aArr
endfunction
Package[] function cArrayCreatePackage073() global
  Package[] aArr = New Package[73]
  return aArr
endfunction
Package[] function cArrayCreatePackage074() global
  Package[] aArr = New Package[74]
  return aArr
endfunction
Package[] function cArrayCreatePackage075() global
  Package[] aArr = New Package[75]
  return aArr
endfunction
Package[] function cArrayCreatePackage076() global
  Package[] aArr = New Package[76]
  return aArr
endfunction
Package[] function cArrayCreatePackage077() global
  Package[] aArr = New Package[77]
  return aArr
endfunction
Package[] function cArrayCreatePackage078() global
  Package[] aArr = New Package[78]
  return aArr
endfunction
Package[] function cArrayCreatePackage079() global
  Package[] aArr = New Package[79]
  return aArr
endfunction
Package[] function cArrayCreatePackage080() global
  Package[] aArr = New Package[80]
  return aArr
endfunction
Package[] function cArrayCreatePackage081() global
  Package[] aArr = New Package[81]
  return aArr
endfunction
Package[] function cArrayCreatePackage082() global
  Package[] aArr = New Package[82]
  return aArr
endfunction
Package[] function cArrayCreatePackage083() global
  Package[] aArr = New Package[83]
  return aArr
endfunction
Package[] function cArrayCreatePackage084() global
  Package[] aArr = New Package[84]
  return aArr
endfunction
Package[] function cArrayCreatePackage085() global
  Package[] aArr = New Package[85]
  return aArr
endfunction
Package[] function cArrayCreatePackage086() global
  Package[] aArr = New Package[86]
  return aArr
endfunction
Package[] function cArrayCreatePackage087() global
  Package[] aArr = New Package[87]
  return aArr
endfunction
Package[] function cArrayCreatePackage088() global
  Package[] aArr = New Package[88]
  return aArr
endfunction
Package[] function cArrayCreatePackage089() global
  Package[] aArr = New Package[89]
  return aArr
endfunction
Package[] function cArrayCreatePackage090() global
  Package[] aArr = New Package[90]
  return aArr
endfunction
Package[] function cArrayCreatePackage091() global
  Package[] aArr = New Package[91]
  return aArr
endfunction
Package[] function cArrayCreatePackage092() global
  Package[] aArr = New Package[92]
  return aArr
endfunction
Package[] function cArrayCreatePackage093() global
  Package[] aArr = New Package[93]
  return aArr
endfunction
Package[] function cArrayCreatePackage094() global
  Package[] aArr = New Package[94]
  return aArr
endfunction
Package[] function cArrayCreatePackage095() global
  Package[] aArr = New Package[95]
  return aArr
endfunction
Package[] function cArrayCreatePackage096() global
  Package[] aArr = New Package[96]
  return aArr
endfunction
Package[] function cArrayCreatePackage097() global
  Package[] aArr = New Package[97]
  return aArr
endfunction
Package[] function cArrayCreatePackage098() global
  Package[] aArr = New Package[98]
  return aArr
endfunction
Package[] function cArrayCreatePackage099() global
  Package[] aArr = New Package[99]
  return aArr
endfunction
Package[] function cArrayCreatePackage100() global
  Package[] aArr = New Package[100]
  return aArr
endfunction
Package[] function cArrayCreatePackage101() global
  Package[] aArr = New Package[101]
  return aArr
endfunction
Package[] function cArrayCreatePackage102() global
  Package[] aArr = New Package[102]
  return aArr
endfunction
Package[] function cArrayCreatePackage103() global
  Package[] aArr = New Package[103]
  return aArr
endfunction
Package[] function cArrayCreatePackage104() global
  Package[] aArr = New Package[104]
  return aArr
endfunction
Package[] function cArrayCreatePackage105() global
  Package[] aArr = New Package[105]
  return aArr
endfunction
Package[] function cArrayCreatePackage106() global
  Package[] aArr = New Package[106]
  return aArr
endfunction
Package[] function cArrayCreatePackage107() global
  Package[] aArr = New Package[107]
  return aArr
endfunction
Package[] function cArrayCreatePackage108() global
  Package[] aArr = New Package[108]
  return aArr
endfunction
Package[] function cArrayCreatePackage109() global
  Package[] aArr = New Package[109]
  return aArr
endfunction
Package[] function cArrayCreatePackage110() global
  Package[] aArr = New Package[110]
  return aArr
endfunction
Package[] function cArrayCreatePackage111() global
  Package[] aArr = New Package[111]
  return aArr
endfunction
Package[] function cArrayCreatePackage112() global
  Package[] aArr = New Package[112]
  return aArr
endfunction
Package[] function cArrayCreatePackage113() global
  Package[] aArr = New Package[113]
  return aArr
endfunction
Package[] function cArrayCreatePackage114() global
  Package[] aArr = New Package[114]
  return aArr
endfunction
Package[] function cArrayCreatePackage115() global
  Package[] aArr = New Package[115]
  return aArr
endfunction
Package[] function cArrayCreatePackage116() global
  Package[] aArr = New Package[116]
  return aArr
endfunction
Package[] function cArrayCreatePackage117() global
  Package[] aArr = New Package[117]
  return aArr
endfunction
Package[] function cArrayCreatePackage118() global
  Package[] aArr = New Package[118]
  return aArr
endfunction
Package[] function cArrayCreatePackage119() global
  Package[] aArr = New Package[119]
  return aArr
endfunction
Package[] function cArrayCreatePackage120() global
  Package[] aArr = New Package[120]
  return aArr
endfunction
Package[] function cArrayCreatePackage121() global
  Package[] aArr = New Package[121]
  return aArr
endfunction
Package[] function cArrayCreatePackage122() global
  Package[] aArr = New Package[122]
  return aArr
endfunction
Package[] function cArrayCreatePackage123() global
  Package[] aArr = New Package[123]
  return aArr
endfunction
Package[] function cArrayCreatePackage124() global
  Package[] aArr = New Package[124]
  return aArr
endfunction
Package[] function cArrayCreatePackage125() global
  Package[] aArr = New Package[125]
  return aArr
endfunction
Package[] function cArrayCreatePackage126() global
  Package[] aArr = New Package[126]
  return aArr
endfunction
Package[] function cArrayCreatePackage127() global
  Package[] aArr = New Package[127]
  return aArr
endfunction
Package[] function cArrayCreatePackage128() global
  Package[] aArr = New Package[128]
  return aArr
endfunction
