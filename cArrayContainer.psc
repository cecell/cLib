Scriptname cArrayContainer Hidden

Int function cGetVersion() global
  return 9001
endfunction

Container[] function cArrayCreateContainer(Int indices, Container filler = None, Bool outputTrace = TRUE, \
  Bool tryConsoleUtil = TRUE) global
  {Requirements: None}
  Container[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; tryConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateContainer()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayContainer::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateContainer001()
              elseif indices < 3
                aArray = cArrayCreateContainer002()
              elseif indices < 4
                aArray = cArrayCreateContainer003()
              else
                aArray = cArrayCreateContainer004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateContainer005()
              elseif indices < 7
                aArray = cArrayCreateContainer006()
              elseif indices < 8
                aArray = cArrayCreateContainer007()
              else
                aArray = cArrayCreateContainer008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateContainer009()
              elseif indices < 11
                aArray = cArrayCreateContainer010()
              elseif indices < 12
                aArray = cArrayCreateContainer011()
              else
                aArray = cArrayCreateContainer012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateContainer013()
              elseif indices < 15
                aArray = cArrayCreateContainer014()
              elseif indices < 16
                aArray = cArrayCreateContainer015()
              else
                aArray = cArrayCreateContainer016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateContainer017()
              elseif indices < 19
                aArray = cArrayCreateContainer018()
              elseif indices < 20
                aArray = cArrayCreateContainer019()
              else
                aArray = cArrayCreateContainer020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateContainer021()
              elseif indices < 23
                aArray = cArrayCreateContainer022()
              elseif indices < 24
                aArray = cArrayCreateContainer023()
              else
                aArray = cArrayCreateContainer024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateContainer025()
              elseif indices < 27
                aArray = cArrayCreateContainer026()
              elseif indices < 28
                aArray = cArrayCreateContainer027()
              else
                aArray = cArrayCreateContainer028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateContainer029()
              elseif indices < 31
                aArray = cArrayCreateContainer030()
              elseif indices < 32
                aArray = cArrayCreateContainer031()
              else
                aArray = cArrayCreateContainer032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateContainer033()
              elseif indices < 35
                aArray = cArrayCreateContainer034()
              elseif indices < 36
                aArray = cArrayCreateContainer035()
              else
                aArray = cArrayCreateContainer036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateContainer037()
              elseif indices < 39
                aArray = cArrayCreateContainer038()
              elseif indices < 40
                aArray = cArrayCreateContainer039()
              else
                aArray = cArrayCreateContainer040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateContainer041()
              elseif indices < 43
                aArray = cArrayCreateContainer042()
              elseif indices < 44
                aArray = cArrayCreateContainer043()
              else
                aArray = cArrayCreateContainer044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateContainer045()
              elseif indices < 47
                aArray = cArrayCreateContainer046()
              elseif indices < 48
                aArray = cArrayCreateContainer047()
              else
                aArray = cArrayCreateContainer048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateContainer049()
              elseif indices < 51
                aArray = cArrayCreateContainer050()
              elseif indices < 52
                aArray = cArrayCreateContainer051()
              else
                aArray = cArrayCreateContainer052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateContainer053()
              elseif indices < 55
                aArray = cArrayCreateContainer054()
              elseif indices < 56
                aArray = cArrayCreateContainer055()
              else
                aArray = cArrayCreateContainer056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateContainer057()
              elseif indices < 59
                aArray = cArrayCreateContainer058()
              elseif indices < 60
                aArray = cArrayCreateContainer059()
              else
                aArray = cArrayCreateContainer060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateContainer061()
              elseif indices < 63
                aArray = cArrayCreateContainer062()
              elseif indices < 64
                aArray = cArrayCreateContainer063()
              else
                aArray = cArrayCreateContainer064()
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
                aArray = cArrayCreateContainer065()
              elseif indices < 67
                aArray = cArrayCreateContainer066()
              elseif indices < 68
                aArray = cArrayCreateContainer067()
              else
                aArray = cArrayCreateContainer068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateContainer069()
              elseif indices < 71
                aArray = cArrayCreateContainer070()
              elseif indices < 72
                aArray = cArrayCreateContainer071()
              else
                aArray = cArrayCreateContainer072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateContainer073()
              elseif indices < 75
                aArray = cArrayCreateContainer074()
              elseif indices < 76
                aArray = cArrayCreateContainer075()
              else
                aArray = cArrayCreateContainer076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateContainer077()
              elseif indices < 79
                aArray = cArrayCreateContainer078()
              elseif indices < 80
                aArray = cArrayCreateContainer079()
              else
                aArray = cArrayCreateContainer080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateContainer081()
              elseif indices < 83
                aArray = cArrayCreateContainer082()
              elseif indices < 84
                aArray = cArrayCreateContainer083()
              else
                aArray = cArrayCreateContainer084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateContainer085()
              elseif indices < 87
                aArray = cArrayCreateContainer086()
              elseif indices < 88
                aArray = cArrayCreateContainer087()
              else
                aArray = cArrayCreateContainer088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateContainer089()
              elseif indices < 91
                aArray = cArrayCreateContainer090()
              elseif indices < 92
                aArray = cArrayCreateContainer091()
              else
                aArray = cArrayCreateContainer092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateContainer093()
              elseif indices < 95
                aArray = cArrayCreateContainer094()
              elseif indices < 96
                aArray = cArrayCreateContainer095()
              else
                aArray = cArrayCreateContainer096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateContainer097()
              elseif indices < 99
                aArray = cArrayCreateContainer098()
              elseif indices < 100
                aArray = cArrayCreateContainer099()
              else
                aArray = cArrayCreateContainer100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateContainer101()
              elseif indices < 103
                aArray = cArrayCreateContainer102()
              elseif indices < 104
                aArray = cArrayCreateContainer103()
              else
                aArray = cArrayCreateContainer104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateContainer105()
              elseif indices < 107
                aArray = cArrayCreateContainer106()
              elseif indices < 108
                aArray = cArrayCreateContainer107()
              else
                aArray = cArrayCreateContainer108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateContainer109()
              elseif indices < 111
                aArray = cArrayCreateContainer110()
              elseif indices < 112
                aArray = cArrayCreateContainer111()
              else
                aArray = cArrayCreateContainer112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateContainer113()
              elseif indices < 115
                aArray = cArrayCreateContainer114()
              elseif indices < 116
                aArray = cArrayCreateContainer115()
              else
                aArray = cArrayCreateContainer116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateContainer117()
              elseif indices < 119
                aArray = cArrayCreateContainer118()
              elseif indices < 120
                aArray = cArrayCreateContainer119()
              else
                aArray = cArrayCreateContainer120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateContainer121()
              elseif indices < 123
                aArray = cArrayCreateContainer122()
              elseif indices < 124
                aArray = cArrayCreateContainer123()
              else
                aArray = cArrayCreateContainer124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateContainer125()
              elseif indices < 127
                aArray = cArrayCreateContainer126()
              elseif indices < 128
                aArray = cArrayCreateContainer127()
              else
                aArray = cArrayCreateContainer128()
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

Container[] function cArrayCreateContainer001() global
  Container[] aArr = New Container[1]
  return aArr
endfunction
Container[] function cArrayCreateContainer002() global
  Container[] aArr = New Container[2]
  return aArr
endfunction
Container[] function cArrayCreateContainer003() global
  Container[] aArr = New Container[3]
  return aArr
endfunction
Container[] function cArrayCreateContainer004() global
  Container[] aArr = New Container[4]
  return aArr
endfunction
Container[] function cArrayCreateContainer005() global
  Container[] aArr = New Container[5]
  return aArr
endfunction
Container[] function cArrayCreateContainer006() global
  Container[] aArr = New Container[6]
  return aArr
endfunction
Container[] function cArrayCreateContainer007() global
  Container[] aArr = New Container[7]
  return aArr
endfunction
Container[] function cArrayCreateContainer008() global
  Container[] aArr = New Container[8]
  return aArr
endfunction
Container[] function cArrayCreateContainer009() global
  Container[] aArr = New Container[9]
  return aArr
endfunction
Container[] function cArrayCreateContainer010() global
  Container[] aArr = New Container[10]
  return aArr
endfunction
Container[] function cArrayCreateContainer011() global
  Container[] aArr = New Container[11]
  return aArr
endfunction
Container[] function cArrayCreateContainer012() global
  Container[] aArr = New Container[12]
  return aArr
endfunction
Container[] function cArrayCreateContainer013() global
  Container[] aArr = New Container[13]
  return aArr
endfunction
Container[] function cArrayCreateContainer014() global
  Container[] aArr = New Container[14]
  return aArr
endfunction
Container[] function cArrayCreateContainer015() global
  Container[] aArr = New Container[15]
  return aArr
endfunction
Container[] function cArrayCreateContainer016() global
  Container[] aArr = New Container[16]
  return aArr
endfunction
Container[] function cArrayCreateContainer017() global
  Container[] aArr = New Container[17]
  return aArr
endfunction
Container[] function cArrayCreateContainer018() global
  Container[] aArr = New Container[18]
  return aArr
endfunction
Container[] function cArrayCreateContainer019() global
  Container[] aArr = New Container[19]
  return aArr
endfunction
Container[] function cArrayCreateContainer020() global
  Container[] aArr = New Container[20]
  return aArr
endfunction
Container[] function cArrayCreateContainer021() global
  Container[] aArr = New Container[21]
  return aArr
endfunction
Container[] function cArrayCreateContainer022() global
  Container[] aArr = New Container[22]
  return aArr
endfunction
Container[] function cArrayCreateContainer023() global
  Container[] aArr = New Container[23]
  return aArr
endfunction
Container[] function cArrayCreateContainer024() global
  Container[] aArr = New Container[24]
  return aArr
endfunction
Container[] function cArrayCreateContainer025() global
  Container[] aArr = New Container[25]
  return aArr
endfunction
Container[] function cArrayCreateContainer026() global
  Container[] aArr = New Container[26]
  return aArr
endfunction
Container[] function cArrayCreateContainer027() global
  Container[] aArr = New Container[27]
  return aArr
endfunction
Container[] function cArrayCreateContainer028() global
  Container[] aArr = New Container[28]
  return aArr
endfunction
Container[] function cArrayCreateContainer029() global
  Container[] aArr = New Container[29]
  return aArr
endfunction
Container[] function cArrayCreateContainer030() global
  Container[] aArr = New Container[30]
  return aArr
endfunction
Container[] function cArrayCreateContainer031() global
  Container[] aArr = New Container[31]
  return aArr
endfunction
Container[] function cArrayCreateContainer032() global
  Container[] aArr = New Container[32]
  return aArr
endfunction
Container[] function cArrayCreateContainer033() global
  Container[] aArr = New Container[33]
  return aArr
endfunction
Container[] function cArrayCreateContainer034() global
  Container[] aArr = New Container[34]
  return aArr
endfunction
Container[] function cArrayCreateContainer035() global
  Container[] aArr = New Container[35]
  return aArr
endfunction
Container[] function cArrayCreateContainer036() global
  Container[] aArr = New Container[36]
  return aArr
endfunction
Container[] function cArrayCreateContainer037() global
  Container[] aArr = New Container[37]
  return aArr
endfunction
Container[] function cArrayCreateContainer038() global
  Container[] aArr = New Container[38]
  return aArr
endfunction
Container[] function cArrayCreateContainer039() global
  Container[] aArr = New Container[39]
  return aArr
endfunction
Container[] function cArrayCreateContainer040() global
  Container[] aArr = New Container[40]
  return aArr
endfunction
Container[] function cArrayCreateContainer041() global
  Container[] aArr = New Container[41]
  return aArr
endfunction
Container[] function cArrayCreateContainer042() global
  Container[] aArr = New Container[42]
  return aArr
endfunction
Container[] function cArrayCreateContainer043() global
  Container[] aArr = New Container[43]
  return aArr
endfunction
Container[] function cArrayCreateContainer044() global
  Container[] aArr = New Container[44]
  return aArr
endfunction
Container[] function cArrayCreateContainer045() global
  Container[] aArr = New Container[45]
  return aArr
endfunction
Container[] function cArrayCreateContainer046() global
  Container[] aArr = New Container[46]
  return aArr
endfunction
Container[] function cArrayCreateContainer047() global
  Container[] aArr = New Container[47]
  return aArr
endfunction
Container[] function cArrayCreateContainer048() global
  Container[] aArr = New Container[48]
  return aArr
endfunction
Container[] function cArrayCreateContainer049() global
  Container[] aArr = New Container[49]
  return aArr
endfunction
Container[] function cArrayCreateContainer050() global
  Container[] aArr = New Container[50]
  return aArr
endfunction
Container[] function cArrayCreateContainer051() global
  Container[] aArr = New Container[51]
  return aArr
endfunction
Container[] function cArrayCreateContainer052() global
  Container[] aArr = New Container[52]
  return aArr
endfunction
Container[] function cArrayCreateContainer053() global
  Container[] aArr = New Container[53]
  return aArr
endfunction
Container[] function cArrayCreateContainer054() global
  Container[] aArr = New Container[54]
  return aArr
endfunction
Container[] function cArrayCreateContainer055() global
  Container[] aArr = New Container[55]
  return aArr
endfunction
Container[] function cArrayCreateContainer056() global
  Container[] aArr = New Container[56]
  return aArr
endfunction
Container[] function cArrayCreateContainer057() global
  Container[] aArr = New Container[57]
  return aArr
endfunction
Container[] function cArrayCreateContainer058() global
  Container[] aArr = New Container[58]
  return aArr
endfunction
Container[] function cArrayCreateContainer059() global
  Container[] aArr = New Container[59]
  return aArr
endfunction
Container[] function cArrayCreateContainer060() global
  Container[] aArr = New Container[60]
  return aArr
endfunction
Container[] function cArrayCreateContainer061() global
  Container[] aArr = New Container[61]
  return aArr
endfunction
Container[] function cArrayCreateContainer062() global
  Container[] aArr = New Container[62]
  return aArr
endfunction
Container[] function cArrayCreateContainer063() global
  Container[] aArr = New Container[63]
  return aArr
endfunction
Container[] function cArrayCreateContainer064() global
  Container[] aArr = New Container[64]
  return aArr
endfunction
Container[] function cArrayCreateContainer065() global
  Container[] aArr = New Container[65]
  return aArr
endfunction
Container[] function cArrayCreateContainer066() global
  Container[] aArr = New Container[66]
  return aArr
endfunction
Container[] function cArrayCreateContainer067() global
  Container[] aArr = New Container[67]
  return aArr
endfunction
Container[] function cArrayCreateContainer068() global
  Container[] aArr = New Container[68]
  return aArr
endfunction
Container[] function cArrayCreateContainer069() global
  Container[] aArr = New Container[69]
  return aArr
endfunction
Container[] function cArrayCreateContainer070() global
  Container[] aArr = New Container[70]
  return aArr
endfunction
Container[] function cArrayCreateContainer071() global
  Container[] aArr = New Container[71]
  return aArr
endfunction
Container[] function cArrayCreateContainer072() global
  Container[] aArr = New Container[72]
  return aArr
endfunction
Container[] function cArrayCreateContainer073() global
  Container[] aArr = New Container[73]
  return aArr
endfunction
Container[] function cArrayCreateContainer074() global
  Container[] aArr = New Container[74]
  return aArr
endfunction
Container[] function cArrayCreateContainer075() global
  Container[] aArr = New Container[75]
  return aArr
endfunction
Container[] function cArrayCreateContainer076() global
  Container[] aArr = New Container[76]
  return aArr
endfunction
Container[] function cArrayCreateContainer077() global
  Container[] aArr = New Container[77]
  return aArr
endfunction
Container[] function cArrayCreateContainer078() global
  Container[] aArr = New Container[78]
  return aArr
endfunction
Container[] function cArrayCreateContainer079() global
  Container[] aArr = New Container[79]
  return aArr
endfunction
Container[] function cArrayCreateContainer080() global
  Container[] aArr = New Container[80]
  return aArr
endfunction
Container[] function cArrayCreateContainer081() global
  Container[] aArr = New Container[81]
  return aArr
endfunction
Container[] function cArrayCreateContainer082() global
  Container[] aArr = New Container[82]
  return aArr
endfunction
Container[] function cArrayCreateContainer083() global
  Container[] aArr = New Container[83]
  return aArr
endfunction
Container[] function cArrayCreateContainer084() global
  Container[] aArr = New Container[84]
  return aArr
endfunction
Container[] function cArrayCreateContainer085() global
  Container[] aArr = New Container[85]
  return aArr
endfunction
Container[] function cArrayCreateContainer086() global
  Container[] aArr = New Container[86]
  return aArr
endfunction
Container[] function cArrayCreateContainer087() global
  Container[] aArr = New Container[87]
  return aArr
endfunction
Container[] function cArrayCreateContainer088() global
  Container[] aArr = New Container[88]
  return aArr
endfunction
Container[] function cArrayCreateContainer089() global
  Container[] aArr = New Container[89]
  return aArr
endfunction
Container[] function cArrayCreateContainer090() global
  Container[] aArr = New Container[90]
  return aArr
endfunction
Container[] function cArrayCreateContainer091() global
  Container[] aArr = New Container[91]
  return aArr
endfunction
Container[] function cArrayCreateContainer092() global
  Container[] aArr = New Container[92]
  return aArr
endfunction
Container[] function cArrayCreateContainer093() global
  Container[] aArr = New Container[93]
  return aArr
endfunction
Container[] function cArrayCreateContainer094() global
  Container[] aArr = New Container[94]
  return aArr
endfunction
Container[] function cArrayCreateContainer095() global
  Container[] aArr = New Container[95]
  return aArr
endfunction
Container[] function cArrayCreateContainer096() global
  Container[] aArr = New Container[96]
  return aArr
endfunction
Container[] function cArrayCreateContainer097() global
  Container[] aArr = New Container[97]
  return aArr
endfunction
Container[] function cArrayCreateContainer098() global
  Container[] aArr = New Container[98]
  return aArr
endfunction
Container[] function cArrayCreateContainer099() global
  Container[] aArr = New Container[99]
  return aArr
endfunction
Container[] function cArrayCreateContainer100() global
  Container[] aArr = New Container[100]
  return aArr
endfunction
Container[] function cArrayCreateContainer101() global
  Container[] aArr = New Container[101]
  return aArr
endfunction
Container[] function cArrayCreateContainer102() global
  Container[] aArr = New Container[102]
  return aArr
endfunction
Container[] function cArrayCreateContainer103() global
  Container[] aArr = New Container[103]
  return aArr
endfunction
Container[] function cArrayCreateContainer104() global
  Container[] aArr = New Container[104]
  return aArr
endfunction
Container[] function cArrayCreateContainer105() global
  Container[] aArr = New Container[105]
  return aArr
endfunction
Container[] function cArrayCreateContainer106() global
  Container[] aArr = New Container[106]
  return aArr
endfunction
Container[] function cArrayCreateContainer107() global
  Container[] aArr = New Container[107]
  return aArr
endfunction
Container[] function cArrayCreateContainer108() global
  Container[] aArr = New Container[108]
  return aArr
endfunction
Container[] function cArrayCreateContainer109() global
  Container[] aArr = New Container[109]
  return aArr
endfunction
Container[] function cArrayCreateContainer110() global
  Container[] aArr = New Container[110]
  return aArr
endfunction
Container[] function cArrayCreateContainer111() global
  Container[] aArr = New Container[111]
  return aArr
endfunction
Container[] function cArrayCreateContainer112() global
  Container[] aArr = New Container[112]
  return aArr
endfunction
Container[] function cArrayCreateContainer113() global
  Container[] aArr = New Container[113]
  return aArr
endfunction
Container[] function cArrayCreateContainer114() global
  Container[] aArr = New Container[114]
  return aArr
endfunction
Container[] function cArrayCreateContainer115() global
  Container[] aArr = New Container[115]
  return aArr
endfunction
Container[] function cArrayCreateContainer116() global
  Container[] aArr = New Container[116]
  return aArr
endfunction
Container[] function cArrayCreateContainer117() global
  Container[] aArr = New Container[117]
  return aArr
endfunction
Container[] function cArrayCreateContainer118() global
  Container[] aArr = New Container[118]
  return aArr
endfunction
Container[] function cArrayCreateContainer119() global
  Container[] aArr = New Container[119]
  return aArr
endfunction
Container[] function cArrayCreateContainer120() global
  Container[] aArr = New Container[120]
  return aArr
endfunction
Container[] function cArrayCreateContainer121() global
  Container[] aArr = New Container[121]
  return aArr
endfunction
Container[] function cArrayCreateContainer122() global
  Container[] aArr = New Container[122]
  return aArr
endfunction
Container[] function cArrayCreateContainer123() global
  Container[] aArr = New Container[123]
  return aArr
endfunction
Container[] function cArrayCreateContainer124() global
  Container[] aArr = New Container[124]
  return aArr
endfunction
Container[] function cArrayCreateContainer125() global
  Container[] aArr = New Container[125]
  return aArr
endfunction
Container[] function cArrayCreateContainer126() global
  Container[] aArr = New Container[126]
  return aArr
endfunction
Container[] function cArrayCreateContainer127() global
  Container[] aArr = New Container[127]
  return aArr
endfunction
Container[] function cArrayCreateContainer128() global
  Container[] aArr = New Container[128]
  return aArr
endfunction
