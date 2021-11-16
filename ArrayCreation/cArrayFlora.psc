Scriptname cArrayFlora Hidden


Flora[] function cArrayCreateFlora(Int indices, Flora filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  Flora[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    if outputTrace
      String msg = "cArrayCreateFlora()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayFlora::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateFlora001()
              elseif indices < 3
                return cArrayCreateFlora002()
              elseif indices < 4
                return cArrayCreateFlora003()
              else
                return cArrayCreateFlora004()
              endif
            else
              if indices < 6
                return cArrayCreateFlora005()
              elseif indices < 7
                return cArrayCreateFlora006()
              elseif indices < 8
                return cArrayCreateFlora007()
              else
                return cArrayCreateFlora008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateFlora009()
              elseif indices < 11
                return cArrayCreateFlora010()
              elseif indices < 12
                return cArrayCreateFlora011()
              else
                return cArrayCreateFlora012()
              endif
            else
              if indices < 14
                return cArrayCreateFlora013()
              elseif indices < 15
                return cArrayCreateFlora014()
              elseif indices < 16
                return cArrayCreateFlora015()
              else
                return cArrayCreateFlora016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateFlora017()
              elseif indices < 19
                return cArrayCreateFlora018()
              elseif indices < 20
                return cArrayCreateFlora019()
              else
                return cArrayCreateFlora020()
              endif
            else
              if indices < 22
                return cArrayCreateFlora021()
              elseif indices < 23
                return cArrayCreateFlora022()
              elseif indices < 24
                return cArrayCreateFlora023()
              else
                return cArrayCreateFlora024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateFlora025()
              elseif indices < 27
                return cArrayCreateFlora026()
              elseif indices < 28
                return cArrayCreateFlora027()
              else
                return cArrayCreateFlora028()
              endif
            else
              if indices < 30
                return cArrayCreateFlora029()
              elseif indices < 31
                return cArrayCreateFlora030()
              elseif indices < 32
                return cArrayCreateFlora031()
              else
                return cArrayCreateFlora032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateFlora033()
              elseif indices < 35
                return cArrayCreateFlora034()
              elseif indices < 36
                return cArrayCreateFlora035()
              else
                return cArrayCreateFlora036()
              endif
            else
              if indices < 38
                return cArrayCreateFlora037()
              elseif indices < 39
                return cArrayCreateFlora038()
              elseif indices < 40
                return cArrayCreateFlora039()
              else
                return cArrayCreateFlora040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateFlora041()
              elseif indices < 43
                return cArrayCreateFlora042()
              elseif indices < 44
                return cArrayCreateFlora043()
              else
                return cArrayCreateFlora044()
              endif
            else
              if indices < 46
                return cArrayCreateFlora045()
              elseif indices < 47
                return cArrayCreateFlora046()
              elseif indices < 48
                return cArrayCreateFlora047()
              else
                return cArrayCreateFlora048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateFlora049()
              elseif indices < 51
                return cArrayCreateFlora050()
              elseif indices < 52
                return cArrayCreateFlora051()
              else
                return cArrayCreateFlora052()
              endif
            else
              if indices < 54
                return cArrayCreateFlora053()
              elseif indices < 55
                return cArrayCreateFlora054()
              elseif indices < 56
                return cArrayCreateFlora055()
              else
                return cArrayCreateFlora056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateFlora057()
              elseif indices < 59
                return cArrayCreateFlora058()
              elseif indices < 60
                return cArrayCreateFlora059()
              else
                return cArrayCreateFlora060()
              endif
            else
              if indices < 62
                return cArrayCreateFlora061()
              elseif indices < 63
                return cArrayCreateFlora062()
              elseif indices < 64
                return cArrayCreateFlora063()
              else
                return cArrayCreateFlora064()
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
                return cArrayCreateFlora065()
              elseif indices < 67
                return cArrayCreateFlora066()
              elseif indices < 68
                return cArrayCreateFlora067()
              else
                return cArrayCreateFlora068()
              endif
            else
              if indices < 70
                return cArrayCreateFlora069()
              elseif indices < 71
                return cArrayCreateFlora070()
              elseif indices < 72
                return cArrayCreateFlora071()
              else
                return cArrayCreateFlora072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateFlora073()
              elseif indices < 75
                return cArrayCreateFlora074()
              elseif indices < 76
                return cArrayCreateFlora075()
              else
                return cArrayCreateFlora076()
              endif
            else
              if indices < 78
                return cArrayCreateFlora077()
              elseif indices < 79
                return cArrayCreateFlora078()
              elseif indices < 80
                return cArrayCreateFlora079()
              else
                return cArrayCreateFlora080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateFlora081()
              elseif indices < 83
                return cArrayCreateFlora082()
              elseif indices < 84
                return cArrayCreateFlora083()
              else
                return cArrayCreateFlora084()
              endif
            else
              if indices < 86
                return cArrayCreateFlora085()
              elseif indices < 87
                return cArrayCreateFlora086()
              elseif indices < 88
                return cArrayCreateFlora087()
              else
                return cArrayCreateFlora088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateFlora089()
              elseif indices < 91
                return cArrayCreateFlora090()
              elseif indices < 92
                return cArrayCreateFlora091()
              else
                return cArrayCreateFlora092()
              endif
            else
              if indices < 94
                return cArrayCreateFlora093()
              elseif indices < 95
                return cArrayCreateFlora094()
              elseif indices < 96
                return cArrayCreateFlora095()
              else
                return cArrayCreateFlora096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateFlora097()
              elseif indices < 99
                return cArrayCreateFlora098()
              elseif indices < 100
                return cArrayCreateFlora099()
              else
                return cArrayCreateFlora100()
              endif
            else
              if indices < 102
                return cArrayCreateFlora101()
              elseif indices < 103
                return cArrayCreateFlora102()
              elseif indices < 104
                return cArrayCreateFlora103()
              else
                return cArrayCreateFlora104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateFlora105()
              elseif indices < 107
                return cArrayCreateFlora106()
              elseif indices < 108
                return cArrayCreateFlora107()
              else
                return cArrayCreateFlora108()
              endif
            else
              if indices < 110
                return cArrayCreateFlora109()
              elseif indices < 111
                return cArrayCreateFlora110()
              elseif indices < 112
                return cArrayCreateFlora111()
              else
                return cArrayCreateFlora112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateFlora113()
              elseif indices < 115
                return cArrayCreateFlora114()
              elseif indices < 116
                return cArrayCreateFlora115()
              else
                return cArrayCreateFlora116()
              endif
            else
              if indices < 118
                return cArrayCreateFlora117()
              elseif indices < 119
                return cArrayCreateFlora118()
              elseif indices < 120
                return cArrayCreateFlora119()
              else
                return cArrayCreateFlora120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateFlora121()
              elseif indices < 123
                return cArrayCreateFlora122()
              elseif indices < 124
                return cArrayCreateFlora123()
              else
                return cArrayCreateFlora124()
              endif
            else
              if indices < 126
                return cArrayCreateFlora125()
              elseif indices < 127
                return cArrayCreateFlora126()
              elseif indices < 128
                return cArrayCreateFlora127()
              else
                return cArrayCreateFlora128()
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

Flora[] function cArrayCreateFlora001() global
  Flora[] aArr = New Flora[1]
  return aArr
endfunction
Flora[] function cArrayCreateFlora002() global
  Flora[] aArr = New Flora[2]
  return aArr
endfunction
Flora[] function cArrayCreateFlora003() global
  Flora[] aArr = New Flora[3]
  return aArr
endfunction
Flora[] function cArrayCreateFlora004() global
  Flora[] aArr = New Flora[4]
  return aArr
endfunction
Flora[] function cArrayCreateFlora005() global
  Flora[] aArr = New Flora[5]
  return aArr
endfunction
Flora[] function cArrayCreateFlora006() global
  Flora[] aArr = New Flora[6]
  return aArr
endfunction
Flora[] function cArrayCreateFlora007() global
  Flora[] aArr = New Flora[7]
  return aArr
endfunction
Flora[] function cArrayCreateFlora008() global
  Flora[] aArr = New Flora[8]
  return aArr
endfunction
Flora[] function cArrayCreateFlora009() global
  Flora[] aArr = New Flora[9]
  return aArr
endfunction
Flora[] function cArrayCreateFlora010() global
  Flora[] aArr = New Flora[10]
  return aArr
endfunction
Flora[] function cArrayCreateFlora011() global
  Flora[] aArr = New Flora[11]
  return aArr
endfunction
Flora[] function cArrayCreateFlora012() global
  Flora[] aArr = New Flora[12]
  return aArr
endfunction
Flora[] function cArrayCreateFlora013() global
  Flora[] aArr = New Flora[13]
  return aArr
endfunction
Flora[] function cArrayCreateFlora014() global
  Flora[] aArr = New Flora[14]
  return aArr
endfunction
Flora[] function cArrayCreateFlora015() global
  Flora[] aArr = New Flora[15]
  return aArr
endfunction
Flora[] function cArrayCreateFlora016() global
  Flora[] aArr = New Flora[16]
  return aArr
endfunction
Flora[] function cArrayCreateFlora017() global
  Flora[] aArr = New Flora[17]
  return aArr
endfunction
Flora[] function cArrayCreateFlora018() global
  Flora[] aArr = New Flora[18]
  return aArr
endfunction
Flora[] function cArrayCreateFlora019() global
  Flora[] aArr = New Flora[19]
  return aArr
endfunction
Flora[] function cArrayCreateFlora020() global
  Flora[] aArr = New Flora[20]
  return aArr
endfunction
Flora[] function cArrayCreateFlora021() global
  Flora[] aArr = New Flora[21]
  return aArr
endfunction
Flora[] function cArrayCreateFlora022() global
  Flora[] aArr = New Flora[22]
  return aArr
endfunction
Flora[] function cArrayCreateFlora023() global
  Flora[] aArr = New Flora[23]
  return aArr
endfunction
Flora[] function cArrayCreateFlora024() global
  Flora[] aArr = New Flora[24]
  return aArr
endfunction
Flora[] function cArrayCreateFlora025() global
  Flora[] aArr = New Flora[25]
  return aArr
endfunction
Flora[] function cArrayCreateFlora026() global
  Flora[] aArr = New Flora[26]
  return aArr
endfunction
Flora[] function cArrayCreateFlora027() global
  Flora[] aArr = New Flora[27]
  return aArr
endfunction
Flora[] function cArrayCreateFlora028() global
  Flora[] aArr = New Flora[28]
  return aArr
endfunction
Flora[] function cArrayCreateFlora029() global
  Flora[] aArr = New Flora[29]
  return aArr
endfunction
Flora[] function cArrayCreateFlora030() global
  Flora[] aArr = New Flora[30]
  return aArr
endfunction
Flora[] function cArrayCreateFlora031() global
  Flora[] aArr = New Flora[31]
  return aArr
endfunction
Flora[] function cArrayCreateFlora032() global
  Flora[] aArr = New Flora[32]
  return aArr
endfunction
Flora[] function cArrayCreateFlora033() global
  Flora[] aArr = New Flora[33]
  return aArr
endfunction
Flora[] function cArrayCreateFlora034() global
  Flora[] aArr = New Flora[34]
  return aArr
endfunction
Flora[] function cArrayCreateFlora035() global
  Flora[] aArr = New Flora[35]
  return aArr
endfunction
Flora[] function cArrayCreateFlora036() global
  Flora[] aArr = New Flora[36]
  return aArr
endfunction
Flora[] function cArrayCreateFlora037() global
  Flora[] aArr = New Flora[37]
  return aArr
endfunction
Flora[] function cArrayCreateFlora038() global
  Flora[] aArr = New Flora[38]
  return aArr
endfunction
Flora[] function cArrayCreateFlora039() global
  Flora[] aArr = New Flora[39]
  return aArr
endfunction
Flora[] function cArrayCreateFlora040() global
  Flora[] aArr = New Flora[40]
  return aArr
endfunction
Flora[] function cArrayCreateFlora041() global
  Flora[] aArr = New Flora[41]
  return aArr
endfunction
Flora[] function cArrayCreateFlora042() global
  Flora[] aArr = New Flora[42]
  return aArr
endfunction
Flora[] function cArrayCreateFlora043() global
  Flora[] aArr = New Flora[43]
  return aArr
endfunction
Flora[] function cArrayCreateFlora044() global
  Flora[] aArr = New Flora[44]
  return aArr
endfunction
Flora[] function cArrayCreateFlora045() global
  Flora[] aArr = New Flora[45]
  return aArr
endfunction
Flora[] function cArrayCreateFlora046() global
  Flora[] aArr = New Flora[46]
  return aArr
endfunction
Flora[] function cArrayCreateFlora047() global
  Flora[] aArr = New Flora[47]
  return aArr
endfunction
Flora[] function cArrayCreateFlora048() global
  Flora[] aArr = New Flora[48]
  return aArr
endfunction
Flora[] function cArrayCreateFlora049() global
  Flora[] aArr = New Flora[49]
  return aArr
endfunction
Flora[] function cArrayCreateFlora050() global
  Flora[] aArr = New Flora[50]
  return aArr
endfunction
Flora[] function cArrayCreateFlora051() global
  Flora[] aArr = New Flora[51]
  return aArr
endfunction
Flora[] function cArrayCreateFlora052() global
  Flora[] aArr = New Flora[52]
  return aArr
endfunction
Flora[] function cArrayCreateFlora053() global
  Flora[] aArr = New Flora[53]
  return aArr
endfunction
Flora[] function cArrayCreateFlora054() global
  Flora[] aArr = New Flora[54]
  return aArr
endfunction
Flora[] function cArrayCreateFlora055() global
  Flora[] aArr = New Flora[55]
  return aArr
endfunction
Flora[] function cArrayCreateFlora056() global
  Flora[] aArr = New Flora[56]
  return aArr
endfunction
Flora[] function cArrayCreateFlora057() global
  Flora[] aArr = New Flora[57]
  return aArr
endfunction
Flora[] function cArrayCreateFlora058() global
  Flora[] aArr = New Flora[58]
  return aArr
endfunction
Flora[] function cArrayCreateFlora059() global
  Flora[] aArr = New Flora[59]
  return aArr
endfunction
Flora[] function cArrayCreateFlora060() global
  Flora[] aArr = New Flora[60]
  return aArr
endfunction
Flora[] function cArrayCreateFlora061() global
  Flora[] aArr = New Flora[61]
  return aArr
endfunction
Flora[] function cArrayCreateFlora062() global
  Flora[] aArr = New Flora[62]
  return aArr
endfunction
Flora[] function cArrayCreateFlora063() global
  Flora[] aArr = New Flora[63]
  return aArr
endfunction
Flora[] function cArrayCreateFlora064() global
  Flora[] aArr = New Flora[64]
  return aArr
endfunction
Flora[] function cArrayCreateFlora065() global
  Flora[] aArr = New Flora[65]
  return aArr
endfunction
Flora[] function cArrayCreateFlora066() global
  Flora[] aArr = New Flora[66]
  return aArr
endfunction
Flora[] function cArrayCreateFlora067() global
  Flora[] aArr = New Flora[67]
  return aArr
endfunction
Flora[] function cArrayCreateFlora068() global
  Flora[] aArr = New Flora[68]
  return aArr
endfunction
Flora[] function cArrayCreateFlora069() global
  Flora[] aArr = New Flora[69]
  return aArr
endfunction
Flora[] function cArrayCreateFlora070() global
  Flora[] aArr = New Flora[70]
  return aArr
endfunction
Flora[] function cArrayCreateFlora071() global
  Flora[] aArr = New Flora[71]
  return aArr
endfunction
Flora[] function cArrayCreateFlora072() global
  Flora[] aArr = New Flora[72]
  return aArr
endfunction
Flora[] function cArrayCreateFlora073() global
  Flora[] aArr = New Flora[73]
  return aArr
endfunction
Flora[] function cArrayCreateFlora074() global
  Flora[] aArr = New Flora[74]
  return aArr
endfunction
Flora[] function cArrayCreateFlora075() global
  Flora[] aArr = New Flora[75]
  return aArr
endfunction
Flora[] function cArrayCreateFlora076() global
  Flora[] aArr = New Flora[76]
  return aArr
endfunction
Flora[] function cArrayCreateFlora077() global
  Flora[] aArr = New Flora[77]
  return aArr
endfunction
Flora[] function cArrayCreateFlora078() global
  Flora[] aArr = New Flora[78]
  return aArr
endfunction
Flora[] function cArrayCreateFlora079() global
  Flora[] aArr = New Flora[79]
  return aArr
endfunction
Flora[] function cArrayCreateFlora080() global
  Flora[] aArr = New Flora[80]
  return aArr
endfunction
Flora[] function cArrayCreateFlora081() global
  Flora[] aArr = New Flora[81]
  return aArr
endfunction
Flora[] function cArrayCreateFlora082() global
  Flora[] aArr = New Flora[82]
  return aArr
endfunction
Flora[] function cArrayCreateFlora083() global
  Flora[] aArr = New Flora[83]
  return aArr
endfunction
Flora[] function cArrayCreateFlora084() global
  Flora[] aArr = New Flora[84]
  return aArr
endfunction
Flora[] function cArrayCreateFlora085() global
  Flora[] aArr = New Flora[85]
  return aArr
endfunction
Flora[] function cArrayCreateFlora086() global
  Flora[] aArr = New Flora[86]
  return aArr
endfunction
Flora[] function cArrayCreateFlora087() global
  Flora[] aArr = New Flora[87]
  return aArr
endfunction
Flora[] function cArrayCreateFlora088() global
  Flora[] aArr = New Flora[88]
  return aArr
endfunction
Flora[] function cArrayCreateFlora089() global
  Flora[] aArr = New Flora[89]
  return aArr
endfunction
Flora[] function cArrayCreateFlora090() global
  Flora[] aArr = New Flora[90]
  return aArr
endfunction
Flora[] function cArrayCreateFlora091() global
  Flora[] aArr = New Flora[91]
  return aArr
endfunction
Flora[] function cArrayCreateFlora092() global
  Flora[] aArr = New Flora[92]
  return aArr
endfunction
Flora[] function cArrayCreateFlora093() global
  Flora[] aArr = New Flora[93]
  return aArr
endfunction
Flora[] function cArrayCreateFlora094() global
  Flora[] aArr = New Flora[94]
  return aArr
endfunction
Flora[] function cArrayCreateFlora095() global
  Flora[] aArr = New Flora[95]
  return aArr
endfunction
Flora[] function cArrayCreateFlora096() global
  Flora[] aArr = New Flora[96]
  return aArr
endfunction
Flora[] function cArrayCreateFlora097() global
  Flora[] aArr = New Flora[97]
  return aArr
endfunction
Flora[] function cArrayCreateFlora098() global
  Flora[] aArr = New Flora[98]
  return aArr
endfunction
Flora[] function cArrayCreateFlora099() global
  Flora[] aArr = New Flora[99]
  return aArr
endfunction
Flora[] function cArrayCreateFlora100() global
  Flora[] aArr = New Flora[100]
  return aArr
endfunction
Flora[] function cArrayCreateFlora101() global
  Flora[] aArr = New Flora[101]
  return aArr
endfunction
Flora[] function cArrayCreateFlora102() global
  Flora[] aArr = New Flora[102]
  return aArr
endfunction
Flora[] function cArrayCreateFlora103() global
  Flora[] aArr = New Flora[103]
  return aArr
endfunction
Flora[] function cArrayCreateFlora104() global
  Flora[] aArr = New Flora[104]
  return aArr
endfunction
Flora[] function cArrayCreateFlora105() global
  Flora[] aArr = New Flora[105]
  return aArr
endfunction
Flora[] function cArrayCreateFlora106() global
  Flora[] aArr = New Flora[106]
  return aArr
endfunction
Flora[] function cArrayCreateFlora107() global
  Flora[] aArr = New Flora[107]
  return aArr
endfunction
Flora[] function cArrayCreateFlora108() global
  Flora[] aArr = New Flora[108]
  return aArr
endfunction
Flora[] function cArrayCreateFlora109() global
  Flora[] aArr = New Flora[109]
  return aArr
endfunction
Flora[] function cArrayCreateFlora110() global
  Flora[] aArr = New Flora[110]
  return aArr
endfunction
Flora[] function cArrayCreateFlora111() global
  Flora[] aArr = New Flora[111]
  return aArr
endfunction
Flora[] function cArrayCreateFlora112() global
  Flora[] aArr = New Flora[112]
  return aArr
endfunction
Flora[] function cArrayCreateFlora113() global
  Flora[] aArr = New Flora[113]
  return aArr
endfunction
Flora[] function cArrayCreateFlora114() global
  Flora[] aArr = New Flora[114]
  return aArr
endfunction
Flora[] function cArrayCreateFlora115() global
  Flora[] aArr = New Flora[115]
  return aArr
endfunction
Flora[] function cArrayCreateFlora116() global
  Flora[] aArr = New Flora[116]
  return aArr
endfunction
Flora[] function cArrayCreateFlora117() global
  Flora[] aArr = New Flora[117]
  return aArr
endfunction
Flora[] function cArrayCreateFlora118() global
  Flora[] aArr = New Flora[118]
  return aArr
endfunction
Flora[] function cArrayCreateFlora119() global
  Flora[] aArr = New Flora[119]
  return aArr
endfunction
Flora[] function cArrayCreateFlora120() global
  Flora[] aArr = New Flora[120]
  return aArr
endfunction
Flora[] function cArrayCreateFlora121() global
  Flora[] aArr = New Flora[121]
  return aArr
endfunction
Flora[] function cArrayCreateFlora122() global
  Flora[] aArr = New Flora[122]
  return aArr
endfunction
Flora[] function cArrayCreateFlora123() global
  Flora[] aArr = New Flora[123]
  return aArr
endfunction
Flora[] function cArrayCreateFlora124() global
  Flora[] aArr = New Flora[124]
  return aArr
endfunction
Flora[] function cArrayCreateFlora125() global
  Flora[] aArr = New Flora[125]
  return aArr
endfunction
Flora[] function cArrayCreateFlora126() global
  Flora[] aArr = New Flora[126]
  return aArr
endfunction
Flora[] function cArrayCreateFlora127() global
  Flora[] aArr = New Flora[127]
  return aArr
endfunction
Flora[] function cArrayCreateFlora128() global
  Flora[] aArr = New Flora[128]
  return aArr
endfunction
