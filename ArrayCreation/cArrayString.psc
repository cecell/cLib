Scriptname cArrayString Hidden

Int function cGetVersion() global
  return 9001
endfunction

String[] function cArrayCreateString(Int indices, String filler = "", Bool useSKSE = TRUE, Bool outputTrace = TRUE, \
    Bool tryConsoleUtil = TRUE) global
  {Requirements: None, SKSE:Soft}
  String[] aArray
  if useSKSE && indices > 0
    aArray = Utility.CreateStringArray(indices, filler)
  elseif indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; tryConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateString()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayString::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateString001()
              elseif indices < 3
                aArray = cArrayCreateString002()
              elseif indices < 4
                aArray = cArrayCreateString003()
              else
                aArray = cArrayCreateString004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateString005()
              elseif indices < 7
                aArray = cArrayCreateString006()
              elseif indices < 8
                aArray = cArrayCreateString007()
              else
                aArray = cArrayCreateString008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateString009()
              elseif indices < 11
                aArray = cArrayCreateString010()
              elseif indices < 12
                aArray = cArrayCreateString011()
              else
                aArray = cArrayCreateString012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateString013()
              elseif indices < 15
                aArray = cArrayCreateString014()
              elseif indices < 16
                aArray = cArrayCreateString015()
              else
                aArray = cArrayCreateString016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateString017()
              elseif indices < 19
                aArray = cArrayCreateString018()
              elseif indices < 20
                aArray = cArrayCreateString019()
              else
                aArray = cArrayCreateString020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateString021()
              elseif indices < 23
                aArray = cArrayCreateString022()
              elseif indices < 24
                aArray = cArrayCreateString023()
              else
                aArray = cArrayCreateString024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateString025()
              elseif indices < 27
                aArray = cArrayCreateString026()
              elseif indices < 28
                aArray = cArrayCreateString027()
              else
                aArray = cArrayCreateString028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateString029()
              elseif indices < 31
                aArray = cArrayCreateString030()
              elseif indices < 32
                aArray = cArrayCreateString031()
              else
                aArray = cArrayCreateString032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateString033()
              elseif indices < 35
                aArray = cArrayCreateString034()
              elseif indices < 36
                aArray = cArrayCreateString035()
              else
                aArray = cArrayCreateString036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateString037()
              elseif indices < 39
                aArray = cArrayCreateString038()
              elseif indices < 40
                aArray = cArrayCreateString039()
              else
                aArray = cArrayCreateString040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateString041()
              elseif indices < 43
                aArray = cArrayCreateString042()
              elseif indices < 44
                aArray = cArrayCreateString043()
              else
                aArray = cArrayCreateString044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateString045()
              elseif indices < 47
                aArray = cArrayCreateString046()
              elseif indices < 48
                aArray = cArrayCreateString047()
              else
                aArray = cArrayCreateString048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateString049()
              elseif indices < 51
                aArray = cArrayCreateString050()
              elseif indices < 52
                aArray = cArrayCreateString051()
              else
                aArray = cArrayCreateString052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateString053()
              elseif indices < 55
                aArray = cArrayCreateString054()
              elseif indices < 56
                aArray = cArrayCreateString055()
              else
                aArray = cArrayCreateString056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateString057()
              elseif indices < 59
                aArray = cArrayCreateString058()
              elseif indices < 60
                aArray = cArrayCreateString059()
              else
                aArray = cArrayCreateString060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateString061()
              elseif indices < 63
                aArray = cArrayCreateString062()
              elseif indices < 64
                aArray = cArrayCreateString063()
              else
                aArray = cArrayCreateString064()
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
                aArray = cArrayCreateString065()
              elseif indices < 67
                aArray = cArrayCreateString066()
              elseif indices < 68
                aArray = cArrayCreateString067()
              else
                aArray = cArrayCreateString068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateString069()
              elseif indices < 71
                aArray = cArrayCreateString070()
              elseif indices < 72
                aArray = cArrayCreateString071()
              else
                aArray = cArrayCreateString072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateString073()
              elseif indices < 75
                aArray = cArrayCreateString074()
              elseif indices < 76
                aArray = cArrayCreateString075()
              else
                aArray = cArrayCreateString076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateString077()
              elseif indices < 79
                aArray = cArrayCreateString078()
              elseif indices < 80
                aArray = cArrayCreateString079()
              else
                aArray = cArrayCreateString080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateString081()
              elseif indices < 83
                aArray = cArrayCreateString082()
              elseif indices < 84
                aArray = cArrayCreateString083()
              else
                aArray = cArrayCreateString084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateString085()
              elseif indices < 87
                aArray = cArrayCreateString086()
              elseif indices < 88
                aArray = cArrayCreateString087()
              else
                aArray = cArrayCreateString088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateString089()
              elseif indices < 91
                aArray = cArrayCreateString090()
              elseif indices < 92
                aArray = cArrayCreateString091()
              else
                aArray = cArrayCreateString092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateString093()
              elseif indices < 95
                aArray = cArrayCreateString094()
              elseif indices < 96
                aArray = cArrayCreateString095()
              else
                aArray = cArrayCreateString096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateString097()
              elseif indices < 99
                aArray = cArrayCreateString098()
              elseif indices < 100
                aArray = cArrayCreateString099()
              else
                aArray = cArrayCreateString100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateString101()
              elseif indices < 103
                aArray = cArrayCreateString102()
              elseif indices < 104
                aArray = cArrayCreateString103()
              else
                aArray = cArrayCreateString104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateString105()
              elseif indices < 107
                aArray = cArrayCreateString106()
              elseif indices < 108
                aArray = cArrayCreateString107()
              else
                aArray = cArrayCreateString108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateString109()
              elseif indices < 111
                aArray = cArrayCreateString110()
              elseif indices < 112
                aArray = cArrayCreateString111()
              else
                aArray = cArrayCreateString112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateString113()
              elseif indices < 115
                aArray = cArrayCreateString114()
              elseif indices < 116
                aArray = cArrayCreateString115()
              else
                aArray = cArrayCreateString116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateString117()
              elseif indices < 119
                aArray = cArrayCreateString118()
              elseif indices < 120
                aArray = cArrayCreateString119()
              else
                aArray = cArrayCreateString120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateString121()
              elseif indices < 123
                aArray = cArrayCreateString122()
              elseif indices < 124
                aArray = cArrayCreateString123()
              else
                aArray = cArrayCreateString124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateString125()
              elseif indices < 127
                aArray = cArrayCreateString126()
              elseif indices < 128
                aArray = cArrayCreateString127()
              else
                aArray = cArrayCreateString128()
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

String[] function cArrayCreateString001() global
  String[] aArr = New String[1]
  return aArr
endfunction
String[] function cArrayCreateString002() global
  String[] aArr = New String[2]
  return aArr
endfunction
String[] function cArrayCreateString003() global
  String[] aArr = New String[3]
  return aArr
endfunction
String[] function cArrayCreateString004() global
  String[] aArr = New String[4]
  return aArr
endfunction
String[] function cArrayCreateString005() global
  String[] aArr = New String[5]
  return aArr
endfunction
String[] function cArrayCreateString006() global
  String[] aArr = New String[6]
  return aArr
endfunction
String[] function cArrayCreateString007() global
  String[] aArr = New String[7]
  return aArr
endfunction
String[] function cArrayCreateString008() global
  String[] aArr = New String[8]
  return aArr
endfunction
String[] function cArrayCreateString009() global
  String[] aArr = New String[9]
  return aArr
endfunction
String[] function cArrayCreateString010() global
  String[] aArr = New String[10]
  return aArr
endfunction
String[] function cArrayCreateString011() global
  String[] aArr = New String[11]
  return aArr
endfunction
String[] function cArrayCreateString012() global
  String[] aArr = New String[12]
  return aArr
endfunction
String[] function cArrayCreateString013() global
  String[] aArr = New String[13]
  return aArr
endfunction
String[] function cArrayCreateString014() global
  String[] aArr = New String[14]
  return aArr
endfunction
String[] function cArrayCreateString015() global
  String[] aArr = New String[15]
  return aArr
endfunction
String[] function cArrayCreateString016() global
  String[] aArr = New String[16]
  return aArr
endfunction
String[] function cArrayCreateString017() global
  String[] aArr = New String[17]
  return aArr
endfunction
String[] function cArrayCreateString018() global
  String[] aArr = New String[18]
  return aArr
endfunction
String[] function cArrayCreateString019() global
  String[] aArr = New String[19]
  return aArr
endfunction
String[] function cArrayCreateString020() global
  String[] aArr = New String[20]
  return aArr
endfunction
String[] function cArrayCreateString021() global
  String[] aArr = New String[21]
  return aArr
endfunction
String[] function cArrayCreateString022() global
  String[] aArr = New String[22]
  return aArr
endfunction
String[] function cArrayCreateString023() global
  String[] aArr = New String[23]
  return aArr
endfunction
String[] function cArrayCreateString024() global
  String[] aArr = New String[24]
  return aArr
endfunction
String[] function cArrayCreateString025() global
  String[] aArr = New String[25]
  return aArr
endfunction
String[] function cArrayCreateString026() global
  String[] aArr = New String[26]
  return aArr
endfunction
String[] function cArrayCreateString027() global
  String[] aArr = New String[27]
  return aArr
endfunction
String[] function cArrayCreateString028() global
  String[] aArr = New String[28]
  return aArr
endfunction
String[] function cArrayCreateString029() global
  String[] aArr = New String[29]
  return aArr
endfunction
String[] function cArrayCreateString030() global
  String[] aArr = New String[30]
  return aArr
endfunction
String[] function cArrayCreateString031() global
  String[] aArr = New String[31]
  return aArr
endfunction
String[] function cArrayCreateString032() global
  String[] aArr = New String[32]
  return aArr
endfunction
String[] function cArrayCreateString033() global
  String[] aArr = New String[33]
  return aArr
endfunction
String[] function cArrayCreateString034() global
  String[] aArr = New String[34]
  return aArr
endfunction
String[] function cArrayCreateString035() global
  String[] aArr = New String[35]
  return aArr
endfunction
String[] function cArrayCreateString036() global
  String[] aArr = New String[36]
  return aArr
endfunction
String[] function cArrayCreateString037() global
  String[] aArr = New String[37]
  return aArr
endfunction
String[] function cArrayCreateString038() global
  String[] aArr = New String[38]
  return aArr
endfunction
String[] function cArrayCreateString039() global
  String[] aArr = New String[39]
  return aArr
endfunction
String[] function cArrayCreateString040() global
  String[] aArr = New String[40]
  return aArr
endfunction
String[] function cArrayCreateString041() global
  String[] aArr = New String[41]
  return aArr
endfunction
String[] function cArrayCreateString042() global
  String[] aArr = New String[42]
  return aArr
endfunction
String[] function cArrayCreateString043() global
  String[] aArr = New String[43]
  return aArr
endfunction
String[] function cArrayCreateString044() global
  String[] aArr = New String[44]
  return aArr
endfunction
String[] function cArrayCreateString045() global
  String[] aArr = New String[45]
  return aArr
endfunction
String[] function cArrayCreateString046() global
  String[] aArr = New String[46]
  return aArr
endfunction
String[] function cArrayCreateString047() global
  String[] aArr = New String[47]
  return aArr
endfunction
String[] function cArrayCreateString048() global
  String[] aArr = New String[48]
  return aArr
endfunction
String[] function cArrayCreateString049() global
  String[] aArr = New String[49]
  return aArr
endfunction
String[] function cArrayCreateString050() global
  String[] aArr = New String[50]
  return aArr
endfunction
String[] function cArrayCreateString051() global
  String[] aArr = New String[51]
  return aArr
endfunction
String[] function cArrayCreateString052() global
  String[] aArr = New String[52]
  return aArr
endfunction
String[] function cArrayCreateString053() global
  String[] aArr = New String[53]
  return aArr
endfunction
String[] function cArrayCreateString054() global
  String[] aArr = New String[54]
  return aArr
endfunction
String[] function cArrayCreateString055() global
  String[] aArr = New String[55]
  return aArr
endfunction
String[] function cArrayCreateString056() global
  String[] aArr = New String[56]
  return aArr
endfunction
String[] function cArrayCreateString057() global
  String[] aArr = New String[57]
  return aArr
endfunction
String[] function cArrayCreateString058() global
  String[] aArr = New String[58]
  return aArr
endfunction
String[] function cArrayCreateString059() global
  String[] aArr = New String[59]
  return aArr
endfunction
String[] function cArrayCreateString060() global
  String[] aArr = New String[60]
  return aArr
endfunction
String[] function cArrayCreateString061() global
  String[] aArr = New String[61]
  return aArr
endfunction
String[] function cArrayCreateString062() global
  String[] aArr = New String[62]
  return aArr
endfunction
String[] function cArrayCreateString063() global
  String[] aArr = New String[63]
  return aArr
endfunction
String[] function cArrayCreateString064() global
  String[] aArr = New String[64]
  return aArr
endfunction
String[] function cArrayCreateString065() global
  String[] aArr = New String[65]
  return aArr
endfunction
String[] function cArrayCreateString066() global
  String[] aArr = New String[66]
  return aArr
endfunction
String[] function cArrayCreateString067() global
  String[] aArr = New String[67]
  return aArr
endfunction
String[] function cArrayCreateString068() global
  String[] aArr = New String[68]
  return aArr
endfunction
String[] function cArrayCreateString069() global
  String[] aArr = New String[69]
  return aArr
endfunction
String[] function cArrayCreateString070() global
  String[] aArr = New String[70]
  return aArr
endfunction
String[] function cArrayCreateString071() global
  String[] aArr = New String[71]
  return aArr
endfunction
String[] function cArrayCreateString072() global
  String[] aArr = New String[72]
  return aArr
endfunction
String[] function cArrayCreateString073() global
  String[] aArr = New String[73]
  return aArr
endfunction
String[] function cArrayCreateString074() global
  String[] aArr = New String[74]
  return aArr
endfunction
String[] function cArrayCreateString075() global
  String[] aArr = New String[75]
  return aArr
endfunction
String[] function cArrayCreateString076() global
  String[] aArr = New String[76]
  return aArr
endfunction
String[] function cArrayCreateString077() global
  String[] aArr = New String[77]
  return aArr
endfunction
String[] function cArrayCreateString078() global
  String[] aArr = New String[78]
  return aArr
endfunction
String[] function cArrayCreateString079() global
  String[] aArr = New String[79]
  return aArr
endfunction
String[] function cArrayCreateString080() global
  String[] aArr = New String[80]
  return aArr
endfunction
String[] function cArrayCreateString081() global
  String[] aArr = New String[81]
  return aArr
endfunction
String[] function cArrayCreateString082() global
  String[] aArr = New String[82]
  return aArr
endfunction
String[] function cArrayCreateString083() global
  String[] aArr = New String[83]
  return aArr
endfunction
String[] function cArrayCreateString084() global
  String[] aArr = New String[84]
  return aArr
endfunction
String[] function cArrayCreateString085() global
  String[] aArr = New String[85]
  return aArr
endfunction
String[] function cArrayCreateString086() global
  String[] aArr = New String[86]
  return aArr
endfunction
String[] function cArrayCreateString087() global
  String[] aArr = New String[87]
  return aArr
endfunction
String[] function cArrayCreateString088() global
  String[] aArr = New String[88]
  return aArr
endfunction
String[] function cArrayCreateString089() global
  String[] aArr = New String[89]
  return aArr
endfunction
String[] function cArrayCreateString090() global
  String[] aArr = New String[90]
  return aArr
endfunction
String[] function cArrayCreateString091() global
  String[] aArr = New String[91]
  return aArr
endfunction
String[] function cArrayCreateString092() global
  String[] aArr = New String[92]
  return aArr
endfunction
String[] function cArrayCreateString093() global
  String[] aArr = New String[93]
  return aArr
endfunction
String[] function cArrayCreateString094() global
  String[] aArr = New String[94]
  return aArr
endfunction
String[] function cArrayCreateString095() global
  String[] aArr = New String[95]
  return aArr
endfunction
String[] function cArrayCreateString096() global
  String[] aArr = New String[96]
  return aArr
endfunction
String[] function cArrayCreateString097() global
  String[] aArr = New String[97]
  return aArr
endfunction
String[] function cArrayCreateString098() global
  String[] aArr = New String[98]
  return aArr
endfunction
String[] function cArrayCreateString099() global
  String[] aArr = New String[99]
  return aArr
endfunction
String[] function cArrayCreateString100() global
  String[] aArr = New String[100]
  return aArr
endfunction
String[] function cArrayCreateString101() global
  String[] aArr = New String[101]
  return aArr
endfunction
String[] function cArrayCreateString102() global
  String[] aArr = New String[102]
  return aArr
endfunction
String[] function cArrayCreateString103() global
  String[] aArr = New String[103]
  return aArr
endfunction
String[] function cArrayCreateString104() global
  String[] aArr = New String[104]
  return aArr
endfunction
String[] function cArrayCreateString105() global
  String[] aArr = New String[105]
  return aArr
endfunction
String[] function cArrayCreateString106() global
  String[] aArr = New String[106]
  return aArr
endfunction
String[] function cArrayCreateString107() global
  String[] aArr = New String[107]
  return aArr
endfunction
String[] function cArrayCreateString108() global
  String[] aArr = New String[108]
  return aArr
endfunction
String[] function cArrayCreateString109() global
  String[] aArr = New String[109]
  return aArr
endfunction
String[] function cArrayCreateString110() global
  String[] aArr = New String[110]
  return aArr
endfunction
String[] function cArrayCreateString111() global
  String[] aArr = New String[111]
  return aArr
endfunction
String[] function cArrayCreateString112() global
  String[] aArr = New String[112]
  return aArr
endfunction
String[] function cArrayCreateString113() global
  String[] aArr = New String[113]
  return aArr
endfunction
String[] function cArrayCreateString114() global
  String[] aArr = New String[114]
  return aArr
endfunction
String[] function cArrayCreateString115() global
  String[] aArr = New String[115]
  return aArr
endfunction
String[] function cArrayCreateString116() global
  String[] aArr = New String[116]
  return aArr
endfunction
String[] function cArrayCreateString117() global
  String[] aArr = New String[117]
  return aArr
endfunction
String[] function cArrayCreateString118() global
  String[] aArr = New String[118]
  return aArr
endfunction
String[] function cArrayCreateString119() global
  String[] aArr = New String[119]
  return aArr
endfunction
String[] function cArrayCreateString120() global
  String[] aArr = New String[120]
  return aArr
endfunction
String[] function cArrayCreateString121() global
  String[] aArr = New String[121]
  return aArr
endfunction
String[] function cArrayCreateString122() global
  String[] aArr = New String[122]
  return aArr
endfunction
String[] function cArrayCreateString123() global
  String[] aArr = New String[123]
  return aArr
endfunction
String[] function cArrayCreateString124() global
  String[] aArr = New String[124]
  return aArr
endfunction
String[] function cArrayCreateString125() global
  String[] aArr = New String[125]
  return aArr
endfunction
String[] function cArrayCreateString126() global
  String[] aArr = New String[126]
  return aArr
endfunction
String[] function cArrayCreateString127() global
  String[] aArr = New String[127]
  return aArr
endfunction
String[] function cArrayCreateString128() global
  String[] aArr = New String[128]
  return aArr
endfunction
