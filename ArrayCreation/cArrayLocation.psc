Scriptname cArrayLocation Hidden


Location[] function cArrayCreateLocation(Int indices, Location filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  Location[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    if outputTrace
      String msg = "cArrayCreateLocation()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayLocation::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateLocation001()
              elseif indices < 3
                return cArrayCreateLocation002()
              elseif indices < 4
                return cArrayCreateLocation003()
              else
                return cArrayCreateLocation004()
              endif
            else
              if indices < 6
                return cArrayCreateLocation005()
              elseif indices < 7
                return cArrayCreateLocation006()
              elseif indices < 8
                return cArrayCreateLocation007()
              else
                return cArrayCreateLocation008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateLocation009()
              elseif indices < 11
                return cArrayCreateLocation010()
              elseif indices < 12
                return cArrayCreateLocation011()
              else
                return cArrayCreateLocation012()
              endif
            else
              if indices < 14
                return cArrayCreateLocation013()
              elseif indices < 15
                return cArrayCreateLocation014()
              elseif indices < 16
                return cArrayCreateLocation015()
              else
                return cArrayCreateLocation016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateLocation017()
              elseif indices < 19
                return cArrayCreateLocation018()
              elseif indices < 20
                return cArrayCreateLocation019()
              else
                return cArrayCreateLocation020()
              endif
            else
              if indices < 22
                return cArrayCreateLocation021()
              elseif indices < 23
                return cArrayCreateLocation022()
              elseif indices < 24
                return cArrayCreateLocation023()
              else
                return cArrayCreateLocation024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateLocation025()
              elseif indices < 27
                return cArrayCreateLocation026()
              elseif indices < 28
                return cArrayCreateLocation027()
              else
                return cArrayCreateLocation028()
              endif
            else
              if indices < 30
                return cArrayCreateLocation029()
              elseif indices < 31
                return cArrayCreateLocation030()
              elseif indices < 32
                return cArrayCreateLocation031()
              else
                return cArrayCreateLocation032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateLocation033()
              elseif indices < 35
                return cArrayCreateLocation034()
              elseif indices < 36
                return cArrayCreateLocation035()
              else
                return cArrayCreateLocation036()
              endif
            else
              if indices < 38
                return cArrayCreateLocation037()
              elseif indices < 39
                return cArrayCreateLocation038()
              elseif indices < 40
                return cArrayCreateLocation039()
              else
                return cArrayCreateLocation040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateLocation041()
              elseif indices < 43
                return cArrayCreateLocation042()
              elseif indices < 44
                return cArrayCreateLocation043()
              else
                return cArrayCreateLocation044()
              endif
            else
              if indices < 46
                return cArrayCreateLocation045()
              elseif indices < 47
                return cArrayCreateLocation046()
              elseif indices < 48
                return cArrayCreateLocation047()
              else
                return cArrayCreateLocation048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateLocation049()
              elseif indices < 51
                return cArrayCreateLocation050()
              elseif indices < 52
                return cArrayCreateLocation051()
              else
                return cArrayCreateLocation052()
              endif
            else
              if indices < 54
                return cArrayCreateLocation053()
              elseif indices < 55
                return cArrayCreateLocation054()
              elseif indices < 56
                return cArrayCreateLocation055()
              else
                return cArrayCreateLocation056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateLocation057()
              elseif indices < 59
                return cArrayCreateLocation058()
              elseif indices < 60
                return cArrayCreateLocation059()
              else
                return cArrayCreateLocation060()
              endif
            else
              if indices < 62
                return cArrayCreateLocation061()
              elseif indices < 63
                return cArrayCreateLocation062()
              elseif indices < 64
                return cArrayCreateLocation063()
              else
                return cArrayCreateLocation064()
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
                return cArrayCreateLocation065()
              elseif indices < 67
                return cArrayCreateLocation066()
              elseif indices < 68
                return cArrayCreateLocation067()
              else
                return cArrayCreateLocation068()
              endif
            else
              if indices < 70
                return cArrayCreateLocation069()
              elseif indices < 71
                return cArrayCreateLocation070()
              elseif indices < 72
                return cArrayCreateLocation071()
              else
                return cArrayCreateLocation072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateLocation073()
              elseif indices < 75
                return cArrayCreateLocation074()
              elseif indices < 76
                return cArrayCreateLocation075()
              else
                return cArrayCreateLocation076()
              endif
            else
              if indices < 78
                return cArrayCreateLocation077()
              elseif indices < 79
                return cArrayCreateLocation078()
              elseif indices < 80
                return cArrayCreateLocation079()
              else
                return cArrayCreateLocation080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateLocation081()
              elseif indices < 83
                return cArrayCreateLocation082()
              elseif indices < 84
                return cArrayCreateLocation083()
              else
                return cArrayCreateLocation084()
              endif
            else
              if indices < 86
                return cArrayCreateLocation085()
              elseif indices < 87
                return cArrayCreateLocation086()
              elseif indices < 88
                return cArrayCreateLocation087()
              else
                return cArrayCreateLocation088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateLocation089()
              elseif indices < 91
                return cArrayCreateLocation090()
              elseif indices < 92
                return cArrayCreateLocation091()
              else
                return cArrayCreateLocation092()
              endif
            else
              if indices < 94
                return cArrayCreateLocation093()
              elseif indices < 95
                return cArrayCreateLocation094()
              elseif indices < 96
                return cArrayCreateLocation095()
              else
                return cArrayCreateLocation096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateLocation097()
              elseif indices < 99
                return cArrayCreateLocation098()
              elseif indices < 100
                return cArrayCreateLocation099()
              else
                return cArrayCreateLocation100()
              endif
            else
              if indices < 102
                return cArrayCreateLocation101()
              elseif indices < 103
                return cArrayCreateLocation102()
              elseif indices < 104
                return cArrayCreateLocation103()
              else
                return cArrayCreateLocation104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateLocation105()
              elseif indices < 107
                return cArrayCreateLocation106()
              elseif indices < 108
                return cArrayCreateLocation107()
              else
                return cArrayCreateLocation108()
              endif
            else
              if indices < 110
                return cArrayCreateLocation109()
              elseif indices < 111
                return cArrayCreateLocation110()
              elseif indices < 112
                return cArrayCreateLocation111()
              else
                return cArrayCreateLocation112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateLocation113()
              elseif indices < 115
                return cArrayCreateLocation114()
              elseif indices < 116
                return cArrayCreateLocation115()
              else
                return cArrayCreateLocation116()
              endif
            else
              if indices < 118
                return cArrayCreateLocation117()
              elseif indices < 119
                return cArrayCreateLocation118()
              elseif indices < 120
                return cArrayCreateLocation119()
              else
                return cArrayCreateLocation120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateLocation121()
              elseif indices < 123
                return cArrayCreateLocation122()
              elseif indices < 124
                return cArrayCreateLocation123()
              else
                return cArrayCreateLocation124()
              endif
            else
              if indices < 126
                return cArrayCreateLocation125()
              elseif indices < 127
                return cArrayCreateLocation126()
              elseif indices < 128
                return cArrayCreateLocation127()
              else
                return cArrayCreateLocation128()
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
