Scriptname cArrayScroll Hidden


Scroll[] function cArrayCreateScroll(Int indices, Scroll filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  Scroll[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace Scrolls
    if outputTrace
      String msg = "cArrayCreateScroll()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayScroll::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateScroll001()
              elseif indices < 3
                return cArrayCreateScroll002()
              elseif indices < 4
                return cArrayCreateScroll003()
              else
                return cArrayCreateScroll004()
              endif
            else
              if indices < 6
                return cArrayCreateScroll005()
              elseif indices < 7
                return cArrayCreateScroll006()
              elseif indices < 8
                return cArrayCreateScroll007()
              else
                return cArrayCreateScroll008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateScroll009()
              elseif indices < 11
                return cArrayCreateScroll010()
              elseif indices < 12
                return cArrayCreateScroll011()
              else
                return cArrayCreateScroll012()
              endif
            else
              if indices < 14
                return cArrayCreateScroll013()
              elseif indices < 15
                return cArrayCreateScroll014()
              elseif indices < 16
                return cArrayCreateScroll015()
              else
                return cArrayCreateScroll016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateScroll017()
              elseif indices < 19
                return cArrayCreateScroll018()
              elseif indices < 20
                return cArrayCreateScroll019()
              else
                return cArrayCreateScroll020()
              endif
            else
              if indices < 22
                return cArrayCreateScroll021()
              elseif indices < 23
                return cArrayCreateScroll022()
              elseif indices < 24
                return cArrayCreateScroll023()
              else
                return cArrayCreateScroll024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateScroll025()
              elseif indices < 27
                return cArrayCreateScroll026()
              elseif indices < 28
                return cArrayCreateScroll027()
              else
                return cArrayCreateScroll028()
              endif
            else
              if indices < 30
                return cArrayCreateScroll029()
              elseif indices < 31
                return cArrayCreateScroll030()
              elseif indices < 32
                return cArrayCreateScroll031()
              else
                return cArrayCreateScroll032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateScroll033()
              elseif indices < 35
                return cArrayCreateScroll034()
              elseif indices < 36
                return cArrayCreateScroll035()
              else
                return cArrayCreateScroll036()
              endif
            else
              if indices < 38
                return cArrayCreateScroll037()
              elseif indices < 39
                return cArrayCreateScroll038()
              elseif indices < 40
                return cArrayCreateScroll039()
              else
                return cArrayCreateScroll040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateScroll041()
              elseif indices < 43
                return cArrayCreateScroll042()
              elseif indices < 44
                return cArrayCreateScroll043()
              else
                return cArrayCreateScroll044()
              endif
            else
              if indices < 46
                return cArrayCreateScroll045()
              elseif indices < 47
                return cArrayCreateScroll046()
              elseif indices < 48
                return cArrayCreateScroll047()
              else
                return cArrayCreateScroll048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateScroll049()
              elseif indices < 51
                return cArrayCreateScroll050()
              elseif indices < 52
                return cArrayCreateScroll051()
              else
                return cArrayCreateScroll052()
              endif
            else
              if indices < 54
                return cArrayCreateScroll053()
              elseif indices < 55
                return cArrayCreateScroll054()
              elseif indices < 56
                return cArrayCreateScroll055()
              else
                return cArrayCreateScroll056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateScroll057()
              elseif indices < 59
                return cArrayCreateScroll058()
              elseif indices < 60
                return cArrayCreateScroll059()
              else
                return cArrayCreateScroll060()
              endif
            else
              if indices < 62
                return cArrayCreateScroll061()
              elseif indices < 63
                return cArrayCreateScroll062()
              elseif indices < 64
                return cArrayCreateScroll063()
              else
                return cArrayCreateScroll064()
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
                return cArrayCreateScroll065()
              elseif indices < 67
                return cArrayCreateScroll066()
              elseif indices < 68
                return cArrayCreateScroll067()
              else
                return cArrayCreateScroll068()
              endif
            else
              if indices < 70
                return cArrayCreateScroll069()
              elseif indices < 71
                return cArrayCreateScroll070()
              elseif indices < 72
                return cArrayCreateScroll071()
              else
                return cArrayCreateScroll072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateScroll073()
              elseif indices < 75
                return cArrayCreateScroll074()
              elseif indices < 76
                return cArrayCreateScroll075()
              else
                return cArrayCreateScroll076()
              endif
            else
              if indices < 78
                return cArrayCreateScroll077()
              elseif indices < 79
                return cArrayCreateScroll078()
              elseif indices < 80
                return cArrayCreateScroll079()
              else
                return cArrayCreateScroll080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateScroll081()
              elseif indices < 83
                return cArrayCreateScroll082()
              elseif indices < 84
                return cArrayCreateScroll083()
              else
                return cArrayCreateScroll084()
              endif
            else
              if indices < 86
                return cArrayCreateScroll085()
              elseif indices < 87
                return cArrayCreateScroll086()
              elseif indices < 88
                return cArrayCreateScroll087()
              else
                return cArrayCreateScroll088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateScroll089()
              elseif indices < 91
                return cArrayCreateScroll090()
              elseif indices < 92
                return cArrayCreateScroll091()
              else
                return cArrayCreateScroll092()
              endif
            else
              if indices < 94
                return cArrayCreateScroll093()
              elseif indices < 95
                return cArrayCreateScroll094()
              elseif indices < 96
                return cArrayCreateScroll095()
              else
                return cArrayCreateScroll096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateScroll097()
              elseif indices < 99
                return cArrayCreateScroll098()
              elseif indices < 100
                return cArrayCreateScroll099()
              else
                return cArrayCreateScroll100()
              endif
            else
              if indices < 102
                return cArrayCreateScroll101()
              elseif indices < 103
                return cArrayCreateScroll102()
              elseif indices < 104
                return cArrayCreateScroll103()
              else
                return cArrayCreateScroll104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateScroll105()
              elseif indices < 107
                return cArrayCreateScroll106()
              elseif indices < 108
                return cArrayCreateScroll107()
              else
                return cArrayCreateScroll108()
              endif
            else
              if indices < 110
                return cArrayCreateScroll109()
              elseif indices < 111
                return cArrayCreateScroll110()
              elseif indices < 112
                return cArrayCreateScroll111()
              else
                return cArrayCreateScroll112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateScroll113()
              elseif indices < 115
                return cArrayCreateScroll114()
              elseif indices < 116
                return cArrayCreateScroll115()
              else
                return cArrayCreateScroll116()
              endif
            else
              if indices < 118
                return cArrayCreateScroll117()
              elseif indices < 119
                return cArrayCreateScroll118()
              elseif indices < 120
                return cArrayCreateScroll119()
              else
                return cArrayCreateScroll120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateScroll121()
              elseif indices < 123
                return cArrayCreateScroll122()
              elseif indices < 124
                return cArrayCreateScroll123()
              else
                return cArrayCreateScroll124()
              endif
            else
              if indices < 126
                return cArrayCreateScroll125()
              elseif indices < 127
                return cArrayCreateScroll126()
              elseif indices < 128
                return cArrayCreateScroll127()
              else
                return cArrayCreateScroll128()
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

Scroll[] function cArrayCreateScroll001() global
  Scroll[] aArr = New Scroll[1]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll002() global
  Scroll[] aArr = New Scroll[2]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll003() global
  Scroll[] aArr = New Scroll[3]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll004() global
  Scroll[] aArr = New Scroll[4]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll005() global
  Scroll[] aArr = New Scroll[5]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll006() global
  Scroll[] aArr = New Scroll[6]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll007() global
  Scroll[] aArr = New Scroll[7]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll008() global
  Scroll[] aArr = New Scroll[8]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll009() global
  Scroll[] aArr = New Scroll[9]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll010() global
  Scroll[] aArr = New Scroll[10]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll011() global
  Scroll[] aArr = New Scroll[11]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll012() global
  Scroll[] aArr = New Scroll[12]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll013() global
  Scroll[] aArr = New Scroll[13]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll014() global
  Scroll[] aArr = New Scroll[14]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll015() global
  Scroll[] aArr = New Scroll[15]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll016() global
  Scroll[] aArr = New Scroll[16]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll017() global
  Scroll[] aArr = New Scroll[17]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll018() global
  Scroll[] aArr = New Scroll[18]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll019() global
  Scroll[] aArr = New Scroll[19]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll020() global
  Scroll[] aArr = New Scroll[20]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll021() global
  Scroll[] aArr = New Scroll[21]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll022() global
  Scroll[] aArr = New Scroll[22]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll023() global
  Scroll[] aArr = New Scroll[23]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll024() global
  Scroll[] aArr = New Scroll[24]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll025() global
  Scroll[] aArr = New Scroll[25]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll026() global
  Scroll[] aArr = New Scroll[26]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll027() global
  Scroll[] aArr = New Scroll[27]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll028() global
  Scroll[] aArr = New Scroll[28]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll029() global
  Scroll[] aArr = New Scroll[29]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll030() global
  Scroll[] aArr = New Scroll[30]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll031() global
  Scroll[] aArr = New Scroll[31]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll032() global
  Scroll[] aArr = New Scroll[32]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll033() global
  Scroll[] aArr = New Scroll[33]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll034() global
  Scroll[] aArr = New Scroll[34]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll035() global
  Scroll[] aArr = New Scroll[35]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll036() global
  Scroll[] aArr = New Scroll[36]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll037() global
  Scroll[] aArr = New Scroll[37]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll038() global
  Scroll[] aArr = New Scroll[38]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll039() global
  Scroll[] aArr = New Scroll[39]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll040() global
  Scroll[] aArr = New Scroll[40]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll041() global
  Scroll[] aArr = New Scroll[41]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll042() global
  Scroll[] aArr = New Scroll[42]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll043() global
  Scroll[] aArr = New Scroll[43]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll044() global
  Scroll[] aArr = New Scroll[44]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll045() global
  Scroll[] aArr = New Scroll[45]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll046() global
  Scroll[] aArr = New Scroll[46]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll047() global
  Scroll[] aArr = New Scroll[47]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll048() global
  Scroll[] aArr = New Scroll[48]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll049() global
  Scroll[] aArr = New Scroll[49]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll050() global
  Scroll[] aArr = New Scroll[50]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll051() global
  Scroll[] aArr = New Scroll[51]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll052() global
  Scroll[] aArr = New Scroll[52]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll053() global
  Scroll[] aArr = New Scroll[53]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll054() global
  Scroll[] aArr = New Scroll[54]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll055() global
  Scroll[] aArr = New Scroll[55]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll056() global
  Scroll[] aArr = New Scroll[56]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll057() global
  Scroll[] aArr = New Scroll[57]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll058() global
  Scroll[] aArr = New Scroll[58]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll059() global
  Scroll[] aArr = New Scroll[59]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll060() global
  Scroll[] aArr = New Scroll[60]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll061() global
  Scroll[] aArr = New Scroll[61]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll062() global
  Scroll[] aArr = New Scroll[62]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll063() global
  Scroll[] aArr = New Scroll[63]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll064() global
  Scroll[] aArr = New Scroll[64]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll065() global
  Scroll[] aArr = New Scroll[65]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll066() global
  Scroll[] aArr = New Scroll[66]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll067() global
  Scroll[] aArr = New Scroll[67]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll068() global
  Scroll[] aArr = New Scroll[68]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll069() global
  Scroll[] aArr = New Scroll[69]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll070() global
  Scroll[] aArr = New Scroll[70]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll071() global
  Scroll[] aArr = New Scroll[71]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll072() global
  Scroll[] aArr = New Scroll[72]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll073() global
  Scroll[] aArr = New Scroll[73]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll074() global
  Scroll[] aArr = New Scroll[74]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll075() global
  Scroll[] aArr = New Scroll[75]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll076() global
  Scroll[] aArr = New Scroll[76]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll077() global
  Scroll[] aArr = New Scroll[77]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll078() global
  Scroll[] aArr = New Scroll[78]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll079() global
  Scroll[] aArr = New Scroll[79]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll080() global
  Scroll[] aArr = New Scroll[80]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll081() global
  Scroll[] aArr = New Scroll[81]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll082() global
  Scroll[] aArr = New Scroll[82]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll083() global
  Scroll[] aArr = New Scroll[83]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll084() global
  Scroll[] aArr = New Scroll[84]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll085() global
  Scroll[] aArr = New Scroll[85]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll086() global
  Scroll[] aArr = New Scroll[86]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll087() global
  Scroll[] aArr = New Scroll[87]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll088() global
  Scroll[] aArr = New Scroll[88]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll089() global
  Scroll[] aArr = New Scroll[89]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll090() global
  Scroll[] aArr = New Scroll[90]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll091() global
  Scroll[] aArr = New Scroll[91]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll092() global
  Scroll[] aArr = New Scroll[92]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll093() global
  Scroll[] aArr = New Scroll[93]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll094() global
  Scroll[] aArr = New Scroll[94]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll095() global
  Scroll[] aArr = New Scroll[95]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll096() global
  Scroll[] aArr = New Scroll[96]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll097() global
  Scroll[] aArr = New Scroll[97]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll098() global
  Scroll[] aArr = New Scroll[98]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll099() global
  Scroll[] aArr = New Scroll[99]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll100() global
  Scroll[] aArr = New Scroll[100]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll101() global
  Scroll[] aArr = New Scroll[101]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll102() global
  Scroll[] aArr = New Scroll[102]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll103() global
  Scroll[] aArr = New Scroll[103]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll104() global
  Scroll[] aArr = New Scroll[104]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll105() global
  Scroll[] aArr = New Scroll[105]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll106() global
  Scroll[] aArr = New Scroll[106]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll107() global
  Scroll[] aArr = New Scroll[107]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll108() global
  Scroll[] aArr = New Scroll[108]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll109() global
  Scroll[] aArr = New Scroll[109]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll110() global
  Scroll[] aArr = New Scroll[110]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll111() global
  Scroll[] aArr = New Scroll[111]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll112() global
  Scroll[] aArr = New Scroll[112]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll113() global
  Scroll[] aArr = New Scroll[113]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll114() global
  Scroll[] aArr = New Scroll[114]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll115() global
  Scroll[] aArr = New Scroll[115]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll116() global
  Scroll[] aArr = New Scroll[116]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll117() global
  Scroll[] aArr = New Scroll[117]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll118() global
  Scroll[] aArr = New Scroll[118]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll119() global
  Scroll[] aArr = New Scroll[119]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll120() global
  Scroll[] aArr = New Scroll[120]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll121() global
  Scroll[] aArr = New Scroll[121]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll122() global
  Scroll[] aArr = New Scroll[122]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll123() global
  Scroll[] aArr = New Scroll[123]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll124() global
  Scroll[] aArr = New Scroll[124]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll125() global
  Scroll[] aArr = New Scroll[125]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll126() global
  Scroll[] aArr = New Scroll[126]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll127() global
  Scroll[] aArr = New Scroll[127]
  return aArr
endfunction
Scroll[] function cArrayCreateScroll128() global
  Scroll[] aArr = New Scroll[128]
  return aArr
endfunction
