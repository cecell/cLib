Scriptname cArrayPackage Hidden

Int function cGetVersion() global
  return 9001
endfunction

Package[] function cArrayCreatePackage(Int indices, Package filler = None, Bool outputTrace = TRUE, \
  Bool tryConsoleUtil = TRUE) global
  {Requirements: None}
  Package[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace Packages
    ; tryConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreatePackage()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayPackage::" + msg + " Returning ArrayNone", 2)
      if tryConsoleUtil
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
                aArray = cArrayCreatePackage001()
              elseif indices < 3
                aArray = cArrayCreatePackage002()
              elseif indices < 4
                aArray = cArrayCreatePackage003()
              else
                aArray = cArrayCreatePackage004()
              endif
            else
              if indices < 6
                aArray = cArrayCreatePackage005()
              elseif indices < 7
                aArray = cArrayCreatePackage006()
              elseif indices < 8
                aArray = cArrayCreatePackage007()
              else
                aArray = cArrayCreatePackage008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreatePackage009()
              elseif indices < 11
                aArray = cArrayCreatePackage010()
              elseif indices < 12
                aArray = cArrayCreatePackage011()
              else
                aArray = cArrayCreatePackage012()
              endif
            else
              if indices < 14
                aArray = cArrayCreatePackage013()
              elseif indices < 15
                aArray = cArrayCreatePackage014()
              elseif indices < 16
                aArray = cArrayCreatePackage015()
              else
                aArray = cArrayCreatePackage016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreatePackage017()
              elseif indices < 19
                aArray = cArrayCreatePackage018()
              elseif indices < 20
                aArray = cArrayCreatePackage019()
              else
                aArray = cArrayCreatePackage020()
              endif
            else
              if indices < 22
                aArray = cArrayCreatePackage021()
              elseif indices < 23
                aArray = cArrayCreatePackage022()
              elseif indices < 24
                aArray = cArrayCreatePackage023()
              else
                aArray = cArrayCreatePackage024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreatePackage025()
              elseif indices < 27
                aArray = cArrayCreatePackage026()
              elseif indices < 28
                aArray = cArrayCreatePackage027()
              else
                aArray = cArrayCreatePackage028()
              endif
            else
              if indices < 30
                aArray = cArrayCreatePackage029()
              elseif indices < 31
                aArray = cArrayCreatePackage030()
              elseif indices < 32
                aArray = cArrayCreatePackage031()
              else
                aArray = cArrayCreatePackage032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreatePackage033()
              elseif indices < 35
                aArray = cArrayCreatePackage034()
              elseif indices < 36
                aArray = cArrayCreatePackage035()
              else
                aArray = cArrayCreatePackage036()
              endif
            else
              if indices < 38
                aArray = cArrayCreatePackage037()
              elseif indices < 39
                aArray = cArrayCreatePackage038()
              elseif indices < 40
                aArray = cArrayCreatePackage039()
              else
                aArray = cArrayCreatePackage040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreatePackage041()
              elseif indices < 43
                aArray = cArrayCreatePackage042()
              elseif indices < 44
                aArray = cArrayCreatePackage043()
              else
                aArray = cArrayCreatePackage044()
              endif
            else
              if indices < 46
                aArray = cArrayCreatePackage045()
              elseif indices < 47
                aArray = cArrayCreatePackage046()
              elseif indices < 48
                aArray = cArrayCreatePackage047()
              else
                aArray = cArrayCreatePackage048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreatePackage049()
              elseif indices < 51
                aArray = cArrayCreatePackage050()
              elseif indices < 52
                aArray = cArrayCreatePackage051()
              else
                aArray = cArrayCreatePackage052()
              endif
            else
              if indices < 54
                aArray = cArrayCreatePackage053()
              elseif indices < 55
                aArray = cArrayCreatePackage054()
              elseif indices < 56
                aArray = cArrayCreatePackage055()
              else
                aArray = cArrayCreatePackage056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreatePackage057()
              elseif indices < 59
                aArray = cArrayCreatePackage058()
              elseif indices < 60
                aArray = cArrayCreatePackage059()
              else
                aArray = cArrayCreatePackage060()
              endif
            else
              if indices < 62
                aArray = cArrayCreatePackage061()
              elseif indices < 63
                aArray = cArrayCreatePackage062()
              elseif indices < 64
                aArray = cArrayCreatePackage063()
              else
                aArray = cArrayCreatePackage064()
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
                aArray = cArrayCreatePackage065()
              elseif indices < 67
                aArray = cArrayCreatePackage066()
              elseif indices < 68
                aArray = cArrayCreatePackage067()
              else
                aArray = cArrayCreatePackage068()
              endif
            else
              if indices < 70
                aArray = cArrayCreatePackage069()
              elseif indices < 71
                aArray = cArrayCreatePackage070()
              elseif indices < 72
                aArray = cArrayCreatePackage071()
              else
                aArray = cArrayCreatePackage072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreatePackage073()
              elseif indices < 75
                aArray = cArrayCreatePackage074()
              elseif indices < 76
                aArray = cArrayCreatePackage075()
              else
                aArray = cArrayCreatePackage076()
              endif
            else
              if indices < 78
                aArray = cArrayCreatePackage077()
              elseif indices < 79
                aArray = cArrayCreatePackage078()
              elseif indices < 80
                aArray = cArrayCreatePackage079()
              else
                aArray = cArrayCreatePackage080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreatePackage081()
              elseif indices < 83
                aArray = cArrayCreatePackage082()
              elseif indices < 84
                aArray = cArrayCreatePackage083()
              else
                aArray = cArrayCreatePackage084()
              endif
            else
              if indices < 86
                aArray = cArrayCreatePackage085()
              elseif indices < 87
                aArray = cArrayCreatePackage086()
              elseif indices < 88
                aArray = cArrayCreatePackage087()
              else
                aArray = cArrayCreatePackage088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreatePackage089()
              elseif indices < 91
                aArray = cArrayCreatePackage090()
              elseif indices < 92
                aArray = cArrayCreatePackage091()
              else
                aArray = cArrayCreatePackage092()
              endif
            else
              if indices < 94
                aArray = cArrayCreatePackage093()
              elseif indices < 95
                aArray = cArrayCreatePackage094()
              elseif indices < 96
                aArray = cArrayCreatePackage095()
              else
                aArray = cArrayCreatePackage096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreatePackage097()
              elseif indices < 99
                aArray = cArrayCreatePackage098()
              elseif indices < 100
                aArray = cArrayCreatePackage099()
              else
                aArray = cArrayCreatePackage100()
              endif
            else
              if indices < 102
                aArray = cArrayCreatePackage101()
              elseif indices < 103
                aArray = cArrayCreatePackage102()
              elseif indices < 104
                aArray = cArrayCreatePackage103()
              else
                aArray = cArrayCreatePackage104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreatePackage105()
              elseif indices < 107
                aArray = cArrayCreatePackage106()
              elseif indices < 108
                aArray = cArrayCreatePackage107()
              else
                aArray = cArrayCreatePackage108()
              endif
            else
              if indices < 110
                aArray = cArrayCreatePackage109()
              elseif indices < 111
                aArray = cArrayCreatePackage110()
              elseif indices < 112
                aArray = cArrayCreatePackage111()
              else
                aArray = cArrayCreatePackage112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreatePackage113()
              elseif indices < 115
                aArray = cArrayCreatePackage114()
              elseif indices < 116
                aArray = cArrayCreatePackage115()
              else
                aArray = cArrayCreatePackage116()
              endif
            else
              if indices < 118
                aArray = cArrayCreatePackage117()
              elseif indices < 119
                aArray = cArrayCreatePackage118()
              elseif indices < 120
                aArray = cArrayCreatePackage119()
              else
                aArray = cArrayCreatePackage120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreatePackage121()
              elseif indices < 123
                aArray = cArrayCreatePackage122()
              elseif indices < 124
                aArray = cArrayCreatePackage123()
              else
                aArray = cArrayCreatePackage124()
              endif
            else
              if indices < 126
                aArray = cArrayCreatePackage125()
              elseif indices < 127
                aArray = cArrayCreatePackage126()
              elseif indices < 128
                aArray = cArrayCreatePackage127()
              else
                aArray = cArrayCreatePackage128()
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
