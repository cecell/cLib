Scriptname cArrayLocation Hidden

Int function cGetVersion() global
  return 9001
endfunction

Location[] function cArrayCreateLocation(Int indices, Location filler = None, Bool outputTrace = TRUE, \
  Bool tryConsoleUtil = TRUE) global
  {Requirements: None}
  Location[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; tryConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateLocation()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayLocation::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateLocation001()
              elseif indices < 3
                aArray = cArrayCreateLocation002()
              elseif indices < 4
                aArray = cArrayCreateLocation003()
              else
                aArray = cArrayCreateLocation004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateLocation005()
              elseif indices < 7
                aArray = cArrayCreateLocation006()
              elseif indices < 8
                aArray = cArrayCreateLocation007()
              else
                aArray = cArrayCreateLocation008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateLocation009()
              elseif indices < 11
                aArray = cArrayCreateLocation010()
              elseif indices < 12
                aArray = cArrayCreateLocation011()
              else
                aArray = cArrayCreateLocation012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateLocation013()
              elseif indices < 15
                aArray = cArrayCreateLocation014()
              elseif indices < 16
                aArray = cArrayCreateLocation015()
              else
                aArray = cArrayCreateLocation016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateLocation017()
              elseif indices < 19
                aArray = cArrayCreateLocation018()
              elseif indices < 20
                aArray = cArrayCreateLocation019()
              else
                aArray = cArrayCreateLocation020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateLocation021()
              elseif indices < 23
                aArray = cArrayCreateLocation022()
              elseif indices < 24
                aArray = cArrayCreateLocation023()
              else
                aArray = cArrayCreateLocation024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateLocation025()
              elseif indices < 27
                aArray = cArrayCreateLocation026()
              elseif indices < 28
                aArray = cArrayCreateLocation027()
              else
                aArray = cArrayCreateLocation028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateLocation029()
              elseif indices < 31
                aArray = cArrayCreateLocation030()
              elseif indices < 32
                aArray = cArrayCreateLocation031()
              else
                aArray = cArrayCreateLocation032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateLocation033()
              elseif indices < 35
                aArray = cArrayCreateLocation034()
              elseif indices < 36
                aArray = cArrayCreateLocation035()
              else
                aArray = cArrayCreateLocation036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateLocation037()
              elseif indices < 39
                aArray = cArrayCreateLocation038()
              elseif indices < 40
                aArray = cArrayCreateLocation039()
              else
                aArray = cArrayCreateLocation040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateLocation041()
              elseif indices < 43
                aArray = cArrayCreateLocation042()
              elseif indices < 44
                aArray = cArrayCreateLocation043()
              else
                aArray = cArrayCreateLocation044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateLocation045()
              elseif indices < 47
                aArray = cArrayCreateLocation046()
              elseif indices < 48
                aArray = cArrayCreateLocation047()
              else
                aArray = cArrayCreateLocation048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateLocation049()
              elseif indices < 51
                aArray = cArrayCreateLocation050()
              elseif indices < 52
                aArray = cArrayCreateLocation051()
              else
                aArray = cArrayCreateLocation052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateLocation053()
              elseif indices < 55
                aArray = cArrayCreateLocation054()
              elseif indices < 56
                aArray = cArrayCreateLocation055()
              else
                aArray = cArrayCreateLocation056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateLocation057()
              elseif indices < 59
                aArray = cArrayCreateLocation058()
              elseif indices < 60
                aArray = cArrayCreateLocation059()
              else
                aArray = cArrayCreateLocation060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateLocation061()
              elseif indices < 63
                aArray = cArrayCreateLocation062()
              elseif indices < 64
                aArray = cArrayCreateLocation063()
              else
                aArray = cArrayCreateLocation064()
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
                aArray = cArrayCreateLocation065()
              elseif indices < 67
                aArray = cArrayCreateLocation066()
              elseif indices < 68
                aArray = cArrayCreateLocation067()
              else
                aArray = cArrayCreateLocation068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateLocation069()
              elseif indices < 71
                aArray = cArrayCreateLocation070()
              elseif indices < 72
                aArray = cArrayCreateLocation071()
              else
                aArray = cArrayCreateLocation072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateLocation073()
              elseif indices < 75
                aArray = cArrayCreateLocation074()
              elseif indices < 76
                aArray = cArrayCreateLocation075()
              else
                aArray = cArrayCreateLocation076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateLocation077()
              elseif indices < 79
                aArray = cArrayCreateLocation078()
              elseif indices < 80
                aArray = cArrayCreateLocation079()
              else
                aArray = cArrayCreateLocation080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateLocation081()
              elseif indices < 83
                aArray = cArrayCreateLocation082()
              elseif indices < 84
                aArray = cArrayCreateLocation083()
              else
                aArray = cArrayCreateLocation084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateLocation085()
              elseif indices < 87
                aArray = cArrayCreateLocation086()
              elseif indices < 88
                aArray = cArrayCreateLocation087()
              else
                aArray = cArrayCreateLocation088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateLocation089()
              elseif indices < 91
                aArray = cArrayCreateLocation090()
              elseif indices < 92
                aArray = cArrayCreateLocation091()
              else
                aArray = cArrayCreateLocation092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateLocation093()
              elseif indices < 95
                aArray = cArrayCreateLocation094()
              elseif indices < 96
                aArray = cArrayCreateLocation095()
              else
                aArray = cArrayCreateLocation096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateLocation097()
              elseif indices < 99
                aArray = cArrayCreateLocation098()
              elseif indices < 100
                aArray = cArrayCreateLocation099()
              else
                aArray = cArrayCreateLocation100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateLocation101()
              elseif indices < 103
                aArray = cArrayCreateLocation102()
              elseif indices < 104
                aArray = cArrayCreateLocation103()
              else
                aArray = cArrayCreateLocation104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateLocation105()
              elseif indices < 107
                aArray = cArrayCreateLocation106()
              elseif indices < 108
                aArray = cArrayCreateLocation107()
              else
                aArray = cArrayCreateLocation108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateLocation109()
              elseif indices < 111
                aArray = cArrayCreateLocation110()
              elseif indices < 112
                aArray = cArrayCreateLocation111()
              else
                aArray = cArrayCreateLocation112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateLocation113()
              elseif indices < 115
                aArray = cArrayCreateLocation114()
              elseif indices < 116
                aArray = cArrayCreateLocation115()
              else
                aArray = cArrayCreateLocation116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateLocation117()
              elseif indices < 119
                aArray = cArrayCreateLocation118()
              elseif indices < 120
                aArray = cArrayCreateLocation119()
              else
                aArray = cArrayCreateLocation120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateLocation121()
              elseif indices < 123
                aArray = cArrayCreateLocation122()
              elseif indices < 124
                aArray = cArrayCreateLocation123()
              else
                aArray = cArrayCreateLocation124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateLocation125()
              elseif indices < 127
                aArray = cArrayCreateLocation126()
              elseif indices < 128
                aArray = cArrayCreateLocation127()
              else
                aArray = cArrayCreateLocation128()
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

Location[] function cArrayCreateLocation001() global
  Location[] aArr = New Location[1]
  return aArr
endfunction
Location[] function cArrayCreateLocation002() global
  Location[] aArr = New Location[2]
  return aArr
endfunction
Location[] function cArrayCreateLocation003() global
  Location[] aArr = New Location[3]
  return aArr
endfunction
Location[] function cArrayCreateLocation004() global
  Location[] aArr = New Location[4]
  return aArr
endfunction
Location[] function cArrayCreateLocation005() global
  Location[] aArr = New Location[5]
  return aArr
endfunction
Location[] function cArrayCreateLocation006() global
  Location[] aArr = New Location[6]
  return aArr
endfunction
Location[] function cArrayCreateLocation007() global
  Location[] aArr = New Location[7]
  return aArr
endfunction
Location[] function cArrayCreateLocation008() global
  Location[] aArr = New Location[8]
  return aArr
endfunction
Location[] function cArrayCreateLocation009() global
  Location[] aArr = New Location[9]
  return aArr
endfunction
Location[] function cArrayCreateLocation010() global
  Location[] aArr = New Location[10]
  return aArr
endfunction
Location[] function cArrayCreateLocation011() global
  Location[] aArr = New Location[11]
  return aArr
endfunction
Location[] function cArrayCreateLocation012() global
  Location[] aArr = New Location[12]
  return aArr
endfunction
Location[] function cArrayCreateLocation013() global
  Location[] aArr = New Location[13]
  return aArr
endfunction
Location[] function cArrayCreateLocation014() global
  Location[] aArr = New Location[14]
  return aArr
endfunction
Location[] function cArrayCreateLocation015() global
  Location[] aArr = New Location[15]
  return aArr
endfunction
Location[] function cArrayCreateLocation016() global
  Location[] aArr = New Location[16]
  return aArr
endfunction
Location[] function cArrayCreateLocation017() global
  Location[] aArr = New Location[17]
  return aArr
endfunction
Location[] function cArrayCreateLocation018() global
  Location[] aArr = New Location[18]
  return aArr
endfunction
Location[] function cArrayCreateLocation019() global
  Location[] aArr = New Location[19]
  return aArr
endfunction
Location[] function cArrayCreateLocation020() global
  Location[] aArr = New Location[20]
  return aArr
endfunction
Location[] function cArrayCreateLocation021() global
  Location[] aArr = New Location[21]
  return aArr
endfunction
Location[] function cArrayCreateLocation022() global
  Location[] aArr = New Location[22]
  return aArr
endfunction
Location[] function cArrayCreateLocation023() global
  Location[] aArr = New Location[23]
  return aArr
endfunction
Location[] function cArrayCreateLocation024() global
  Location[] aArr = New Location[24]
  return aArr
endfunction
Location[] function cArrayCreateLocation025() global
  Location[] aArr = New Location[25]
  return aArr
endfunction
Location[] function cArrayCreateLocation026() global
  Location[] aArr = New Location[26]
  return aArr
endfunction
Location[] function cArrayCreateLocation027() global
  Location[] aArr = New Location[27]
  return aArr
endfunction
Location[] function cArrayCreateLocation028() global
  Location[] aArr = New Location[28]
  return aArr
endfunction
Location[] function cArrayCreateLocation029() global
  Location[] aArr = New Location[29]
  return aArr
endfunction
Location[] function cArrayCreateLocation030() global
  Location[] aArr = New Location[30]
  return aArr
endfunction
Location[] function cArrayCreateLocation031() global
  Location[] aArr = New Location[31]
  return aArr
endfunction
Location[] function cArrayCreateLocation032() global
  Location[] aArr = New Location[32]
  return aArr
endfunction
Location[] function cArrayCreateLocation033() global
  Location[] aArr = New Location[33]
  return aArr
endfunction
Location[] function cArrayCreateLocation034() global
  Location[] aArr = New Location[34]
  return aArr
endfunction
Location[] function cArrayCreateLocation035() global
  Location[] aArr = New Location[35]
  return aArr
endfunction
Location[] function cArrayCreateLocation036() global
  Location[] aArr = New Location[36]
  return aArr
endfunction
Location[] function cArrayCreateLocation037() global
  Location[] aArr = New Location[37]
  return aArr
endfunction
Location[] function cArrayCreateLocation038() global
  Location[] aArr = New Location[38]
  return aArr
endfunction
Location[] function cArrayCreateLocation039() global
  Location[] aArr = New Location[39]
  return aArr
endfunction
Location[] function cArrayCreateLocation040() global
  Location[] aArr = New Location[40]
  return aArr
endfunction
Location[] function cArrayCreateLocation041() global
  Location[] aArr = New Location[41]
  return aArr
endfunction
Location[] function cArrayCreateLocation042() global
  Location[] aArr = New Location[42]
  return aArr
endfunction
Location[] function cArrayCreateLocation043() global
  Location[] aArr = New Location[43]
  return aArr
endfunction
Location[] function cArrayCreateLocation044() global
  Location[] aArr = New Location[44]
  return aArr
endfunction
Location[] function cArrayCreateLocation045() global
  Location[] aArr = New Location[45]
  return aArr
endfunction
Location[] function cArrayCreateLocation046() global
  Location[] aArr = New Location[46]
  return aArr
endfunction
Location[] function cArrayCreateLocation047() global
  Location[] aArr = New Location[47]
  return aArr
endfunction
Location[] function cArrayCreateLocation048() global
  Location[] aArr = New Location[48]
  return aArr
endfunction
Location[] function cArrayCreateLocation049() global
  Location[] aArr = New Location[49]
  return aArr
endfunction
Location[] function cArrayCreateLocation050() global
  Location[] aArr = New Location[50]
  return aArr
endfunction
Location[] function cArrayCreateLocation051() global
  Location[] aArr = New Location[51]
  return aArr
endfunction
Location[] function cArrayCreateLocation052() global
  Location[] aArr = New Location[52]
  return aArr
endfunction
Location[] function cArrayCreateLocation053() global
  Location[] aArr = New Location[53]
  return aArr
endfunction
Location[] function cArrayCreateLocation054() global
  Location[] aArr = New Location[54]
  return aArr
endfunction
Location[] function cArrayCreateLocation055() global
  Location[] aArr = New Location[55]
  return aArr
endfunction
Location[] function cArrayCreateLocation056() global
  Location[] aArr = New Location[56]
  return aArr
endfunction
Location[] function cArrayCreateLocation057() global
  Location[] aArr = New Location[57]
  return aArr
endfunction
Location[] function cArrayCreateLocation058() global
  Location[] aArr = New Location[58]
  return aArr
endfunction
Location[] function cArrayCreateLocation059() global
  Location[] aArr = New Location[59]
  return aArr
endfunction
Location[] function cArrayCreateLocation060() global
  Location[] aArr = New Location[60]
  return aArr
endfunction
Location[] function cArrayCreateLocation061() global
  Location[] aArr = New Location[61]
  return aArr
endfunction
Location[] function cArrayCreateLocation062() global
  Location[] aArr = New Location[62]
  return aArr
endfunction
Location[] function cArrayCreateLocation063() global
  Location[] aArr = New Location[63]
  return aArr
endfunction
Location[] function cArrayCreateLocation064() global
  Location[] aArr = New Location[64]
  return aArr
endfunction
Location[] function cArrayCreateLocation065() global
  Location[] aArr = New Location[65]
  return aArr
endfunction
Location[] function cArrayCreateLocation066() global
  Location[] aArr = New Location[66]
  return aArr
endfunction
Location[] function cArrayCreateLocation067() global
  Location[] aArr = New Location[67]
  return aArr
endfunction
Location[] function cArrayCreateLocation068() global
  Location[] aArr = New Location[68]
  return aArr
endfunction
Location[] function cArrayCreateLocation069() global
  Location[] aArr = New Location[69]
  return aArr
endfunction
Location[] function cArrayCreateLocation070() global
  Location[] aArr = New Location[70]
  return aArr
endfunction
Location[] function cArrayCreateLocation071() global
  Location[] aArr = New Location[71]
  return aArr
endfunction
Location[] function cArrayCreateLocation072() global
  Location[] aArr = New Location[72]
  return aArr
endfunction
Location[] function cArrayCreateLocation073() global
  Location[] aArr = New Location[73]
  return aArr
endfunction
Location[] function cArrayCreateLocation074() global
  Location[] aArr = New Location[74]
  return aArr
endfunction
Location[] function cArrayCreateLocation075() global
  Location[] aArr = New Location[75]
  return aArr
endfunction
Location[] function cArrayCreateLocation076() global
  Location[] aArr = New Location[76]
  return aArr
endfunction
Location[] function cArrayCreateLocation077() global
  Location[] aArr = New Location[77]
  return aArr
endfunction
Location[] function cArrayCreateLocation078() global
  Location[] aArr = New Location[78]
  return aArr
endfunction
Location[] function cArrayCreateLocation079() global
  Location[] aArr = New Location[79]
  return aArr
endfunction
Location[] function cArrayCreateLocation080() global
  Location[] aArr = New Location[80]
  return aArr
endfunction
Location[] function cArrayCreateLocation081() global
  Location[] aArr = New Location[81]
  return aArr
endfunction
Location[] function cArrayCreateLocation082() global
  Location[] aArr = New Location[82]
  return aArr
endfunction
Location[] function cArrayCreateLocation083() global
  Location[] aArr = New Location[83]
  return aArr
endfunction
Location[] function cArrayCreateLocation084() global
  Location[] aArr = New Location[84]
  return aArr
endfunction
Location[] function cArrayCreateLocation085() global
  Location[] aArr = New Location[85]
  return aArr
endfunction
Location[] function cArrayCreateLocation086() global
  Location[] aArr = New Location[86]
  return aArr
endfunction
Location[] function cArrayCreateLocation087() global
  Location[] aArr = New Location[87]
  return aArr
endfunction
Location[] function cArrayCreateLocation088() global
  Location[] aArr = New Location[88]
  return aArr
endfunction
Location[] function cArrayCreateLocation089() global
  Location[] aArr = New Location[89]
  return aArr
endfunction
Location[] function cArrayCreateLocation090() global
  Location[] aArr = New Location[90]
  return aArr
endfunction
Location[] function cArrayCreateLocation091() global
  Location[] aArr = New Location[91]
  return aArr
endfunction
Location[] function cArrayCreateLocation092() global
  Location[] aArr = New Location[92]
  return aArr
endfunction
Location[] function cArrayCreateLocation093() global
  Location[] aArr = New Location[93]
  return aArr
endfunction
Location[] function cArrayCreateLocation094() global
  Location[] aArr = New Location[94]
  return aArr
endfunction
Location[] function cArrayCreateLocation095() global
  Location[] aArr = New Location[95]
  return aArr
endfunction
Location[] function cArrayCreateLocation096() global
  Location[] aArr = New Location[96]
  return aArr
endfunction
Location[] function cArrayCreateLocation097() global
  Location[] aArr = New Location[97]
  return aArr
endfunction
Location[] function cArrayCreateLocation098() global
  Location[] aArr = New Location[98]
  return aArr
endfunction
Location[] function cArrayCreateLocation099() global
  Location[] aArr = New Location[99]
  return aArr
endfunction
Location[] function cArrayCreateLocation100() global
  Location[] aArr = New Location[100]
  return aArr
endfunction
Location[] function cArrayCreateLocation101() global
  Location[] aArr = New Location[101]
  return aArr
endfunction
Location[] function cArrayCreateLocation102() global
  Location[] aArr = New Location[102]
  return aArr
endfunction
Location[] function cArrayCreateLocation103() global
  Location[] aArr = New Location[103]
  return aArr
endfunction
Location[] function cArrayCreateLocation104() global
  Location[] aArr = New Location[104]
  return aArr
endfunction
Location[] function cArrayCreateLocation105() global
  Location[] aArr = New Location[105]
  return aArr
endfunction
Location[] function cArrayCreateLocation106() global
  Location[] aArr = New Location[106]
  return aArr
endfunction
Location[] function cArrayCreateLocation107() global
  Location[] aArr = New Location[107]
  return aArr
endfunction
Location[] function cArrayCreateLocation108() global
  Location[] aArr = New Location[108]
  return aArr
endfunction
Location[] function cArrayCreateLocation109() global
  Location[] aArr = New Location[109]
  return aArr
endfunction
Location[] function cArrayCreateLocation110() global
  Location[] aArr = New Location[110]
  return aArr
endfunction
Location[] function cArrayCreateLocation111() global
  Location[] aArr = New Location[111]
  return aArr
endfunction
Location[] function cArrayCreateLocation112() global
  Location[] aArr = New Location[112]
  return aArr
endfunction
Location[] function cArrayCreateLocation113() global
  Location[] aArr = New Location[113]
  return aArr
endfunction
Location[] function cArrayCreateLocation114() global
  Location[] aArr = New Location[114]
  return aArr
endfunction
Location[] function cArrayCreateLocation115() global
  Location[] aArr = New Location[115]
  return aArr
endfunction
Location[] function cArrayCreateLocation116() global
  Location[] aArr = New Location[116]
  return aArr
endfunction
Location[] function cArrayCreateLocation117() global
  Location[] aArr = New Location[117]
  return aArr
endfunction
Location[] function cArrayCreateLocation118() global
  Location[] aArr = New Location[118]
  return aArr
endfunction
Location[] function cArrayCreateLocation119() global
  Location[] aArr = New Location[119]
  return aArr
endfunction
Location[] function cArrayCreateLocation120() global
  Location[] aArr = New Location[120]
  return aArr
endfunction
Location[] function cArrayCreateLocation121() global
  Location[] aArr = New Location[121]
  return aArr
endfunction
Location[] function cArrayCreateLocation122() global
  Location[] aArr = New Location[122]
  return aArr
endfunction
Location[] function cArrayCreateLocation123() global
  Location[] aArr = New Location[123]
  return aArr
endfunction
Location[] function cArrayCreateLocation124() global
  Location[] aArr = New Location[124]
  return aArr
endfunction
Location[] function cArrayCreateLocation125() global
  Location[] aArr = New Location[125]
  return aArr
endfunction
Location[] function cArrayCreateLocation126() global
  Location[] aArr = New Location[126]
  return aArr
endfunction
Location[] function cArrayCreateLocation127() global
  Location[] aArr = New Location[127]
  return aArr
endfunction
Location[] function cArrayCreateLocation128() global
  Location[] aArr = New Location[128]
  return aArr
endfunction
