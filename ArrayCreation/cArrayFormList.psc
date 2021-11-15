Scriptname cArrayFormlist Hidden

Int function cGetVersion() global
  return 9001
endfunction

Formlist[] function cArrayCreateFormlist(Int indices, Formlist filler = None, Bool outputTrace = TRUE, \
  Bool useConsoleUtil = TRUE) global
  {Requirements: None}
  Formlist[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; useConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateFormlist()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayFormlist::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateFormlist001()
              elseif indices < 3
                aArray = cArrayCreateFormlist002()
              elseif indices < 4
                aArray = cArrayCreateFormlist003()
              else
                aArray = cArrayCreateFormlist004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateFormlist005()
              elseif indices < 7
                aArray = cArrayCreateFormlist006()
              elseif indices < 8
                aArray = cArrayCreateFormlist007()
              else
                aArray = cArrayCreateFormlist008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateFormlist009()
              elseif indices < 11
                aArray = cArrayCreateFormlist010()
              elseif indices < 12
                aArray = cArrayCreateFormlist011()
              else
                aArray = cArrayCreateFormlist012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateFormlist013()
              elseif indices < 15
                aArray = cArrayCreateFormlist014()
              elseif indices < 16
                aArray = cArrayCreateFormlist015()
              else
                aArray = cArrayCreateFormlist016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateFormlist017()
              elseif indices < 19
                aArray = cArrayCreateFormlist018()
              elseif indices < 20
                aArray = cArrayCreateFormlist019()
              else
                aArray = cArrayCreateFormlist020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateFormlist021()
              elseif indices < 23
                aArray = cArrayCreateFormlist022()
              elseif indices < 24
                aArray = cArrayCreateFormlist023()
              else
                aArray = cArrayCreateFormlist024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateFormlist025()
              elseif indices < 27
                aArray = cArrayCreateFormlist026()
              elseif indices < 28
                aArray = cArrayCreateFormlist027()
              else
                aArray = cArrayCreateFormlist028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateFormlist029()
              elseif indices < 31
                aArray = cArrayCreateFormlist030()
              elseif indices < 32
                aArray = cArrayCreateFormlist031()
              else
                aArray = cArrayCreateFormlist032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateFormlist033()
              elseif indices < 35
                aArray = cArrayCreateFormlist034()
              elseif indices < 36
                aArray = cArrayCreateFormlist035()
              else
                aArray = cArrayCreateFormlist036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateFormlist037()
              elseif indices < 39
                aArray = cArrayCreateFormlist038()
              elseif indices < 40
                aArray = cArrayCreateFormlist039()
              else
                aArray = cArrayCreateFormlist040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateFormlist041()
              elseif indices < 43
                aArray = cArrayCreateFormlist042()
              elseif indices < 44
                aArray = cArrayCreateFormlist043()
              else
                aArray = cArrayCreateFormlist044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateFormlist045()
              elseif indices < 47
                aArray = cArrayCreateFormlist046()
              elseif indices < 48
                aArray = cArrayCreateFormlist047()
              else
                aArray = cArrayCreateFormlist048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateFormlist049()
              elseif indices < 51
                aArray = cArrayCreateFormlist050()
              elseif indices < 52
                aArray = cArrayCreateFormlist051()
              else
                aArray = cArrayCreateFormlist052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateFormlist053()
              elseif indices < 55
                aArray = cArrayCreateFormlist054()
              elseif indices < 56
                aArray = cArrayCreateFormlist055()
              else
                aArray = cArrayCreateFormlist056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateFormlist057()
              elseif indices < 59
                aArray = cArrayCreateFormlist058()
              elseif indices < 60
                aArray = cArrayCreateFormlist059()
              else
                aArray = cArrayCreateFormlist060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateFormlist061()
              elseif indices < 63
                aArray = cArrayCreateFormlist062()
              elseif indices < 64
                aArray = cArrayCreateFormlist063()
              else
                aArray = cArrayCreateFormlist064()
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
                aArray = cArrayCreateFormlist065()
              elseif indices < 67
                aArray = cArrayCreateFormlist066()
              elseif indices < 68
                aArray = cArrayCreateFormlist067()
              else
                aArray = cArrayCreateFormlist068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateFormlist069()
              elseif indices < 71
                aArray = cArrayCreateFormlist070()
              elseif indices < 72
                aArray = cArrayCreateFormlist071()
              else
                aArray = cArrayCreateFormlist072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateFormlist073()
              elseif indices < 75
                aArray = cArrayCreateFormlist074()
              elseif indices < 76
                aArray = cArrayCreateFormlist075()
              else
                aArray = cArrayCreateFormlist076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateFormlist077()
              elseif indices < 79
                aArray = cArrayCreateFormlist078()
              elseif indices < 80
                aArray = cArrayCreateFormlist079()
              else
                aArray = cArrayCreateFormlist080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateFormlist081()
              elseif indices < 83
                aArray = cArrayCreateFormlist082()
              elseif indices < 84
                aArray = cArrayCreateFormlist083()
              else
                aArray = cArrayCreateFormlist084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateFormlist085()
              elseif indices < 87
                aArray = cArrayCreateFormlist086()
              elseif indices < 88
                aArray = cArrayCreateFormlist087()
              else
                aArray = cArrayCreateFormlist088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateFormlist089()
              elseif indices < 91
                aArray = cArrayCreateFormlist090()
              elseif indices < 92
                aArray = cArrayCreateFormlist091()
              else
                aArray = cArrayCreateFormlist092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateFormlist093()
              elseif indices < 95
                aArray = cArrayCreateFormlist094()
              elseif indices < 96
                aArray = cArrayCreateFormlist095()
              else
                aArray = cArrayCreateFormlist096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateFormlist097()
              elseif indices < 99
                aArray = cArrayCreateFormlist098()
              elseif indices < 100
                aArray = cArrayCreateFormlist099()
              else
                aArray = cArrayCreateFormlist100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateFormlist101()
              elseif indices < 103
                aArray = cArrayCreateFormlist102()
              elseif indices < 104
                aArray = cArrayCreateFormlist103()
              else
                aArray = cArrayCreateFormlist104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateFormlist105()
              elseif indices < 107
                aArray = cArrayCreateFormlist106()
              elseif indices < 108
                aArray = cArrayCreateFormlist107()
              else
                aArray = cArrayCreateFormlist108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateFormlist109()
              elseif indices < 111
                aArray = cArrayCreateFormlist110()
              elseif indices < 112
                aArray = cArrayCreateFormlist111()
              else
                aArray = cArrayCreateFormlist112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateFormlist113()
              elseif indices < 115
                aArray = cArrayCreateFormlist114()
              elseif indices < 116
                aArray = cArrayCreateFormlist115()
              else
                aArray = cArrayCreateFormlist116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateFormlist117()
              elseif indices < 119
                aArray = cArrayCreateFormlist118()
              elseif indices < 120
                aArray = cArrayCreateFormlist119()
              else
                aArray = cArrayCreateFormlist120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateFormlist121()
              elseif indices < 123
                aArray = cArrayCreateFormlist122()
              elseif indices < 124
                aArray = cArrayCreateFormlist123()
              else
                aArray = cArrayCreateFormlist124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateFormlist125()
              elseif indices < 127
                aArray = cArrayCreateFormlist126()
              elseif indices < 128
                aArray = cArrayCreateFormlist127()
              else
                aArray = cArrayCreateFormlist128()
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

Formlist[] function cArrayCreateFormlist001() global
  Formlist[] aArr = New Formlist[1]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist002() global
  Formlist[] aArr = New Formlist[2]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist003() global
  Formlist[] aArr = New Formlist[3]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist004() global
  Formlist[] aArr = New Formlist[4]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist005() global
  Formlist[] aArr = New Formlist[5]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist006() global
  Formlist[] aArr = New Formlist[6]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist007() global
  Formlist[] aArr = New Formlist[7]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist008() global
  Formlist[] aArr = New Formlist[8]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist009() global
  Formlist[] aArr = New Formlist[9]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist010() global
  Formlist[] aArr = New Formlist[10]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist011() global
  Formlist[] aArr = New Formlist[11]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist012() global
  Formlist[] aArr = New Formlist[12]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist013() global
  Formlist[] aArr = New Formlist[13]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist014() global
  Formlist[] aArr = New Formlist[14]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist015() global
  Formlist[] aArr = New Formlist[15]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist016() global
  Formlist[] aArr = New Formlist[16]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist017() global
  Formlist[] aArr = New Formlist[17]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist018() global
  Formlist[] aArr = New Formlist[18]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist019() global
  Formlist[] aArr = New Formlist[19]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist020() global
  Formlist[] aArr = New Formlist[20]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist021() global
  Formlist[] aArr = New Formlist[21]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist022() global
  Formlist[] aArr = New Formlist[22]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist023() global
  Formlist[] aArr = New Formlist[23]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist024() global
  Formlist[] aArr = New Formlist[24]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist025() global
  Formlist[] aArr = New Formlist[25]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist026() global
  Formlist[] aArr = New Formlist[26]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist027() global
  Formlist[] aArr = New Formlist[27]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist028() global
  Formlist[] aArr = New Formlist[28]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist029() global
  Formlist[] aArr = New Formlist[29]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist030() global
  Formlist[] aArr = New Formlist[30]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist031() global
  Formlist[] aArr = New Formlist[31]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist032() global
  Formlist[] aArr = New Formlist[32]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist033() global
  Formlist[] aArr = New Formlist[33]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist034() global
  Formlist[] aArr = New Formlist[34]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist035() global
  Formlist[] aArr = New Formlist[35]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist036() global
  Formlist[] aArr = New Formlist[36]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist037() global
  Formlist[] aArr = New Formlist[37]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist038() global
  Formlist[] aArr = New Formlist[38]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist039() global
  Formlist[] aArr = New Formlist[39]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist040() global
  Formlist[] aArr = New Formlist[40]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist041() global
  Formlist[] aArr = New Formlist[41]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist042() global
  Formlist[] aArr = New Formlist[42]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist043() global
  Formlist[] aArr = New Formlist[43]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist044() global
  Formlist[] aArr = New Formlist[44]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist045() global
  Formlist[] aArr = New Formlist[45]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist046() global
  Formlist[] aArr = New Formlist[46]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist047() global
  Formlist[] aArr = New Formlist[47]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist048() global
  Formlist[] aArr = New Formlist[48]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist049() global
  Formlist[] aArr = New Formlist[49]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist050() global
  Formlist[] aArr = New Formlist[50]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist051() global
  Formlist[] aArr = New Formlist[51]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist052() global
  Formlist[] aArr = New Formlist[52]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist053() global
  Formlist[] aArr = New Formlist[53]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist054() global
  Formlist[] aArr = New Formlist[54]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist055() global
  Formlist[] aArr = New Formlist[55]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist056() global
  Formlist[] aArr = New Formlist[56]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist057() global
  Formlist[] aArr = New Formlist[57]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist058() global
  Formlist[] aArr = New Formlist[58]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist059() global
  Formlist[] aArr = New Formlist[59]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist060() global
  Formlist[] aArr = New Formlist[60]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist061() global
  Formlist[] aArr = New Formlist[61]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist062() global
  Formlist[] aArr = New Formlist[62]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist063() global
  Formlist[] aArr = New Formlist[63]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist064() global
  Formlist[] aArr = New Formlist[64]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist065() global
  Formlist[] aArr = New Formlist[65]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist066() global
  Formlist[] aArr = New Formlist[66]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist067() global
  Formlist[] aArr = New Formlist[67]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist068() global
  Formlist[] aArr = New Formlist[68]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist069() global
  Formlist[] aArr = New Formlist[69]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist070() global
  Formlist[] aArr = New Formlist[70]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist071() global
  Formlist[] aArr = New Formlist[71]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist072() global
  Formlist[] aArr = New Formlist[72]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist073() global
  Formlist[] aArr = New Formlist[73]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist074() global
  Formlist[] aArr = New Formlist[74]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist075() global
  Formlist[] aArr = New Formlist[75]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist076() global
  Formlist[] aArr = New Formlist[76]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist077() global
  Formlist[] aArr = New Formlist[77]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist078() global
  Formlist[] aArr = New Formlist[78]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist079() global
  Formlist[] aArr = New Formlist[79]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist080() global
  Formlist[] aArr = New Formlist[80]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist081() global
  Formlist[] aArr = New Formlist[81]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist082() global
  Formlist[] aArr = New Formlist[82]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist083() global
  Formlist[] aArr = New Formlist[83]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist084() global
  Formlist[] aArr = New Formlist[84]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist085() global
  Formlist[] aArr = New Formlist[85]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist086() global
  Formlist[] aArr = New Formlist[86]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist087() global
  Formlist[] aArr = New Formlist[87]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist088() global
  Formlist[] aArr = New Formlist[88]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist089() global
  Formlist[] aArr = New Formlist[89]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist090() global
  Formlist[] aArr = New Formlist[90]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist091() global
  Formlist[] aArr = New Formlist[91]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist092() global
  Formlist[] aArr = New Formlist[92]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist093() global
  Formlist[] aArr = New Formlist[93]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist094() global
  Formlist[] aArr = New Formlist[94]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist095() global
  Formlist[] aArr = New Formlist[95]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist096() global
  Formlist[] aArr = New Formlist[96]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist097() global
  Formlist[] aArr = New Formlist[97]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist098() global
  Formlist[] aArr = New Formlist[98]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist099() global
  Formlist[] aArr = New Formlist[99]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist100() global
  Formlist[] aArr = New Formlist[100]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist101() global
  Formlist[] aArr = New Formlist[101]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist102() global
  Formlist[] aArr = New Formlist[102]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist103() global
  Formlist[] aArr = New Formlist[103]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist104() global
  Formlist[] aArr = New Formlist[104]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist105() global
  Formlist[] aArr = New Formlist[105]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist106() global
  Formlist[] aArr = New Formlist[106]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist107() global
  Formlist[] aArr = New Formlist[107]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist108() global
  Formlist[] aArr = New Formlist[108]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist109() global
  Formlist[] aArr = New Formlist[109]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist110() global
  Formlist[] aArr = New Formlist[110]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist111() global
  Formlist[] aArr = New Formlist[111]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist112() global
  Formlist[] aArr = New Formlist[112]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist113() global
  Formlist[] aArr = New Formlist[113]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist114() global
  Formlist[] aArr = New Formlist[114]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist115() global
  Formlist[] aArr = New Formlist[115]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist116() global
  Formlist[] aArr = New Formlist[116]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist117() global
  Formlist[] aArr = New Formlist[117]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist118() global
  Formlist[] aArr = New Formlist[118]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist119() global
  Formlist[] aArr = New Formlist[119]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist120() global
  Formlist[] aArr = New Formlist[120]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist121() global
  Formlist[] aArr = New Formlist[121]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist122() global
  Formlist[] aArr = New Formlist[122]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist123() global
  Formlist[] aArr = New Formlist[123]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist124() global
  Formlist[] aArr = New Formlist[124]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist125() global
  Formlist[] aArr = New Formlist[125]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist126() global
  Formlist[] aArr = New Formlist[126]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist127() global
  Formlist[] aArr = New Formlist[127]
  return aArr
endfunction
Formlist[] function cArrayCreateFormlist128() global
  Formlist[] aArr = New Formlist[128]
  return aArr
endfunction
