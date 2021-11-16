Scriptname cArrayActorBase Hidden


ActorBase[] function cArrayCreateActorBase(Int indices, ActorBase filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  ActorBase[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    if outputTrace
      String msg = "cArrayCreateActorBase()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayActorBase::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateActorBase001()
              elseif indices < 3
                return cArrayCreateActorBase002()
              elseif indices < 4
                return cArrayCreateActorBase003()
              else
                return cArrayCreateActorBase004()
              endif
            else
              if indices < 6
                return cArrayCreateActorBase005()
              elseif indices < 7
                return cArrayCreateActorBase006()
              elseif indices < 8
                return cArrayCreateActorBase007()
              else
                return cArrayCreateActorBase008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateActorBase009()
              elseif indices < 11
                return cArrayCreateActorBase010()
              elseif indices < 12
                return cArrayCreateActorBase011()
              else
                return cArrayCreateActorBase012()
              endif
            else
              if indices < 14
                return cArrayCreateActorBase013()
              elseif indices < 15
                return cArrayCreateActorBase014()
              elseif indices < 16
                return cArrayCreateActorBase015()
              else
                return cArrayCreateActorBase016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateActorBase017()
              elseif indices < 19
                return cArrayCreateActorBase018()
              elseif indices < 20
                return cArrayCreateActorBase019()
              else
                return cArrayCreateActorBase020()
              endif
            else
              if indices < 22
                return cArrayCreateActorBase021()
              elseif indices < 23
                return cArrayCreateActorBase022()
              elseif indices < 24
                return cArrayCreateActorBase023()
              else
                return cArrayCreateActorBase024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateActorBase025()
              elseif indices < 27
                return cArrayCreateActorBase026()
              elseif indices < 28
                return cArrayCreateActorBase027()
              else
                return cArrayCreateActorBase028()
              endif
            else
              if indices < 30
                return cArrayCreateActorBase029()
              elseif indices < 31
                return cArrayCreateActorBase030()
              elseif indices < 32
                return cArrayCreateActorBase031()
              else
                return cArrayCreateActorBase032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateActorBase033()
              elseif indices < 35
                return cArrayCreateActorBase034()
              elseif indices < 36
                return cArrayCreateActorBase035()
              else
                return cArrayCreateActorBase036()
              endif
            else
              if indices < 38
                return cArrayCreateActorBase037()
              elseif indices < 39
                return cArrayCreateActorBase038()
              elseif indices < 40
                return cArrayCreateActorBase039()
              else
                return cArrayCreateActorBase040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateActorBase041()
              elseif indices < 43
                return cArrayCreateActorBase042()
              elseif indices < 44
                return cArrayCreateActorBase043()
              else
                return cArrayCreateActorBase044()
              endif
            else
              if indices < 46
                return cArrayCreateActorBase045()
              elseif indices < 47
                return cArrayCreateActorBase046()
              elseif indices < 48
                return cArrayCreateActorBase047()
              else
                return cArrayCreateActorBase048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateActorBase049()
              elseif indices < 51
                return cArrayCreateActorBase050()
              elseif indices < 52
                return cArrayCreateActorBase051()
              else
                return cArrayCreateActorBase052()
              endif
            else
              if indices < 54
                return cArrayCreateActorBase053()
              elseif indices < 55
                return cArrayCreateActorBase054()
              elseif indices < 56
                return cArrayCreateActorBase055()
              else
                return cArrayCreateActorBase056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateActorBase057()
              elseif indices < 59
                return cArrayCreateActorBase058()
              elseif indices < 60
                return cArrayCreateActorBase059()
              else
                return cArrayCreateActorBase060()
              endif
            else
              if indices < 62
                return cArrayCreateActorBase061()
              elseif indices < 63
                return cArrayCreateActorBase062()
              elseif indices < 64
                return cArrayCreateActorBase063()
              else
                return cArrayCreateActorBase064()
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
                return cArrayCreateActorBase065()
              elseif indices < 67
                return cArrayCreateActorBase066()
              elseif indices < 68
                return cArrayCreateActorBase067()
              else
                return cArrayCreateActorBase068()
              endif
            else
              if indices < 70
                return cArrayCreateActorBase069()
              elseif indices < 71
                return cArrayCreateActorBase070()
              elseif indices < 72
                return cArrayCreateActorBase071()
              else
                return cArrayCreateActorBase072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateActorBase073()
              elseif indices < 75
                return cArrayCreateActorBase074()
              elseif indices < 76
                return cArrayCreateActorBase075()
              else
                return cArrayCreateActorBase076()
              endif
            else
              if indices < 78
                return cArrayCreateActorBase077()
              elseif indices < 79
                return cArrayCreateActorBase078()
              elseif indices < 80
                return cArrayCreateActorBase079()
              else
                return cArrayCreateActorBase080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateActorBase081()
              elseif indices < 83
                return cArrayCreateActorBase082()
              elseif indices < 84
                return cArrayCreateActorBase083()
              else
                return cArrayCreateActorBase084()
              endif
            else
              if indices < 86
                return cArrayCreateActorBase085()
              elseif indices < 87
                return cArrayCreateActorBase086()
              elseif indices < 88
                return cArrayCreateActorBase087()
              else
                return cArrayCreateActorBase088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateActorBase089()
              elseif indices < 91
                return cArrayCreateActorBase090()
              elseif indices < 92
                return cArrayCreateActorBase091()
              else
                return cArrayCreateActorBase092()
              endif
            else
              if indices < 94
                return cArrayCreateActorBase093()
              elseif indices < 95
                return cArrayCreateActorBase094()
              elseif indices < 96
                return cArrayCreateActorBase095()
              else
                return cArrayCreateActorBase096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateActorBase097()
              elseif indices < 99
                return cArrayCreateActorBase098()
              elseif indices < 100
                return cArrayCreateActorBase099()
              else
                return cArrayCreateActorBase100()
              endif
            else
              if indices < 102
                return cArrayCreateActorBase101()
              elseif indices < 103
                return cArrayCreateActorBase102()
              elseif indices < 104
                return cArrayCreateActorBase103()
              else
                return cArrayCreateActorBase104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateActorBase105()
              elseif indices < 107
                return cArrayCreateActorBase106()
              elseif indices < 108
                return cArrayCreateActorBase107()
              else
                return cArrayCreateActorBase108()
              endif
            else
              if indices < 110
                return cArrayCreateActorBase109()
              elseif indices < 111
                return cArrayCreateActorBase110()
              elseif indices < 112
                return cArrayCreateActorBase111()
              else
                return cArrayCreateActorBase112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateActorBase113()
              elseif indices < 115
                return cArrayCreateActorBase114()
              elseif indices < 116
                return cArrayCreateActorBase115()
              else
                return cArrayCreateActorBase116()
              endif
            else
              if indices < 118
                return cArrayCreateActorBase117()
              elseif indices < 119
                return cArrayCreateActorBase118()
              elseif indices < 120
                return cArrayCreateActorBase119()
              else
                return cArrayCreateActorBase120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateActorBase121()
              elseif indices < 123
                return cArrayCreateActorBase122()
              elseif indices < 124
                return cArrayCreateActorBase123()
              else
                return cArrayCreateActorBase124()
              endif
            else
              if indices < 126
                return cArrayCreateActorBase125()
              elseif indices < 127
                return cArrayCreateActorBase126()
              elseif indices < 128
                return cArrayCreateActorBase127()
              else
                return cArrayCreateActorBase128()
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

ActorBase[] function cArrayCreateActorBase001() global
  ActorBase[] aArr = New ActorBase[1]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase002() global
  ActorBase[] aArr = New ActorBase[2]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase003() global
  ActorBase[] aArr = New ActorBase[3]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase004() global
  ActorBase[] aArr = New ActorBase[4]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase005() global
  ActorBase[] aArr = New ActorBase[5]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase006() global
  ActorBase[] aArr = New ActorBase[6]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase007() global
  ActorBase[] aArr = New ActorBase[7]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase008() global
  ActorBase[] aArr = New ActorBase[8]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase009() global
  ActorBase[] aArr = New ActorBase[9]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase010() global
  ActorBase[] aArr = New ActorBase[10]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase011() global
  ActorBase[] aArr = New ActorBase[11]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase012() global
  ActorBase[] aArr = New ActorBase[12]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase013() global
  ActorBase[] aArr = New ActorBase[13]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase014() global
  ActorBase[] aArr = New ActorBase[14]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase015() global
  ActorBase[] aArr = New ActorBase[15]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase016() global
  ActorBase[] aArr = New ActorBase[16]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase017() global
  ActorBase[] aArr = New ActorBase[17]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase018() global
  ActorBase[] aArr = New ActorBase[18]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase019() global
  ActorBase[] aArr = New ActorBase[19]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase020() global
  ActorBase[] aArr = New ActorBase[20]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase021() global
  ActorBase[] aArr = New ActorBase[21]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase022() global
  ActorBase[] aArr = New ActorBase[22]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase023() global
  ActorBase[] aArr = New ActorBase[23]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase024() global
  ActorBase[] aArr = New ActorBase[24]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase025() global
  ActorBase[] aArr = New ActorBase[25]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase026() global
  ActorBase[] aArr = New ActorBase[26]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase027() global
  ActorBase[] aArr = New ActorBase[27]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase028() global
  ActorBase[] aArr = New ActorBase[28]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase029() global
  ActorBase[] aArr = New ActorBase[29]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase030() global
  ActorBase[] aArr = New ActorBase[30]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase031() global
  ActorBase[] aArr = New ActorBase[31]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase032() global
  ActorBase[] aArr = New ActorBase[32]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase033() global
  ActorBase[] aArr = New ActorBase[33]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase034() global
  ActorBase[] aArr = New ActorBase[34]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase035() global
  ActorBase[] aArr = New ActorBase[35]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase036() global
  ActorBase[] aArr = New ActorBase[36]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase037() global
  ActorBase[] aArr = New ActorBase[37]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase038() global
  ActorBase[] aArr = New ActorBase[38]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase039() global
  ActorBase[] aArr = New ActorBase[39]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase040() global
  ActorBase[] aArr = New ActorBase[40]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase041() global
  ActorBase[] aArr = New ActorBase[41]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase042() global
  ActorBase[] aArr = New ActorBase[42]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase043() global
  ActorBase[] aArr = New ActorBase[43]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase044() global
  ActorBase[] aArr = New ActorBase[44]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase045() global
  ActorBase[] aArr = New ActorBase[45]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase046() global
  ActorBase[] aArr = New ActorBase[46]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase047() global
  ActorBase[] aArr = New ActorBase[47]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase048() global
  ActorBase[] aArr = New ActorBase[48]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase049() global
  ActorBase[] aArr = New ActorBase[49]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase050() global
  ActorBase[] aArr = New ActorBase[50]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase051() global
  ActorBase[] aArr = New ActorBase[51]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase052() global
  ActorBase[] aArr = New ActorBase[52]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase053() global
  ActorBase[] aArr = New ActorBase[53]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase054() global
  ActorBase[] aArr = New ActorBase[54]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase055() global
  ActorBase[] aArr = New ActorBase[55]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase056() global
  ActorBase[] aArr = New ActorBase[56]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase057() global
  ActorBase[] aArr = New ActorBase[57]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase058() global
  ActorBase[] aArr = New ActorBase[58]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase059() global
  ActorBase[] aArr = New ActorBase[59]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase060() global
  ActorBase[] aArr = New ActorBase[60]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase061() global
  ActorBase[] aArr = New ActorBase[61]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase062() global
  ActorBase[] aArr = New ActorBase[62]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase063() global
  ActorBase[] aArr = New ActorBase[63]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase064() global
  ActorBase[] aArr = New ActorBase[64]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase065() global
  ActorBase[] aArr = New ActorBase[65]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase066() global
  ActorBase[] aArr = New ActorBase[66]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase067() global
  ActorBase[] aArr = New ActorBase[67]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase068() global
  ActorBase[] aArr = New ActorBase[68]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase069() global
  ActorBase[] aArr = New ActorBase[69]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase070() global
  ActorBase[] aArr = New ActorBase[70]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase071() global
  ActorBase[] aArr = New ActorBase[71]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase072() global
  ActorBase[] aArr = New ActorBase[72]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase073() global
  ActorBase[] aArr = New ActorBase[73]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase074() global
  ActorBase[] aArr = New ActorBase[74]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase075() global
  ActorBase[] aArr = New ActorBase[75]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase076() global
  ActorBase[] aArr = New ActorBase[76]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase077() global
  ActorBase[] aArr = New ActorBase[77]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase078() global
  ActorBase[] aArr = New ActorBase[78]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase079() global
  ActorBase[] aArr = New ActorBase[79]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase080() global
  ActorBase[] aArr = New ActorBase[80]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase081() global
  ActorBase[] aArr = New ActorBase[81]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase082() global
  ActorBase[] aArr = New ActorBase[82]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase083() global
  ActorBase[] aArr = New ActorBase[83]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase084() global
  ActorBase[] aArr = New ActorBase[84]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase085() global
  ActorBase[] aArr = New ActorBase[85]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase086() global
  ActorBase[] aArr = New ActorBase[86]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase087() global
  ActorBase[] aArr = New ActorBase[87]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase088() global
  ActorBase[] aArr = New ActorBase[88]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase089() global
  ActorBase[] aArr = New ActorBase[89]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase090() global
  ActorBase[] aArr = New ActorBase[90]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase091() global
  ActorBase[] aArr = New ActorBase[91]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase092() global
  ActorBase[] aArr = New ActorBase[92]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase093() global
  ActorBase[] aArr = New ActorBase[93]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase094() global
  ActorBase[] aArr = New ActorBase[94]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase095() global
  ActorBase[] aArr = New ActorBase[95]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase096() global
  ActorBase[] aArr = New ActorBase[96]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase097() global
  ActorBase[] aArr = New ActorBase[97]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase098() global
  ActorBase[] aArr = New ActorBase[98]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase099() global
  ActorBase[] aArr = New ActorBase[99]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase100() global
  ActorBase[] aArr = New ActorBase[100]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase101() global
  ActorBase[] aArr = New ActorBase[101]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase102() global
  ActorBase[] aArr = New ActorBase[102]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase103() global
  ActorBase[] aArr = New ActorBase[103]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase104() global
  ActorBase[] aArr = New ActorBase[104]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase105() global
  ActorBase[] aArr = New ActorBase[105]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase106() global
  ActorBase[] aArr = New ActorBase[106]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase107() global
  ActorBase[] aArr = New ActorBase[107]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase108() global
  ActorBase[] aArr = New ActorBase[108]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase109() global
  ActorBase[] aArr = New ActorBase[109]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase110() global
  ActorBase[] aArr = New ActorBase[110]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase111() global
  ActorBase[] aArr = New ActorBase[111]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase112() global
  ActorBase[] aArr = New ActorBase[112]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase113() global
  ActorBase[] aArr = New ActorBase[113]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase114() global
  ActorBase[] aArr = New ActorBase[114]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase115() global
  ActorBase[] aArr = New ActorBase[115]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase116() global
  ActorBase[] aArr = New ActorBase[116]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase117() global
  ActorBase[] aArr = New ActorBase[117]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase118() global
  ActorBase[] aArr = New ActorBase[118]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase119() global
  ActorBase[] aArr = New ActorBase[119]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase120() global
  ActorBase[] aArr = New ActorBase[120]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase121() global
  ActorBase[] aArr = New ActorBase[121]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase122() global
  ActorBase[] aArr = New ActorBase[122]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase123() global
  ActorBase[] aArr = New ActorBase[123]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase124() global
  ActorBase[] aArr = New ActorBase[124]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase125() global
  ActorBase[] aArr = New ActorBase[125]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase126() global
  ActorBase[] aArr = New ActorBase[126]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase127() global
  ActorBase[] aArr = New ActorBase[127]
  return aArr
endfunction
ActorBase[] function cArrayCreateActorBase128() global
  ActorBase[] aArr = New ActorBase[128]
  return aArr
endfunction
