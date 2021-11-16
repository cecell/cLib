Scriptname cArrayTopicInfo Hidden


TopicInfo[] function cArrayCreateTopicInfo(Int indices, TopicInfo filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  TopicInfo[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace TopicInfos
    if outputTrace
      String msg = "cArrayCreateTopicInfo()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayTopicInfo::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateTopicInfo001()
              elseif indices < 3
                return cArrayCreateTopicInfo002()
              elseif indices < 4
                return cArrayCreateTopicInfo003()
              else
                return cArrayCreateTopicInfo004()
              endif
            else
              if indices < 6
                return cArrayCreateTopicInfo005()
              elseif indices < 7
                return cArrayCreateTopicInfo006()
              elseif indices < 8
                return cArrayCreateTopicInfo007()
              else
                return cArrayCreateTopicInfo008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateTopicInfo009()
              elseif indices < 11
                return cArrayCreateTopicInfo010()
              elseif indices < 12
                return cArrayCreateTopicInfo011()
              else
                return cArrayCreateTopicInfo012()
              endif
            else
              if indices < 14
                return cArrayCreateTopicInfo013()
              elseif indices < 15
                return cArrayCreateTopicInfo014()
              elseif indices < 16
                return cArrayCreateTopicInfo015()
              else
                return cArrayCreateTopicInfo016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateTopicInfo017()
              elseif indices < 19
                return cArrayCreateTopicInfo018()
              elseif indices < 20
                return cArrayCreateTopicInfo019()
              else
                return cArrayCreateTopicInfo020()
              endif
            else
              if indices < 22
                return cArrayCreateTopicInfo021()
              elseif indices < 23
                return cArrayCreateTopicInfo022()
              elseif indices < 24
                return cArrayCreateTopicInfo023()
              else
                return cArrayCreateTopicInfo024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateTopicInfo025()
              elseif indices < 27
                return cArrayCreateTopicInfo026()
              elseif indices < 28
                return cArrayCreateTopicInfo027()
              else
                return cArrayCreateTopicInfo028()
              endif
            else
              if indices < 30
                return cArrayCreateTopicInfo029()
              elseif indices < 31
                return cArrayCreateTopicInfo030()
              elseif indices < 32
                return cArrayCreateTopicInfo031()
              else
                return cArrayCreateTopicInfo032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateTopicInfo033()
              elseif indices < 35
                return cArrayCreateTopicInfo034()
              elseif indices < 36
                return cArrayCreateTopicInfo035()
              else
                return cArrayCreateTopicInfo036()
              endif
            else
              if indices < 38
                return cArrayCreateTopicInfo037()
              elseif indices < 39
                return cArrayCreateTopicInfo038()
              elseif indices < 40
                return cArrayCreateTopicInfo039()
              else
                return cArrayCreateTopicInfo040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateTopicInfo041()
              elseif indices < 43
                return cArrayCreateTopicInfo042()
              elseif indices < 44
                return cArrayCreateTopicInfo043()
              else
                return cArrayCreateTopicInfo044()
              endif
            else
              if indices < 46
                return cArrayCreateTopicInfo045()
              elseif indices < 47
                return cArrayCreateTopicInfo046()
              elseif indices < 48
                return cArrayCreateTopicInfo047()
              else
                return cArrayCreateTopicInfo048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateTopicInfo049()
              elseif indices < 51
                return cArrayCreateTopicInfo050()
              elseif indices < 52
                return cArrayCreateTopicInfo051()
              else
                return cArrayCreateTopicInfo052()
              endif
            else
              if indices < 54
                return cArrayCreateTopicInfo053()
              elseif indices < 55
                return cArrayCreateTopicInfo054()
              elseif indices < 56
                return cArrayCreateTopicInfo055()
              else
                return cArrayCreateTopicInfo056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateTopicInfo057()
              elseif indices < 59
                return cArrayCreateTopicInfo058()
              elseif indices < 60
                return cArrayCreateTopicInfo059()
              else
                return cArrayCreateTopicInfo060()
              endif
            else
              if indices < 62
                return cArrayCreateTopicInfo061()
              elseif indices < 63
                return cArrayCreateTopicInfo062()
              elseif indices < 64
                return cArrayCreateTopicInfo063()
              else
                return cArrayCreateTopicInfo064()
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
                return cArrayCreateTopicInfo065()
              elseif indices < 67
                return cArrayCreateTopicInfo066()
              elseif indices < 68
                return cArrayCreateTopicInfo067()
              else
                return cArrayCreateTopicInfo068()
              endif
            else
              if indices < 70
                return cArrayCreateTopicInfo069()
              elseif indices < 71
                return cArrayCreateTopicInfo070()
              elseif indices < 72
                return cArrayCreateTopicInfo071()
              else
                return cArrayCreateTopicInfo072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateTopicInfo073()
              elseif indices < 75
                return cArrayCreateTopicInfo074()
              elseif indices < 76
                return cArrayCreateTopicInfo075()
              else
                return cArrayCreateTopicInfo076()
              endif
            else
              if indices < 78
                return cArrayCreateTopicInfo077()
              elseif indices < 79
                return cArrayCreateTopicInfo078()
              elseif indices < 80
                return cArrayCreateTopicInfo079()
              else
                return cArrayCreateTopicInfo080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateTopicInfo081()
              elseif indices < 83
                return cArrayCreateTopicInfo082()
              elseif indices < 84
                return cArrayCreateTopicInfo083()
              else
                return cArrayCreateTopicInfo084()
              endif
            else
              if indices < 86
                return cArrayCreateTopicInfo085()
              elseif indices < 87
                return cArrayCreateTopicInfo086()
              elseif indices < 88
                return cArrayCreateTopicInfo087()
              else
                return cArrayCreateTopicInfo088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateTopicInfo089()
              elseif indices < 91
                return cArrayCreateTopicInfo090()
              elseif indices < 92
                return cArrayCreateTopicInfo091()
              else
                return cArrayCreateTopicInfo092()
              endif
            else
              if indices < 94
                return cArrayCreateTopicInfo093()
              elseif indices < 95
                return cArrayCreateTopicInfo094()
              elseif indices < 96
                return cArrayCreateTopicInfo095()
              else
                return cArrayCreateTopicInfo096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateTopicInfo097()
              elseif indices < 99
                return cArrayCreateTopicInfo098()
              elseif indices < 100
                return cArrayCreateTopicInfo099()
              else
                return cArrayCreateTopicInfo100()
              endif
            else
              if indices < 102
                return cArrayCreateTopicInfo101()
              elseif indices < 103
                return cArrayCreateTopicInfo102()
              elseif indices < 104
                return cArrayCreateTopicInfo103()
              else
                return cArrayCreateTopicInfo104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateTopicInfo105()
              elseif indices < 107
                return cArrayCreateTopicInfo106()
              elseif indices < 108
                return cArrayCreateTopicInfo107()
              else
                return cArrayCreateTopicInfo108()
              endif
            else
              if indices < 110
                return cArrayCreateTopicInfo109()
              elseif indices < 111
                return cArrayCreateTopicInfo110()
              elseif indices < 112
                return cArrayCreateTopicInfo111()
              else
                return cArrayCreateTopicInfo112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateTopicInfo113()
              elseif indices < 115
                return cArrayCreateTopicInfo114()
              elseif indices < 116
                return cArrayCreateTopicInfo115()
              else
                return cArrayCreateTopicInfo116()
              endif
            else
              if indices < 118
                return cArrayCreateTopicInfo117()
              elseif indices < 119
                return cArrayCreateTopicInfo118()
              elseif indices < 120
                return cArrayCreateTopicInfo119()
              else
                return cArrayCreateTopicInfo120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateTopicInfo121()
              elseif indices < 123
                return cArrayCreateTopicInfo122()
              elseif indices < 124
                return cArrayCreateTopicInfo123()
              else
                return cArrayCreateTopicInfo124()
              endif
            else
              if indices < 126
                return cArrayCreateTopicInfo125()
              elseif indices < 127
                return cArrayCreateTopicInfo126()
              elseif indices < 128
                return cArrayCreateTopicInfo127()
              else
                return cArrayCreateTopicInfo128()
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

TopicInfo[] function cArrayCreateTopicInfo001() global
  TopicInfo[] aArr = New TopicInfo[1]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo002() global
  TopicInfo[] aArr = New TopicInfo[2]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo003() global
  TopicInfo[] aArr = New TopicInfo[3]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo004() global
  TopicInfo[] aArr = New TopicInfo[4]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo005() global
  TopicInfo[] aArr = New TopicInfo[5]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo006() global
  TopicInfo[] aArr = New TopicInfo[6]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo007() global
  TopicInfo[] aArr = New TopicInfo[7]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo008() global
  TopicInfo[] aArr = New TopicInfo[8]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo009() global
  TopicInfo[] aArr = New TopicInfo[9]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo010() global
  TopicInfo[] aArr = New TopicInfo[10]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo011() global
  TopicInfo[] aArr = New TopicInfo[11]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo012() global
  TopicInfo[] aArr = New TopicInfo[12]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo013() global
  TopicInfo[] aArr = New TopicInfo[13]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo014() global
  TopicInfo[] aArr = New TopicInfo[14]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo015() global
  TopicInfo[] aArr = New TopicInfo[15]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo016() global
  TopicInfo[] aArr = New TopicInfo[16]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo017() global
  TopicInfo[] aArr = New TopicInfo[17]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo018() global
  TopicInfo[] aArr = New TopicInfo[18]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo019() global
  TopicInfo[] aArr = New TopicInfo[19]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo020() global
  TopicInfo[] aArr = New TopicInfo[20]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo021() global
  TopicInfo[] aArr = New TopicInfo[21]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo022() global
  TopicInfo[] aArr = New TopicInfo[22]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo023() global
  TopicInfo[] aArr = New TopicInfo[23]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo024() global
  TopicInfo[] aArr = New TopicInfo[24]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo025() global
  TopicInfo[] aArr = New TopicInfo[25]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo026() global
  TopicInfo[] aArr = New TopicInfo[26]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo027() global
  TopicInfo[] aArr = New TopicInfo[27]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo028() global
  TopicInfo[] aArr = New TopicInfo[28]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo029() global
  TopicInfo[] aArr = New TopicInfo[29]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo030() global
  TopicInfo[] aArr = New TopicInfo[30]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo031() global
  TopicInfo[] aArr = New TopicInfo[31]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo032() global
  TopicInfo[] aArr = New TopicInfo[32]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo033() global
  TopicInfo[] aArr = New TopicInfo[33]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo034() global
  TopicInfo[] aArr = New TopicInfo[34]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo035() global
  TopicInfo[] aArr = New TopicInfo[35]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo036() global
  TopicInfo[] aArr = New TopicInfo[36]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo037() global
  TopicInfo[] aArr = New TopicInfo[37]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo038() global
  TopicInfo[] aArr = New TopicInfo[38]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo039() global
  TopicInfo[] aArr = New TopicInfo[39]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo040() global
  TopicInfo[] aArr = New TopicInfo[40]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo041() global
  TopicInfo[] aArr = New TopicInfo[41]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo042() global
  TopicInfo[] aArr = New TopicInfo[42]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo043() global
  TopicInfo[] aArr = New TopicInfo[43]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo044() global
  TopicInfo[] aArr = New TopicInfo[44]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo045() global
  TopicInfo[] aArr = New TopicInfo[45]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo046() global
  TopicInfo[] aArr = New TopicInfo[46]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo047() global
  TopicInfo[] aArr = New TopicInfo[47]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo048() global
  TopicInfo[] aArr = New TopicInfo[48]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo049() global
  TopicInfo[] aArr = New TopicInfo[49]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo050() global
  TopicInfo[] aArr = New TopicInfo[50]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo051() global
  TopicInfo[] aArr = New TopicInfo[51]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo052() global
  TopicInfo[] aArr = New TopicInfo[52]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo053() global
  TopicInfo[] aArr = New TopicInfo[53]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo054() global
  TopicInfo[] aArr = New TopicInfo[54]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo055() global
  TopicInfo[] aArr = New TopicInfo[55]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo056() global
  TopicInfo[] aArr = New TopicInfo[56]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo057() global
  TopicInfo[] aArr = New TopicInfo[57]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo058() global
  TopicInfo[] aArr = New TopicInfo[58]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo059() global
  TopicInfo[] aArr = New TopicInfo[59]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo060() global
  TopicInfo[] aArr = New TopicInfo[60]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo061() global
  TopicInfo[] aArr = New TopicInfo[61]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo062() global
  TopicInfo[] aArr = New TopicInfo[62]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo063() global
  TopicInfo[] aArr = New TopicInfo[63]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo064() global
  TopicInfo[] aArr = New TopicInfo[64]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo065() global
  TopicInfo[] aArr = New TopicInfo[65]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo066() global
  TopicInfo[] aArr = New TopicInfo[66]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo067() global
  TopicInfo[] aArr = New TopicInfo[67]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo068() global
  TopicInfo[] aArr = New TopicInfo[68]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo069() global
  TopicInfo[] aArr = New TopicInfo[69]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo070() global
  TopicInfo[] aArr = New TopicInfo[70]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo071() global
  TopicInfo[] aArr = New TopicInfo[71]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo072() global
  TopicInfo[] aArr = New TopicInfo[72]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo073() global
  TopicInfo[] aArr = New TopicInfo[73]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo074() global
  TopicInfo[] aArr = New TopicInfo[74]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo075() global
  TopicInfo[] aArr = New TopicInfo[75]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo076() global
  TopicInfo[] aArr = New TopicInfo[76]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo077() global
  TopicInfo[] aArr = New TopicInfo[77]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo078() global
  TopicInfo[] aArr = New TopicInfo[78]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo079() global
  TopicInfo[] aArr = New TopicInfo[79]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo080() global
  TopicInfo[] aArr = New TopicInfo[80]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo081() global
  TopicInfo[] aArr = New TopicInfo[81]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo082() global
  TopicInfo[] aArr = New TopicInfo[82]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo083() global
  TopicInfo[] aArr = New TopicInfo[83]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo084() global
  TopicInfo[] aArr = New TopicInfo[84]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo085() global
  TopicInfo[] aArr = New TopicInfo[85]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo086() global
  TopicInfo[] aArr = New TopicInfo[86]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo087() global
  TopicInfo[] aArr = New TopicInfo[87]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo088() global
  TopicInfo[] aArr = New TopicInfo[88]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo089() global
  TopicInfo[] aArr = New TopicInfo[89]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo090() global
  TopicInfo[] aArr = New TopicInfo[90]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo091() global
  TopicInfo[] aArr = New TopicInfo[91]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo092() global
  TopicInfo[] aArr = New TopicInfo[92]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo093() global
  TopicInfo[] aArr = New TopicInfo[93]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo094() global
  TopicInfo[] aArr = New TopicInfo[94]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo095() global
  TopicInfo[] aArr = New TopicInfo[95]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo096() global
  TopicInfo[] aArr = New TopicInfo[96]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo097() global
  TopicInfo[] aArr = New TopicInfo[97]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo098() global
  TopicInfo[] aArr = New TopicInfo[98]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo099() global
  TopicInfo[] aArr = New TopicInfo[99]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo100() global
  TopicInfo[] aArr = New TopicInfo[100]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo101() global
  TopicInfo[] aArr = New TopicInfo[101]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo102() global
  TopicInfo[] aArr = New TopicInfo[102]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo103() global
  TopicInfo[] aArr = New TopicInfo[103]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo104() global
  TopicInfo[] aArr = New TopicInfo[104]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo105() global
  TopicInfo[] aArr = New TopicInfo[105]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo106() global
  TopicInfo[] aArr = New TopicInfo[106]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo107() global
  TopicInfo[] aArr = New TopicInfo[107]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo108() global
  TopicInfo[] aArr = New TopicInfo[108]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo109() global
  TopicInfo[] aArr = New TopicInfo[109]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo110() global
  TopicInfo[] aArr = New TopicInfo[110]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo111() global
  TopicInfo[] aArr = New TopicInfo[111]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo112() global
  TopicInfo[] aArr = New TopicInfo[112]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo113() global
  TopicInfo[] aArr = New TopicInfo[113]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo114() global
  TopicInfo[] aArr = New TopicInfo[114]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo115() global
  TopicInfo[] aArr = New TopicInfo[115]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo116() global
  TopicInfo[] aArr = New TopicInfo[116]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo117() global
  TopicInfo[] aArr = New TopicInfo[117]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo118() global
  TopicInfo[] aArr = New TopicInfo[118]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo119() global
  TopicInfo[] aArr = New TopicInfo[119]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo120() global
  TopicInfo[] aArr = New TopicInfo[120]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo121() global
  TopicInfo[] aArr = New TopicInfo[121]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo122() global
  TopicInfo[] aArr = New TopicInfo[122]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo123() global
  TopicInfo[] aArr = New TopicInfo[123]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo124() global
  TopicInfo[] aArr = New TopicInfo[124]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo125() global
  TopicInfo[] aArr = New TopicInfo[125]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo126() global
  TopicInfo[] aArr = New TopicInfo[126]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo127() global
  TopicInfo[] aArr = New TopicInfo[127]
  return aArr
endfunction
TopicInfo[] function cArrayCreateTopicInfo128() global
  TopicInfo[] aArr = New TopicInfo[128]
  return aArr
endfunction
