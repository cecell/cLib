Scriptname cArrayMessage Hidden


Message[] function cArrayCreateMessage(Int indices, Message filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  Message[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    if outputTrace
      String msg = "cArrayCreateMessage()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayMessage::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateMessage001()
              elseif indices < 3
                return cArrayCreateMessage002()
              elseif indices < 4
                return cArrayCreateMessage003()
              else
                return cArrayCreateMessage004()
              endif
            else
              if indices < 6
                return cArrayCreateMessage005()
              elseif indices < 7
                return cArrayCreateMessage006()
              elseif indices < 8
                return cArrayCreateMessage007()
              else
                return cArrayCreateMessage008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateMessage009()
              elseif indices < 11
                return cArrayCreateMessage010()
              elseif indices < 12
                return cArrayCreateMessage011()
              else
                return cArrayCreateMessage012()
              endif
            else
              if indices < 14
                return cArrayCreateMessage013()
              elseif indices < 15
                return cArrayCreateMessage014()
              elseif indices < 16
                return cArrayCreateMessage015()
              else
                return cArrayCreateMessage016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateMessage017()
              elseif indices < 19
                return cArrayCreateMessage018()
              elseif indices < 20
                return cArrayCreateMessage019()
              else
                return cArrayCreateMessage020()
              endif
            else
              if indices < 22
                return cArrayCreateMessage021()
              elseif indices < 23
                return cArrayCreateMessage022()
              elseif indices < 24
                return cArrayCreateMessage023()
              else
                return cArrayCreateMessage024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateMessage025()
              elseif indices < 27
                return cArrayCreateMessage026()
              elseif indices < 28
                return cArrayCreateMessage027()
              else
                return cArrayCreateMessage028()
              endif
            else
              if indices < 30
                return cArrayCreateMessage029()
              elseif indices < 31
                return cArrayCreateMessage030()
              elseif indices < 32
                return cArrayCreateMessage031()
              else
                return cArrayCreateMessage032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateMessage033()
              elseif indices < 35
                return cArrayCreateMessage034()
              elseif indices < 36
                return cArrayCreateMessage035()
              else
                return cArrayCreateMessage036()
              endif
            else
              if indices < 38
                return cArrayCreateMessage037()
              elseif indices < 39
                return cArrayCreateMessage038()
              elseif indices < 40
                return cArrayCreateMessage039()
              else
                return cArrayCreateMessage040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateMessage041()
              elseif indices < 43
                return cArrayCreateMessage042()
              elseif indices < 44
                return cArrayCreateMessage043()
              else
                return cArrayCreateMessage044()
              endif
            else
              if indices < 46
                return cArrayCreateMessage045()
              elseif indices < 47
                return cArrayCreateMessage046()
              elseif indices < 48
                return cArrayCreateMessage047()
              else
                return cArrayCreateMessage048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateMessage049()
              elseif indices < 51
                return cArrayCreateMessage050()
              elseif indices < 52
                return cArrayCreateMessage051()
              else
                return cArrayCreateMessage052()
              endif
            else
              if indices < 54
                return cArrayCreateMessage053()
              elseif indices < 55
                return cArrayCreateMessage054()
              elseif indices < 56
                return cArrayCreateMessage055()
              else
                return cArrayCreateMessage056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateMessage057()
              elseif indices < 59
                return cArrayCreateMessage058()
              elseif indices < 60
                return cArrayCreateMessage059()
              else
                return cArrayCreateMessage060()
              endif
            else
              if indices < 62
                return cArrayCreateMessage061()
              elseif indices < 63
                return cArrayCreateMessage062()
              elseif indices < 64
                return cArrayCreateMessage063()
              else
                return cArrayCreateMessage064()
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
                return cArrayCreateMessage065()
              elseif indices < 67
                return cArrayCreateMessage066()
              elseif indices < 68
                return cArrayCreateMessage067()
              else
                return cArrayCreateMessage068()
              endif
            else
              if indices < 70
                return cArrayCreateMessage069()
              elseif indices < 71
                return cArrayCreateMessage070()
              elseif indices < 72
                return cArrayCreateMessage071()
              else
                return cArrayCreateMessage072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateMessage073()
              elseif indices < 75
                return cArrayCreateMessage074()
              elseif indices < 76
                return cArrayCreateMessage075()
              else
                return cArrayCreateMessage076()
              endif
            else
              if indices < 78
                return cArrayCreateMessage077()
              elseif indices < 79
                return cArrayCreateMessage078()
              elseif indices < 80
                return cArrayCreateMessage079()
              else
                return cArrayCreateMessage080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateMessage081()
              elseif indices < 83
                return cArrayCreateMessage082()
              elseif indices < 84
                return cArrayCreateMessage083()
              else
                return cArrayCreateMessage084()
              endif
            else
              if indices < 86
                return cArrayCreateMessage085()
              elseif indices < 87
                return cArrayCreateMessage086()
              elseif indices < 88
                return cArrayCreateMessage087()
              else
                return cArrayCreateMessage088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateMessage089()
              elseif indices < 91
                return cArrayCreateMessage090()
              elseif indices < 92
                return cArrayCreateMessage091()
              else
                return cArrayCreateMessage092()
              endif
            else
              if indices < 94
                return cArrayCreateMessage093()
              elseif indices < 95
                return cArrayCreateMessage094()
              elseif indices < 96
                return cArrayCreateMessage095()
              else
                return cArrayCreateMessage096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateMessage097()
              elseif indices < 99
                return cArrayCreateMessage098()
              elseif indices < 100
                return cArrayCreateMessage099()
              else
                return cArrayCreateMessage100()
              endif
            else
              if indices < 102
                return cArrayCreateMessage101()
              elseif indices < 103
                return cArrayCreateMessage102()
              elseif indices < 104
                return cArrayCreateMessage103()
              else
                return cArrayCreateMessage104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateMessage105()
              elseif indices < 107
                return cArrayCreateMessage106()
              elseif indices < 108
                return cArrayCreateMessage107()
              else
                return cArrayCreateMessage108()
              endif
            else
              if indices < 110
                return cArrayCreateMessage109()
              elseif indices < 111
                return cArrayCreateMessage110()
              elseif indices < 112
                return cArrayCreateMessage111()
              else
                return cArrayCreateMessage112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateMessage113()
              elseif indices < 115
                return cArrayCreateMessage114()
              elseif indices < 116
                return cArrayCreateMessage115()
              else
                return cArrayCreateMessage116()
              endif
            else
              if indices < 118
                return cArrayCreateMessage117()
              elseif indices < 119
                return cArrayCreateMessage118()
              elseif indices < 120
                return cArrayCreateMessage119()
              else
                return cArrayCreateMessage120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateMessage121()
              elseif indices < 123
                return cArrayCreateMessage122()
              elseif indices < 124
                return cArrayCreateMessage123()
              else
                return cArrayCreateMessage124()
              endif
            else
              if indices < 126
                return cArrayCreateMessage125()
              elseif indices < 127
                return cArrayCreateMessage126()
              elseif indices < 128
                return cArrayCreateMessage127()
              else
                return cArrayCreateMessage128()
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

Message[] function cArrayCreateMessage001() global
  Message[] aArr = New Message[1]
  return aArr
endfunction
Message[] function cArrayCreateMessage002() global
  Message[] aArr = New Message[2]
  return aArr
endfunction
Message[] function cArrayCreateMessage003() global
  Message[] aArr = New Message[3]
  return aArr
endfunction
Message[] function cArrayCreateMessage004() global
  Message[] aArr = New Message[4]
  return aArr
endfunction
Message[] function cArrayCreateMessage005() global
  Message[] aArr = New Message[5]
  return aArr
endfunction
Message[] function cArrayCreateMessage006() global
  Message[] aArr = New Message[6]
  return aArr
endfunction
Message[] function cArrayCreateMessage007() global
  Message[] aArr = New Message[7]
  return aArr
endfunction
Message[] function cArrayCreateMessage008() global
  Message[] aArr = New Message[8]
  return aArr
endfunction
Message[] function cArrayCreateMessage009() global
  Message[] aArr = New Message[9]
  return aArr
endfunction
Message[] function cArrayCreateMessage010() global
  Message[] aArr = New Message[10]
  return aArr
endfunction
Message[] function cArrayCreateMessage011() global
  Message[] aArr = New Message[11]
  return aArr
endfunction
Message[] function cArrayCreateMessage012() global
  Message[] aArr = New Message[12]
  return aArr
endfunction
Message[] function cArrayCreateMessage013() global
  Message[] aArr = New Message[13]
  return aArr
endfunction
Message[] function cArrayCreateMessage014() global
  Message[] aArr = New Message[14]
  return aArr
endfunction
Message[] function cArrayCreateMessage015() global
  Message[] aArr = New Message[15]
  return aArr
endfunction
Message[] function cArrayCreateMessage016() global
  Message[] aArr = New Message[16]
  return aArr
endfunction
Message[] function cArrayCreateMessage017() global
  Message[] aArr = New Message[17]
  return aArr
endfunction
Message[] function cArrayCreateMessage018() global
  Message[] aArr = New Message[18]
  return aArr
endfunction
Message[] function cArrayCreateMessage019() global
  Message[] aArr = New Message[19]
  return aArr
endfunction
Message[] function cArrayCreateMessage020() global
  Message[] aArr = New Message[20]
  return aArr
endfunction
Message[] function cArrayCreateMessage021() global
  Message[] aArr = New Message[21]
  return aArr
endfunction
Message[] function cArrayCreateMessage022() global
  Message[] aArr = New Message[22]
  return aArr
endfunction
Message[] function cArrayCreateMessage023() global
  Message[] aArr = New Message[23]
  return aArr
endfunction
Message[] function cArrayCreateMessage024() global
  Message[] aArr = New Message[24]
  return aArr
endfunction
Message[] function cArrayCreateMessage025() global
  Message[] aArr = New Message[25]
  return aArr
endfunction
Message[] function cArrayCreateMessage026() global
  Message[] aArr = New Message[26]
  return aArr
endfunction
Message[] function cArrayCreateMessage027() global
  Message[] aArr = New Message[27]
  return aArr
endfunction
Message[] function cArrayCreateMessage028() global
  Message[] aArr = New Message[28]
  return aArr
endfunction
Message[] function cArrayCreateMessage029() global
  Message[] aArr = New Message[29]
  return aArr
endfunction
Message[] function cArrayCreateMessage030() global
  Message[] aArr = New Message[30]
  return aArr
endfunction
Message[] function cArrayCreateMessage031() global
  Message[] aArr = New Message[31]
  return aArr
endfunction
Message[] function cArrayCreateMessage032() global
  Message[] aArr = New Message[32]
  return aArr
endfunction
Message[] function cArrayCreateMessage033() global
  Message[] aArr = New Message[33]
  return aArr
endfunction
Message[] function cArrayCreateMessage034() global
  Message[] aArr = New Message[34]
  return aArr
endfunction
Message[] function cArrayCreateMessage035() global
  Message[] aArr = New Message[35]
  return aArr
endfunction
Message[] function cArrayCreateMessage036() global
  Message[] aArr = New Message[36]
  return aArr
endfunction
Message[] function cArrayCreateMessage037() global
  Message[] aArr = New Message[37]
  return aArr
endfunction
Message[] function cArrayCreateMessage038() global
  Message[] aArr = New Message[38]
  return aArr
endfunction
Message[] function cArrayCreateMessage039() global
  Message[] aArr = New Message[39]
  return aArr
endfunction
Message[] function cArrayCreateMessage040() global
  Message[] aArr = New Message[40]
  return aArr
endfunction
Message[] function cArrayCreateMessage041() global
  Message[] aArr = New Message[41]
  return aArr
endfunction
Message[] function cArrayCreateMessage042() global
  Message[] aArr = New Message[42]
  return aArr
endfunction
Message[] function cArrayCreateMessage043() global
  Message[] aArr = New Message[43]
  return aArr
endfunction
Message[] function cArrayCreateMessage044() global
  Message[] aArr = New Message[44]
  return aArr
endfunction
Message[] function cArrayCreateMessage045() global
  Message[] aArr = New Message[45]
  return aArr
endfunction
Message[] function cArrayCreateMessage046() global
  Message[] aArr = New Message[46]
  return aArr
endfunction
Message[] function cArrayCreateMessage047() global
  Message[] aArr = New Message[47]
  return aArr
endfunction
Message[] function cArrayCreateMessage048() global
  Message[] aArr = New Message[48]
  return aArr
endfunction
Message[] function cArrayCreateMessage049() global
  Message[] aArr = New Message[49]
  return aArr
endfunction
Message[] function cArrayCreateMessage050() global
  Message[] aArr = New Message[50]
  return aArr
endfunction
Message[] function cArrayCreateMessage051() global
  Message[] aArr = New Message[51]
  return aArr
endfunction
Message[] function cArrayCreateMessage052() global
  Message[] aArr = New Message[52]
  return aArr
endfunction
Message[] function cArrayCreateMessage053() global
  Message[] aArr = New Message[53]
  return aArr
endfunction
Message[] function cArrayCreateMessage054() global
  Message[] aArr = New Message[54]
  return aArr
endfunction
Message[] function cArrayCreateMessage055() global
  Message[] aArr = New Message[55]
  return aArr
endfunction
Message[] function cArrayCreateMessage056() global
  Message[] aArr = New Message[56]
  return aArr
endfunction
Message[] function cArrayCreateMessage057() global
  Message[] aArr = New Message[57]
  return aArr
endfunction
Message[] function cArrayCreateMessage058() global
  Message[] aArr = New Message[58]
  return aArr
endfunction
Message[] function cArrayCreateMessage059() global
  Message[] aArr = New Message[59]
  return aArr
endfunction
Message[] function cArrayCreateMessage060() global
  Message[] aArr = New Message[60]
  return aArr
endfunction
Message[] function cArrayCreateMessage061() global
  Message[] aArr = New Message[61]
  return aArr
endfunction
Message[] function cArrayCreateMessage062() global
  Message[] aArr = New Message[62]
  return aArr
endfunction
Message[] function cArrayCreateMessage063() global
  Message[] aArr = New Message[63]
  return aArr
endfunction
Message[] function cArrayCreateMessage064() global
  Message[] aArr = New Message[64]
  return aArr
endfunction
Message[] function cArrayCreateMessage065() global
  Message[] aArr = New Message[65]
  return aArr
endfunction
Message[] function cArrayCreateMessage066() global
  Message[] aArr = New Message[66]
  return aArr
endfunction
Message[] function cArrayCreateMessage067() global
  Message[] aArr = New Message[67]
  return aArr
endfunction
Message[] function cArrayCreateMessage068() global
  Message[] aArr = New Message[68]
  return aArr
endfunction
Message[] function cArrayCreateMessage069() global
  Message[] aArr = New Message[69]
  return aArr
endfunction
Message[] function cArrayCreateMessage070() global
  Message[] aArr = New Message[70]
  return aArr
endfunction
Message[] function cArrayCreateMessage071() global
  Message[] aArr = New Message[71]
  return aArr
endfunction
Message[] function cArrayCreateMessage072() global
  Message[] aArr = New Message[72]
  return aArr
endfunction
Message[] function cArrayCreateMessage073() global
  Message[] aArr = New Message[73]
  return aArr
endfunction
Message[] function cArrayCreateMessage074() global
  Message[] aArr = New Message[74]
  return aArr
endfunction
Message[] function cArrayCreateMessage075() global
  Message[] aArr = New Message[75]
  return aArr
endfunction
Message[] function cArrayCreateMessage076() global
  Message[] aArr = New Message[76]
  return aArr
endfunction
Message[] function cArrayCreateMessage077() global
  Message[] aArr = New Message[77]
  return aArr
endfunction
Message[] function cArrayCreateMessage078() global
  Message[] aArr = New Message[78]
  return aArr
endfunction
Message[] function cArrayCreateMessage079() global
  Message[] aArr = New Message[79]
  return aArr
endfunction
Message[] function cArrayCreateMessage080() global
  Message[] aArr = New Message[80]
  return aArr
endfunction
Message[] function cArrayCreateMessage081() global
  Message[] aArr = New Message[81]
  return aArr
endfunction
Message[] function cArrayCreateMessage082() global
  Message[] aArr = New Message[82]
  return aArr
endfunction
Message[] function cArrayCreateMessage083() global
  Message[] aArr = New Message[83]
  return aArr
endfunction
Message[] function cArrayCreateMessage084() global
  Message[] aArr = New Message[84]
  return aArr
endfunction
Message[] function cArrayCreateMessage085() global
  Message[] aArr = New Message[85]
  return aArr
endfunction
Message[] function cArrayCreateMessage086() global
  Message[] aArr = New Message[86]
  return aArr
endfunction
Message[] function cArrayCreateMessage087() global
  Message[] aArr = New Message[87]
  return aArr
endfunction
Message[] function cArrayCreateMessage088() global
  Message[] aArr = New Message[88]
  return aArr
endfunction
Message[] function cArrayCreateMessage089() global
  Message[] aArr = New Message[89]
  return aArr
endfunction
Message[] function cArrayCreateMessage090() global
  Message[] aArr = New Message[90]
  return aArr
endfunction
Message[] function cArrayCreateMessage091() global
  Message[] aArr = New Message[91]
  return aArr
endfunction
Message[] function cArrayCreateMessage092() global
  Message[] aArr = New Message[92]
  return aArr
endfunction
Message[] function cArrayCreateMessage093() global
  Message[] aArr = New Message[93]
  return aArr
endfunction
Message[] function cArrayCreateMessage094() global
  Message[] aArr = New Message[94]
  return aArr
endfunction
Message[] function cArrayCreateMessage095() global
  Message[] aArr = New Message[95]
  return aArr
endfunction
Message[] function cArrayCreateMessage096() global
  Message[] aArr = New Message[96]
  return aArr
endfunction
Message[] function cArrayCreateMessage097() global
  Message[] aArr = New Message[97]
  return aArr
endfunction
Message[] function cArrayCreateMessage098() global
  Message[] aArr = New Message[98]
  return aArr
endfunction
Message[] function cArrayCreateMessage099() global
  Message[] aArr = New Message[99]
  return aArr
endfunction
Message[] function cArrayCreateMessage100() global
  Message[] aArr = New Message[100]
  return aArr
endfunction
Message[] function cArrayCreateMessage101() global
  Message[] aArr = New Message[101]
  return aArr
endfunction
Message[] function cArrayCreateMessage102() global
  Message[] aArr = New Message[102]
  return aArr
endfunction
Message[] function cArrayCreateMessage103() global
  Message[] aArr = New Message[103]
  return aArr
endfunction
Message[] function cArrayCreateMessage104() global
  Message[] aArr = New Message[104]
  return aArr
endfunction
Message[] function cArrayCreateMessage105() global
  Message[] aArr = New Message[105]
  return aArr
endfunction
Message[] function cArrayCreateMessage106() global
  Message[] aArr = New Message[106]
  return aArr
endfunction
Message[] function cArrayCreateMessage107() global
  Message[] aArr = New Message[107]
  return aArr
endfunction
Message[] function cArrayCreateMessage108() global
  Message[] aArr = New Message[108]
  return aArr
endfunction
Message[] function cArrayCreateMessage109() global
  Message[] aArr = New Message[109]
  return aArr
endfunction
Message[] function cArrayCreateMessage110() global
  Message[] aArr = New Message[110]
  return aArr
endfunction
Message[] function cArrayCreateMessage111() global
  Message[] aArr = New Message[111]
  return aArr
endfunction
Message[] function cArrayCreateMessage112() global
  Message[] aArr = New Message[112]
  return aArr
endfunction
Message[] function cArrayCreateMessage113() global
  Message[] aArr = New Message[113]
  return aArr
endfunction
Message[] function cArrayCreateMessage114() global
  Message[] aArr = New Message[114]
  return aArr
endfunction
Message[] function cArrayCreateMessage115() global
  Message[] aArr = New Message[115]
  return aArr
endfunction
Message[] function cArrayCreateMessage116() global
  Message[] aArr = New Message[116]
  return aArr
endfunction
Message[] function cArrayCreateMessage117() global
  Message[] aArr = New Message[117]
  return aArr
endfunction
Message[] function cArrayCreateMessage118() global
  Message[] aArr = New Message[118]
  return aArr
endfunction
Message[] function cArrayCreateMessage119() global
  Message[] aArr = New Message[119]
  return aArr
endfunction
Message[] function cArrayCreateMessage120() global
  Message[] aArr = New Message[120]
  return aArr
endfunction
Message[] function cArrayCreateMessage121() global
  Message[] aArr = New Message[121]
  return aArr
endfunction
Message[] function cArrayCreateMessage122() global
  Message[] aArr = New Message[122]
  return aArr
endfunction
Message[] function cArrayCreateMessage123() global
  Message[] aArr = New Message[123]
  return aArr
endfunction
Message[] function cArrayCreateMessage124() global
  Message[] aArr = New Message[124]
  return aArr
endfunction
Message[] function cArrayCreateMessage125() global
  Message[] aArr = New Message[125]
  return aArr
endfunction
Message[] function cArrayCreateMessage126() global
  Message[] aArr = New Message[126]
  return aArr
endfunction
Message[] function cArrayCreateMessage127() global
  Message[] aArr = New Message[127]
  return aArr
endfunction
Message[] function cArrayCreateMessage128() global
  Message[] aArr = New Message[128]
  return aArr
endfunction
