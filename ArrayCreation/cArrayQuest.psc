Scriptname cArrayQuest Hidden


Quest[] function cArrayCreateQuest(Int indices, Quest filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  Quest[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace Quests
    if outputTrace
      String msg = "cArrayCreateQuest()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayQuest::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateQuest001()
              elseif indices < 3
                return cArrayCreateQuest002()
              elseif indices < 4
                return cArrayCreateQuest003()
              else
                return cArrayCreateQuest004()
              endif
            else
              if indices < 6
                return cArrayCreateQuest005()
              elseif indices < 7
                return cArrayCreateQuest006()
              elseif indices < 8
                return cArrayCreateQuest007()
              else
                return cArrayCreateQuest008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateQuest009()
              elseif indices < 11
                return cArrayCreateQuest010()
              elseif indices < 12
                return cArrayCreateQuest011()
              else
                return cArrayCreateQuest012()
              endif
            else
              if indices < 14
                return cArrayCreateQuest013()
              elseif indices < 15
                return cArrayCreateQuest014()
              elseif indices < 16
                return cArrayCreateQuest015()
              else
                return cArrayCreateQuest016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateQuest017()
              elseif indices < 19
                return cArrayCreateQuest018()
              elseif indices < 20
                return cArrayCreateQuest019()
              else
                return cArrayCreateQuest020()
              endif
            else
              if indices < 22
                return cArrayCreateQuest021()
              elseif indices < 23
                return cArrayCreateQuest022()
              elseif indices < 24
                return cArrayCreateQuest023()
              else
                return cArrayCreateQuest024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateQuest025()
              elseif indices < 27
                return cArrayCreateQuest026()
              elseif indices < 28
                return cArrayCreateQuest027()
              else
                return cArrayCreateQuest028()
              endif
            else
              if indices < 30
                return cArrayCreateQuest029()
              elseif indices < 31
                return cArrayCreateQuest030()
              elseif indices < 32
                return cArrayCreateQuest031()
              else
                return cArrayCreateQuest032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateQuest033()
              elseif indices < 35
                return cArrayCreateQuest034()
              elseif indices < 36
                return cArrayCreateQuest035()
              else
                return cArrayCreateQuest036()
              endif
            else
              if indices < 38
                return cArrayCreateQuest037()
              elseif indices < 39
                return cArrayCreateQuest038()
              elseif indices < 40
                return cArrayCreateQuest039()
              else
                return cArrayCreateQuest040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateQuest041()
              elseif indices < 43
                return cArrayCreateQuest042()
              elseif indices < 44
                return cArrayCreateQuest043()
              else
                return cArrayCreateQuest044()
              endif
            else
              if indices < 46
                return cArrayCreateQuest045()
              elseif indices < 47
                return cArrayCreateQuest046()
              elseif indices < 48
                return cArrayCreateQuest047()
              else
                return cArrayCreateQuest048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateQuest049()
              elseif indices < 51
                return cArrayCreateQuest050()
              elseif indices < 52
                return cArrayCreateQuest051()
              else
                return cArrayCreateQuest052()
              endif
            else
              if indices < 54
                return cArrayCreateQuest053()
              elseif indices < 55
                return cArrayCreateQuest054()
              elseif indices < 56
                return cArrayCreateQuest055()
              else
                return cArrayCreateQuest056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateQuest057()
              elseif indices < 59
                return cArrayCreateQuest058()
              elseif indices < 60
                return cArrayCreateQuest059()
              else
                return cArrayCreateQuest060()
              endif
            else
              if indices < 62
                return cArrayCreateQuest061()
              elseif indices < 63
                return cArrayCreateQuest062()
              elseif indices < 64
                return cArrayCreateQuest063()
              else
                return cArrayCreateQuest064()
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
                return cArrayCreateQuest065()
              elseif indices < 67
                return cArrayCreateQuest066()
              elseif indices < 68
                return cArrayCreateQuest067()
              else
                return cArrayCreateQuest068()
              endif
            else
              if indices < 70
                return cArrayCreateQuest069()
              elseif indices < 71
                return cArrayCreateQuest070()
              elseif indices < 72
                return cArrayCreateQuest071()
              else
                return cArrayCreateQuest072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateQuest073()
              elseif indices < 75
                return cArrayCreateQuest074()
              elseif indices < 76
                return cArrayCreateQuest075()
              else
                return cArrayCreateQuest076()
              endif
            else
              if indices < 78
                return cArrayCreateQuest077()
              elseif indices < 79
                return cArrayCreateQuest078()
              elseif indices < 80
                return cArrayCreateQuest079()
              else
                return cArrayCreateQuest080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateQuest081()
              elseif indices < 83
                return cArrayCreateQuest082()
              elseif indices < 84
                return cArrayCreateQuest083()
              else
                return cArrayCreateQuest084()
              endif
            else
              if indices < 86
                return cArrayCreateQuest085()
              elseif indices < 87
                return cArrayCreateQuest086()
              elseif indices < 88
                return cArrayCreateQuest087()
              else
                return cArrayCreateQuest088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateQuest089()
              elseif indices < 91
                return cArrayCreateQuest090()
              elseif indices < 92
                return cArrayCreateQuest091()
              else
                return cArrayCreateQuest092()
              endif
            else
              if indices < 94
                return cArrayCreateQuest093()
              elseif indices < 95
                return cArrayCreateQuest094()
              elseif indices < 96
                return cArrayCreateQuest095()
              else
                return cArrayCreateQuest096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateQuest097()
              elseif indices < 99
                return cArrayCreateQuest098()
              elseif indices < 100
                return cArrayCreateQuest099()
              else
                return cArrayCreateQuest100()
              endif
            else
              if indices < 102
                return cArrayCreateQuest101()
              elseif indices < 103
                return cArrayCreateQuest102()
              elseif indices < 104
                return cArrayCreateQuest103()
              else
                return cArrayCreateQuest104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateQuest105()
              elseif indices < 107
                return cArrayCreateQuest106()
              elseif indices < 108
                return cArrayCreateQuest107()
              else
                return cArrayCreateQuest108()
              endif
            else
              if indices < 110
                return cArrayCreateQuest109()
              elseif indices < 111
                return cArrayCreateQuest110()
              elseif indices < 112
                return cArrayCreateQuest111()
              else
                return cArrayCreateQuest112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateQuest113()
              elseif indices < 115
                return cArrayCreateQuest114()
              elseif indices < 116
                return cArrayCreateQuest115()
              else
                return cArrayCreateQuest116()
              endif
            else
              if indices < 118
                return cArrayCreateQuest117()
              elseif indices < 119
                return cArrayCreateQuest118()
              elseif indices < 120
                return cArrayCreateQuest119()
              else
                return cArrayCreateQuest120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateQuest121()
              elseif indices < 123
                return cArrayCreateQuest122()
              elseif indices < 124
                return cArrayCreateQuest123()
              else
                return cArrayCreateQuest124()
              endif
            else
              if indices < 126
                return cArrayCreateQuest125()
              elseif indices < 127
                return cArrayCreateQuest126()
              elseif indices < 128
                return cArrayCreateQuest127()
              else
                return cArrayCreateQuest128()
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

Quest[] function cArrayCreateQuest001() global
  Quest[] aArr = New Quest[1]
  return aArr
endfunction
Quest[] function cArrayCreateQuest002() global
  Quest[] aArr = New Quest[2]
  return aArr
endfunction
Quest[] function cArrayCreateQuest003() global
  Quest[] aArr = New Quest[3]
  return aArr
endfunction
Quest[] function cArrayCreateQuest004() global
  Quest[] aArr = New Quest[4]
  return aArr
endfunction
Quest[] function cArrayCreateQuest005() global
  Quest[] aArr = New Quest[5]
  return aArr
endfunction
Quest[] function cArrayCreateQuest006() global
  Quest[] aArr = New Quest[6]
  return aArr
endfunction
Quest[] function cArrayCreateQuest007() global
  Quest[] aArr = New Quest[7]
  return aArr
endfunction
Quest[] function cArrayCreateQuest008() global
  Quest[] aArr = New Quest[8]
  return aArr
endfunction
Quest[] function cArrayCreateQuest009() global
  Quest[] aArr = New Quest[9]
  return aArr
endfunction
Quest[] function cArrayCreateQuest010() global
  Quest[] aArr = New Quest[10]
  return aArr
endfunction
Quest[] function cArrayCreateQuest011() global
  Quest[] aArr = New Quest[11]
  return aArr
endfunction
Quest[] function cArrayCreateQuest012() global
  Quest[] aArr = New Quest[12]
  return aArr
endfunction
Quest[] function cArrayCreateQuest013() global
  Quest[] aArr = New Quest[13]
  return aArr
endfunction
Quest[] function cArrayCreateQuest014() global
  Quest[] aArr = New Quest[14]
  return aArr
endfunction
Quest[] function cArrayCreateQuest015() global
  Quest[] aArr = New Quest[15]
  return aArr
endfunction
Quest[] function cArrayCreateQuest016() global
  Quest[] aArr = New Quest[16]
  return aArr
endfunction
Quest[] function cArrayCreateQuest017() global
  Quest[] aArr = New Quest[17]
  return aArr
endfunction
Quest[] function cArrayCreateQuest018() global
  Quest[] aArr = New Quest[18]
  return aArr
endfunction
Quest[] function cArrayCreateQuest019() global
  Quest[] aArr = New Quest[19]
  return aArr
endfunction
Quest[] function cArrayCreateQuest020() global
  Quest[] aArr = New Quest[20]
  return aArr
endfunction
Quest[] function cArrayCreateQuest021() global
  Quest[] aArr = New Quest[21]
  return aArr
endfunction
Quest[] function cArrayCreateQuest022() global
  Quest[] aArr = New Quest[22]
  return aArr
endfunction
Quest[] function cArrayCreateQuest023() global
  Quest[] aArr = New Quest[23]
  return aArr
endfunction
Quest[] function cArrayCreateQuest024() global
  Quest[] aArr = New Quest[24]
  return aArr
endfunction
Quest[] function cArrayCreateQuest025() global
  Quest[] aArr = New Quest[25]
  return aArr
endfunction
Quest[] function cArrayCreateQuest026() global
  Quest[] aArr = New Quest[26]
  return aArr
endfunction
Quest[] function cArrayCreateQuest027() global
  Quest[] aArr = New Quest[27]
  return aArr
endfunction
Quest[] function cArrayCreateQuest028() global
  Quest[] aArr = New Quest[28]
  return aArr
endfunction
Quest[] function cArrayCreateQuest029() global
  Quest[] aArr = New Quest[29]
  return aArr
endfunction
Quest[] function cArrayCreateQuest030() global
  Quest[] aArr = New Quest[30]
  return aArr
endfunction
Quest[] function cArrayCreateQuest031() global
  Quest[] aArr = New Quest[31]
  return aArr
endfunction
Quest[] function cArrayCreateQuest032() global
  Quest[] aArr = New Quest[32]
  return aArr
endfunction
Quest[] function cArrayCreateQuest033() global
  Quest[] aArr = New Quest[33]
  return aArr
endfunction
Quest[] function cArrayCreateQuest034() global
  Quest[] aArr = New Quest[34]
  return aArr
endfunction
Quest[] function cArrayCreateQuest035() global
  Quest[] aArr = New Quest[35]
  return aArr
endfunction
Quest[] function cArrayCreateQuest036() global
  Quest[] aArr = New Quest[36]
  return aArr
endfunction
Quest[] function cArrayCreateQuest037() global
  Quest[] aArr = New Quest[37]
  return aArr
endfunction
Quest[] function cArrayCreateQuest038() global
  Quest[] aArr = New Quest[38]
  return aArr
endfunction
Quest[] function cArrayCreateQuest039() global
  Quest[] aArr = New Quest[39]
  return aArr
endfunction
Quest[] function cArrayCreateQuest040() global
  Quest[] aArr = New Quest[40]
  return aArr
endfunction
Quest[] function cArrayCreateQuest041() global
  Quest[] aArr = New Quest[41]
  return aArr
endfunction
Quest[] function cArrayCreateQuest042() global
  Quest[] aArr = New Quest[42]
  return aArr
endfunction
Quest[] function cArrayCreateQuest043() global
  Quest[] aArr = New Quest[43]
  return aArr
endfunction
Quest[] function cArrayCreateQuest044() global
  Quest[] aArr = New Quest[44]
  return aArr
endfunction
Quest[] function cArrayCreateQuest045() global
  Quest[] aArr = New Quest[45]
  return aArr
endfunction
Quest[] function cArrayCreateQuest046() global
  Quest[] aArr = New Quest[46]
  return aArr
endfunction
Quest[] function cArrayCreateQuest047() global
  Quest[] aArr = New Quest[47]
  return aArr
endfunction
Quest[] function cArrayCreateQuest048() global
  Quest[] aArr = New Quest[48]
  return aArr
endfunction
Quest[] function cArrayCreateQuest049() global
  Quest[] aArr = New Quest[49]
  return aArr
endfunction
Quest[] function cArrayCreateQuest050() global
  Quest[] aArr = New Quest[50]
  return aArr
endfunction
Quest[] function cArrayCreateQuest051() global
  Quest[] aArr = New Quest[51]
  return aArr
endfunction
Quest[] function cArrayCreateQuest052() global
  Quest[] aArr = New Quest[52]
  return aArr
endfunction
Quest[] function cArrayCreateQuest053() global
  Quest[] aArr = New Quest[53]
  return aArr
endfunction
Quest[] function cArrayCreateQuest054() global
  Quest[] aArr = New Quest[54]
  return aArr
endfunction
Quest[] function cArrayCreateQuest055() global
  Quest[] aArr = New Quest[55]
  return aArr
endfunction
Quest[] function cArrayCreateQuest056() global
  Quest[] aArr = New Quest[56]
  return aArr
endfunction
Quest[] function cArrayCreateQuest057() global
  Quest[] aArr = New Quest[57]
  return aArr
endfunction
Quest[] function cArrayCreateQuest058() global
  Quest[] aArr = New Quest[58]
  return aArr
endfunction
Quest[] function cArrayCreateQuest059() global
  Quest[] aArr = New Quest[59]
  return aArr
endfunction
Quest[] function cArrayCreateQuest060() global
  Quest[] aArr = New Quest[60]
  return aArr
endfunction
Quest[] function cArrayCreateQuest061() global
  Quest[] aArr = New Quest[61]
  return aArr
endfunction
Quest[] function cArrayCreateQuest062() global
  Quest[] aArr = New Quest[62]
  return aArr
endfunction
Quest[] function cArrayCreateQuest063() global
  Quest[] aArr = New Quest[63]
  return aArr
endfunction
Quest[] function cArrayCreateQuest064() global
  Quest[] aArr = New Quest[64]
  return aArr
endfunction
Quest[] function cArrayCreateQuest065() global
  Quest[] aArr = New Quest[65]
  return aArr
endfunction
Quest[] function cArrayCreateQuest066() global
  Quest[] aArr = New Quest[66]
  return aArr
endfunction
Quest[] function cArrayCreateQuest067() global
  Quest[] aArr = New Quest[67]
  return aArr
endfunction
Quest[] function cArrayCreateQuest068() global
  Quest[] aArr = New Quest[68]
  return aArr
endfunction
Quest[] function cArrayCreateQuest069() global
  Quest[] aArr = New Quest[69]
  return aArr
endfunction
Quest[] function cArrayCreateQuest070() global
  Quest[] aArr = New Quest[70]
  return aArr
endfunction
Quest[] function cArrayCreateQuest071() global
  Quest[] aArr = New Quest[71]
  return aArr
endfunction
Quest[] function cArrayCreateQuest072() global
  Quest[] aArr = New Quest[72]
  return aArr
endfunction
Quest[] function cArrayCreateQuest073() global
  Quest[] aArr = New Quest[73]
  return aArr
endfunction
Quest[] function cArrayCreateQuest074() global
  Quest[] aArr = New Quest[74]
  return aArr
endfunction
Quest[] function cArrayCreateQuest075() global
  Quest[] aArr = New Quest[75]
  return aArr
endfunction
Quest[] function cArrayCreateQuest076() global
  Quest[] aArr = New Quest[76]
  return aArr
endfunction
Quest[] function cArrayCreateQuest077() global
  Quest[] aArr = New Quest[77]
  return aArr
endfunction
Quest[] function cArrayCreateQuest078() global
  Quest[] aArr = New Quest[78]
  return aArr
endfunction
Quest[] function cArrayCreateQuest079() global
  Quest[] aArr = New Quest[79]
  return aArr
endfunction
Quest[] function cArrayCreateQuest080() global
  Quest[] aArr = New Quest[80]
  return aArr
endfunction
Quest[] function cArrayCreateQuest081() global
  Quest[] aArr = New Quest[81]
  return aArr
endfunction
Quest[] function cArrayCreateQuest082() global
  Quest[] aArr = New Quest[82]
  return aArr
endfunction
Quest[] function cArrayCreateQuest083() global
  Quest[] aArr = New Quest[83]
  return aArr
endfunction
Quest[] function cArrayCreateQuest084() global
  Quest[] aArr = New Quest[84]
  return aArr
endfunction
Quest[] function cArrayCreateQuest085() global
  Quest[] aArr = New Quest[85]
  return aArr
endfunction
Quest[] function cArrayCreateQuest086() global
  Quest[] aArr = New Quest[86]
  return aArr
endfunction
Quest[] function cArrayCreateQuest087() global
  Quest[] aArr = New Quest[87]
  return aArr
endfunction
Quest[] function cArrayCreateQuest088() global
  Quest[] aArr = New Quest[88]
  return aArr
endfunction
Quest[] function cArrayCreateQuest089() global
  Quest[] aArr = New Quest[89]
  return aArr
endfunction
Quest[] function cArrayCreateQuest090() global
  Quest[] aArr = New Quest[90]
  return aArr
endfunction
Quest[] function cArrayCreateQuest091() global
  Quest[] aArr = New Quest[91]
  return aArr
endfunction
Quest[] function cArrayCreateQuest092() global
  Quest[] aArr = New Quest[92]
  return aArr
endfunction
Quest[] function cArrayCreateQuest093() global
  Quest[] aArr = New Quest[93]
  return aArr
endfunction
Quest[] function cArrayCreateQuest094() global
  Quest[] aArr = New Quest[94]
  return aArr
endfunction
Quest[] function cArrayCreateQuest095() global
  Quest[] aArr = New Quest[95]
  return aArr
endfunction
Quest[] function cArrayCreateQuest096() global
  Quest[] aArr = New Quest[96]
  return aArr
endfunction
Quest[] function cArrayCreateQuest097() global
  Quest[] aArr = New Quest[97]
  return aArr
endfunction
Quest[] function cArrayCreateQuest098() global
  Quest[] aArr = New Quest[98]
  return aArr
endfunction
Quest[] function cArrayCreateQuest099() global
  Quest[] aArr = New Quest[99]
  return aArr
endfunction
Quest[] function cArrayCreateQuest100() global
  Quest[] aArr = New Quest[100]
  return aArr
endfunction
Quest[] function cArrayCreateQuest101() global
  Quest[] aArr = New Quest[101]
  return aArr
endfunction
Quest[] function cArrayCreateQuest102() global
  Quest[] aArr = New Quest[102]
  return aArr
endfunction
Quest[] function cArrayCreateQuest103() global
  Quest[] aArr = New Quest[103]
  return aArr
endfunction
Quest[] function cArrayCreateQuest104() global
  Quest[] aArr = New Quest[104]
  return aArr
endfunction
Quest[] function cArrayCreateQuest105() global
  Quest[] aArr = New Quest[105]
  return aArr
endfunction
Quest[] function cArrayCreateQuest106() global
  Quest[] aArr = New Quest[106]
  return aArr
endfunction
Quest[] function cArrayCreateQuest107() global
  Quest[] aArr = New Quest[107]
  return aArr
endfunction
Quest[] function cArrayCreateQuest108() global
  Quest[] aArr = New Quest[108]
  return aArr
endfunction
Quest[] function cArrayCreateQuest109() global
  Quest[] aArr = New Quest[109]
  return aArr
endfunction
Quest[] function cArrayCreateQuest110() global
  Quest[] aArr = New Quest[110]
  return aArr
endfunction
Quest[] function cArrayCreateQuest111() global
  Quest[] aArr = New Quest[111]
  return aArr
endfunction
Quest[] function cArrayCreateQuest112() global
  Quest[] aArr = New Quest[112]
  return aArr
endfunction
Quest[] function cArrayCreateQuest113() global
  Quest[] aArr = New Quest[113]
  return aArr
endfunction
Quest[] function cArrayCreateQuest114() global
  Quest[] aArr = New Quest[114]
  return aArr
endfunction
Quest[] function cArrayCreateQuest115() global
  Quest[] aArr = New Quest[115]
  return aArr
endfunction
Quest[] function cArrayCreateQuest116() global
  Quest[] aArr = New Quest[116]
  return aArr
endfunction
Quest[] function cArrayCreateQuest117() global
  Quest[] aArr = New Quest[117]
  return aArr
endfunction
Quest[] function cArrayCreateQuest118() global
  Quest[] aArr = New Quest[118]
  return aArr
endfunction
Quest[] function cArrayCreateQuest119() global
  Quest[] aArr = New Quest[119]
  return aArr
endfunction
Quest[] function cArrayCreateQuest120() global
  Quest[] aArr = New Quest[120]
  return aArr
endfunction
Quest[] function cArrayCreateQuest121() global
  Quest[] aArr = New Quest[121]
  return aArr
endfunction
Quest[] function cArrayCreateQuest122() global
  Quest[] aArr = New Quest[122]
  return aArr
endfunction
Quest[] function cArrayCreateQuest123() global
  Quest[] aArr = New Quest[123]
  return aArr
endfunction
Quest[] function cArrayCreateQuest124() global
  Quest[] aArr = New Quest[124]
  return aArr
endfunction
Quest[] function cArrayCreateQuest125() global
  Quest[] aArr = New Quest[125]
  return aArr
endfunction
Quest[] function cArrayCreateQuest126() global
  Quest[] aArr = New Quest[126]
  return aArr
endfunction
Quest[] function cArrayCreateQuest127() global
  Quest[] aArr = New Quest[127]
  return aArr
endfunction
Quest[] function cArrayCreateQuest128() global
  Quest[] aArr = New Quest[128]
  return aArr
endfunction
