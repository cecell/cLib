Scriptname cArrayFaction Hidden


Faction[] function cArrayCreateFaction(Int indices, Faction filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  Faction[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    if outputTrace
      String msg = "cArrayCreateFaction()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayFaction::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateFaction001()
              elseif indices < 3
                return cArrayCreateFaction002()
              elseif indices < 4
                return cArrayCreateFaction003()
              else
                return cArrayCreateFaction004()
              endif
            else
              if indices < 6
                return cArrayCreateFaction005()
              elseif indices < 7
                return cArrayCreateFaction006()
              elseif indices < 8
                return cArrayCreateFaction007()
              else
                return cArrayCreateFaction008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateFaction009()
              elseif indices < 11
                return cArrayCreateFaction010()
              elseif indices < 12
                return cArrayCreateFaction011()
              else
                return cArrayCreateFaction012()
              endif
            else
              if indices < 14
                return cArrayCreateFaction013()
              elseif indices < 15
                return cArrayCreateFaction014()
              elseif indices < 16
                return cArrayCreateFaction015()
              else
                return cArrayCreateFaction016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateFaction017()
              elseif indices < 19
                return cArrayCreateFaction018()
              elseif indices < 20
                return cArrayCreateFaction019()
              else
                return cArrayCreateFaction020()
              endif
            else
              if indices < 22
                return cArrayCreateFaction021()
              elseif indices < 23
                return cArrayCreateFaction022()
              elseif indices < 24
                return cArrayCreateFaction023()
              else
                return cArrayCreateFaction024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateFaction025()
              elseif indices < 27
                return cArrayCreateFaction026()
              elseif indices < 28
                return cArrayCreateFaction027()
              else
                return cArrayCreateFaction028()
              endif
            else
              if indices < 30
                return cArrayCreateFaction029()
              elseif indices < 31
                return cArrayCreateFaction030()
              elseif indices < 32
                return cArrayCreateFaction031()
              else
                return cArrayCreateFaction032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateFaction033()
              elseif indices < 35
                return cArrayCreateFaction034()
              elseif indices < 36
                return cArrayCreateFaction035()
              else
                return cArrayCreateFaction036()
              endif
            else
              if indices < 38
                return cArrayCreateFaction037()
              elseif indices < 39
                return cArrayCreateFaction038()
              elseif indices < 40
                return cArrayCreateFaction039()
              else
                return cArrayCreateFaction040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateFaction041()
              elseif indices < 43
                return cArrayCreateFaction042()
              elseif indices < 44
                return cArrayCreateFaction043()
              else
                return cArrayCreateFaction044()
              endif
            else
              if indices < 46
                return cArrayCreateFaction045()
              elseif indices < 47
                return cArrayCreateFaction046()
              elseif indices < 48
                return cArrayCreateFaction047()
              else
                return cArrayCreateFaction048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateFaction049()
              elseif indices < 51
                return cArrayCreateFaction050()
              elseif indices < 52
                return cArrayCreateFaction051()
              else
                return cArrayCreateFaction052()
              endif
            else
              if indices < 54
                return cArrayCreateFaction053()
              elseif indices < 55
                return cArrayCreateFaction054()
              elseif indices < 56
                return cArrayCreateFaction055()
              else
                return cArrayCreateFaction056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateFaction057()
              elseif indices < 59
                return cArrayCreateFaction058()
              elseif indices < 60
                return cArrayCreateFaction059()
              else
                return cArrayCreateFaction060()
              endif
            else
              if indices < 62
                return cArrayCreateFaction061()
              elseif indices < 63
                return cArrayCreateFaction062()
              elseif indices < 64
                return cArrayCreateFaction063()
              else
                return cArrayCreateFaction064()
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
                return cArrayCreateFaction065()
              elseif indices < 67
                return cArrayCreateFaction066()
              elseif indices < 68
                return cArrayCreateFaction067()
              else
                return cArrayCreateFaction068()
              endif
            else
              if indices < 70
                return cArrayCreateFaction069()
              elseif indices < 71
                return cArrayCreateFaction070()
              elseif indices < 72
                return cArrayCreateFaction071()
              else
                return cArrayCreateFaction072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateFaction073()
              elseif indices < 75
                return cArrayCreateFaction074()
              elseif indices < 76
                return cArrayCreateFaction075()
              else
                return cArrayCreateFaction076()
              endif
            else
              if indices < 78
                return cArrayCreateFaction077()
              elseif indices < 79
                return cArrayCreateFaction078()
              elseif indices < 80
                return cArrayCreateFaction079()
              else
                return cArrayCreateFaction080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateFaction081()
              elseif indices < 83
                return cArrayCreateFaction082()
              elseif indices < 84
                return cArrayCreateFaction083()
              else
                return cArrayCreateFaction084()
              endif
            else
              if indices < 86
                return cArrayCreateFaction085()
              elseif indices < 87
                return cArrayCreateFaction086()
              elseif indices < 88
                return cArrayCreateFaction087()
              else
                return cArrayCreateFaction088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateFaction089()
              elseif indices < 91
                return cArrayCreateFaction090()
              elseif indices < 92
                return cArrayCreateFaction091()
              else
                return cArrayCreateFaction092()
              endif
            else
              if indices < 94
                return cArrayCreateFaction093()
              elseif indices < 95
                return cArrayCreateFaction094()
              elseif indices < 96
                return cArrayCreateFaction095()
              else
                return cArrayCreateFaction096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateFaction097()
              elseif indices < 99
                return cArrayCreateFaction098()
              elseif indices < 100
                return cArrayCreateFaction099()
              else
                return cArrayCreateFaction100()
              endif
            else
              if indices < 102
                return cArrayCreateFaction101()
              elseif indices < 103
                return cArrayCreateFaction102()
              elseif indices < 104
                return cArrayCreateFaction103()
              else
                return cArrayCreateFaction104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateFaction105()
              elseif indices < 107
                return cArrayCreateFaction106()
              elseif indices < 108
                return cArrayCreateFaction107()
              else
                return cArrayCreateFaction108()
              endif
            else
              if indices < 110
                return cArrayCreateFaction109()
              elseif indices < 111
                return cArrayCreateFaction110()
              elseif indices < 112
                return cArrayCreateFaction111()
              else
                return cArrayCreateFaction112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateFaction113()
              elseif indices < 115
                return cArrayCreateFaction114()
              elseif indices < 116
                return cArrayCreateFaction115()
              else
                return cArrayCreateFaction116()
              endif
            else
              if indices < 118
                return cArrayCreateFaction117()
              elseif indices < 119
                return cArrayCreateFaction118()
              elseif indices < 120
                return cArrayCreateFaction119()
              else
                return cArrayCreateFaction120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateFaction121()
              elseif indices < 123
                return cArrayCreateFaction122()
              elseif indices < 124
                return cArrayCreateFaction123()
              else
                return cArrayCreateFaction124()
              endif
            else
              if indices < 126
                return cArrayCreateFaction125()
              elseif indices < 127
                return cArrayCreateFaction126()
              elseif indices < 128
                return cArrayCreateFaction127()
              else
                return cArrayCreateFaction128()
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

Faction[] function cArrayCreateFaction001() global
  Faction[] aArr = New Faction[1]
  return aArr
endfunction
Faction[] function cArrayCreateFaction002() global
  Faction[] aArr = New Faction[2]
  return aArr
endfunction
Faction[] function cArrayCreateFaction003() global
  Faction[] aArr = New Faction[3]
  return aArr
endfunction
Faction[] function cArrayCreateFaction004() global
  Faction[] aArr = New Faction[4]
  return aArr
endfunction
Faction[] function cArrayCreateFaction005() global
  Faction[] aArr = New Faction[5]
  return aArr
endfunction
Faction[] function cArrayCreateFaction006() global
  Faction[] aArr = New Faction[6]
  return aArr
endfunction
Faction[] function cArrayCreateFaction007() global
  Faction[] aArr = New Faction[7]
  return aArr
endfunction
Faction[] function cArrayCreateFaction008() global
  Faction[] aArr = New Faction[8]
  return aArr
endfunction
Faction[] function cArrayCreateFaction009() global
  Faction[] aArr = New Faction[9]
  return aArr
endfunction
Faction[] function cArrayCreateFaction010() global
  Faction[] aArr = New Faction[10]
  return aArr
endfunction
Faction[] function cArrayCreateFaction011() global
  Faction[] aArr = New Faction[11]
  return aArr
endfunction
Faction[] function cArrayCreateFaction012() global
  Faction[] aArr = New Faction[12]
  return aArr
endfunction
Faction[] function cArrayCreateFaction013() global
  Faction[] aArr = New Faction[13]
  return aArr
endfunction
Faction[] function cArrayCreateFaction014() global
  Faction[] aArr = New Faction[14]
  return aArr
endfunction
Faction[] function cArrayCreateFaction015() global
  Faction[] aArr = New Faction[15]
  return aArr
endfunction
Faction[] function cArrayCreateFaction016() global
  Faction[] aArr = New Faction[16]
  return aArr
endfunction
Faction[] function cArrayCreateFaction017() global
  Faction[] aArr = New Faction[17]
  return aArr
endfunction
Faction[] function cArrayCreateFaction018() global
  Faction[] aArr = New Faction[18]
  return aArr
endfunction
Faction[] function cArrayCreateFaction019() global
  Faction[] aArr = New Faction[19]
  return aArr
endfunction
Faction[] function cArrayCreateFaction020() global
  Faction[] aArr = New Faction[20]
  return aArr
endfunction
Faction[] function cArrayCreateFaction021() global
  Faction[] aArr = New Faction[21]
  return aArr
endfunction
Faction[] function cArrayCreateFaction022() global
  Faction[] aArr = New Faction[22]
  return aArr
endfunction
Faction[] function cArrayCreateFaction023() global
  Faction[] aArr = New Faction[23]
  return aArr
endfunction
Faction[] function cArrayCreateFaction024() global
  Faction[] aArr = New Faction[24]
  return aArr
endfunction
Faction[] function cArrayCreateFaction025() global
  Faction[] aArr = New Faction[25]
  return aArr
endfunction
Faction[] function cArrayCreateFaction026() global
  Faction[] aArr = New Faction[26]
  return aArr
endfunction
Faction[] function cArrayCreateFaction027() global
  Faction[] aArr = New Faction[27]
  return aArr
endfunction
Faction[] function cArrayCreateFaction028() global
  Faction[] aArr = New Faction[28]
  return aArr
endfunction
Faction[] function cArrayCreateFaction029() global
  Faction[] aArr = New Faction[29]
  return aArr
endfunction
Faction[] function cArrayCreateFaction030() global
  Faction[] aArr = New Faction[30]
  return aArr
endfunction
Faction[] function cArrayCreateFaction031() global
  Faction[] aArr = New Faction[31]
  return aArr
endfunction
Faction[] function cArrayCreateFaction032() global
  Faction[] aArr = New Faction[32]
  return aArr
endfunction
Faction[] function cArrayCreateFaction033() global
  Faction[] aArr = New Faction[33]
  return aArr
endfunction
Faction[] function cArrayCreateFaction034() global
  Faction[] aArr = New Faction[34]
  return aArr
endfunction
Faction[] function cArrayCreateFaction035() global
  Faction[] aArr = New Faction[35]
  return aArr
endfunction
Faction[] function cArrayCreateFaction036() global
  Faction[] aArr = New Faction[36]
  return aArr
endfunction
Faction[] function cArrayCreateFaction037() global
  Faction[] aArr = New Faction[37]
  return aArr
endfunction
Faction[] function cArrayCreateFaction038() global
  Faction[] aArr = New Faction[38]
  return aArr
endfunction
Faction[] function cArrayCreateFaction039() global
  Faction[] aArr = New Faction[39]
  return aArr
endfunction
Faction[] function cArrayCreateFaction040() global
  Faction[] aArr = New Faction[40]
  return aArr
endfunction
Faction[] function cArrayCreateFaction041() global
  Faction[] aArr = New Faction[41]
  return aArr
endfunction
Faction[] function cArrayCreateFaction042() global
  Faction[] aArr = New Faction[42]
  return aArr
endfunction
Faction[] function cArrayCreateFaction043() global
  Faction[] aArr = New Faction[43]
  return aArr
endfunction
Faction[] function cArrayCreateFaction044() global
  Faction[] aArr = New Faction[44]
  return aArr
endfunction
Faction[] function cArrayCreateFaction045() global
  Faction[] aArr = New Faction[45]
  return aArr
endfunction
Faction[] function cArrayCreateFaction046() global
  Faction[] aArr = New Faction[46]
  return aArr
endfunction
Faction[] function cArrayCreateFaction047() global
  Faction[] aArr = New Faction[47]
  return aArr
endfunction
Faction[] function cArrayCreateFaction048() global
  Faction[] aArr = New Faction[48]
  return aArr
endfunction
Faction[] function cArrayCreateFaction049() global
  Faction[] aArr = New Faction[49]
  return aArr
endfunction
Faction[] function cArrayCreateFaction050() global
  Faction[] aArr = New Faction[50]
  return aArr
endfunction
Faction[] function cArrayCreateFaction051() global
  Faction[] aArr = New Faction[51]
  return aArr
endfunction
Faction[] function cArrayCreateFaction052() global
  Faction[] aArr = New Faction[52]
  return aArr
endfunction
Faction[] function cArrayCreateFaction053() global
  Faction[] aArr = New Faction[53]
  return aArr
endfunction
Faction[] function cArrayCreateFaction054() global
  Faction[] aArr = New Faction[54]
  return aArr
endfunction
Faction[] function cArrayCreateFaction055() global
  Faction[] aArr = New Faction[55]
  return aArr
endfunction
Faction[] function cArrayCreateFaction056() global
  Faction[] aArr = New Faction[56]
  return aArr
endfunction
Faction[] function cArrayCreateFaction057() global
  Faction[] aArr = New Faction[57]
  return aArr
endfunction
Faction[] function cArrayCreateFaction058() global
  Faction[] aArr = New Faction[58]
  return aArr
endfunction
Faction[] function cArrayCreateFaction059() global
  Faction[] aArr = New Faction[59]
  return aArr
endfunction
Faction[] function cArrayCreateFaction060() global
  Faction[] aArr = New Faction[60]
  return aArr
endfunction
Faction[] function cArrayCreateFaction061() global
  Faction[] aArr = New Faction[61]
  return aArr
endfunction
Faction[] function cArrayCreateFaction062() global
  Faction[] aArr = New Faction[62]
  return aArr
endfunction
Faction[] function cArrayCreateFaction063() global
  Faction[] aArr = New Faction[63]
  return aArr
endfunction
Faction[] function cArrayCreateFaction064() global
  Faction[] aArr = New Faction[64]
  return aArr
endfunction
Faction[] function cArrayCreateFaction065() global
  Faction[] aArr = New Faction[65]
  return aArr
endfunction
Faction[] function cArrayCreateFaction066() global
  Faction[] aArr = New Faction[66]
  return aArr
endfunction
Faction[] function cArrayCreateFaction067() global
  Faction[] aArr = New Faction[67]
  return aArr
endfunction
Faction[] function cArrayCreateFaction068() global
  Faction[] aArr = New Faction[68]
  return aArr
endfunction
Faction[] function cArrayCreateFaction069() global
  Faction[] aArr = New Faction[69]
  return aArr
endfunction
Faction[] function cArrayCreateFaction070() global
  Faction[] aArr = New Faction[70]
  return aArr
endfunction
Faction[] function cArrayCreateFaction071() global
  Faction[] aArr = New Faction[71]
  return aArr
endfunction
Faction[] function cArrayCreateFaction072() global
  Faction[] aArr = New Faction[72]
  return aArr
endfunction
Faction[] function cArrayCreateFaction073() global
  Faction[] aArr = New Faction[73]
  return aArr
endfunction
Faction[] function cArrayCreateFaction074() global
  Faction[] aArr = New Faction[74]
  return aArr
endfunction
Faction[] function cArrayCreateFaction075() global
  Faction[] aArr = New Faction[75]
  return aArr
endfunction
Faction[] function cArrayCreateFaction076() global
  Faction[] aArr = New Faction[76]
  return aArr
endfunction
Faction[] function cArrayCreateFaction077() global
  Faction[] aArr = New Faction[77]
  return aArr
endfunction
Faction[] function cArrayCreateFaction078() global
  Faction[] aArr = New Faction[78]
  return aArr
endfunction
Faction[] function cArrayCreateFaction079() global
  Faction[] aArr = New Faction[79]
  return aArr
endfunction
Faction[] function cArrayCreateFaction080() global
  Faction[] aArr = New Faction[80]
  return aArr
endfunction
Faction[] function cArrayCreateFaction081() global
  Faction[] aArr = New Faction[81]
  return aArr
endfunction
Faction[] function cArrayCreateFaction082() global
  Faction[] aArr = New Faction[82]
  return aArr
endfunction
Faction[] function cArrayCreateFaction083() global
  Faction[] aArr = New Faction[83]
  return aArr
endfunction
Faction[] function cArrayCreateFaction084() global
  Faction[] aArr = New Faction[84]
  return aArr
endfunction
Faction[] function cArrayCreateFaction085() global
  Faction[] aArr = New Faction[85]
  return aArr
endfunction
Faction[] function cArrayCreateFaction086() global
  Faction[] aArr = New Faction[86]
  return aArr
endfunction
Faction[] function cArrayCreateFaction087() global
  Faction[] aArr = New Faction[87]
  return aArr
endfunction
Faction[] function cArrayCreateFaction088() global
  Faction[] aArr = New Faction[88]
  return aArr
endfunction
Faction[] function cArrayCreateFaction089() global
  Faction[] aArr = New Faction[89]
  return aArr
endfunction
Faction[] function cArrayCreateFaction090() global
  Faction[] aArr = New Faction[90]
  return aArr
endfunction
Faction[] function cArrayCreateFaction091() global
  Faction[] aArr = New Faction[91]
  return aArr
endfunction
Faction[] function cArrayCreateFaction092() global
  Faction[] aArr = New Faction[92]
  return aArr
endfunction
Faction[] function cArrayCreateFaction093() global
  Faction[] aArr = New Faction[93]
  return aArr
endfunction
Faction[] function cArrayCreateFaction094() global
  Faction[] aArr = New Faction[94]
  return aArr
endfunction
Faction[] function cArrayCreateFaction095() global
  Faction[] aArr = New Faction[95]
  return aArr
endfunction
Faction[] function cArrayCreateFaction096() global
  Faction[] aArr = New Faction[96]
  return aArr
endfunction
Faction[] function cArrayCreateFaction097() global
  Faction[] aArr = New Faction[97]
  return aArr
endfunction
Faction[] function cArrayCreateFaction098() global
  Faction[] aArr = New Faction[98]
  return aArr
endfunction
Faction[] function cArrayCreateFaction099() global
  Faction[] aArr = New Faction[99]
  return aArr
endfunction
Faction[] function cArrayCreateFaction100() global
  Faction[] aArr = New Faction[100]
  return aArr
endfunction
Faction[] function cArrayCreateFaction101() global
  Faction[] aArr = New Faction[101]
  return aArr
endfunction
Faction[] function cArrayCreateFaction102() global
  Faction[] aArr = New Faction[102]
  return aArr
endfunction
Faction[] function cArrayCreateFaction103() global
  Faction[] aArr = New Faction[103]
  return aArr
endfunction
Faction[] function cArrayCreateFaction104() global
  Faction[] aArr = New Faction[104]
  return aArr
endfunction
Faction[] function cArrayCreateFaction105() global
  Faction[] aArr = New Faction[105]
  return aArr
endfunction
Faction[] function cArrayCreateFaction106() global
  Faction[] aArr = New Faction[106]
  return aArr
endfunction
Faction[] function cArrayCreateFaction107() global
  Faction[] aArr = New Faction[107]
  return aArr
endfunction
Faction[] function cArrayCreateFaction108() global
  Faction[] aArr = New Faction[108]
  return aArr
endfunction
Faction[] function cArrayCreateFaction109() global
  Faction[] aArr = New Faction[109]
  return aArr
endfunction
Faction[] function cArrayCreateFaction110() global
  Faction[] aArr = New Faction[110]
  return aArr
endfunction
Faction[] function cArrayCreateFaction111() global
  Faction[] aArr = New Faction[111]
  return aArr
endfunction
Faction[] function cArrayCreateFaction112() global
  Faction[] aArr = New Faction[112]
  return aArr
endfunction
Faction[] function cArrayCreateFaction113() global
  Faction[] aArr = New Faction[113]
  return aArr
endfunction
Faction[] function cArrayCreateFaction114() global
  Faction[] aArr = New Faction[114]
  return aArr
endfunction
Faction[] function cArrayCreateFaction115() global
  Faction[] aArr = New Faction[115]
  return aArr
endfunction
Faction[] function cArrayCreateFaction116() global
  Faction[] aArr = New Faction[116]
  return aArr
endfunction
Faction[] function cArrayCreateFaction117() global
  Faction[] aArr = New Faction[117]
  return aArr
endfunction
Faction[] function cArrayCreateFaction118() global
  Faction[] aArr = New Faction[118]
  return aArr
endfunction
Faction[] function cArrayCreateFaction119() global
  Faction[] aArr = New Faction[119]
  return aArr
endfunction
Faction[] function cArrayCreateFaction120() global
  Faction[] aArr = New Faction[120]
  return aArr
endfunction
Faction[] function cArrayCreateFaction121() global
  Faction[] aArr = New Faction[121]
  return aArr
endfunction
Faction[] function cArrayCreateFaction122() global
  Faction[] aArr = New Faction[122]
  return aArr
endfunction
Faction[] function cArrayCreateFaction123() global
  Faction[] aArr = New Faction[123]
  return aArr
endfunction
Faction[] function cArrayCreateFaction124() global
  Faction[] aArr = New Faction[124]
  return aArr
endfunction
Faction[] function cArrayCreateFaction125() global
  Faction[] aArr = New Faction[125]
  return aArr
endfunction
Faction[] function cArrayCreateFaction126() global
  Faction[] aArr = New Faction[126]
  return aArr
endfunction
Faction[] function cArrayCreateFaction127() global
  Faction[] aArr = New Faction[127]
  return aArr
endfunction
Faction[] function cArrayCreateFaction128() global
  Faction[] aArr = New Faction[128]
  return aArr
endfunction
