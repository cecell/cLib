Scriptname cArrayMagicEffect Hidden


MagicEffect[] function cArrayCreateMagicEffect(Int indices, MagicEffect filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  MagicEffect[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    if outputTrace
      String msg = "cArrayCreateMagicEffect()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayMagicEffect::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateMagicEffect001()
              elseif indices < 3
                return cArrayCreateMagicEffect002()
              elseif indices < 4
                return cArrayCreateMagicEffect003()
              else
                return cArrayCreateMagicEffect004()
              endif
            else
              if indices < 6
                return cArrayCreateMagicEffect005()
              elseif indices < 7
                return cArrayCreateMagicEffect006()
              elseif indices < 8
                return cArrayCreateMagicEffect007()
              else
                return cArrayCreateMagicEffect008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateMagicEffect009()
              elseif indices < 11
                return cArrayCreateMagicEffect010()
              elseif indices < 12
                return cArrayCreateMagicEffect011()
              else
                return cArrayCreateMagicEffect012()
              endif
            else
              if indices < 14
                return cArrayCreateMagicEffect013()
              elseif indices < 15
                return cArrayCreateMagicEffect014()
              elseif indices < 16
                return cArrayCreateMagicEffect015()
              else
                return cArrayCreateMagicEffect016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateMagicEffect017()
              elseif indices < 19
                return cArrayCreateMagicEffect018()
              elseif indices < 20
                return cArrayCreateMagicEffect019()
              else
                return cArrayCreateMagicEffect020()
              endif
            else
              if indices < 22
                return cArrayCreateMagicEffect021()
              elseif indices < 23
                return cArrayCreateMagicEffect022()
              elseif indices < 24
                return cArrayCreateMagicEffect023()
              else
                return cArrayCreateMagicEffect024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateMagicEffect025()
              elseif indices < 27
                return cArrayCreateMagicEffect026()
              elseif indices < 28
                return cArrayCreateMagicEffect027()
              else
                return cArrayCreateMagicEffect028()
              endif
            else
              if indices < 30
                return cArrayCreateMagicEffect029()
              elseif indices < 31
                return cArrayCreateMagicEffect030()
              elseif indices < 32
                return cArrayCreateMagicEffect031()
              else
                return cArrayCreateMagicEffect032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateMagicEffect033()
              elseif indices < 35
                return cArrayCreateMagicEffect034()
              elseif indices < 36
                return cArrayCreateMagicEffect035()
              else
                return cArrayCreateMagicEffect036()
              endif
            else
              if indices < 38
                return cArrayCreateMagicEffect037()
              elseif indices < 39
                return cArrayCreateMagicEffect038()
              elseif indices < 40
                return cArrayCreateMagicEffect039()
              else
                return cArrayCreateMagicEffect040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateMagicEffect041()
              elseif indices < 43
                return cArrayCreateMagicEffect042()
              elseif indices < 44
                return cArrayCreateMagicEffect043()
              else
                return cArrayCreateMagicEffect044()
              endif
            else
              if indices < 46
                return cArrayCreateMagicEffect045()
              elseif indices < 47
                return cArrayCreateMagicEffect046()
              elseif indices < 48
                return cArrayCreateMagicEffect047()
              else
                return cArrayCreateMagicEffect048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateMagicEffect049()
              elseif indices < 51
                return cArrayCreateMagicEffect050()
              elseif indices < 52
                return cArrayCreateMagicEffect051()
              else
                return cArrayCreateMagicEffect052()
              endif
            else
              if indices < 54
                return cArrayCreateMagicEffect053()
              elseif indices < 55
                return cArrayCreateMagicEffect054()
              elseif indices < 56
                return cArrayCreateMagicEffect055()
              else
                return cArrayCreateMagicEffect056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateMagicEffect057()
              elseif indices < 59
                return cArrayCreateMagicEffect058()
              elseif indices < 60
                return cArrayCreateMagicEffect059()
              else
                return cArrayCreateMagicEffect060()
              endif
            else
              if indices < 62
                return cArrayCreateMagicEffect061()
              elseif indices < 63
                return cArrayCreateMagicEffect062()
              elseif indices < 64
                return cArrayCreateMagicEffect063()
              else
                return cArrayCreateMagicEffect064()
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
                return cArrayCreateMagicEffect065()
              elseif indices < 67
                return cArrayCreateMagicEffect066()
              elseif indices < 68
                return cArrayCreateMagicEffect067()
              else
                return cArrayCreateMagicEffect068()
              endif
            else
              if indices < 70
                return cArrayCreateMagicEffect069()
              elseif indices < 71
                return cArrayCreateMagicEffect070()
              elseif indices < 72
                return cArrayCreateMagicEffect071()
              else
                return cArrayCreateMagicEffect072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateMagicEffect073()
              elseif indices < 75
                return cArrayCreateMagicEffect074()
              elseif indices < 76
                return cArrayCreateMagicEffect075()
              else
                return cArrayCreateMagicEffect076()
              endif
            else
              if indices < 78
                return cArrayCreateMagicEffect077()
              elseif indices < 79
                return cArrayCreateMagicEffect078()
              elseif indices < 80
                return cArrayCreateMagicEffect079()
              else
                return cArrayCreateMagicEffect080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateMagicEffect081()
              elseif indices < 83
                return cArrayCreateMagicEffect082()
              elseif indices < 84
                return cArrayCreateMagicEffect083()
              else
                return cArrayCreateMagicEffect084()
              endif
            else
              if indices < 86
                return cArrayCreateMagicEffect085()
              elseif indices < 87
                return cArrayCreateMagicEffect086()
              elseif indices < 88
                return cArrayCreateMagicEffect087()
              else
                return cArrayCreateMagicEffect088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateMagicEffect089()
              elseif indices < 91
                return cArrayCreateMagicEffect090()
              elseif indices < 92
                return cArrayCreateMagicEffect091()
              else
                return cArrayCreateMagicEffect092()
              endif
            else
              if indices < 94
                return cArrayCreateMagicEffect093()
              elseif indices < 95
                return cArrayCreateMagicEffect094()
              elseif indices < 96
                return cArrayCreateMagicEffect095()
              else
                return cArrayCreateMagicEffect096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateMagicEffect097()
              elseif indices < 99
                return cArrayCreateMagicEffect098()
              elseif indices < 100
                return cArrayCreateMagicEffect099()
              else
                return cArrayCreateMagicEffect100()
              endif
            else
              if indices < 102
                return cArrayCreateMagicEffect101()
              elseif indices < 103
                return cArrayCreateMagicEffect102()
              elseif indices < 104
                return cArrayCreateMagicEffect103()
              else
                return cArrayCreateMagicEffect104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateMagicEffect105()
              elseif indices < 107
                return cArrayCreateMagicEffect106()
              elseif indices < 108
                return cArrayCreateMagicEffect107()
              else
                return cArrayCreateMagicEffect108()
              endif
            else
              if indices < 110
                return cArrayCreateMagicEffect109()
              elseif indices < 111
                return cArrayCreateMagicEffect110()
              elseif indices < 112
                return cArrayCreateMagicEffect111()
              else
                return cArrayCreateMagicEffect112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateMagicEffect113()
              elseif indices < 115
                return cArrayCreateMagicEffect114()
              elseif indices < 116
                return cArrayCreateMagicEffect115()
              else
                return cArrayCreateMagicEffect116()
              endif
            else
              if indices < 118
                return cArrayCreateMagicEffect117()
              elseif indices < 119
                return cArrayCreateMagicEffect118()
              elseif indices < 120
                return cArrayCreateMagicEffect119()
              else
                return cArrayCreateMagicEffect120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateMagicEffect121()
              elseif indices < 123
                return cArrayCreateMagicEffect122()
              elseif indices < 124
                return cArrayCreateMagicEffect123()
              else
                return cArrayCreateMagicEffect124()
              endif
            else
              if indices < 126
                return cArrayCreateMagicEffect125()
              elseif indices < 127
                return cArrayCreateMagicEffect126()
              elseif indices < 128
                return cArrayCreateMagicEffect127()
              else
                return cArrayCreateMagicEffect128()
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

MagicEffect[] function cArrayCreateMagicEffect001() global
  MagicEffect[] aArr = New MagicEffect[1]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect002() global
  MagicEffect[] aArr = New MagicEffect[2]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect003() global
  MagicEffect[] aArr = New MagicEffect[3]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect004() global
  MagicEffect[] aArr = New MagicEffect[4]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect005() global
  MagicEffect[] aArr = New MagicEffect[5]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect006() global
  MagicEffect[] aArr = New MagicEffect[6]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect007() global
  MagicEffect[] aArr = New MagicEffect[7]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect008() global
  MagicEffect[] aArr = New MagicEffect[8]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect009() global
  MagicEffect[] aArr = New MagicEffect[9]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect010() global
  MagicEffect[] aArr = New MagicEffect[10]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect011() global
  MagicEffect[] aArr = New MagicEffect[11]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect012() global
  MagicEffect[] aArr = New MagicEffect[12]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect013() global
  MagicEffect[] aArr = New MagicEffect[13]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect014() global
  MagicEffect[] aArr = New MagicEffect[14]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect015() global
  MagicEffect[] aArr = New MagicEffect[15]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect016() global
  MagicEffect[] aArr = New MagicEffect[16]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect017() global
  MagicEffect[] aArr = New MagicEffect[17]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect018() global
  MagicEffect[] aArr = New MagicEffect[18]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect019() global
  MagicEffect[] aArr = New MagicEffect[19]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect020() global
  MagicEffect[] aArr = New MagicEffect[20]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect021() global
  MagicEffect[] aArr = New MagicEffect[21]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect022() global
  MagicEffect[] aArr = New MagicEffect[22]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect023() global
  MagicEffect[] aArr = New MagicEffect[23]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect024() global
  MagicEffect[] aArr = New MagicEffect[24]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect025() global
  MagicEffect[] aArr = New MagicEffect[25]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect026() global
  MagicEffect[] aArr = New MagicEffect[26]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect027() global
  MagicEffect[] aArr = New MagicEffect[27]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect028() global
  MagicEffect[] aArr = New MagicEffect[28]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect029() global
  MagicEffect[] aArr = New MagicEffect[29]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect030() global
  MagicEffect[] aArr = New MagicEffect[30]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect031() global
  MagicEffect[] aArr = New MagicEffect[31]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect032() global
  MagicEffect[] aArr = New MagicEffect[32]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect033() global
  MagicEffect[] aArr = New MagicEffect[33]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect034() global
  MagicEffect[] aArr = New MagicEffect[34]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect035() global
  MagicEffect[] aArr = New MagicEffect[35]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect036() global
  MagicEffect[] aArr = New MagicEffect[36]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect037() global
  MagicEffect[] aArr = New MagicEffect[37]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect038() global
  MagicEffect[] aArr = New MagicEffect[38]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect039() global
  MagicEffect[] aArr = New MagicEffect[39]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect040() global
  MagicEffect[] aArr = New MagicEffect[40]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect041() global
  MagicEffect[] aArr = New MagicEffect[41]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect042() global
  MagicEffect[] aArr = New MagicEffect[42]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect043() global
  MagicEffect[] aArr = New MagicEffect[43]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect044() global
  MagicEffect[] aArr = New MagicEffect[44]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect045() global
  MagicEffect[] aArr = New MagicEffect[45]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect046() global
  MagicEffect[] aArr = New MagicEffect[46]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect047() global
  MagicEffect[] aArr = New MagicEffect[47]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect048() global
  MagicEffect[] aArr = New MagicEffect[48]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect049() global
  MagicEffect[] aArr = New MagicEffect[49]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect050() global
  MagicEffect[] aArr = New MagicEffect[50]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect051() global
  MagicEffect[] aArr = New MagicEffect[51]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect052() global
  MagicEffect[] aArr = New MagicEffect[52]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect053() global
  MagicEffect[] aArr = New MagicEffect[53]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect054() global
  MagicEffect[] aArr = New MagicEffect[54]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect055() global
  MagicEffect[] aArr = New MagicEffect[55]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect056() global
  MagicEffect[] aArr = New MagicEffect[56]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect057() global
  MagicEffect[] aArr = New MagicEffect[57]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect058() global
  MagicEffect[] aArr = New MagicEffect[58]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect059() global
  MagicEffect[] aArr = New MagicEffect[59]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect060() global
  MagicEffect[] aArr = New MagicEffect[60]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect061() global
  MagicEffect[] aArr = New MagicEffect[61]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect062() global
  MagicEffect[] aArr = New MagicEffect[62]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect063() global
  MagicEffect[] aArr = New MagicEffect[63]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect064() global
  MagicEffect[] aArr = New MagicEffect[64]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect065() global
  MagicEffect[] aArr = New MagicEffect[65]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect066() global
  MagicEffect[] aArr = New MagicEffect[66]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect067() global
  MagicEffect[] aArr = New MagicEffect[67]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect068() global
  MagicEffect[] aArr = New MagicEffect[68]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect069() global
  MagicEffect[] aArr = New MagicEffect[69]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect070() global
  MagicEffect[] aArr = New MagicEffect[70]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect071() global
  MagicEffect[] aArr = New MagicEffect[71]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect072() global
  MagicEffect[] aArr = New MagicEffect[72]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect073() global
  MagicEffect[] aArr = New MagicEffect[73]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect074() global
  MagicEffect[] aArr = New MagicEffect[74]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect075() global
  MagicEffect[] aArr = New MagicEffect[75]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect076() global
  MagicEffect[] aArr = New MagicEffect[76]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect077() global
  MagicEffect[] aArr = New MagicEffect[77]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect078() global
  MagicEffect[] aArr = New MagicEffect[78]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect079() global
  MagicEffect[] aArr = New MagicEffect[79]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect080() global
  MagicEffect[] aArr = New MagicEffect[80]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect081() global
  MagicEffect[] aArr = New MagicEffect[81]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect082() global
  MagicEffect[] aArr = New MagicEffect[82]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect083() global
  MagicEffect[] aArr = New MagicEffect[83]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect084() global
  MagicEffect[] aArr = New MagicEffect[84]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect085() global
  MagicEffect[] aArr = New MagicEffect[85]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect086() global
  MagicEffect[] aArr = New MagicEffect[86]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect087() global
  MagicEffect[] aArr = New MagicEffect[87]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect088() global
  MagicEffect[] aArr = New MagicEffect[88]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect089() global
  MagicEffect[] aArr = New MagicEffect[89]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect090() global
  MagicEffect[] aArr = New MagicEffect[90]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect091() global
  MagicEffect[] aArr = New MagicEffect[91]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect092() global
  MagicEffect[] aArr = New MagicEffect[92]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect093() global
  MagicEffect[] aArr = New MagicEffect[93]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect094() global
  MagicEffect[] aArr = New MagicEffect[94]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect095() global
  MagicEffect[] aArr = New MagicEffect[95]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect096() global
  MagicEffect[] aArr = New MagicEffect[96]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect097() global
  MagicEffect[] aArr = New MagicEffect[97]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect098() global
  MagicEffect[] aArr = New MagicEffect[98]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect099() global
  MagicEffect[] aArr = New MagicEffect[99]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect100() global
  MagicEffect[] aArr = New MagicEffect[100]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect101() global
  MagicEffect[] aArr = New MagicEffect[101]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect102() global
  MagicEffect[] aArr = New MagicEffect[102]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect103() global
  MagicEffect[] aArr = New MagicEffect[103]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect104() global
  MagicEffect[] aArr = New MagicEffect[104]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect105() global
  MagicEffect[] aArr = New MagicEffect[105]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect106() global
  MagicEffect[] aArr = New MagicEffect[106]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect107() global
  MagicEffect[] aArr = New MagicEffect[107]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect108() global
  MagicEffect[] aArr = New MagicEffect[108]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect109() global
  MagicEffect[] aArr = New MagicEffect[109]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect110() global
  MagicEffect[] aArr = New MagicEffect[110]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect111() global
  MagicEffect[] aArr = New MagicEffect[111]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect112() global
  MagicEffect[] aArr = New MagicEffect[112]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect113() global
  MagicEffect[] aArr = New MagicEffect[113]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect114() global
  MagicEffect[] aArr = New MagicEffect[114]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect115() global
  MagicEffect[] aArr = New MagicEffect[115]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect116() global
  MagicEffect[] aArr = New MagicEffect[116]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect117() global
  MagicEffect[] aArr = New MagicEffect[117]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect118() global
  MagicEffect[] aArr = New MagicEffect[118]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect119() global
  MagicEffect[] aArr = New MagicEffect[119]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect120() global
  MagicEffect[] aArr = New MagicEffect[120]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect121() global
  MagicEffect[] aArr = New MagicEffect[121]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect122() global
  MagicEffect[] aArr = New MagicEffect[122]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect123() global
  MagicEffect[] aArr = New MagicEffect[123]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect124() global
  MagicEffect[] aArr = New MagicEffect[124]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect125() global
  MagicEffect[] aArr = New MagicEffect[125]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect126() global
  MagicEffect[] aArr = New MagicEffect[126]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect127() global
  MagicEffect[] aArr = New MagicEffect[127]
  return aArr
endfunction
MagicEffect[] function cArrayCreateMagicEffect128() global
  MagicEffect[] aArr = New MagicEffect[128]
  return aArr
endfunction
