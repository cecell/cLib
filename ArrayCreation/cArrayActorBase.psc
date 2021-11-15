Scriptname cArrayActorBase Hidden

Int function cGetVersion() global
  return 9001
endfunction

ActorBase[] function cArrayCreateActorBase(Int indices, ActorBase filler = None, Bool outputTrace = TRUE, \
  Bool useConsoleUtil = TRUE) global
  {Requirements: None}
  ActorBase[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; useConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateActorBase()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayActorBase::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateActorBase001()
              elseif indices < 3
                aArray = cArrayCreateActorBase002()
              elseif indices < 4
                aArray = cArrayCreateActorBase003()
              else
                aArray = cArrayCreateActorBase004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateActorBase005()
              elseif indices < 7
                aArray = cArrayCreateActorBase006()
              elseif indices < 8
                aArray = cArrayCreateActorBase007()
              else
                aArray = cArrayCreateActorBase008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateActorBase009()
              elseif indices < 11
                aArray = cArrayCreateActorBase010()
              elseif indices < 12
                aArray = cArrayCreateActorBase011()
              else
                aArray = cArrayCreateActorBase012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateActorBase013()
              elseif indices < 15
                aArray = cArrayCreateActorBase014()
              elseif indices < 16
                aArray = cArrayCreateActorBase015()
              else
                aArray = cArrayCreateActorBase016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateActorBase017()
              elseif indices < 19
                aArray = cArrayCreateActorBase018()
              elseif indices < 20
                aArray = cArrayCreateActorBase019()
              else
                aArray = cArrayCreateActorBase020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateActorBase021()
              elseif indices < 23
                aArray = cArrayCreateActorBase022()
              elseif indices < 24
                aArray = cArrayCreateActorBase023()
              else
                aArray = cArrayCreateActorBase024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateActorBase025()
              elseif indices < 27
                aArray = cArrayCreateActorBase026()
              elseif indices < 28
                aArray = cArrayCreateActorBase027()
              else
                aArray = cArrayCreateActorBase028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateActorBase029()
              elseif indices < 31
                aArray = cArrayCreateActorBase030()
              elseif indices < 32
                aArray = cArrayCreateActorBase031()
              else
                aArray = cArrayCreateActorBase032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateActorBase033()
              elseif indices < 35
                aArray = cArrayCreateActorBase034()
              elseif indices < 36
                aArray = cArrayCreateActorBase035()
              else
                aArray = cArrayCreateActorBase036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateActorBase037()
              elseif indices < 39
                aArray = cArrayCreateActorBase038()
              elseif indices < 40
                aArray = cArrayCreateActorBase039()
              else
                aArray = cArrayCreateActorBase040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateActorBase041()
              elseif indices < 43
                aArray = cArrayCreateActorBase042()
              elseif indices < 44
                aArray = cArrayCreateActorBase043()
              else
                aArray = cArrayCreateActorBase044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateActorBase045()
              elseif indices < 47
                aArray = cArrayCreateActorBase046()
              elseif indices < 48
                aArray = cArrayCreateActorBase047()
              else
                aArray = cArrayCreateActorBase048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateActorBase049()
              elseif indices < 51
                aArray = cArrayCreateActorBase050()
              elseif indices < 52
                aArray = cArrayCreateActorBase051()
              else
                aArray = cArrayCreateActorBase052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateActorBase053()
              elseif indices < 55
                aArray = cArrayCreateActorBase054()
              elseif indices < 56
                aArray = cArrayCreateActorBase055()
              else
                aArray = cArrayCreateActorBase056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateActorBase057()
              elseif indices < 59
                aArray = cArrayCreateActorBase058()
              elseif indices < 60
                aArray = cArrayCreateActorBase059()
              else
                aArray = cArrayCreateActorBase060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateActorBase061()
              elseif indices < 63
                aArray = cArrayCreateActorBase062()
              elseif indices < 64
                aArray = cArrayCreateActorBase063()
              else
                aArray = cArrayCreateActorBase064()
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
                aArray = cArrayCreateActorBase065()
              elseif indices < 67
                aArray = cArrayCreateActorBase066()
              elseif indices < 68
                aArray = cArrayCreateActorBase067()
              else
                aArray = cArrayCreateActorBase068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateActorBase069()
              elseif indices < 71
                aArray = cArrayCreateActorBase070()
              elseif indices < 72
                aArray = cArrayCreateActorBase071()
              else
                aArray = cArrayCreateActorBase072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateActorBase073()
              elseif indices < 75
                aArray = cArrayCreateActorBase074()
              elseif indices < 76
                aArray = cArrayCreateActorBase075()
              else
                aArray = cArrayCreateActorBase076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateActorBase077()
              elseif indices < 79
                aArray = cArrayCreateActorBase078()
              elseif indices < 80
                aArray = cArrayCreateActorBase079()
              else
                aArray = cArrayCreateActorBase080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateActorBase081()
              elseif indices < 83
                aArray = cArrayCreateActorBase082()
              elseif indices < 84
                aArray = cArrayCreateActorBase083()
              else
                aArray = cArrayCreateActorBase084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateActorBase085()
              elseif indices < 87
                aArray = cArrayCreateActorBase086()
              elseif indices < 88
                aArray = cArrayCreateActorBase087()
              else
                aArray = cArrayCreateActorBase088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateActorBase089()
              elseif indices < 91
                aArray = cArrayCreateActorBase090()
              elseif indices < 92
                aArray = cArrayCreateActorBase091()
              else
                aArray = cArrayCreateActorBase092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateActorBase093()
              elseif indices < 95
                aArray = cArrayCreateActorBase094()
              elseif indices < 96
                aArray = cArrayCreateActorBase095()
              else
                aArray = cArrayCreateActorBase096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateActorBase097()
              elseif indices < 99
                aArray = cArrayCreateActorBase098()
              elseif indices < 100
                aArray = cArrayCreateActorBase099()
              else
                aArray = cArrayCreateActorBase100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateActorBase101()
              elseif indices < 103
                aArray = cArrayCreateActorBase102()
              elseif indices < 104
                aArray = cArrayCreateActorBase103()
              else
                aArray = cArrayCreateActorBase104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateActorBase105()
              elseif indices < 107
                aArray = cArrayCreateActorBase106()
              elseif indices < 108
                aArray = cArrayCreateActorBase107()
              else
                aArray = cArrayCreateActorBase108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateActorBase109()
              elseif indices < 111
                aArray = cArrayCreateActorBase110()
              elseif indices < 112
                aArray = cArrayCreateActorBase111()
              else
                aArray = cArrayCreateActorBase112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateActorBase113()
              elseif indices < 115
                aArray = cArrayCreateActorBase114()
              elseif indices < 116
                aArray = cArrayCreateActorBase115()
              else
                aArray = cArrayCreateActorBase116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateActorBase117()
              elseif indices < 119
                aArray = cArrayCreateActorBase118()
              elseif indices < 120
                aArray = cArrayCreateActorBase119()
              else
                aArray = cArrayCreateActorBase120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateActorBase121()
              elseif indices < 123
                aArray = cArrayCreateActorBase122()
              elseif indices < 124
                aArray = cArrayCreateActorBase123()
              else
                aArray = cArrayCreateActorBase124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateActorBase125()
              elseif indices < 127
                aArray = cArrayCreateActorBase126()
              elseif indices < 128
                aArray = cArrayCreateActorBase127()
              else
                aArray = cArrayCreateActorBase128()
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
