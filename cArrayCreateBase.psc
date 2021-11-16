Scriptname cArrayCreateBase Hidden


Actor[] function cArrayCreateActor(Int indices, Actor filler = None, Bool usePapUtil = TRUE, \
  Bool outputTrace = TRUE, Bool useConsoleUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Actor[] aArray
  if usePapUtil && clibUse.cUsePapUtil() && indices > 0
    aArray = PapyrusUtil.ActorArray(indices, filler)
  elseif indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; useConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateActor()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayActor::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateActor001()
              elseif indices < 3
                aArray = cArrayCreateActor002()
              elseif indices < 4
                aArray = cArrayCreateActor003()
              else
                aArray = cArrayCreateActor004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateActor005()
              elseif indices < 7
                aArray = cArrayCreateActor006()
              elseif indices < 8
                aArray = cArrayCreateActor007()
              else
                aArray = cArrayCreateActor008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateActor009()
              elseif indices < 11
                aArray = cArrayCreateActor010()
              elseif indices < 12
                aArray = cArrayCreateActor011()
              else
                aArray = cArrayCreateActor012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateActor013()
              elseif indices < 15
                aArray = cArrayCreateActor014()
              elseif indices < 16
                aArray = cArrayCreateActor015()
              else
                aArray = cArrayCreateActor016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateActor017()
              elseif indices < 19
                aArray = cArrayCreateActor018()
              elseif indices < 20
                aArray = cArrayCreateActor019()
              else
                aArray = cArrayCreateActor020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateActor021()
              elseif indices < 23
                aArray = cArrayCreateActor022()
              elseif indices < 24
                aArray = cArrayCreateActor023()
              else
                aArray = cArrayCreateActor024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateActor025()
              elseif indices < 27
                aArray = cArrayCreateActor026()
              elseif indices < 28
                aArray = cArrayCreateActor027()
              else
                aArray = cArrayCreateActor028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateActor029()
              elseif indices < 31
                aArray = cArrayCreateActor030()
              elseif indices < 32
                aArray = cArrayCreateActor031()
              else
                aArray = cArrayCreateActor032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateActor033()
              elseif indices < 35
                aArray = cArrayCreateActor034()
              elseif indices < 36
                aArray = cArrayCreateActor035()
              else
                aArray = cArrayCreateActor036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateActor037()
              elseif indices < 39
                aArray = cArrayCreateActor038()
              elseif indices < 40
                aArray = cArrayCreateActor039()
              else
                aArray = cArrayCreateActor040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateActor041()
              elseif indices < 43
                aArray = cArrayCreateActor042()
              elseif indices < 44
                aArray = cArrayCreateActor043()
              else
                aArray = cArrayCreateActor044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateActor045()
              elseif indices < 47
                aArray = cArrayCreateActor046()
              elseif indices < 48
                aArray = cArrayCreateActor047()
              else
                aArray = cArrayCreateActor048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateActor049()
              elseif indices < 51
                aArray = cArrayCreateActor050()
              elseif indices < 52
                aArray = cArrayCreateActor051()
              else
                aArray = cArrayCreateActor052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateActor053()
              elseif indices < 55
                aArray = cArrayCreateActor054()
              elseif indices < 56
                aArray = cArrayCreateActor055()
              else
                aArray = cArrayCreateActor056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateActor057()
              elseif indices < 59
                aArray = cArrayCreateActor058()
              elseif indices < 60
                aArray = cArrayCreateActor059()
              else
                aArray = cArrayCreateActor060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateActor061()
              elseif indices < 63
                aArray = cArrayCreateActor062()
              elseif indices < 64
                aArray = cArrayCreateActor063()
              else
                aArray = cArrayCreateActor064()
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
                aArray = cArrayCreateActor065()
              elseif indices < 67
                aArray = cArrayCreateActor066()
              elseif indices < 68
                aArray = cArrayCreateActor067()
              else
                aArray = cArrayCreateActor068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateActor069()
              elseif indices < 71
                aArray = cArrayCreateActor070()
              elseif indices < 72
                aArray = cArrayCreateActor071()
              else
                aArray = cArrayCreateActor072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateActor073()
              elseif indices < 75
                aArray = cArrayCreateActor074()
              elseif indices < 76
                aArray = cArrayCreateActor075()
              else
                aArray = cArrayCreateActor076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateActor077()
              elseif indices < 79
                aArray = cArrayCreateActor078()
              elseif indices < 80
                aArray = cArrayCreateActor079()
              else
                aArray = cArrayCreateActor080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateActor081()
              elseif indices < 83
                aArray = cArrayCreateActor082()
              elseif indices < 84
                aArray = cArrayCreateActor083()
              else
                aArray = cArrayCreateActor084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateActor085()
              elseif indices < 87
                aArray = cArrayCreateActor086()
              elseif indices < 88
                aArray = cArrayCreateActor087()
              else
                aArray = cArrayCreateActor088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateActor089()
              elseif indices < 91
                aArray = cArrayCreateActor090()
              elseif indices < 92
                aArray = cArrayCreateActor091()
              else
                aArray = cArrayCreateActor092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateActor093()
              elseif indices < 95
                aArray = cArrayCreateActor094()
              elseif indices < 96
                aArray = cArrayCreateActor095()
              else
                aArray = cArrayCreateActor096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateActor097()
              elseif indices < 99
                aArray = cArrayCreateActor098()
              elseif indices < 100
                aArray = cArrayCreateActor099()
              else
                aArray = cArrayCreateActor100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateActor101()
              elseif indices < 103
                aArray = cArrayCreateActor102()
              elseif indices < 104
                aArray = cArrayCreateActor103()
              else
                aArray = cArrayCreateActor104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateActor105()
              elseif indices < 107
                aArray = cArrayCreateActor106()
              elseif indices < 108
                aArray = cArrayCreateActor107()
              else
                aArray = cArrayCreateActor108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateActor109()
              elseif indices < 111
                aArray = cArrayCreateActor110()
              elseif indices < 112
                aArray = cArrayCreateActor111()
              else
                aArray = cArrayCreateActor112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateActor113()
              elseif indices < 115
                aArray = cArrayCreateActor114()
              elseif indices < 116
                aArray = cArrayCreateActor115()
              else
                aArray = cArrayCreateActor116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateActor117()
              elseif indices < 119
                aArray = cArrayCreateActor118()
              elseif indices < 120
                aArray = cArrayCreateActor119()
              else
                aArray = cArrayCreateActor120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateActor121()
              elseif indices < 123
                aArray = cArrayCreateActor122()
              elseif indices < 124
                aArray = cArrayCreateActor123()
              else
                aArray = cArrayCreateActor124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateActor125()
              elseif indices < 127
                aArray = cArrayCreateActor126()
              elseif indices < 128
                aArray = cArrayCreateActor127()
              else
                aArray = cArrayCreateActor128()
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
Actor[] function cArrayCreateActor001() global
  Actor[] aArr = New Actor[1]
  return aArr
endfunction
Actor[] function cArrayCreateActor002() global
  Actor[] aArr = New Actor[2]
  return aArr
endfunction
Actor[] function cArrayCreateActor003() global
  Actor[] aArr = New Actor[3]
  return aArr
endfunction
Actor[] function cArrayCreateActor004() global
  Actor[] aArr = New Actor[4]
  return aArr
endfunction
Actor[] function cArrayCreateActor005() global
  Actor[] aArr = New Actor[5]
  return aArr
endfunction
Actor[] function cArrayCreateActor006() global
  Actor[] aArr = New Actor[6]
  return aArr
endfunction
Actor[] function cArrayCreateActor007() global
  Actor[] aArr = New Actor[7]
  return aArr
endfunction
Actor[] function cArrayCreateActor008() global
  Actor[] aArr = New Actor[8]
  return aArr
endfunction
Actor[] function cArrayCreateActor009() global
  Actor[] aArr = New Actor[9]
  return aArr
endfunction
Actor[] function cArrayCreateActor010() global
  Actor[] aArr = New Actor[10]
  return aArr
endfunction
Actor[] function cArrayCreateActor011() global
  Actor[] aArr = New Actor[11]
  return aArr
endfunction
Actor[] function cArrayCreateActor012() global
  Actor[] aArr = New Actor[12]
  return aArr
endfunction
Actor[] function cArrayCreateActor013() global
  Actor[] aArr = New Actor[13]
  return aArr
endfunction
Actor[] function cArrayCreateActor014() global
  Actor[] aArr = New Actor[14]
  return aArr
endfunction
Actor[] function cArrayCreateActor015() global
  Actor[] aArr = New Actor[15]
  return aArr
endfunction
Actor[] function cArrayCreateActor016() global
  Actor[] aArr = New Actor[16]
  return aArr
endfunction
Actor[] function cArrayCreateActor017() global
  Actor[] aArr = New Actor[17]
  return aArr
endfunction
Actor[] function cArrayCreateActor018() global
  Actor[] aArr = New Actor[18]
  return aArr
endfunction
Actor[] function cArrayCreateActor019() global
  Actor[] aArr = New Actor[19]
  return aArr
endfunction
Actor[] function cArrayCreateActor020() global
  Actor[] aArr = New Actor[20]
  return aArr
endfunction
Actor[] function cArrayCreateActor021() global
  Actor[] aArr = New Actor[21]
  return aArr
endfunction
Actor[] function cArrayCreateActor022() global
  Actor[] aArr = New Actor[22]
  return aArr
endfunction
Actor[] function cArrayCreateActor023() global
  Actor[] aArr = New Actor[23]
  return aArr
endfunction
Actor[] function cArrayCreateActor024() global
  Actor[] aArr = New Actor[24]
  return aArr
endfunction
Actor[] function cArrayCreateActor025() global
  Actor[] aArr = New Actor[25]
  return aArr
endfunction
Actor[] function cArrayCreateActor026() global
  Actor[] aArr = New Actor[26]
  return aArr
endfunction
Actor[] function cArrayCreateActor027() global
  Actor[] aArr = New Actor[27]
  return aArr
endfunction
Actor[] function cArrayCreateActor028() global
  Actor[] aArr = New Actor[28]
  return aArr
endfunction
Actor[] function cArrayCreateActor029() global
  Actor[] aArr = New Actor[29]
  return aArr
endfunction
Actor[] function cArrayCreateActor030() global
  Actor[] aArr = New Actor[30]
  return aArr
endfunction
Actor[] function cArrayCreateActor031() global
  Actor[] aArr = New Actor[31]
  return aArr
endfunction
Actor[] function cArrayCreateActor032() global
  Actor[] aArr = New Actor[32]
  return aArr
endfunction
Actor[] function cArrayCreateActor033() global
  Actor[] aArr = New Actor[33]
  return aArr
endfunction
Actor[] function cArrayCreateActor034() global
  Actor[] aArr = New Actor[34]
  return aArr
endfunction
Actor[] function cArrayCreateActor035() global
  Actor[] aArr = New Actor[35]
  return aArr
endfunction
Actor[] function cArrayCreateActor036() global
  Actor[] aArr = New Actor[36]
  return aArr
endfunction
Actor[] function cArrayCreateActor037() global
  Actor[] aArr = New Actor[37]
  return aArr
endfunction
Actor[] function cArrayCreateActor038() global
  Actor[] aArr = New Actor[38]
  return aArr
endfunction
Actor[] function cArrayCreateActor039() global
  Actor[] aArr = New Actor[39]
  return aArr
endfunction
Actor[] function cArrayCreateActor040() global
  Actor[] aArr = New Actor[40]
  return aArr
endfunction
Actor[] function cArrayCreateActor041() global
  Actor[] aArr = New Actor[41]
  return aArr
endfunction
Actor[] function cArrayCreateActor042() global
  Actor[] aArr = New Actor[42]
  return aArr
endfunction
Actor[] function cArrayCreateActor043() global
  Actor[] aArr = New Actor[43]
  return aArr
endfunction
Actor[] function cArrayCreateActor044() global
  Actor[] aArr = New Actor[44]
  return aArr
endfunction
Actor[] function cArrayCreateActor045() global
  Actor[] aArr = New Actor[45]
  return aArr
endfunction
Actor[] function cArrayCreateActor046() global
  Actor[] aArr = New Actor[46]
  return aArr
endfunction
Actor[] function cArrayCreateActor047() global
  Actor[] aArr = New Actor[47]
  return aArr
endfunction
Actor[] function cArrayCreateActor048() global
  Actor[] aArr = New Actor[48]
  return aArr
endfunction
Actor[] function cArrayCreateActor049() global
  Actor[] aArr = New Actor[49]
  return aArr
endfunction
Actor[] function cArrayCreateActor050() global
  Actor[] aArr = New Actor[50]
  return aArr
endfunction
Actor[] function cArrayCreateActor051() global
  Actor[] aArr = New Actor[51]
  return aArr
endfunction
Actor[] function cArrayCreateActor052() global
  Actor[] aArr = New Actor[52]
  return aArr
endfunction
Actor[] function cArrayCreateActor053() global
  Actor[] aArr = New Actor[53]
  return aArr
endfunction
Actor[] function cArrayCreateActor054() global
  Actor[] aArr = New Actor[54]
  return aArr
endfunction
Actor[] function cArrayCreateActor055() global
  Actor[] aArr = New Actor[55]
  return aArr
endfunction
Actor[] function cArrayCreateActor056() global
  Actor[] aArr = New Actor[56]
  return aArr
endfunction
Actor[] function cArrayCreateActor057() global
  Actor[] aArr = New Actor[57]
  return aArr
endfunction
Actor[] function cArrayCreateActor058() global
  Actor[] aArr = New Actor[58]
  return aArr
endfunction
Actor[] function cArrayCreateActor059() global
  Actor[] aArr = New Actor[59]
  return aArr
endfunction
Actor[] function cArrayCreateActor060() global
  Actor[] aArr = New Actor[60]
  return aArr
endfunction
Actor[] function cArrayCreateActor061() global
  Actor[] aArr = New Actor[61]
  return aArr
endfunction
Actor[] function cArrayCreateActor062() global
  Actor[] aArr = New Actor[62]
  return aArr
endfunction
Actor[] function cArrayCreateActor063() global
  Actor[] aArr = New Actor[63]
  return aArr
endfunction
Actor[] function cArrayCreateActor064() global
  Actor[] aArr = New Actor[64]
  return aArr
endfunction
Actor[] function cArrayCreateActor065() global
  Actor[] aArr = New Actor[65]
  return aArr
endfunction
Actor[] function cArrayCreateActor066() global
  Actor[] aArr = New Actor[66]
  return aArr
endfunction
Actor[] function cArrayCreateActor067() global
  Actor[] aArr = New Actor[67]
  return aArr
endfunction
Actor[] function cArrayCreateActor068() global
  Actor[] aArr = New Actor[68]
  return aArr
endfunction
Actor[] function cArrayCreateActor069() global
  Actor[] aArr = New Actor[69]
  return aArr
endfunction
Actor[] function cArrayCreateActor070() global
  Actor[] aArr = New Actor[70]
  return aArr
endfunction
Actor[] function cArrayCreateActor071() global
  Actor[] aArr = New Actor[71]
  return aArr
endfunction
Actor[] function cArrayCreateActor072() global
  Actor[] aArr = New Actor[72]
  return aArr
endfunction
Actor[] function cArrayCreateActor073() global
  Actor[] aArr = New Actor[73]
  return aArr
endfunction
Actor[] function cArrayCreateActor074() global
  Actor[] aArr = New Actor[74]
  return aArr
endfunction
Actor[] function cArrayCreateActor075() global
  Actor[] aArr = New Actor[75]
  return aArr
endfunction
Actor[] function cArrayCreateActor076() global
  Actor[] aArr = New Actor[76]
  return aArr
endfunction
Actor[] function cArrayCreateActor077() global
  Actor[] aArr = New Actor[77]
  return aArr
endfunction
Actor[] function cArrayCreateActor078() global
  Actor[] aArr = New Actor[78]
  return aArr
endfunction
Actor[] function cArrayCreateActor079() global
  Actor[] aArr = New Actor[79]
  return aArr
endfunction
Actor[] function cArrayCreateActor080() global
  Actor[] aArr = New Actor[80]
  return aArr
endfunction
Actor[] function cArrayCreateActor081() global
  Actor[] aArr = New Actor[81]
  return aArr
endfunction
Actor[] function cArrayCreateActor082() global
  Actor[] aArr = New Actor[82]
  return aArr
endfunction
Actor[] function cArrayCreateActor083() global
  Actor[] aArr = New Actor[83]
  return aArr
endfunction
Actor[] function cArrayCreateActor084() global
  Actor[] aArr = New Actor[84]
  return aArr
endfunction
Actor[] function cArrayCreateActor085() global
  Actor[] aArr = New Actor[85]
  return aArr
endfunction
Actor[] function cArrayCreateActor086() global
  Actor[] aArr = New Actor[86]
  return aArr
endfunction
Actor[] function cArrayCreateActor087() global
  Actor[] aArr = New Actor[87]
  return aArr
endfunction
Actor[] function cArrayCreateActor088() global
  Actor[] aArr = New Actor[88]
  return aArr
endfunction
Actor[] function cArrayCreateActor089() global
  Actor[] aArr = New Actor[89]
  return aArr
endfunction
Actor[] function cArrayCreateActor090() global
  Actor[] aArr = New Actor[90]
  return aArr
endfunction
Actor[] function cArrayCreateActor091() global
  Actor[] aArr = New Actor[91]
  return aArr
endfunction
Actor[] function cArrayCreateActor092() global
  Actor[] aArr = New Actor[92]
  return aArr
endfunction
Actor[] function cArrayCreateActor093() global
  Actor[] aArr = New Actor[93]
  return aArr
endfunction
Actor[] function cArrayCreateActor094() global
  Actor[] aArr = New Actor[94]
  return aArr
endfunction
Actor[] function cArrayCreateActor095() global
  Actor[] aArr = New Actor[95]
  return aArr
endfunction
Actor[] function cArrayCreateActor096() global
  Actor[] aArr = New Actor[96]
  return aArr
endfunction
Actor[] function cArrayCreateActor097() global
  Actor[] aArr = New Actor[97]
  return aArr
endfunction
Actor[] function cArrayCreateActor098() global
  Actor[] aArr = New Actor[98]
  return aArr
endfunction
Actor[] function cArrayCreateActor099() global
  Actor[] aArr = New Actor[99]
  return aArr
endfunction
Actor[] function cArrayCreateActor100() global
  Actor[] aArr = New Actor[100]
  return aArr
endfunction
Actor[] function cArrayCreateActor101() global
  Actor[] aArr = New Actor[101]
  return aArr
endfunction
Actor[] function cArrayCreateActor102() global
  Actor[] aArr = New Actor[102]
  return aArr
endfunction
Actor[] function cArrayCreateActor103() global
  Actor[] aArr = New Actor[103]
  return aArr
endfunction
Actor[] function cArrayCreateActor104() global
  Actor[] aArr = New Actor[104]
  return aArr
endfunction
Actor[] function cArrayCreateActor105() global
  Actor[] aArr = New Actor[105]
  return aArr
endfunction
Actor[] function cArrayCreateActor106() global
  Actor[] aArr = New Actor[106]
  return aArr
endfunction
Actor[] function cArrayCreateActor107() global
  Actor[] aArr = New Actor[107]
  return aArr
endfunction
Actor[] function cArrayCreateActor108() global
  Actor[] aArr = New Actor[108]
  return aArr
endfunction
Actor[] function cArrayCreateActor109() global
  Actor[] aArr = New Actor[109]
  return aArr
endfunction
Actor[] function cArrayCreateActor110() global
  Actor[] aArr = New Actor[110]
  return aArr
endfunction
Actor[] function cArrayCreateActor111() global
  Actor[] aArr = New Actor[111]
  return aArr
endfunction
Actor[] function cArrayCreateActor112() global
  Actor[] aArr = New Actor[112]
  return aArr
endfunction
Actor[] function cArrayCreateActor113() global
  Actor[] aArr = New Actor[113]
  return aArr
endfunction
Actor[] function cArrayCreateActor114() global
  Actor[] aArr = New Actor[114]
  return aArr
endfunction
Actor[] function cArrayCreateActor115() global
  Actor[] aArr = New Actor[115]
  return aArr
endfunction
Actor[] function cArrayCreateActor116() global
  Actor[] aArr = New Actor[116]
  return aArr
endfunction
Actor[] function cArrayCreateActor117() global
  Actor[] aArr = New Actor[117]
  return aArr
endfunction
Actor[] function cArrayCreateActor118() global
  Actor[] aArr = New Actor[118]
  return aArr
endfunction
Actor[] function cArrayCreateActor119() global
  Actor[] aArr = New Actor[119]
  return aArr
endfunction
Actor[] function cArrayCreateActor120() global
  Actor[] aArr = New Actor[120]
  return aArr
endfunction
Actor[] function cArrayCreateActor121() global
  Actor[] aArr = New Actor[121]
  return aArr
endfunction
Actor[] function cArrayCreateActor122() global
  Actor[] aArr = New Actor[122]
  return aArr
endfunction
Actor[] function cArrayCreateActor123() global
  Actor[] aArr = New Actor[123]
  return aArr
endfunction
Actor[] function cArrayCreateActor124() global
  Actor[] aArr = New Actor[124]
  return aArr
endfunction
Actor[] function cArrayCreateActor125() global
  Actor[] aArr = New Actor[125]
  return aArr
endfunction
Actor[] function cArrayCreateActor126() global
  Actor[] aArr = New Actor[126]
  return aArr
endfunction
Actor[] function cArrayCreateActor127() global
  Actor[] aArr = New Actor[127]
  return aArr
endfunction
Actor[] function cArrayCreateActor128() global
  Actor[] aArr = New Actor[128]
  return aArr
endfunction


Alias[] function cArrayCreateAlias(Int indices, Alias filler = None, Bool useSKSE = TRUE, Bool outputTrace = TRUE, \
    Bool useConsoleUtil = TRUE) global
  {Requirements: None, SKSE:Soft}
  Alias[] aArray
  if useSKSE && indices > 0
    aArray = Utility.CreateAliasArray(indices, filler)
  elseif indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; useConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateAlias()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayAlias::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateAlias001()
              elseif indices < 3
                aArray = cArrayCreateAlias002()
              elseif indices < 4
                aArray = cArrayCreateAlias003()
              else
                aArray = cArrayCreateAlias004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateAlias005()
              elseif indices < 7
                aArray = cArrayCreateAlias006()
              elseif indices < 8
                aArray = cArrayCreateAlias007()
              else
                aArray = cArrayCreateAlias008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateAlias009()
              elseif indices < 11
                aArray = cArrayCreateAlias010()
              elseif indices < 12
                aArray = cArrayCreateAlias011()
              else
                aArray = cArrayCreateAlias012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateAlias013()
              elseif indices < 15
                aArray = cArrayCreateAlias014()
              elseif indices < 16
                aArray = cArrayCreateAlias015()
              else
                aArray = cArrayCreateAlias016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateAlias017()
              elseif indices < 19
                aArray = cArrayCreateAlias018()
              elseif indices < 20
                aArray = cArrayCreateAlias019()
              else
                aArray = cArrayCreateAlias020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateAlias021()
              elseif indices < 23
                aArray = cArrayCreateAlias022()
              elseif indices < 24
                aArray = cArrayCreateAlias023()
              else
                aArray = cArrayCreateAlias024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateAlias025()
              elseif indices < 27
                aArray = cArrayCreateAlias026()
              elseif indices < 28
                aArray = cArrayCreateAlias027()
              else
                aArray = cArrayCreateAlias028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateAlias029()
              elseif indices < 31
                aArray = cArrayCreateAlias030()
              elseif indices < 32
                aArray = cArrayCreateAlias031()
              else
                aArray = cArrayCreateAlias032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateAlias033()
              elseif indices < 35
                aArray = cArrayCreateAlias034()
              elseif indices < 36
                aArray = cArrayCreateAlias035()
              else
                aArray = cArrayCreateAlias036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateAlias037()
              elseif indices < 39
                aArray = cArrayCreateAlias038()
              elseif indices < 40
                aArray = cArrayCreateAlias039()
              else
                aArray = cArrayCreateAlias040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateAlias041()
              elseif indices < 43
                aArray = cArrayCreateAlias042()
              elseif indices < 44
                aArray = cArrayCreateAlias043()
              else
                aArray = cArrayCreateAlias044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateAlias045()
              elseif indices < 47
                aArray = cArrayCreateAlias046()
              elseif indices < 48
                aArray = cArrayCreateAlias047()
              else
                aArray = cArrayCreateAlias048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateAlias049()
              elseif indices < 51
                aArray = cArrayCreateAlias050()
              elseif indices < 52
                aArray = cArrayCreateAlias051()
              else
                aArray = cArrayCreateAlias052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateAlias053()
              elseif indices < 55
                aArray = cArrayCreateAlias054()
              elseif indices < 56
                aArray = cArrayCreateAlias055()
              else
                aArray = cArrayCreateAlias056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateAlias057()
              elseif indices < 59
                aArray = cArrayCreateAlias058()
              elseif indices < 60
                aArray = cArrayCreateAlias059()
              else
                aArray = cArrayCreateAlias060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateAlias061()
              elseif indices < 63
                aArray = cArrayCreateAlias062()
              elseif indices < 64
                aArray = cArrayCreateAlias063()
              else
                aArray = cArrayCreateAlias064()
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
                aArray = cArrayCreateAlias065()
              elseif indices < 67
                aArray = cArrayCreateAlias066()
              elseif indices < 68
                aArray = cArrayCreateAlias067()
              else
                aArray = cArrayCreateAlias068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateAlias069()
              elseif indices < 71
                aArray = cArrayCreateAlias070()
              elseif indices < 72
                aArray = cArrayCreateAlias071()
              else
                aArray = cArrayCreateAlias072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateAlias073()
              elseif indices < 75
                aArray = cArrayCreateAlias074()
              elseif indices < 76
                aArray = cArrayCreateAlias075()
              else
                aArray = cArrayCreateAlias076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateAlias077()
              elseif indices < 79
                aArray = cArrayCreateAlias078()
              elseif indices < 80
                aArray = cArrayCreateAlias079()
              else
                aArray = cArrayCreateAlias080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateAlias081()
              elseif indices < 83
                aArray = cArrayCreateAlias082()
              elseif indices < 84
                aArray = cArrayCreateAlias083()
              else
                aArray = cArrayCreateAlias084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateAlias085()
              elseif indices < 87
                aArray = cArrayCreateAlias086()
              elseif indices < 88
                aArray = cArrayCreateAlias087()
              else
                aArray = cArrayCreateAlias088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateAlias089()
              elseif indices < 91
                aArray = cArrayCreateAlias090()
              elseif indices < 92
                aArray = cArrayCreateAlias091()
              else
                aArray = cArrayCreateAlias092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateAlias093()
              elseif indices < 95
                aArray = cArrayCreateAlias094()
              elseif indices < 96
                aArray = cArrayCreateAlias095()
              else
                aArray = cArrayCreateAlias096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateAlias097()
              elseif indices < 99
                aArray = cArrayCreateAlias098()
              elseif indices < 100
                aArray = cArrayCreateAlias099()
              else
                aArray = cArrayCreateAlias100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateAlias101()
              elseif indices < 103
                aArray = cArrayCreateAlias102()
              elseif indices < 104
                aArray = cArrayCreateAlias103()
              else
                aArray = cArrayCreateAlias104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateAlias105()
              elseif indices < 107
                aArray = cArrayCreateAlias106()
              elseif indices < 108
                aArray = cArrayCreateAlias107()
              else
                aArray = cArrayCreateAlias108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateAlias109()
              elseif indices < 111
                aArray = cArrayCreateAlias110()
              elseif indices < 112
                aArray = cArrayCreateAlias111()
              else
                aArray = cArrayCreateAlias112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateAlias113()
              elseif indices < 115
                aArray = cArrayCreateAlias114()
              elseif indices < 116
                aArray = cArrayCreateAlias115()
              else
                aArray = cArrayCreateAlias116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateAlias117()
              elseif indices < 119
                aArray = cArrayCreateAlias118()
              elseif indices < 120
                aArray = cArrayCreateAlias119()
              else
                aArray = cArrayCreateAlias120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateAlias121()
              elseif indices < 123
                aArray = cArrayCreateAlias122()
              elseif indices < 124
                aArray = cArrayCreateAlias123()
              else
                aArray = cArrayCreateAlias124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateAlias125()
              elseif indices < 127
                aArray = cArrayCreateAlias126()
              elseif indices < 128
                aArray = cArrayCreateAlias127()
              else
                aArray = cArrayCreateAlias128()
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
Alias[] function cArrayCreateAlias001() global
  Alias[] aArr = New Alias[1]
  return aArr
endfunction
Alias[] function cArrayCreateAlias002() global
  Alias[] aArr = New Alias[2]
  return aArr
endfunction
Alias[] function cArrayCreateAlias003() global
  Alias[] aArr = New Alias[3]
  return aArr
endfunction
Alias[] function cArrayCreateAlias004() global
  Alias[] aArr = New Alias[4]
  return aArr
endfunction
Alias[] function cArrayCreateAlias005() global
  Alias[] aArr = New Alias[5]
  return aArr
endfunction
Alias[] function cArrayCreateAlias006() global
  Alias[] aArr = New Alias[6]
  return aArr
endfunction
Alias[] function cArrayCreateAlias007() global
  Alias[] aArr = New Alias[7]
  return aArr
endfunction
Alias[] function cArrayCreateAlias008() global
  Alias[] aArr = New Alias[8]
  return aArr
endfunction
Alias[] function cArrayCreateAlias009() global
  Alias[] aArr = New Alias[9]
  return aArr
endfunction
Alias[] function cArrayCreateAlias010() global
  Alias[] aArr = New Alias[10]
  return aArr
endfunction
Alias[] function cArrayCreateAlias011() global
  Alias[] aArr = New Alias[11]
  return aArr
endfunction
Alias[] function cArrayCreateAlias012() global
  Alias[] aArr = New Alias[12]
  return aArr
endfunction
Alias[] function cArrayCreateAlias013() global
  Alias[] aArr = New Alias[13]
  return aArr
endfunction
Alias[] function cArrayCreateAlias014() global
  Alias[] aArr = New Alias[14]
  return aArr
endfunction
Alias[] function cArrayCreateAlias015() global
  Alias[] aArr = New Alias[15]
  return aArr
endfunction
Alias[] function cArrayCreateAlias016() global
  Alias[] aArr = New Alias[16]
  return aArr
endfunction
Alias[] function cArrayCreateAlias017() global
  Alias[] aArr = New Alias[17]
  return aArr
endfunction
Alias[] function cArrayCreateAlias018() global
  Alias[] aArr = New Alias[18]
  return aArr
endfunction
Alias[] function cArrayCreateAlias019() global
  Alias[] aArr = New Alias[19]
  return aArr
endfunction
Alias[] function cArrayCreateAlias020() global
  Alias[] aArr = New Alias[20]
  return aArr
endfunction
Alias[] function cArrayCreateAlias021() global
  Alias[] aArr = New Alias[21]
  return aArr
endfunction
Alias[] function cArrayCreateAlias022() global
  Alias[] aArr = New Alias[22]
  return aArr
endfunction
Alias[] function cArrayCreateAlias023() global
  Alias[] aArr = New Alias[23]
  return aArr
endfunction
Alias[] function cArrayCreateAlias024() global
  Alias[] aArr = New Alias[24]
  return aArr
endfunction
Alias[] function cArrayCreateAlias025() global
  Alias[] aArr = New Alias[25]
  return aArr
endfunction
Alias[] function cArrayCreateAlias026() global
  Alias[] aArr = New Alias[26]
  return aArr
endfunction
Alias[] function cArrayCreateAlias027() global
  Alias[] aArr = New Alias[27]
  return aArr
endfunction
Alias[] function cArrayCreateAlias028() global
  Alias[] aArr = New Alias[28]
  return aArr
endfunction
Alias[] function cArrayCreateAlias029() global
  Alias[] aArr = New Alias[29]
  return aArr
endfunction
Alias[] function cArrayCreateAlias030() global
  Alias[] aArr = New Alias[30]
  return aArr
endfunction
Alias[] function cArrayCreateAlias031() global
  Alias[] aArr = New Alias[31]
  return aArr
endfunction
Alias[] function cArrayCreateAlias032() global
  Alias[] aArr = New Alias[32]
  return aArr
endfunction
Alias[] function cArrayCreateAlias033() global
  Alias[] aArr = New Alias[33]
  return aArr
endfunction
Alias[] function cArrayCreateAlias034() global
  Alias[] aArr = New Alias[34]
  return aArr
endfunction
Alias[] function cArrayCreateAlias035() global
  Alias[] aArr = New Alias[35]
  return aArr
endfunction
Alias[] function cArrayCreateAlias036() global
  Alias[] aArr = New Alias[36]
  return aArr
endfunction
Alias[] function cArrayCreateAlias037() global
  Alias[] aArr = New Alias[37]
  return aArr
endfunction
Alias[] function cArrayCreateAlias038() global
  Alias[] aArr = New Alias[38]
  return aArr
endfunction
Alias[] function cArrayCreateAlias039() global
  Alias[] aArr = New Alias[39]
  return aArr
endfunction
Alias[] function cArrayCreateAlias040() global
  Alias[] aArr = New Alias[40]
  return aArr
endfunction
Alias[] function cArrayCreateAlias041() global
  Alias[] aArr = New Alias[41]
  return aArr
endfunction
Alias[] function cArrayCreateAlias042() global
  Alias[] aArr = New Alias[42]
  return aArr
endfunction
Alias[] function cArrayCreateAlias043() global
  Alias[] aArr = New Alias[43]
  return aArr
endfunction
Alias[] function cArrayCreateAlias044() global
  Alias[] aArr = New Alias[44]
  return aArr
endfunction
Alias[] function cArrayCreateAlias045() global
  Alias[] aArr = New Alias[45]
  return aArr
endfunction
Alias[] function cArrayCreateAlias046() global
  Alias[] aArr = New Alias[46]
  return aArr
endfunction
Alias[] function cArrayCreateAlias047() global
  Alias[] aArr = New Alias[47]
  return aArr
endfunction
Alias[] function cArrayCreateAlias048() global
  Alias[] aArr = New Alias[48]
  return aArr
endfunction
Alias[] function cArrayCreateAlias049() global
  Alias[] aArr = New Alias[49]
  return aArr
endfunction
Alias[] function cArrayCreateAlias050() global
  Alias[] aArr = New Alias[50]
  return aArr
endfunction
Alias[] function cArrayCreateAlias051() global
  Alias[] aArr = New Alias[51]
  return aArr
endfunction
Alias[] function cArrayCreateAlias052() global
  Alias[] aArr = New Alias[52]
  return aArr
endfunction
Alias[] function cArrayCreateAlias053() global
  Alias[] aArr = New Alias[53]
  return aArr
endfunction
Alias[] function cArrayCreateAlias054() global
  Alias[] aArr = New Alias[54]
  return aArr
endfunction
Alias[] function cArrayCreateAlias055() global
  Alias[] aArr = New Alias[55]
  return aArr
endfunction
Alias[] function cArrayCreateAlias056() global
  Alias[] aArr = New Alias[56]
  return aArr
endfunction
Alias[] function cArrayCreateAlias057() global
  Alias[] aArr = New Alias[57]
  return aArr
endfunction
Alias[] function cArrayCreateAlias058() global
  Alias[] aArr = New Alias[58]
  return aArr
endfunction
Alias[] function cArrayCreateAlias059() global
  Alias[] aArr = New Alias[59]
  return aArr
endfunction
Alias[] function cArrayCreateAlias060() global
  Alias[] aArr = New Alias[60]
  return aArr
endfunction
Alias[] function cArrayCreateAlias061() global
  Alias[] aArr = New Alias[61]
  return aArr
endfunction
Alias[] function cArrayCreateAlias062() global
  Alias[] aArr = New Alias[62]
  return aArr
endfunction
Alias[] function cArrayCreateAlias063() global
  Alias[] aArr = New Alias[63]
  return aArr
endfunction
Alias[] function cArrayCreateAlias064() global
  Alias[] aArr = New Alias[64]
  return aArr
endfunction
Alias[] function cArrayCreateAlias065() global
  Alias[] aArr = New Alias[65]
  return aArr
endfunction
Alias[] function cArrayCreateAlias066() global
  Alias[] aArr = New Alias[66]
  return aArr
endfunction
Alias[] function cArrayCreateAlias067() global
  Alias[] aArr = New Alias[67]
  return aArr
endfunction
Alias[] function cArrayCreateAlias068() global
  Alias[] aArr = New Alias[68]
  return aArr
endfunction
Alias[] function cArrayCreateAlias069() global
  Alias[] aArr = New Alias[69]
  return aArr
endfunction
Alias[] function cArrayCreateAlias070() global
  Alias[] aArr = New Alias[70]
  return aArr
endfunction
Alias[] function cArrayCreateAlias071() global
  Alias[] aArr = New Alias[71]
  return aArr
endfunction
Alias[] function cArrayCreateAlias072() global
  Alias[] aArr = New Alias[72]
  return aArr
endfunction
Alias[] function cArrayCreateAlias073() global
  Alias[] aArr = New Alias[73]
  return aArr
endfunction
Alias[] function cArrayCreateAlias074() global
  Alias[] aArr = New Alias[74]
  return aArr
endfunction
Alias[] function cArrayCreateAlias075() global
  Alias[] aArr = New Alias[75]
  return aArr
endfunction
Alias[] function cArrayCreateAlias076() global
  Alias[] aArr = New Alias[76]
  return aArr
endfunction
Alias[] function cArrayCreateAlias077() global
  Alias[] aArr = New Alias[77]
  return aArr
endfunction
Alias[] function cArrayCreateAlias078() global
  Alias[] aArr = New Alias[78]
  return aArr
endfunction
Alias[] function cArrayCreateAlias079() global
  Alias[] aArr = New Alias[79]
  return aArr
endfunction
Alias[] function cArrayCreateAlias080() global
  Alias[] aArr = New Alias[80]
  return aArr
endfunction
Alias[] function cArrayCreateAlias081() global
  Alias[] aArr = New Alias[81]
  return aArr
endfunction
Alias[] function cArrayCreateAlias082() global
  Alias[] aArr = New Alias[82]
  return aArr
endfunction
Alias[] function cArrayCreateAlias083() global
  Alias[] aArr = New Alias[83]
  return aArr
endfunction
Alias[] function cArrayCreateAlias084() global
  Alias[] aArr = New Alias[84]
  return aArr
endfunction
Alias[] function cArrayCreateAlias085() global
  Alias[] aArr = New Alias[85]
  return aArr
endfunction
Alias[] function cArrayCreateAlias086() global
  Alias[] aArr = New Alias[86]
  return aArr
endfunction
Alias[] function cArrayCreateAlias087() global
  Alias[] aArr = New Alias[87]
  return aArr
endfunction
Alias[] function cArrayCreateAlias088() global
  Alias[] aArr = New Alias[88]
  return aArr
endfunction
Alias[] function cArrayCreateAlias089() global
  Alias[] aArr = New Alias[89]
  return aArr
endfunction
Alias[] function cArrayCreateAlias090() global
  Alias[] aArr = New Alias[90]
  return aArr
endfunction
Alias[] function cArrayCreateAlias091() global
  Alias[] aArr = New Alias[91]
  return aArr
endfunction
Alias[] function cArrayCreateAlias092() global
  Alias[] aArr = New Alias[92]
  return aArr
endfunction
Alias[] function cArrayCreateAlias093() global
  Alias[] aArr = New Alias[93]
  return aArr
endfunction
Alias[] function cArrayCreateAlias094() global
  Alias[] aArr = New Alias[94]
  return aArr
endfunction
Alias[] function cArrayCreateAlias095() global
  Alias[] aArr = New Alias[95]
  return aArr
endfunction
Alias[] function cArrayCreateAlias096() global
  Alias[] aArr = New Alias[96]
  return aArr
endfunction
Alias[] function cArrayCreateAlias097() global
  Alias[] aArr = New Alias[97]
  return aArr
endfunction
Alias[] function cArrayCreateAlias098() global
  Alias[] aArr = New Alias[98]
  return aArr
endfunction
Alias[] function cArrayCreateAlias099() global
  Alias[] aArr = New Alias[99]
  return aArr
endfunction
Alias[] function cArrayCreateAlias100() global
  Alias[] aArr = New Alias[100]
  return aArr
endfunction
Alias[] function cArrayCreateAlias101() global
  Alias[] aArr = New Alias[101]
  return aArr
endfunction
Alias[] function cArrayCreateAlias102() global
  Alias[] aArr = New Alias[102]
  return aArr
endfunction
Alias[] function cArrayCreateAlias103() global
  Alias[] aArr = New Alias[103]
  return aArr
endfunction
Alias[] function cArrayCreateAlias104() global
  Alias[] aArr = New Alias[104]
  return aArr
endfunction
Alias[] function cArrayCreateAlias105() global
  Alias[] aArr = New Alias[105]
  return aArr
endfunction
Alias[] function cArrayCreateAlias106() global
  Alias[] aArr = New Alias[106]
  return aArr
endfunction
Alias[] function cArrayCreateAlias107() global
  Alias[] aArr = New Alias[107]
  return aArr
endfunction
Alias[] function cArrayCreateAlias108() global
  Alias[] aArr = New Alias[108]
  return aArr
endfunction
Alias[] function cArrayCreateAlias109() global
  Alias[] aArr = New Alias[109]
  return aArr
endfunction
Alias[] function cArrayCreateAlias110() global
  Alias[] aArr = New Alias[110]
  return aArr
endfunction
Alias[] function cArrayCreateAlias111() global
  Alias[] aArr = New Alias[111]
  return aArr
endfunction
Alias[] function cArrayCreateAlias112() global
  Alias[] aArr = New Alias[112]
  return aArr
endfunction
Alias[] function cArrayCreateAlias113() global
  Alias[] aArr = New Alias[113]
  return aArr
endfunction
Alias[] function cArrayCreateAlias114() global
  Alias[] aArr = New Alias[114]
  return aArr
endfunction
Alias[] function cArrayCreateAlias115() global
  Alias[] aArr = New Alias[115]
  return aArr
endfunction
Alias[] function cArrayCreateAlias116() global
  Alias[] aArr = New Alias[116]
  return aArr
endfunction
Alias[] function cArrayCreateAlias117() global
  Alias[] aArr = New Alias[117]
  return aArr
endfunction
Alias[] function cArrayCreateAlias118() global
  Alias[] aArr = New Alias[118]
  return aArr
endfunction
Alias[] function cArrayCreateAlias119() global
  Alias[] aArr = New Alias[119]
  return aArr
endfunction
Alias[] function cArrayCreateAlias120() global
  Alias[] aArr = New Alias[120]
  return aArr
endfunction
Alias[] function cArrayCreateAlias121() global
  Alias[] aArr = New Alias[121]
  return aArr
endfunction
Alias[] function cArrayCreateAlias122() global
  Alias[] aArr = New Alias[122]
  return aArr
endfunction
Alias[] function cArrayCreateAlias123() global
  Alias[] aArr = New Alias[123]
  return aArr
endfunction
Alias[] function cArrayCreateAlias124() global
  Alias[] aArr = New Alias[124]
  return aArr
endfunction
Alias[] function cArrayCreateAlias125() global
  Alias[] aArr = New Alias[125]
  return aArr
endfunction
Alias[] function cArrayCreateAlias126() global
  Alias[] aArr = New Alias[126]
  return aArr
endfunction
Alias[] function cArrayCreateAlias127() global
  Alias[] aArr = New Alias[127]
  return aArr
endfunction
Alias[] function cArrayCreateAlias128() global
  Alias[] aArr = New Alias[128]
  return aArr
endfunction


Bool[] function cArrayCreateBool(Int indices, Bool filler = False, Bool useSKSE = TRUE, Bool outputTrace = TRUE, \
    Bool useConsoleUtil = TRUE) global
  {Requirements: None, SKSE:Soft}
  Bool[] aArray
  if useSKSE && indices > 0
    aArray = Utility.CreateBoolArray(indices, filler)
  elseif indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; useConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateBool()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayBool::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateBool001()
              elseif indices < 3
                aArray = cArrayCreateBool002()
              elseif indices < 4
                aArray = cArrayCreateBool003()
              else
                aArray = cArrayCreateBool004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateBool005()
              elseif indices < 7
                aArray = cArrayCreateBool006()
              elseif indices < 8
                aArray = cArrayCreateBool007()
              else
                aArray = cArrayCreateBool008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateBool009()
              elseif indices < 11
                aArray = cArrayCreateBool010()
              elseif indices < 12
                aArray = cArrayCreateBool011()
              else
                aArray = cArrayCreateBool012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateBool013()
              elseif indices < 15
                aArray = cArrayCreateBool014()
              elseif indices < 16
                aArray = cArrayCreateBool015()
              else
                aArray = cArrayCreateBool016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateBool017()
              elseif indices < 19
                aArray = cArrayCreateBool018()
              elseif indices < 20
                aArray = cArrayCreateBool019()
              else
                aArray = cArrayCreateBool020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateBool021()
              elseif indices < 23
                aArray = cArrayCreateBool022()
              elseif indices < 24
                aArray = cArrayCreateBool023()
              else
                aArray = cArrayCreateBool024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateBool025()
              elseif indices < 27
                aArray = cArrayCreateBool026()
              elseif indices < 28
                aArray = cArrayCreateBool027()
              else
                aArray = cArrayCreateBool028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateBool029()
              elseif indices < 31
                aArray = cArrayCreateBool030()
              elseif indices < 32
                aArray = cArrayCreateBool031()
              else
                aArray = cArrayCreateBool032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateBool033()
              elseif indices < 35
                aArray = cArrayCreateBool034()
              elseif indices < 36
                aArray = cArrayCreateBool035()
              else
                aArray = cArrayCreateBool036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateBool037()
              elseif indices < 39
                aArray = cArrayCreateBool038()
              elseif indices < 40
                aArray = cArrayCreateBool039()
              else
                aArray = cArrayCreateBool040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateBool041()
              elseif indices < 43
                aArray = cArrayCreateBool042()
              elseif indices < 44
                aArray = cArrayCreateBool043()
              else
                aArray = cArrayCreateBool044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateBool045()
              elseif indices < 47
                aArray = cArrayCreateBool046()
              elseif indices < 48
                aArray = cArrayCreateBool047()
              else
                aArray = cArrayCreateBool048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateBool049()
              elseif indices < 51
                aArray = cArrayCreateBool050()
              elseif indices < 52
                aArray = cArrayCreateBool051()
              else
                aArray = cArrayCreateBool052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateBool053()
              elseif indices < 55
                aArray = cArrayCreateBool054()
              elseif indices < 56
                aArray = cArrayCreateBool055()
              else
                aArray = cArrayCreateBool056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateBool057()
              elseif indices < 59
                aArray = cArrayCreateBool058()
              elseif indices < 60
                aArray = cArrayCreateBool059()
              else
                aArray = cArrayCreateBool060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateBool061()
              elseif indices < 63
                aArray = cArrayCreateBool062()
              elseif indices < 64
                aArray = cArrayCreateBool063()
              else
                aArray = cArrayCreateBool064()
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
                aArray = cArrayCreateBool065()
              elseif indices < 67
                aArray = cArrayCreateBool066()
              elseif indices < 68
                aArray = cArrayCreateBool067()
              else
                aArray = cArrayCreateBool068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateBool069()
              elseif indices < 71
                aArray = cArrayCreateBool070()
              elseif indices < 72
                aArray = cArrayCreateBool071()
              else
                aArray = cArrayCreateBool072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateBool073()
              elseif indices < 75
                aArray = cArrayCreateBool074()
              elseif indices < 76
                aArray = cArrayCreateBool075()
              else
                aArray = cArrayCreateBool076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateBool077()
              elseif indices < 79
                aArray = cArrayCreateBool078()
              elseif indices < 80
                aArray = cArrayCreateBool079()
              else
                aArray = cArrayCreateBool080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateBool081()
              elseif indices < 83
                aArray = cArrayCreateBool082()
              elseif indices < 84
                aArray = cArrayCreateBool083()
              else
                aArray = cArrayCreateBool084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateBool085()
              elseif indices < 87
                aArray = cArrayCreateBool086()
              elseif indices < 88
                aArray = cArrayCreateBool087()
              else
                aArray = cArrayCreateBool088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateBool089()
              elseif indices < 91
                aArray = cArrayCreateBool090()
              elseif indices < 92
                aArray = cArrayCreateBool091()
              else
                aArray = cArrayCreateBool092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateBool093()
              elseif indices < 95
                aArray = cArrayCreateBool094()
              elseif indices < 96
                aArray = cArrayCreateBool095()
              else
                aArray = cArrayCreateBool096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateBool097()
              elseif indices < 99
                aArray = cArrayCreateBool098()
              elseif indices < 100
                aArray = cArrayCreateBool099()
              else
                aArray = cArrayCreateBool100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateBool101()
              elseif indices < 103
                aArray = cArrayCreateBool102()
              elseif indices < 104
                aArray = cArrayCreateBool103()
              else
                aArray = cArrayCreateBool104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateBool105()
              elseif indices < 107
                aArray = cArrayCreateBool106()
              elseif indices < 108
                aArray = cArrayCreateBool107()
              else
                aArray = cArrayCreateBool108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateBool109()
              elseif indices < 111
                aArray = cArrayCreateBool110()
              elseif indices < 112
                aArray = cArrayCreateBool111()
              else
                aArray = cArrayCreateBool112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateBool113()
              elseif indices < 115
                aArray = cArrayCreateBool114()
              elseif indices < 116
                aArray = cArrayCreateBool115()
              else
                aArray = cArrayCreateBool116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateBool117()
              elseif indices < 119
                aArray = cArrayCreateBool118()
              elseif indices < 120
                aArray = cArrayCreateBool119()
              else
                aArray = cArrayCreateBool120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateBool121()
              elseif indices < 123
                aArray = cArrayCreateBool122()
              elseif indices < 124
                aArray = cArrayCreateBool123()
              else
                aArray = cArrayCreateBool124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateBool125()
              elseif indices < 127
                aArray = cArrayCreateBool126()
              elseif indices < 128
                aArray = cArrayCreateBool127()
              else
                aArray = cArrayCreateBool128()
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
Bool[] function cArrayCreateBool001() global
  Bool[] aArr = New Bool[1]
  return aArr
endfunction
Bool[] function cArrayCreateBool002() global
  Bool[] aArr = New Bool[2]
  return aArr
endfunction
Bool[] function cArrayCreateBool003() global
  Bool[] aArr = New Bool[3]
  return aArr
endfunction
Bool[] function cArrayCreateBool004() global
  Bool[] aArr = New Bool[4]
  return aArr
endfunction
Bool[] function cArrayCreateBool005() global
  Bool[] aArr = New Bool[5]
  return aArr
endfunction
Bool[] function cArrayCreateBool006() global
  Bool[] aArr = New Bool[6]
  return aArr
endfunction
Bool[] function cArrayCreateBool007() global
  Bool[] aArr = New Bool[7]
  return aArr
endfunction
Bool[] function cArrayCreateBool008() global
  Bool[] aArr = New Bool[8]
  return aArr
endfunction
Bool[] function cArrayCreateBool009() global
  Bool[] aArr = New Bool[9]
  return aArr
endfunction
Bool[] function cArrayCreateBool010() global
  Bool[] aArr = New Bool[10]
  return aArr
endfunction
Bool[] function cArrayCreateBool011() global
  Bool[] aArr = New Bool[11]
  return aArr
endfunction
Bool[] function cArrayCreateBool012() global
  Bool[] aArr = New Bool[12]
  return aArr
endfunction
Bool[] function cArrayCreateBool013() global
  Bool[] aArr = New Bool[13]
  return aArr
endfunction
Bool[] function cArrayCreateBool014() global
  Bool[] aArr = New Bool[14]
  return aArr
endfunction
Bool[] function cArrayCreateBool015() global
  Bool[] aArr = New Bool[15]
  return aArr
endfunction
Bool[] function cArrayCreateBool016() global
  Bool[] aArr = New Bool[16]
  return aArr
endfunction
Bool[] function cArrayCreateBool017() global
  Bool[] aArr = New Bool[17]
  return aArr
endfunction
Bool[] function cArrayCreateBool018() global
  Bool[] aArr = New Bool[18]
  return aArr
endfunction
Bool[] function cArrayCreateBool019() global
  Bool[] aArr = New Bool[19]
  return aArr
endfunction
Bool[] function cArrayCreateBool020() global
  Bool[] aArr = New Bool[20]
  return aArr
endfunction
Bool[] function cArrayCreateBool021() global
  Bool[] aArr = New Bool[21]
  return aArr
endfunction
Bool[] function cArrayCreateBool022() global
  Bool[] aArr = New Bool[22]
  return aArr
endfunction
Bool[] function cArrayCreateBool023() global
  Bool[] aArr = New Bool[23]
  return aArr
endfunction
Bool[] function cArrayCreateBool024() global
  Bool[] aArr = New Bool[24]
  return aArr
endfunction
Bool[] function cArrayCreateBool025() global
  Bool[] aArr = New Bool[25]
  return aArr
endfunction
Bool[] function cArrayCreateBool026() global
  Bool[] aArr = New Bool[26]
  return aArr
endfunction
Bool[] function cArrayCreateBool027() global
  Bool[] aArr = New Bool[27]
  return aArr
endfunction
Bool[] function cArrayCreateBool028() global
  Bool[] aArr = New Bool[28]
  return aArr
endfunction
Bool[] function cArrayCreateBool029() global
  Bool[] aArr = New Bool[29]
  return aArr
endfunction
Bool[] function cArrayCreateBool030() global
  Bool[] aArr = New Bool[30]
  return aArr
endfunction
Bool[] function cArrayCreateBool031() global
  Bool[] aArr = New Bool[31]
  return aArr
endfunction
Bool[] function cArrayCreateBool032() global
  Bool[] aArr = New Bool[32]
  return aArr
endfunction
Bool[] function cArrayCreateBool033() global
  Bool[] aArr = New Bool[33]
  return aArr
endfunction
Bool[] function cArrayCreateBool034() global
  Bool[] aArr = New Bool[34]
  return aArr
endfunction
Bool[] function cArrayCreateBool035() global
  Bool[] aArr = New Bool[35]
  return aArr
endfunction
Bool[] function cArrayCreateBool036() global
  Bool[] aArr = New Bool[36]
  return aArr
endfunction
Bool[] function cArrayCreateBool037() global
  Bool[] aArr = New Bool[37]
  return aArr
endfunction
Bool[] function cArrayCreateBool038() global
  Bool[] aArr = New Bool[38]
  return aArr
endfunction
Bool[] function cArrayCreateBool039() global
  Bool[] aArr = New Bool[39]
  return aArr
endfunction
Bool[] function cArrayCreateBool040() global
  Bool[] aArr = New Bool[40]
  return aArr
endfunction
Bool[] function cArrayCreateBool041() global
  Bool[] aArr = New Bool[41]
  return aArr
endfunction
Bool[] function cArrayCreateBool042() global
  Bool[] aArr = New Bool[42]
  return aArr
endfunction
Bool[] function cArrayCreateBool043() global
  Bool[] aArr = New Bool[43]
  return aArr
endfunction
Bool[] function cArrayCreateBool044() global
  Bool[] aArr = New Bool[44]
  return aArr
endfunction
Bool[] function cArrayCreateBool045() global
  Bool[] aArr = New Bool[45]
  return aArr
endfunction
Bool[] function cArrayCreateBool046() global
  Bool[] aArr = New Bool[46]
  return aArr
endfunction
Bool[] function cArrayCreateBool047() global
  Bool[] aArr = New Bool[47]
  return aArr
endfunction
Bool[] function cArrayCreateBool048() global
  Bool[] aArr = New Bool[48]
  return aArr
endfunction
Bool[] function cArrayCreateBool049() global
  Bool[] aArr = New Bool[49]
  return aArr
endfunction
Bool[] function cArrayCreateBool050() global
  Bool[] aArr = New Bool[50]
  return aArr
endfunction
Bool[] function cArrayCreateBool051() global
  Bool[] aArr = New Bool[51]
  return aArr
endfunction
Bool[] function cArrayCreateBool052() global
  Bool[] aArr = New Bool[52]
  return aArr
endfunction
Bool[] function cArrayCreateBool053() global
  Bool[] aArr = New Bool[53]
  return aArr
endfunction
Bool[] function cArrayCreateBool054() global
  Bool[] aArr = New Bool[54]
  return aArr
endfunction
Bool[] function cArrayCreateBool055() global
  Bool[] aArr = New Bool[55]
  return aArr
endfunction
Bool[] function cArrayCreateBool056() global
  Bool[] aArr = New Bool[56]
  return aArr
endfunction
Bool[] function cArrayCreateBool057() global
  Bool[] aArr = New Bool[57]
  return aArr
endfunction
Bool[] function cArrayCreateBool058() global
  Bool[] aArr = New Bool[58]
  return aArr
endfunction
Bool[] function cArrayCreateBool059() global
  Bool[] aArr = New Bool[59]
  return aArr
endfunction
Bool[] function cArrayCreateBool060() global
  Bool[] aArr = New Bool[60]
  return aArr
endfunction
Bool[] function cArrayCreateBool061() global
  Bool[] aArr = New Bool[61]
  return aArr
endfunction
Bool[] function cArrayCreateBool062() global
  Bool[] aArr = New Bool[62]
  return aArr
endfunction
Bool[] function cArrayCreateBool063() global
  Bool[] aArr = New Bool[63]
  return aArr
endfunction
Bool[] function cArrayCreateBool064() global
  Bool[] aArr = New Bool[64]
  return aArr
endfunction
Bool[] function cArrayCreateBool065() global
  Bool[] aArr = New Bool[65]
  return aArr
endfunction
Bool[] function cArrayCreateBool066() global
  Bool[] aArr = New Bool[66]
  return aArr
endfunction
Bool[] function cArrayCreateBool067() global
  Bool[] aArr = New Bool[67]
  return aArr
endfunction
Bool[] function cArrayCreateBool068() global
  Bool[] aArr = New Bool[68]
  return aArr
endfunction
Bool[] function cArrayCreateBool069() global
  Bool[] aArr = New Bool[69]
  return aArr
endfunction
Bool[] function cArrayCreateBool070() global
  Bool[] aArr = New Bool[70]
  return aArr
endfunction
Bool[] function cArrayCreateBool071() global
  Bool[] aArr = New Bool[71]
  return aArr
endfunction
Bool[] function cArrayCreateBool072() global
  Bool[] aArr = New Bool[72]
  return aArr
endfunction
Bool[] function cArrayCreateBool073() global
  Bool[] aArr = New Bool[73]
  return aArr
endfunction
Bool[] function cArrayCreateBool074() global
  Bool[] aArr = New Bool[74]
  return aArr
endfunction
Bool[] function cArrayCreateBool075() global
  Bool[] aArr = New Bool[75]
  return aArr
endfunction
Bool[] function cArrayCreateBool076() global
  Bool[] aArr = New Bool[76]
  return aArr
endfunction
Bool[] function cArrayCreateBool077() global
  Bool[] aArr = New Bool[77]
  return aArr
endfunction
Bool[] function cArrayCreateBool078() global
  Bool[] aArr = New Bool[78]
  return aArr
endfunction
Bool[] function cArrayCreateBool079() global
  Bool[] aArr = New Bool[79]
  return aArr
endfunction
Bool[] function cArrayCreateBool080() global
  Bool[] aArr = New Bool[80]
  return aArr
endfunction
Bool[] function cArrayCreateBool081() global
  Bool[] aArr = New Bool[81]
  return aArr
endfunction
Bool[] function cArrayCreateBool082() global
  Bool[] aArr = New Bool[82]
  return aArr
endfunction
Bool[] function cArrayCreateBool083() global
  Bool[] aArr = New Bool[83]
  return aArr
endfunction
Bool[] function cArrayCreateBool084() global
  Bool[] aArr = New Bool[84]
  return aArr
endfunction
Bool[] function cArrayCreateBool085() global
  Bool[] aArr = New Bool[85]
  return aArr
endfunction
Bool[] function cArrayCreateBool086() global
  Bool[] aArr = New Bool[86]
  return aArr
endfunction
Bool[] function cArrayCreateBool087() global
  Bool[] aArr = New Bool[87]
  return aArr
endfunction
Bool[] function cArrayCreateBool088() global
  Bool[] aArr = New Bool[88]
  return aArr
endfunction
Bool[] function cArrayCreateBool089() global
  Bool[] aArr = New Bool[89]
  return aArr
endfunction
Bool[] function cArrayCreateBool090() global
  Bool[] aArr = New Bool[90]
  return aArr
endfunction
Bool[] function cArrayCreateBool091() global
  Bool[] aArr = New Bool[91]
  return aArr
endfunction
Bool[] function cArrayCreateBool092() global
  Bool[] aArr = New Bool[92]
  return aArr
endfunction
Bool[] function cArrayCreateBool093() global
  Bool[] aArr = New Bool[93]
  return aArr
endfunction
Bool[] function cArrayCreateBool094() global
  Bool[] aArr = New Bool[94]
  return aArr
endfunction
Bool[] function cArrayCreateBool095() global
  Bool[] aArr = New Bool[95]
  return aArr
endfunction
Bool[] function cArrayCreateBool096() global
  Bool[] aArr = New Bool[96]
  return aArr
endfunction
Bool[] function cArrayCreateBool097() global
  Bool[] aArr = New Bool[97]
  return aArr
endfunction
Bool[] function cArrayCreateBool098() global
  Bool[] aArr = New Bool[98]
  return aArr
endfunction
Bool[] function cArrayCreateBool099() global
  Bool[] aArr = New Bool[99]
  return aArr
endfunction
Bool[] function cArrayCreateBool100() global
  Bool[] aArr = New Bool[100]
  return aArr
endfunction
Bool[] function cArrayCreateBool101() global
  Bool[] aArr = New Bool[101]
  return aArr
endfunction
Bool[] function cArrayCreateBool102() global
  Bool[] aArr = New Bool[102]
  return aArr
endfunction
Bool[] function cArrayCreateBool103() global
  Bool[] aArr = New Bool[103]
  return aArr
endfunction
Bool[] function cArrayCreateBool104() global
  Bool[] aArr = New Bool[104]
  return aArr
endfunction
Bool[] function cArrayCreateBool105() global
  Bool[] aArr = New Bool[105]
  return aArr
endfunction
Bool[] function cArrayCreateBool106() global
  Bool[] aArr = New Bool[106]
  return aArr
endfunction
Bool[] function cArrayCreateBool107() global
  Bool[] aArr = New Bool[107]
  return aArr
endfunction
Bool[] function cArrayCreateBool108() global
  Bool[] aArr = New Bool[108]
  return aArr
endfunction
Bool[] function cArrayCreateBool109() global
  Bool[] aArr = New Bool[109]
  return aArr
endfunction
Bool[] function cArrayCreateBool110() global
  Bool[] aArr = New Bool[110]
  return aArr
endfunction
Bool[] function cArrayCreateBool111() global
  Bool[] aArr = New Bool[111]
  return aArr
endfunction
Bool[] function cArrayCreateBool112() global
  Bool[] aArr = New Bool[112]
  return aArr
endfunction
Bool[] function cArrayCreateBool113() global
  Bool[] aArr = New Bool[113]
  return aArr
endfunction
Bool[] function cArrayCreateBool114() global
  Bool[] aArr = New Bool[114]
  return aArr
endfunction
Bool[] function cArrayCreateBool115() global
  Bool[] aArr = New Bool[115]
  return aArr
endfunction
Bool[] function cArrayCreateBool116() global
  Bool[] aArr = New Bool[116]
  return aArr
endfunction
Bool[] function cArrayCreateBool117() global
  Bool[] aArr = New Bool[117]
  return aArr
endfunction
Bool[] function cArrayCreateBool118() global
  Bool[] aArr = New Bool[118]
  return aArr
endfunction
Bool[] function cArrayCreateBool119() global
  Bool[] aArr = New Bool[119]
  return aArr
endfunction
Bool[] function cArrayCreateBool120() global
  Bool[] aArr = New Bool[120]
  return aArr
endfunction
Bool[] function cArrayCreateBool121() global
  Bool[] aArr = New Bool[121]
  return aArr
endfunction
Bool[] function cArrayCreateBool122() global
  Bool[] aArr = New Bool[122]
  return aArr
endfunction
Bool[] function cArrayCreateBool123() global
  Bool[] aArr = New Bool[123]
  return aArr
endfunction
Bool[] function cArrayCreateBool124() global
  Bool[] aArr = New Bool[124]
  return aArr
endfunction
Bool[] function cArrayCreateBool125() global
  Bool[] aArr = New Bool[125]
  return aArr
endfunction
Bool[] function cArrayCreateBool126() global
  Bool[] aArr = New Bool[126]
  return aArr
endfunction
Bool[] function cArrayCreateBool127() global
  Bool[] aArr = New Bool[127]
  return aArr
endfunction
Bool[] function cArrayCreateBool128() global
  Bool[] aArr = New Bool[128]
  return aArr
endfunction


Float[] function cArrayCreateFloat(Int indices, Float filler = 0.0, Bool useSKSE = TRUE, Bool outputTrace = TRUE, \
    Bool useConsoleUtil = TRUE) global
  {Requirements: None, SKSE:Soft}
  Float[] aArray
  if useSKSE && indices > 0
    aArray = Utility.CreateFloatArray(indices, filler)
  elseif indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; useConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateFloat()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayFloat::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateFloat001()
              elseif indices < 3
                aArray = cArrayCreateFloat002()
              elseif indices < 4
                aArray = cArrayCreateFloat003()
              else
                aArray = cArrayCreateFloat004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateFloat005()
              elseif indices < 7
                aArray = cArrayCreateFloat006()
              elseif indices < 8
                aArray = cArrayCreateFloat007()
              else
                aArray = cArrayCreateFloat008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateFloat009()
              elseif indices < 11
                aArray = cArrayCreateFloat010()
              elseif indices < 12
                aArray = cArrayCreateFloat011()
              else
                aArray = cArrayCreateFloat012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateFloat013()
              elseif indices < 15
                aArray = cArrayCreateFloat014()
              elseif indices < 16
                aArray = cArrayCreateFloat015()
              else
                aArray = cArrayCreateFloat016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateFloat017()
              elseif indices < 19
                aArray = cArrayCreateFloat018()
              elseif indices < 20
                aArray = cArrayCreateFloat019()
              else
                aArray = cArrayCreateFloat020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateFloat021()
              elseif indices < 23
                aArray = cArrayCreateFloat022()
              elseif indices < 24
                aArray = cArrayCreateFloat023()
              else
                aArray = cArrayCreateFloat024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateFloat025()
              elseif indices < 27
                aArray = cArrayCreateFloat026()
              elseif indices < 28
                aArray = cArrayCreateFloat027()
              else
                aArray = cArrayCreateFloat028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateFloat029()
              elseif indices < 31
                aArray = cArrayCreateFloat030()
              elseif indices < 32
                aArray = cArrayCreateFloat031()
              else
                aArray = cArrayCreateFloat032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateFloat033()
              elseif indices < 35
                aArray = cArrayCreateFloat034()
              elseif indices < 36
                aArray = cArrayCreateFloat035()
              else
                aArray = cArrayCreateFloat036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateFloat037()
              elseif indices < 39
                aArray = cArrayCreateFloat038()
              elseif indices < 40
                aArray = cArrayCreateFloat039()
              else
                aArray = cArrayCreateFloat040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateFloat041()
              elseif indices < 43
                aArray = cArrayCreateFloat042()
              elseif indices < 44
                aArray = cArrayCreateFloat043()
              else
                aArray = cArrayCreateFloat044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateFloat045()
              elseif indices < 47
                aArray = cArrayCreateFloat046()
              elseif indices < 48
                aArray = cArrayCreateFloat047()
              else
                aArray = cArrayCreateFloat048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateFloat049()
              elseif indices < 51
                aArray = cArrayCreateFloat050()
              elseif indices < 52
                aArray = cArrayCreateFloat051()
              else
                aArray = cArrayCreateFloat052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateFloat053()
              elseif indices < 55
                aArray = cArrayCreateFloat054()
              elseif indices < 56
                aArray = cArrayCreateFloat055()
              else
                aArray = cArrayCreateFloat056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateFloat057()
              elseif indices < 59
                aArray = cArrayCreateFloat058()
              elseif indices < 60
                aArray = cArrayCreateFloat059()
              else
                aArray = cArrayCreateFloat060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateFloat061()
              elseif indices < 63
                aArray = cArrayCreateFloat062()
              elseif indices < 64
                aArray = cArrayCreateFloat063()
              else
                aArray = cArrayCreateFloat064()
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
                aArray = cArrayCreateFloat065()
              elseif indices < 67
                aArray = cArrayCreateFloat066()
              elseif indices < 68
                aArray = cArrayCreateFloat067()
              else
                aArray = cArrayCreateFloat068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateFloat069()
              elseif indices < 71
                aArray = cArrayCreateFloat070()
              elseif indices < 72
                aArray = cArrayCreateFloat071()
              else
                aArray = cArrayCreateFloat072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateFloat073()
              elseif indices < 75
                aArray = cArrayCreateFloat074()
              elseif indices < 76
                aArray = cArrayCreateFloat075()
              else
                aArray = cArrayCreateFloat076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateFloat077()
              elseif indices < 79
                aArray = cArrayCreateFloat078()
              elseif indices < 80
                aArray = cArrayCreateFloat079()
              else
                aArray = cArrayCreateFloat080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateFloat081()
              elseif indices < 83
                aArray = cArrayCreateFloat082()
              elseif indices < 84
                aArray = cArrayCreateFloat083()
              else
                aArray = cArrayCreateFloat084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateFloat085()
              elseif indices < 87
                aArray = cArrayCreateFloat086()
              elseif indices < 88
                aArray = cArrayCreateFloat087()
              else
                aArray = cArrayCreateFloat088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateFloat089()
              elseif indices < 91
                aArray = cArrayCreateFloat090()
              elseif indices < 92
                aArray = cArrayCreateFloat091()
              else
                aArray = cArrayCreateFloat092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateFloat093()
              elseif indices < 95
                aArray = cArrayCreateFloat094()
              elseif indices < 96
                aArray = cArrayCreateFloat095()
              else
                aArray = cArrayCreateFloat096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateFloat097()
              elseif indices < 99
                aArray = cArrayCreateFloat098()
              elseif indices < 100
                aArray = cArrayCreateFloat099()
              else
                aArray = cArrayCreateFloat100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateFloat101()
              elseif indices < 103
                aArray = cArrayCreateFloat102()
              elseif indices < 104
                aArray = cArrayCreateFloat103()
              else
                aArray = cArrayCreateFloat104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateFloat105()
              elseif indices < 107
                aArray = cArrayCreateFloat106()
              elseif indices < 108
                aArray = cArrayCreateFloat107()
              else
                aArray = cArrayCreateFloat108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateFloat109()
              elseif indices < 111
                aArray = cArrayCreateFloat110()
              elseif indices < 112
                aArray = cArrayCreateFloat111()
              else
                aArray = cArrayCreateFloat112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateFloat113()
              elseif indices < 115
                aArray = cArrayCreateFloat114()
              elseif indices < 116
                aArray = cArrayCreateFloat115()
              else
                aArray = cArrayCreateFloat116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateFloat117()
              elseif indices < 119
                aArray = cArrayCreateFloat118()
              elseif indices < 120
                aArray = cArrayCreateFloat119()
              else
                aArray = cArrayCreateFloat120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateFloat121()
              elseif indices < 123
                aArray = cArrayCreateFloat122()
              elseif indices < 124
                aArray = cArrayCreateFloat123()
              else
                aArray = cArrayCreateFloat124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateFloat125()
              elseif indices < 127
                aArray = cArrayCreateFloat126()
              elseif indices < 128
                aArray = cArrayCreateFloat127()
              else
                aArray = cArrayCreateFloat128()
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
Float[] function cArrayCreateFloat001() global
  Float[] aArr = New Float[1]
  return aArr
endfunction
Float[] function cArrayCreateFloat002() global
  Float[] aArr = New Float[2]
  return aArr
endfunction
Float[] function cArrayCreateFloat003() global
  Float[] aArr = New Float[3]
  return aArr
endfunction
Float[] function cArrayCreateFloat004() global
  Float[] aArr = New Float[4]
  return aArr
endfunction
Float[] function cArrayCreateFloat005() global
  Float[] aArr = New Float[5]
  return aArr
endfunction
Float[] function cArrayCreateFloat006() global
  Float[] aArr = New Float[6]
  return aArr
endfunction
Float[] function cArrayCreateFloat007() global
  Float[] aArr = New Float[7]
  return aArr
endfunction
Float[] function cArrayCreateFloat008() global
  Float[] aArr = New Float[8]
  return aArr
endfunction
Float[] function cArrayCreateFloat009() global
  Float[] aArr = New Float[9]
  return aArr
endfunction
Float[] function cArrayCreateFloat010() global
  Float[] aArr = New Float[10]
  return aArr
endfunction
Float[] function cArrayCreateFloat011() global
  Float[] aArr = New Float[11]
  return aArr
endfunction
Float[] function cArrayCreateFloat012() global
  Float[] aArr = New Float[12]
  return aArr
endfunction
Float[] function cArrayCreateFloat013() global
  Float[] aArr = New Float[13]
  return aArr
endfunction
Float[] function cArrayCreateFloat014() global
  Float[] aArr = New Float[14]
  return aArr
endfunction
Float[] function cArrayCreateFloat015() global
  Float[] aArr = New Float[15]
  return aArr
endfunction
Float[] function cArrayCreateFloat016() global
  Float[] aArr = New Float[16]
  return aArr
endfunction
Float[] function cArrayCreateFloat017() global
  Float[] aArr = New Float[17]
  return aArr
endfunction
Float[] function cArrayCreateFloat018() global
  Float[] aArr = New Float[18]
  return aArr
endfunction
Float[] function cArrayCreateFloat019() global
  Float[] aArr = New Float[19]
  return aArr
endfunction
Float[] function cArrayCreateFloat020() global
  Float[] aArr = New Float[20]
  return aArr
endfunction
Float[] function cArrayCreateFloat021() global
  Float[] aArr = New Float[21]
  return aArr
endfunction
Float[] function cArrayCreateFloat022() global
  Float[] aArr = New Float[22]
  return aArr
endfunction
Float[] function cArrayCreateFloat023() global
  Float[] aArr = New Float[23]
  return aArr
endfunction
Float[] function cArrayCreateFloat024() global
  Float[] aArr = New Float[24]
  return aArr
endfunction
Float[] function cArrayCreateFloat025() global
  Float[] aArr = New Float[25]
  return aArr
endfunction
Float[] function cArrayCreateFloat026() global
  Float[] aArr = New Float[26]
  return aArr
endfunction
Float[] function cArrayCreateFloat027() global
  Float[] aArr = New Float[27]
  return aArr
endfunction
Float[] function cArrayCreateFloat028() global
  Float[] aArr = New Float[28]
  return aArr
endfunction
Float[] function cArrayCreateFloat029() global
  Float[] aArr = New Float[29]
  return aArr
endfunction
Float[] function cArrayCreateFloat030() global
  Float[] aArr = New Float[30]
  return aArr
endfunction
Float[] function cArrayCreateFloat031() global
  Float[] aArr = New Float[31]
  return aArr
endfunction
Float[] function cArrayCreateFloat032() global
  Float[] aArr = New Float[32]
  return aArr
endfunction
Float[] function cArrayCreateFloat033() global
  Float[] aArr = New Float[33]
  return aArr
endfunction
Float[] function cArrayCreateFloat034() global
  Float[] aArr = New Float[34]
  return aArr
endfunction
Float[] function cArrayCreateFloat035() global
  Float[] aArr = New Float[35]
  return aArr
endfunction
Float[] function cArrayCreateFloat036() global
  Float[] aArr = New Float[36]
  return aArr
endfunction
Float[] function cArrayCreateFloat037() global
  Float[] aArr = New Float[37]
  return aArr
endfunction
Float[] function cArrayCreateFloat038() global
  Float[] aArr = New Float[38]
  return aArr
endfunction
Float[] function cArrayCreateFloat039() global
  Float[] aArr = New Float[39]
  return aArr
endfunction
Float[] function cArrayCreateFloat040() global
  Float[] aArr = New Float[40]
  return aArr
endfunction
Float[] function cArrayCreateFloat041() global
  Float[] aArr = New Float[41]
  return aArr
endfunction
Float[] function cArrayCreateFloat042() global
  Float[] aArr = New Float[42]
  return aArr
endfunction
Float[] function cArrayCreateFloat043() global
  Float[] aArr = New Float[43]
  return aArr
endfunction
Float[] function cArrayCreateFloat044() global
  Float[] aArr = New Float[44]
  return aArr
endfunction
Float[] function cArrayCreateFloat045() global
  Float[] aArr = New Float[45]
  return aArr
endfunction
Float[] function cArrayCreateFloat046() global
  Float[] aArr = New Float[46]
  return aArr
endfunction
Float[] function cArrayCreateFloat047() global
  Float[] aArr = New Float[47]
  return aArr
endfunction
Float[] function cArrayCreateFloat048() global
  Float[] aArr = New Float[48]
  return aArr
endfunction
Float[] function cArrayCreateFloat049() global
  Float[] aArr = New Float[49]
  return aArr
endfunction
Float[] function cArrayCreateFloat050() global
  Float[] aArr = New Float[50]
  return aArr
endfunction
Float[] function cArrayCreateFloat051() global
  Float[] aArr = New Float[51]
  return aArr
endfunction
Float[] function cArrayCreateFloat052() global
  Float[] aArr = New Float[52]
  return aArr
endfunction
Float[] function cArrayCreateFloat053() global
  Float[] aArr = New Float[53]
  return aArr
endfunction
Float[] function cArrayCreateFloat054() global
  Float[] aArr = New Float[54]
  return aArr
endfunction
Float[] function cArrayCreateFloat055() global
  Float[] aArr = New Float[55]
  return aArr
endfunction
Float[] function cArrayCreateFloat056() global
  Float[] aArr = New Float[56]
  return aArr
endfunction
Float[] function cArrayCreateFloat057() global
  Float[] aArr = New Float[57]
  return aArr
endfunction
Float[] function cArrayCreateFloat058() global
  Float[] aArr = New Float[58]
  return aArr
endfunction
Float[] function cArrayCreateFloat059() global
  Float[] aArr = New Float[59]
  return aArr
endfunction
Float[] function cArrayCreateFloat060() global
  Float[] aArr = New Float[60]
  return aArr
endfunction
Float[] function cArrayCreateFloat061() global
  Float[] aArr = New Float[61]
  return aArr
endfunction
Float[] function cArrayCreateFloat062() global
  Float[] aArr = New Float[62]
  return aArr
endfunction
Float[] function cArrayCreateFloat063() global
  Float[] aArr = New Float[63]
  return aArr
endfunction
Float[] function cArrayCreateFloat064() global
  Float[] aArr = New Float[64]
  return aArr
endfunction
Float[] function cArrayCreateFloat065() global
  Float[] aArr = New Float[65]
  return aArr
endfunction
Float[] function cArrayCreateFloat066() global
  Float[] aArr = New Float[66]
  return aArr
endfunction
Float[] function cArrayCreateFloat067() global
  Float[] aArr = New Float[67]
  return aArr
endfunction
Float[] function cArrayCreateFloat068() global
  Float[] aArr = New Float[68]
  return aArr
endfunction
Float[] function cArrayCreateFloat069() global
  Float[] aArr = New Float[69]
  return aArr
endfunction
Float[] function cArrayCreateFloat070() global
  Float[] aArr = New Float[70]
  return aArr
endfunction
Float[] function cArrayCreateFloat071() global
  Float[] aArr = New Float[71]
  return aArr
endfunction
Float[] function cArrayCreateFloat072() global
  Float[] aArr = New Float[72]
  return aArr
endfunction
Float[] function cArrayCreateFloat073() global
  Float[] aArr = New Float[73]
  return aArr
endfunction
Float[] function cArrayCreateFloat074() global
  Float[] aArr = New Float[74]
  return aArr
endfunction
Float[] function cArrayCreateFloat075() global
  Float[] aArr = New Float[75]
  return aArr
endfunction
Float[] function cArrayCreateFloat076() global
  Float[] aArr = New Float[76]
  return aArr
endfunction
Float[] function cArrayCreateFloat077() global
  Float[] aArr = New Float[77]
  return aArr
endfunction
Float[] function cArrayCreateFloat078() global
  Float[] aArr = New Float[78]
  return aArr
endfunction
Float[] function cArrayCreateFloat079() global
  Float[] aArr = New Float[79]
  return aArr
endfunction
Float[] function cArrayCreateFloat080() global
  Float[] aArr = New Float[80]
  return aArr
endfunction
Float[] function cArrayCreateFloat081() global
  Float[] aArr = New Float[81]
  return aArr
endfunction
Float[] function cArrayCreateFloat082() global
  Float[] aArr = New Float[82]
  return aArr
endfunction
Float[] function cArrayCreateFloat083() global
  Float[] aArr = New Float[83]
  return aArr
endfunction
Float[] function cArrayCreateFloat084() global
  Float[] aArr = New Float[84]
  return aArr
endfunction
Float[] function cArrayCreateFloat085() global
  Float[] aArr = New Float[85]
  return aArr
endfunction
Float[] function cArrayCreateFloat086() global
  Float[] aArr = New Float[86]
  return aArr
endfunction
Float[] function cArrayCreateFloat087() global
  Float[] aArr = New Float[87]
  return aArr
endfunction
Float[] function cArrayCreateFloat088() global
  Float[] aArr = New Float[88]
  return aArr
endfunction
Float[] function cArrayCreateFloat089() global
  Float[] aArr = New Float[89]
  return aArr
endfunction
Float[] function cArrayCreateFloat090() global
  Float[] aArr = New Float[90]
  return aArr
endfunction
Float[] function cArrayCreateFloat091() global
  Float[] aArr = New Float[91]
  return aArr
endfunction
Float[] function cArrayCreateFloat092() global
  Float[] aArr = New Float[92]
  return aArr
endfunction
Float[] function cArrayCreateFloat093() global
  Float[] aArr = New Float[93]
  return aArr
endfunction
Float[] function cArrayCreateFloat094() global
  Float[] aArr = New Float[94]
  return aArr
endfunction
Float[] function cArrayCreateFloat095() global
  Float[] aArr = New Float[95]
  return aArr
endfunction
Float[] function cArrayCreateFloat096() global
  Float[] aArr = New Float[96]
  return aArr
endfunction
Float[] function cArrayCreateFloat097() global
  Float[] aArr = New Float[97]
  return aArr
endfunction
Float[] function cArrayCreateFloat098() global
  Float[] aArr = New Float[98]
  return aArr
endfunction
Float[] function cArrayCreateFloat099() global
  Float[] aArr = New Float[99]
  return aArr
endfunction
Float[] function cArrayCreateFloat100() global
  Float[] aArr = New Float[100]
  return aArr
endfunction
Float[] function cArrayCreateFloat101() global
  Float[] aArr = New Float[101]
  return aArr
endfunction
Float[] function cArrayCreateFloat102() global
  Float[] aArr = New Float[102]
  return aArr
endfunction
Float[] function cArrayCreateFloat103() global
  Float[] aArr = New Float[103]
  return aArr
endfunction
Float[] function cArrayCreateFloat104() global
  Float[] aArr = New Float[104]
  return aArr
endfunction
Float[] function cArrayCreateFloat105() global
  Float[] aArr = New Float[105]
  return aArr
endfunction
Float[] function cArrayCreateFloat106() global
  Float[] aArr = New Float[106]
  return aArr
endfunction
Float[] function cArrayCreateFloat107() global
  Float[] aArr = New Float[107]
  return aArr
endfunction
Float[] function cArrayCreateFloat108() global
  Float[] aArr = New Float[108]
  return aArr
endfunction
Float[] function cArrayCreateFloat109() global
  Float[] aArr = New Float[109]
  return aArr
endfunction
Float[] function cArrayCreateFloat110() global
  Float[] aArr = New Float[110]
  return aArr
endfunction
Float[] function cArrayCreateFloat111() global
  Float[] aArr = New Float[111]
  return aArr
endfunction
Float[] function cArrayCreateFloat112() global
  Float[] aArr = New Float[112]
  return aArr
endfunction
Float[] function cArrayCreateFloat113() global
  Float[] aArr = New Float[113]
  return aArr
endfunction
Float[] function cArrayCreateFloat114() global
  Float[] aArr = New Float[114]
  return aArr
endfunction
Float[] function cArrayCreateFloat115() global
  Float[] aArr = New Float[115]
  return aArr
endfunction
Float[] function cArrayCreateFloat116() global
  Float[] aArr = New Float[116]
  return aArr
endfunction
Float[] function cArrayCreateFloat117() global
  Float[] aArr = New Float[117]
  return aArr
endfunction
Float[] function cArrayCreateFloat118() global
  Float[] aArr = New Float[118]
  return aArr
endfunction
Float[] function cArrayCreateFloat119() global
  Float[] aArr = New Float[119]
  return aArr
endfunction
Float[] function cArrayCreateFloat120() global
  Float[] aArr = New Float[120]
  return aArr
endfunction
Float[] function cArrayCreateFloat121() global
  Float[] aArr = New Float[121]
  return aArr
endfunction
Float[] function cArrayCreateFloat122() global
  Float[] aArr = New Float[122]
  return aArr
endfunction
Float[] function cArrayCreateFloat123() global
  Float[] aArr = New Float[123]
  return aArr
endfunction
Float[] function cArrayCreateFloat124() global
  Float[] aArr = New Float[124]
  return aArr
endfunction
Float[] function cArrayCreateFloat125() global
  Float[] aArr = New Float[125]
  return aArr
endfunction
Float[] function cArrayCreateFloat126() global
  Float[] aArr = New Float[126]
  return aArr
endfunction
Float[] function cArrayCreateFloat127() global
  Float[] aArr = New Float[127]
  return aArr
endfunction
Float[] function cArrayCreateFloat128() global
  Float[] aArr = New Float[128]
  return aArr
endfunction


Form[] function cArrayCreateForm(Int indices, Form filler = None, Bool useSKSE = TRUE, Bool outputTrace = TRUE, \
    Bool useConsoleUtil = TRUE) global
  {Requirements: None, SKSE:Soft}
  Form[] aArray
  if useSKSE && indices > 0
    aArray = Utility.CreateFormArray(indices, filler)
  elseif indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; useConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateForm()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayForm::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateForm001()
              elseif indices < 3
                aArray = cArrayCreateForm002()
              elseif indices < 4
                aArray = cArrayCreateForm003()
              else
                aArray = cArrayCreateForm004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateForm005()
              elseif indices < 7
                aArray = cArrayCreateForm006()
              elseif indices < 8
                aArray = cArrayCreateForm007()
              else
                aArray = cArrayCreateForm008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateForm009()
              elseif indices < 11
                aArray = cArrayCreateForm010()
              elseif indices < 12
                aArray = cArrayCreateForm011()
              else
                aArray = cArrayCreateForm012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateForm013()
              elseif indices < 15
                aArray = cArrayCreateForm014()
              elseif indices < 16
                aArray = cArrayCreateForm015()
              else
                aArray = cArrayCreateForm016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateForm017()
              elseif indices < 19
                aArray = cArrayCreateForm018()
              elseif indices < 20
                aArray = cArrayCreateForm019()
              else
                aArray = cArrayCreateForm020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateForm021()
              elseif indices < 23
                aArray = cArrayCreateForm022()
              elseif indices < 24
                aArray = cArrayCreateForm023()
              else
                aArray = cArrayCreateForm024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateForm025()
              elseif indices < 27
                aArray = cArrayCreateForm026()
              elseif indices < 28
                aArray = cArrayCreateForm027()
              else
                aArray = cArrayCreateForm028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateForm029()
              elseif indices < 31
                aArray = cArrayCreateForm030()
              elseif indices < 32
                aArray = cArrayCreateForm031()
              else
                aArray = cArrayCreateForm032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateForm033()
              elseif indices < 35
                aArray = cArrayCreateForm034()
              elseif indices < 36
                aArray = cArrayCreateForm035()
              else
                aArray = cArrayCreateForm036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateForm037()
              elseif indices < 39
                aArray = cArrayCreateForm038()
              elseif indices < 40
                aArray = cArrayCreateForm039()
              else
                aArray = cArrayCreateForm040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateForm041()
              elseif indices < 43
                aArray = cArrayCreateForm042()
              elseif indices < 44
                aArray = cArrayCreateForm043()
              else
                aArray = cArrayCreateForm044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateForm045()
              elseif indices < 47
                aArray = cArrayCreateForm046()
              elseif indices < 48
                aArray = cArrayCreateForm047()
              else
                aArray = cArrayCreateForm048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateForm049()
              elseif indices < 51
                aArray = cArrayCreateForm050()
              elseif indices < 52
                aArray = cArrayCreateForm051()
              else
                aArray = cArrayCreateForm052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateForm053()
              elseif indices < 55
                aArray = cArrayCreateForm054()
              elseif indices < 56
                aArray = cArrayCreateForm055()
              else
                aArray = cArrayCreateForm056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateForm057()
              elseif indices < 59
                aArray = cArrayCreateForm058()
              elseif indices < 60
                aArray = cArrayCreateForm059()
              else
                aArray = cArrayCreateForm060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateForm061()
              elseif indices < 63
                aArray = cArrayCreateForm062()
              elseif indices < 64
                aArray = cArrayCreateForm063()
              else
                aArray = cArrayCreateForm064()
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
                aArray = cArrayCreateForm065()
              elseif indices < 67
                aArray = cArrayCreateForm066()
              elseif indices < 68
                aArray = cArrayCreateForm067()
              else
                aArray = cArrayCreateForm068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateForm069()
              elseif indices < 71
                aArray = cArrayCreateForm070()
              elseif indices < 72
                aArray = cArrayCreateForm071()
              else
                aArray = cArrayCreateForm072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateForm073()
              elseif indices < 75
                aArray = cArrayCreateForm074()
              elseif indices < 76
                aArray = cArrayCreateForm075()
              else
                aArray = cArrayCreateForm076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateForm077()
              elseif indices < 79
                aArray = cArrayCreateForm078()
              elseif indices < 80
                aArray = cArrayCreateForm079()
              else
                aArray = cArrayCreateForm080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateForm081()
              elseif indices < 83
                aArray = cArrayCreateForm082()
              elseif indices < 84
                aArray = cArrayCreateForm083()
              else
                aArray = cArrayCreateForm084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateForm085()
              elseif indices < 87
                aArray = cArrayCreateForm086()
              elseif indices < 88
                aArray = cArrayCreateForm087()
              else
                aArray = cArrayCreateForm088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateForm089()
              elseif indices < 91
                aArray = cArrayCreateForm090()
              elseif indices < 92
                aArray = cArrayCreateForm091()
              else
                aArray = cArrayCreateForm092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateForm093()
              elseif indices < 95
                aArray = cArrayCreateForm094()
              elseif indices < 96
                aArray = cArrayCreateForm095()
              else
                aArray = cArrayCreateForm096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateForm097()
              elseif indices < 99
                aArray = cArrayCreateForm098()
              elseif indices < 100
                aArray = cArrayCreateForm099()
              else
                aArray = cArrayCreateForm100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateForm101()
              elseif indices < 103
                aArray = cArrayCreateForm102()
              elseif indices < 104
                aArray = cArrayCreateForm103()
              else
                aArray = cArrayCreateForm104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateForm105()
              elseif indices < 107
                aArray = cArrayCreateForm106()
              elseif indices < 108
                aArray = cArrayCreateForm107()
              else
                aArray = cArrayCreateForm108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateForm109()
              elseif indices < 111
                aArray = cArrayCreateForm110()
              elseif indices < 112
                aArray = cArrayCreateForm111()
              else
                aArray = cArrayCreateForm112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateForm113()
              elseif indices < 115
                aArray = cArrayCreateForm114()
              elseif indices < 116
                aArray = cArrayCreateForm115()
              else
                aArray = cArrayCreateForm116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateForm117()
              elseif indices < 119
                aArray = cArrayCreateForm118()
              elseif indices < 120
                aArray = cArrayCreateForm119()
              else
                aArray = cArrayCreateForm120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateForm121()
              elseif indices < 123
                aArray = cArrayCreateForm122()
              elseif indices < 124
                aArray = cArrayCreateForm123()
              else
                aArray = cArrayCreateForm124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateForm125()
              elseif indices < 127
                aArray = cArrayCreateForm126()
              elseif indices < 128
                aArray = cArrayCreateForm127()
              else
                aArray = cArrayCreateForm128()
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
Form[] function cArrayCreateForm001() global
  Form[] aArr = New Form[1]
  return aArr
endfunction
Form[] function cArrayCreateForm002() global
  Form[] aArr = New Form[2]
  return aArr
endfunction
Form[] function cArrayCreateForm003() global
  Form[] aArr = New Form[3]
  return aArr
endfunction
Form[] function cArrayCreateForm004() global
  Form[] aArr = New Form[4]
  return aArr
endfunction
Form[] function cArrayCreateForm005() global
  Form[] aArr = New Form[5]
  return aArr
endfunction
Form[] function cArrayCreateForm006() global
  Form[] aArr = New Form[6]
  return aArr
endfunction
Form[] function cArrayCreateForm007() global
  Form[] aArr = New Form[7]
  return aArr
endfunction
Form[] function cArrayCreateForm008() global
  Form[] aArr = New Form[8]
  return aArr
endfunction
Form[] function cArrayCreateForm009() global
  Form[] aArr = New Form[9]
  return aArr
endfunction
Form[] function cArrayCreateForm010() global
  Form[] aArr = New Form[10]
  return aArr
endfunction
Form[] function cArrayCreateForm011() global
  Form[] aArr = New Form[11]
  return aArr
endfunction
Form[] function cArrayCreateForm012() global
  Form[] aArr = New Form[12]
  return aArr
endfunction
Form[] function cArrayCreateForm013() global
  Form[] aArr = New Form[13]
  return aArr
endfunction
Form[] function cArrayCreateForm014() global
  Form[] aArr = New Form[14]
  return aArr
endfunction
Form[] function cArrayCreateForm015() global
  Form[] aArr = New Form[15]
  return aArr
endfunction
Form[] function cArrayCreateForm016() global
  Form[] aArr = New Form[16]
  return aArr
endfunction
Form[] function cArrayCreateForm017() global
  Form[] aArr = New Form[17]
  return aArr
endfunction
Form[] function cArrayCreateForm018() global
  Form[] aArr = New Form[18]
  return aArr
endfunction
Form[] function cArrayCreateForm019() global
  Form[] aArr = New Form[19]
  return aArr
endfunction
Form[] function cArrayCreateForm020() global
  Form[] aArr = New Form[20]
  return aArr
endfunction
Form[] function cArrayCreateForm021() global
  Form[] aArr = New Form[21]
  return aArr
endfunction
Form[] function cArrayCreateForm022() global
  Form[] aArr = New Form[22]
  return aArr
endfunction
Form[] function cArrayCreateForm023() global
  Form[] aArr = New Form[23]
  return aArr
endfunction
Form[] function cArrayCreateForm024() global
  Form[] aArr = New Form[24]
  return aArr
endfunction
Form[] function cArrayCreateForm025() global
  Form[] aArr = New Form[25]
  return aArr
endfunction
Form[] function cArrayCreateForm026() global
  Form[] aArr = New Form[26]
  return aArr
endfunction
Form[] function cArrayCreateForm027() global
  Form[] aArr = New Form[27]
  return aArr
endfunction
Form[] function cArrayCreateForm028() global
  Form[] aArr = New Form[28]
  return aArr
endfunction
Form[] function cArrayCreateForm029() global
  Form[] aArr = New Form[29]
  return aArr
endfunction
Form[] function cArrayCreateForm030() global
  Form[] aArr = New Form[30]
  return aArr
endfunction
Form[] function cArrayCreateForm031() global
  Form[] aArr = New Form[31]
  return aArr
endfunction
Form[] function cArrayCreateForm032() global
  Form[] aArr = New Form[32]
  return aArr
endfunction
Form[] function cArrayCreateForm033() global
  Form[] aArr = New Form[33]
  return aArr
endfunction
Form[] function cArrayCreateForm034() global
  Form[] aArr = New Form[34]
  return aArr
endfunction
Form[] function cArrayCreateForm035() global
  Form[] aArr = New Form[35]
  return aArr
endfunction
Form[] function cArrayCreateForm036() global
  Form[] aArr = New Form[36]
  return aArr
endfunction
Form[] function cArrayCreateForm037() global
  Form[] aArr = New Form[37]
  return aArr
endfunction
Form[] function cArrayCreateForm038() global
  Form[] aArr = New Form[38]
  return aArr
endfunction
Form[] function cArrayCreateForm039() global
  Form[] aArr = New Form[39]
  return aArr
endfunction
Form[] function cArrayCreateForm040() global
  Form[] aArr = New Form[40]
  return aArr
endfunction
Form[] function cArrayCreateForm041() global
  Form[] aArr = New Form[41]
  return aArr
endfunction
Form[] function cArrayCreateForm042() global
  Form[] aArr = New Form[42]
  return aArr
endfunction
Form[] function cArrayCreateForm043() global
  Form[] aArr = New Form[43]
  return aArr
endfunction
Form[] function cArrayCreateForm044() global
  Form[] aArr = New Form[44]
  return aArr
endfunction
Form[] function cArrayCreateForm045() global
  Form[] aArr = New Form[45]
  return aArr
endfunction
Form[] function cArrayCreateForm046() global
  Form[] aArr = New Form[46]
  return aArr
endfunction
Form[] function cArrayCreateForm047() global
  Form[] aArr = New Form[47]
  return aArr
endfunction
Form[] function cArrayCreateForm048() global
  Form[] aArr = New Form[48]
  return aArr
endfunction
Form[] function cArrayCreateForm049() global
  Form[] aArr = New Form[49]
  return aArr
endfunction
Form[] function cArrayCreateForm050() global
  Form[] aArr = New Form[50]
  return aArr
endfunction
Form[] function cArrayCreateForm051() global
  Form[] aArr = New Form[51]
  return aArr
endfunction
Form[] function cArrayCreateForm052() global
  Form[] aArr = New Form[52]
  return aArr
endfunction
Form[] function cArrayCreateForm053() global
  Form[] aArr = New Form[53]
  return aArr
endfunction
Form[] function cArrayCreateForm054() global
  Form[] aArr = New Form[54]
  return aArr
endfunction
Form[] function cArrayCreateForm055() global
  Form[] aArr = New Form[55]
  return aArr
endfunction
Form[] function cArrayCreateForm056() global
  Form[] aArr = New Form[56]
  return aArr
endfunction
Form[] function cArrayCreateForm057() global
  Form[] aArr = New Form[57]
  return aArr
endfunction
Form[] function cArrayCreateForm058() global
  Form[] aArr = New Form[58]
  return aArr
endfunction
Form[] function cArrayCreateForm059() global
  Form[] aArr = New Form[59]
  return aArr
endfunction
Form[] function cArrayCreateForm060() global
  Form[] aArr = New Form[60]
  return aArr
endfunction
Form[] function cArrayCreateForm061() global
  Form[] aArr = New Form[61]
  return aArr
endfunction
Form[] function cArrayCreateForm062() global
  Form[] aArr = New Form[62]
  return aArr
endfunction
Form[] function cArrayCreateForm063() global
  Form[] aArr = New Form[63]
  return aArr
endfunction
Form[] function cArrayCreateForm064() global
  Form[] aArr = New Form[64]
  return aArr
endfunction
Form[] function cArrayCreateForm065() global
  Form[] aArr = New Form[65]
  return aArr
endfunction
Form[] function cArrayCreateForm066() global
  Form[] aArr = New Form[66]
  return aArr
endfunction
Form[] function cArrayCreateForm067() global
  Form[] aArr = New Form[67]
  return aArr
endfunction
Form[] function cArrayCreateForm068() global
  Form[] aArr = New Form[68]
  return aArr
endfunction
Form[] function cArrayCreateForm069() global
  Form[] aArr = New Form[69]
  return aArr
endfunction
Form[] function cArrayCreateForm070() global
  Form[] aArr = New Form[70]
  return aArr
endfunction
Form[] function cArrayCreateForm071() global
  Form[] aArr = New Form[71]
  return aArr
endfunction
Form[] function cArrayCreateForm072() global
  Form[] aArr = New Form[72]
  return aArr
endfunction
Form[] function cArrayCreateForm073() global
  Form[] aArr = New Form[73]
  return aArr
endfunction
Form[] function cArrayCreateForm074() global
  Form[] aArr = New Form[74]
  return aArr
endfunction
Form[] function cArrayCreateForm075() global
  Form[] aArr = New Form[75]
  return aArr
endfunction
Form[] function cArrayCreateForm076() global
  Form[] aArr = New Form[76]
  return aArr
endfunction
Form[] function cArrayCreateForm077() global
  Form[] aArr = New Form[77]
  return aArr
endfunction
Form[] function cArrayCreateForm078() global
  Form[] aArr = New Form[78]
  return aArr
endfunction
Form[] function cArrayCreateForm079() global
  Form[] aArr = New Form[79]
  return aArr
endfunction
Form[] function cArrayCreateForm080() global
  Form[] aArr = New Form[80]
  return aArr
endfunction
Form[] function cArrayCreateForm081() global
  Form[] aArr = New Form[81]
  return aArr
endfunction
Form[] function cArrayCreateForm082() global
  Form[] aArr = New Form[82]
  return aArr
endfunction
Form[] function cArrayCreateForm083() global
  Form[] aArr = New Form[83]
  return aArr
endfunction
Form[] function cArrayCreateForm084() global
  Form[] aArr = New Form[84]
  return aArr
endfunction
Form[] function cArrayCreateForm085() global
  Form[] aArr = New Form[85]
  return aArr
endfunction
Form[] function cArrayCreateForm086() global
  Form[] aArr = New Form[86]
  return aArr
endfunction
Form[] function cArrayCreateForm087() global
  Form[] aArr = New Form[87]
  return aArr
endfunction
Form[] function cArrayCreateForm088() global
  Form[] aArr = New Form[88]
  return aArr
endfunction
Form[] function cArrayCreateForm089() global
  Form[] aArr = New Form[89]
  return aArr
endfunction
Form[] function cArrayCreateForm090() global
  Form[] aArr = New Form[90]
  return aArr
endfunction
Form[] function cArrayCreateForm091() global
  Form[] aArr = New Form[91]
  return aArr
endfunction
Form[] function cArrayCreateForm092() global
  Form[] aArr = New Form[92]
  return aArr
endfunction
Form[] function cArrayCreateForm093() global
  Form[] aArr = New Form[93]
  return aArr
endfunction
Form[] function cArrayCreateForm094() global
  Form[] aArr = New Form[94]
  return aArr
endfunction
Form[] function cArrayCreateForm095() global
  Form[] aArr = New Form[95]
  return aArr
endfunction
Form[] function cArrayCreateForm096() global
  Form[] aArr = New Form[96]
  return aArr
endfunction
Form[] function cArrayCreateForm097() global
  Form[] aArr = New Form[97]
  return aArr
endfunction
Form[] function cArrayCreateForm098() global
  Form[] aArr = New Form[98]
  return aArr
endfunction
Form[] function cArrayCreateForm099() global
  Form[] aArr = New Form[99]
  return aArr
endfunction
Form[] function cArrayCreateForm100() global
  Form[] aArr = New Form[100]
  return aArr
endfunction
Form[] function cArrayCreateForm101() global
  Form[] aArr = New Form[101]
  return aArr
endfunction
Form[] function cArrayCreateForm102() global
  Form[] aArr = New Form[102]
  return aArr
endfunction
Form[] function cArrayCreateForm103() global
  Form[] aArr = New Form[103]
  return aArr
endfunction
Form[] function cArrayCreateForm104() global
  Form[] aArr = New Form[104]
  return aArr
endfunction
Form[] function cArrayCreateForm105() global
  Form[] aArr = New Form[105]
  return aArr
endfunction
Form[] function cArrayCreateForm106() global
  Form[] aArr = New Form[106]
  return aArr
endfunction
Form[] function cArrayCreateForm107() global
  Form[] aArr = New Form[107]
  return aArr
endfunction
Form[] function cArrayCreateForm108() global
  Form[] aArr = New Form[108]
  return aArr
endfunction
Form[] function cArrayCreateForm109() global
  Form[] aArr = New Form[109]
  return aArr
endfunction
Form[] function cArrayCreateForm110() global
  Form[] aArr = New Form[110]
  return aArr
endfunction
Form[] function cArrayCreateForm111() global
  Form[] aArr = New Form[111]
  return aArr
endfunction
Form[] function cArrayCreateForm112() global
  Form[] aArr = New Form[112]
  return aArr
endfunction
Form[] function cArrayCreateForm113() global
  Form[] aArr = New Form[113]
  return aArr
endfunction
Form[] function cArrayCreateForm114() global
  Form[] aArr = New Form[114]
  return aArr
endfunction
Form[] function cArrayCreateForm115() global
  Form[] aArr = New Form[115]
  return aArr
endfunction
Form[] function cArrayCreateForm116() global
  Form[] aArr = New Form[116]
  return aArr
endfunction
Form[] function cArrayCreateForm117() global
  Form[] aArr = New Form[117]
  return aArr
endfunction
Form[] function cArrayCreateForm118() global
  Form[] aArr = New Form[118]
  return aArr
endfunction
Form[] function cArrayCreateForm119() global
  Form[] aArr = New Form[119]
  return aArr
endfunction
Form[] function cArrayCreateForm120() global
  Form[] aArr = New Form[120]
  return aArr
endfunction
Form[] function cArrayCreateForm121() global
  Form[] aArr = New Form[121]
  return aArr
endfunction
Form[] function cArrayCreateForm122() global
  Form[] aArr = New Form[122]
  return aArr
endfunction
Form[] function cArrayCreateForm123() global
  Form[] aArr = New Form[123]
  return aArr
endfunction
Form[] function cArrayCreateForm124() global
  Form[] aArr = New Form[124]
  return aArr
endfunction
Form[] function cArrayCreateForm125() global
  Form[] aArr = New Form[125]
  return aArr
endfunction
Form[] function cArrayCreateForm126() global
  Form[] aArr = New Form[126]
  return aArr
endfunction
Form[] function cArrayCreateForm127() global
  Form[] aArr = New Form[127]
  return aArr
endfunction
Form[] function cArrayCreateForm128() global
  Form[] aArr = New Form[128]
  return aArr
endfunction


Int[] function cArrayCreateInt(Int indices, Int filler = 0, Bool useSKSE = TRUE, Bool outputTrace = TRUE, \
    Bool useConsoleUtil = TRUE) global
  {Requirements: None, SKSE:Soft}
  Int[] aArray
  if useSKSE && indices > 0
    aArray = Utility.CreateIntArray(indices, filler)
  elseif indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; useConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateInt()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayInt::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateInt001()
              elseif indices < 3
                aArray = cArrayCreateInt002()
              elseif indices < 4
                aArray = cArrayCreateInt003()
              else
                aArray = cArrayCreateInt004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateInt005()
              elseif indices < 7
                aArray = cArrayCreateInt006()
              elseif indices < 8
                aArray = cArrayCreateInt007()
              else
                aArray = cArrayCreateInt008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateInt009()
              elseif indices < 11
                aArray = cArrayCreateInt010()
              elseif indices < 12
                aArray = cArrayCreateInt011()
              else
                aArray = cArrayCreateInt012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateInt013()
              elseif indices < 15
                aArray = cArrayCreateInt014()
              elseif indices < 16
                aArray = cArrayCreateInt015()
              else
                aArray = cArrayCreateInt016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateInt017()
              elseif indices < 19
                aArray = cArrayCreateInt018()
              elseif indices < 20
                aArray = cArrayCreateInt019()
              else
                aArray = cArrayCreateInt020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateInt021()
              elseif indices < 23
                aArray = cArrayCreateInt022()
              elseif indices < 24
                aArray = cArrayCreateInt023()
              else
                aArray = cArrayCreateInt024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateInt025()
              elseif indices < 27
                aArray = cArrayCreateInt026()
              elseif indices < 28
                aArray = cArrayCreateInt027()
              else
                aArray = cArrayCreateInt028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateInt029()
              elseif indices < 31
                aArray = cArrayCreateInt030()
              elseif indices < 32
                aArray = cArrayCreateInt031()
              else
                aArray = cArrayCreateInt032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateInt033()
              elseif indices < 35
                aArray = cArrayCreateInt034()
              elseif indices < 36
                aArray = cArrayCreateInt035()
              else
                aArray = cArrayCreateInt036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateInt037()
              elseif indices < 39
                aArray = cArrayCreateInt038()
              elseif indices < 40
                aArray = cArrayCreateInt039()
              else
                aArray = cArrayCreateInt040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateInt041()
              elseif indices < 43
                aArray = cArrayCreateInt042()
              elseif indices < 44
                aArray = cArrayCreateInt043()
              else
                aArray = cArrayCreateInt044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateInt045()
              elseif indices < 47
                aArray = cArrayCreateInt046()
              elseif indices < 48
                aArray = cArrayCreateInt047()
              else
                aArray = cArrayCreateInt048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateInt049()
              elseif indices < 51
                aArray = cArrayCreateInt050()
              elseif indices < 52
                aArray = cArrayCreateInt051()
              else
                aArray = cArrayCreateInt052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateInt053()
              elseif indices < 55
                aArray = cArrayCreateInt054()
              elseif indices < 56
                aArray = cArrayCreateInt055()
              else
                aArray = cArrayCreateInt056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateInt057()
              elseif indices < 59
                aArray = cArrayCreateInt058()
              elseif indices < 60
                aArray = cArrayCreateInt059()
              else
                aArray = cArrayCreateInt060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateInt061()
              elseif indices < 63
                aArray = cArrayCreateInt062()
              elseif indices < 64
                aArray = cArrayCreateInt063()
              else
                aArray = cArrayCreateInt064()
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
                aArray = cArrayCreateInt065()
              elseif indices < 67
                aArray = cArrayCreateInt066()
              elseif indices < 68
                aArray = cArrayCreateInt067()
              else
                aArray = cArrayCreateInt068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateInt069()
              elseif indices < 71
                aArray = cArrayCreateInt070()
              elseif indices < 72
                aArray = cArrayCreateInt071()
              else
                aArray = cArrayCreateInt072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateInt073()
              elseif indices < 75
                aArray = cArrayCreateInt074()
              elseif indices < 76
                aArray = cArrayCreateInt075()
              else
                aArray = cArrayCreateInt076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateInt077()
              elseif indices < 79
                aArray = cArrayCreateInt078()
              elseif indices < 80
                aArray = cArrayCreateInt079()
              else
                aArray = cArrayCreateInt080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateInt081()
              elseif indices < 83
                aArray = cArrayCreateInt082()
              elseif indices < 84
                aArray = cArrayCreateInt083()
              else
                aArray = cArrayCreateInt084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateInt085()
              elseif indices < 87
                aArray = cArrayCreateInt086()
              elseif indices < 88
                aArray = cArrayCreateInt087()
              else
                aArray = cArrayCreateInt088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateInt089()
              elseif indices < 91
                aArray = cArrayCreateInt090()
              elseif indices < 92
                aArray = cArrayCreateInt091()
              else
                aArray = cArrayCreateInt092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateInt093()
              elseif indices < 95
                aArray = cArrayCreateInt094()
              elseif indices < 96
                aArray = cArrayCreateInt095()
              else
                aArray = cArrayCreateInt096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateInt097()
              elseif indices < 99
                aArray = cArrayCreateInt098()
              elseif indices < 100
                aArray = cArrayCreateInt099()
              else
                aArray = cArrayCreateInt100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateInt101()
              elseif indices < 103
                aArray = cArrayCreateInt102()
              elseif indices < 104
                aArray = cArrayCreateInt103()
              else
                aArray = cArrayCreateInt104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateInt105()
              elseif indices < 107
                aArray = cArrayCreateInt106()
              elseif indices < 108
                aArray = cArrayCreateInt107()
              else
                aArray = cArrayCreateInt108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateInt109()
              elseif indices < 111
                aArray = cArrayCreateInt110()
              elseif indices < 112
                aArray = cArrayCreateInt111()
              else
                aArray = cArrayCreateInt112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateInt113()
              elseif indices < 115
                aArray = cArrayCreateInt114()
              elseif indices < 116
                aArray = cArrayCreateInt115()
              else
                aArray = cArrayCreateInt116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateInt117()
              elseif indices < 119
                aArray = cArrayCreateInt118()
              elseif indices < 120
                aArray = cArrayCreateInt119()
              else
                aArray = cArrayCreateInt120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateInt121()
              elseif indices < 123
                aArray = cArrayCreateInt122()
              elseif indices < 124
                aArray = cArrayCreateInt123()
              else
                aArray = cArrayCreateInt124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateInt125()
              elseif indices < 127
                aArray = cArrayCreateInt126()
              elseif indices < 128
                aArray = cArrayCreateInt127()
              else
                aArray = cArrayCreateInt128()
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
Int[] function cArrayCreateInt001() global
  Int[] aArr = New Int[1]
  return aArr
endfunction
Int[] function cArrayCreateInt002() global
  Int[] aArr = New Int[2]
  return aArr
endfunction
Int[] function cArrayCreateInt003() global
  Int[] aArr = New Int[3]
  return aArr
endfunction
Int[] function cArrayCreateInt004() global
  Int[] aArr = New Int[4]
  return aArr
endfunction
Int[] function cArrayCreateInt005() global
  Int[] aArr = New Int[5]
  return aArr
endfunction
Int[] function cArrayCreateInt006() global
  Int[] aArr = New Int[6]
  return aArr
endfunction
Int[] function cArrayCreateInt007() global
  Int[] aArr = New Int[7]
  return aArr
endfunction
Int[] function cArrayCreateInt008() global
  Int[] aArr = New Int[8]
  return aArr
endfunction
Int[] function cArrayCreateInt009() global
  Int[] aArr = New Int[9]
  return aArr
endfunction
Int[] function cArrayCreateInt010() global
  Int[] aArr = New Int[10]
  return aArr
endfunction
Int[] function cArrayCreateInt011() global
  Int[] aArr = New Int[11]
  return aArr
endfunction
Int[] function cArrayCreateInt012() global
  Int[] aArr = New Int[12]
  return aArr
endfunction
Int[] function cArrayCreateInt013() global
  Int[] aArr = New Int[13]
  return aArr
endfunction
Int[] function cArrayCreateInt014() global
  Int[] aArr = New Int[14]
  return aArr
endfunction
Int[] function cArrayCreateInt015() global
  Int[] aArr = New Int[15]
  return aArr
endfunction
Int[] function cArrayCreateInt016() global
  Int[] aArr = New Int[16]
  return aArr
endfunction
Int[] function cArrayCreateInt017() global
  Int[] aArr = New Int[17]
  return aArr
endfunction
Int[] function cArrayCreateInt018() global
  Int[] aArr = New Int[18]
  return aArr
endfunction
Int[] function cArrayCreateInt019() global
  Int[] aArr = New Int[19]
  return aArr
endfunction
Int[] function cArrayCreateInt020() global
  Int[] aArr = New Int[20]
  return aArr
endfunction
Int[] function cArrayCreateInt021() global
  Int[] aArr = New Int[21]
  return aArr
endfunction
Int[] function cArrayCreateInt022() global
  Int[] aArr = New Int[22]
  return aArr
endfunction
Int[] function cArrayCreateInt023() global
  Int[] aArr = New Int[23]
  return aArr
endfunction
Int[] function cArrayCreateInt024() global
  Int[] aArr = New Int[24]
  return aArr
endfunction
Int[] function cArrayCreateInt025() global
  Int[] aArr = New Int[25]
  return aArr
endfunction
Int[] function cArrayCreateInt026() global
  Int[] aArr = New Int[26]
  return aArr
endfunction
Int[] function cArrayCreateInt027() global
  Int[] aArr = New Int[27]
  return aArr
endfunction
Int[] function cArrayCreateInt028() global
  Int[] aArr = New Int[28]
  return aArr
endfunction
Int[] function cArrayCreateInt029() global
  Int[] aArr = New Int[29]
  return aArr
endfunction
Int[] function cArrayCreateInt030() global
  Int[] aArr = New Int[30]
  return aArr
endfunction
Int[] function cArrayCreateInt031() global
  Int[] aArr = New Int[31]
  return aArr
endfunction
Int[] function cArrayCreateInt032() global
  Int[] aArr = New Int[32]
  return aArr
endfunction
Int[] function cArrayCreateInt033() global
  Int[] aArr = New Int[33]
  return aArr
endfunction
Int[] function cArrayCreateInt034() global
  Int[] aArr = New Int[34]
  return aArr
endfunction
Int[] function cArrayCreateInt035() global
  Int[] aArr = New Int[35]
  return aArr
endfunction
Int[] function cArrayCreateInt036() global
  Int[] aArr = New Int[36]
  return aArr
endfunction
Int[] function cArrayCreateInt037() global
  Int[] aArr = New Int[37]
  return aArr
endfunction
Int[] function cArrayCreateInt038() global
  Int[] aArr = New Int[38]
  return aArr
endfunction
Int[] function cArrayCreateInt039() global
  Int[] aArr = New Int[39]
  return aArr
endfunction
Int[] function cArrayCreateInt040() global
  Int[] aArr = New Int[40]
  return aArr
endfunction
Int[] function cArrayCreateInt041() global
  Int[] aArr = New Int[41]
  return aArr
endfunction
Int[] function cArrayCreateInt042() global
  Int[] aArr = New Int[42]
  return aArr
endfunction
Int[] function cArrayCreateInt043() global
  Int[] aArr = New Int[43]
  return aArr
endfunction
Int[] function cArrayCreateInt044() global
  Int[] aArr = New Int[44]
  return aArr
endfunction
Int[] function cArrayCreateInt045() global
  Int[] aArr = New Int[45]
  return aArr
endfunction
Int[] function cArrayCreateInt046() global
  Int[] aArr = New Int[46]
  return aArr
endfunction
Int[] function cArrayCreateInt047() global
  Int[] aArr = New Int[47]
  return aArr
endfunction
Int[] function cArrayCreateInt048() global
  Int[] aArr = New Int[48]
  return aArr
endfunction
Int[] function cArrayCreateInt049() global
  Int[] aArr = New Int[49]
  return aArr
endfunction
Int[] function cArrayCreateInt050() global
  Int[] aArr = New Int[50]
  return aArr
endfunction
Int[] function cArrayCreateInt051() global
  Int[] aArr = New Int[51]
  return aArr
endfunction
Int[] function cArrayCreateInt052() global
  Int[] aArr = New Int[52]
  return aArr
endfunction
Int[] function cArrayCreateInt053() global
  Int[] aArr = New Int[53]
  return aArr
endfunction
Int[] function cArrayCreateInt054() global
  Int[] aArr = New Int[54]
  return aArr
endfunction
Int[] function cArrayCreateInt055() global
  Int[] aArr = New Int[55]
  return aArr
endfunction
Int[] function cArrayCreateInt056() global
  Int[] aArr = New Int[56]
  return aArr
endfunction
Int[] function cArrayCreateInt057() global
  Int[] aArr = New Int[57]
  return aArr
endfunction
Int[] function cArrayCreateInt058() global
  Int[] aArr = New Int[58]
  return aArr
endfunction
Int[] function cArrayCreateInt059() global
  Int[] aArr = New Int[59]
  return aArr
endfunction
Int[] function cArrayCreateInt060() global
  Int[] aArr = New Int[60]
  return aArr
endfunction
Int[] function cArrayCreateInt061() global
  Int[] aArr = New Int[61]
  return aArr
endfunction
Int[] function cArrayCreateInt062() global
  Int[] aArr = New Int[62]
  return aArr
endfunction
Int[] function cArrayCreateInt063() global
  Int[] aArr = New Int[63]
  return aArr
endfunction
Int[] function cArrayCreateInt064() global
  Int[] aArr = New Int[64]
  return aArr
endfunction
Int[] function cArrayCreateInt065() global
  Int[] aArr = New Int[65]
  return aArr
endfunction
Int[] function cArrayCreateInt066() global
  Int[] aArr = New Int[66]
  return aArr
endfunction
Int[] function cArrayCreateInt067() global
  Int[] aArr = New Int[67]
  return aArr
endfunction
Int[] function cArrayCreateInt068() global
  Int[] aArr = New Int[68]
  return aArr
endfunction
Int[] function cArrayCreateInt069() global
  Int[] aArr = New Int[69]
  return aArr
endfunction
Int[] function cArrayCreateInt070() global
  Int[] aArr = New Int[70]
  return aArr
endfunction
Int[] function cArrayCreateInt071() global
  Int[] aArr = New Int[71]
  return aArr
endfunction
Int[] function cArrayCreateInt072() global
  Int[] aArr = New Int[72]
  return aArr
endfunction
Int[] function cArrayCreateInt073() global
  Int[] aArr = New Int[73]
  return aArr
endfunction
Int[] function cArrayCreateInt074() global
  Int[] aArr = New Int[74]
  return aArr
endfunction
Int[] function cArrayCreateInt075() global
  Int[] aArr = New Int[75]
  return aArr
endfunction
Int[] function cArrayCreateInt076() global
  Int[] aArr = New Int[76]
  return aArr
endfunction
Int[] function cArrayCreateInt077() global
  Int[] aArr = New Int[77]
  return aArr
endfunction
Int[] function cArrayCreateInt078() global
  Int[] aArr = New Int[78]
  return aArr
endfunction
Int[] function cArrayCreateInt079() global
  Int[] aArr = New Int[79]
  return aArr
endfunction
Int[] function cArrayCreateInt080() global
  Int[] aArr = New Int[80]
  return aArr
endfunction
Int[] function cArrayCreateInt081() global
  Int[] aArr = New Int[81]
  return aArr
endfunction
Int[] function cArrayCreateInt082() global
  Int[] aArr = New Int[82]
  return aArr
endfunction
Int[] function cArrayCreateInt083() global
  Int[] aArr = New Int[83]
  return aArr
endfunction
Int[] function cArrayCreateInt084() global
  Int[] aArr = New Int[84]
  return aArr
endfunction
Int[] function cArrayCreateInt085() global
  Int[] aArr = New Int[85]
  return aArr
endfunction
Int[] function cArrayCreateInt086() global
  Int[] aArr = New Int[86]
  return aArr
endfunction
Int[] function cArrayCreateInt087() global
  Int[] aArr = New Int[87]
  return aArr
endfunction
Int[] function cArrayCreateInt088() global
  Int[] aArr = New Int[88]
  return aArr
endfunction
Int[] function cArrayCreateInt089() global
  Int[] aArr = New Int[89]
  return aArr
endfunction
Int[] function cArrayCreateInt090() global
  Int[] aArr = New Int[90]
  return aArr
endfunction
Int[] function cArrayCreateInt091() global
  Int[] aArr = New Int[91]
  return aArr
endfunction
Int[] function cArrayCreateInt092() global
  Int[] aArr = New Int[92]
  return aArr
endfunction
Int[] function cArrayCreateInt093() global
  Int[] aArr = New Int[93]
  return aArr
endfunction
Int[] function cArrayCreateInt094() global
  Int[] aArr = New Int[94]
  return aArr
endfunction
Int[] function cArrayCreateInt095() global
  Int[] aArr = New Int[95]
  return aArr
endfunction
Int[] function cArrayCreateInt096() global
  Int[] aArr = New Int[96]
  return aArr
endfunction
Int[] function cArrayCreateInt097() global
  Int[] aArr = New Int[97]
  return aArr
endfunction
Int[] function cArrayCreateInt098() global
  Int[] aArr = New Int[98]
  return aArr
endfunction
Int[] function cArrayCreateInt099() global
  Int[] aArr = New Int[99]
  return aArr
endfunction
Int[] function cArrayCreateInt100() global
  Int[] aArr = New Int[100]
  return aArr
endfunction
Int[] function cArrayCreateInt101() global
  Int[] aArr = New Int[101]
  return aArr
endfunction
Int[] function cArrayCreateInt102() global
  Int[] aArr = New Int[102]
  return aArr
endfunction
Int[] function cArrayCreateInt103() global
  Int[] aArr = New Int[103]
  return aArr
endfunction
Int[] function cArrayCreateInt104() global
  Int[] aArr = New Int[104]
  return aArr
endfunction
Int[] function cArrayCreateInt105() global
  Int[] aArr = New Int[105]
  return aArr
endfunction
Int[] function cArrayCreateInt106() global
  Int[] aArr = New Int[106]
  return aArr
endfunction
Int[] function cArrayCreateInt107() global
  Int[] aArr = New Int[107]
  return aArr
endfunction
Int[] function cArrayCreateInt108() global
  Int[] aArr = New Int[108]
  return aArr
endfunction
Int[] function cArrayCreateInt109() global
  Int[] aArr = New Int[109]
  return aArr
endfunction
Int[] function cArrayCreateInt110() global
  Int[] aArr = New Int[110]
  return aArr
endfunction
Int[] function cArrayCreateInt111() global
  Int[] aArr = New Int[111]
  return aArr
endfunction
Int[] function cArrayCreateInt112() global
  Int[] aArr = New Int[112]
  return aArr
endfunction
Int[] function cArrayCreateInt113() global
  Int[] aArr = New Int[113]
  return aArr
endfunction
Int[] function cArrayCreateInt114() global
  Int[] aArr = New Int[114]
  return aArr
endfunction
Int[] function cArrayCreateInt115() global
  Int[] aArr = New Int[115]
  return aArr
endfunction
Int[] function cArrayCreateInt116() global
  Int[] aArr = New Int[116]
  return aArr
endfunction
Int[] function cArrayCreateInt117() global
  Int[] aArr = New Int[117]
  return aArr
endfunction
Int[] function cArrayCreateInt118() global
  Int[] aArr = New Int[118]
  return aArr
endfunction
Int[] function cArrayCreateInt119() global
  Int[] aArr = New Int[119]
  return aArr
endfunction
Int[] function cArrayCreateInt120() global
  Int[] aArr = New Int[120]
  return aArr
endfunction
Int[] function cArrayCreateInt121() global
  Int[] aArr = New Int[121]
  return aArr
endfunction
Int[] function cArrayCreateInt122() global
  Int[] aArr = New Int[122]
  return aArr
endfunction
Int[] function cArrayCreateInt123() global
  Int[] aArr = New Int[123]
  return aArr
endfunction
Int[] function cArrayCreateInt124() global
  Int[] aArr = New Int[124]
  return aArr
endfunction
Int[] function cArrayCreateInt125() global
  Int[] aArr = New Int[125]
  return aArr
endfunction
Int[] function cArrayCreateInt126() global
  Int[] aArr = New Int[126]
  return aArr
endfunction
Int[] function cArrayCreateInt127() global
  Int[] aArr = New Int[127]
  return aArr
endfunction
Int[] function cArrayCreateInt128() global
  Int[] aArr = New Int[128]
  return aArr
endfunction


ObjectReference[] function cArrayCreateObjRef(Int indices, ObjectReference filler = None) global
  return cArrayCreateObjectReference(indices, filler)
endfunction
ObjectReference[] function cArrayCreateObjectReference(Int indices, ObjectReference filler = None, Bool usePapUtil = TRUE, \
  Bool outputTrace = TRUE, Bool useConsoleUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  ObjectReference[] aArray
  if usePapUtil && clibUse.cUsePapUtil() && indices > 0
    aArray = PapyrusUtil.ObjRefArray(indices, filler)
  elseif indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; useConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateObjRef()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayObjectReference::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateObjRef001()
              elseif indices < 3
                aArray = cArrayCreateObjRef002()
              elseif indices < 4
                aArray = cArrayCreateObjRef003()
              else
                aArray = cArrayCreateObjRef004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateObjRef005()
              elseif indices < 7
                aArray = cArrayCreateObjRef006()
              elseif indices < 8
                aArray = cArrayCreateObjRef007()
              else
                aArray = cArrayCreateObjRef008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateObjRef009()
              elseif indices < 11
                aArray = cArrayCreateObjRef010()
              elseif indices < 12
                aArray = cArrayCreateObjRef011()
              else
                aArray = cArrayCreateObjRef012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateObjRef013()
              elseif indices < 15
                aArray = cArrayCreateObjRef014()
              elseif indices < 16
                aArray = cArrayCreateObjRef015()
              else
                aArray = cArrayCreateObjRef016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateObjRef017()
              elseif indices < 19
                aArray = cArrayCreateObjRef018()
              elseif indices < 20
                aArray = cArrayCreateObjRef019()
              else
                aArray = cArrayCreateObjRef020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateObjRef021()
              elseif indices < 23
                aArray = cArrayCreateObjRef022()
              elseif indices < 24
                aArray = cArrayCreateObjRef023()
              else
                aArray = cArrayCreateObjRef024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateObjRef025()
              elseif indices < 27
                aArray = cArrayCreateObjRef026()
              elseif indices < 28
                aArray = cArrayCreateObjRef027()
              else
                aArray = cArrayCreateObjRef028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateObjRef029()
              elseif indices < 31
                aArray = cArrayCreateObjRef030()
              elseif indices < 32
                aArray = cArrayCreateObjRef031()
              else
                aArray = cArrayCreateObjRef032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateObjRef033()
              elseif indices < 35
                aArray = cArrayCreateObjRef034()
              elseif indices < 36
                aArray = cArrayCreateObjRef035()
              else
                aArray = cArrayCreateObjRef036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateObjRef037()
              elseif indices < 39
                aArray = cArrayCreateObjRef038()
              elseif indices < 40
                aArray = cArrayCreateObjRef039()
              else
                aArray = cArrayCreateObjRef040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateObjRef041()
              elseif indices < 43
                aArray = cArrayCreateObjRef042()
              elseif indices < 44
                aArray = cArrayCreateObjRef043()
              else
                aArray = cArrayCreateObjRef044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateObjRef045()
              elseif indices < 47
                aArray = cArrayCreateObjRef046()
              elseif indices < 48
                aArray = cArrayCreateObjRef047()
              else
                aArray = cArrayCreateObjRef048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateObjRef049()
              elseif indices < 51
                aArray = cArrayCreateObjRef050()
              elseif indices < 52
                aArray = cArrayCreateObjRef051()
              else
                aArray = cArrayCreateObjRef052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateObjRef053()
              elseif indices < 55
                aArray = cArrayCreateObjRef054()
              elseif indices < 56
                aArray = cArrayCreateObjRef055()
              else
                aArray = cArrayCreateObjRef056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateObjRef057()
              elseif indices < 59
                aArray = cArrayCreateObjRef058()
              elseif indices < 60
                aArray = cArrayCreateObjRef059()
              else
                aArray = cArrayCreateObjRef060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateObjRef061()
              elseif indices < 63
                aArray = cArrayCreateObjRef062()
              elseif indices < 64
                aArray = cArrayCreateObjRef063()
              else
                aArray = cArrayCreateObjRef064()
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
                aArray = cArrayCreateObjRef065()
              elseif indices < 67
                aArray = cArrayCreateObjRef066()
              elseif indices < 68
                aArray = cArrayCreateObjRef067()
              else
                aArray = cArrayCreateObjRef068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateObjRef069()
              elseif indices < 71
                aArray = cArrayCreateObjRef070()
              elseif indices < 72
                aArray = cArrayCreateObjRef071()
              else
                aArray = cArrayCreateObjRef072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateObjRef073()
              elseif indices < 75
                aArray = cArrayCreateObjRef074()
              elseif indices < 76
                aArray = cArrayCreateObjRef075()
              else
                aArray = cArrayCreateObjRef076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateObjRef077()
              elseif indices < 79
                aArray = cArrayCreateObjRef078()
              elseif indices < 80
                aArray = cArrayCreateObjRef079()
              else
                aArray = cArrayCreateObjRef080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateObjRef081()
              elseif indices < 83
                aArray = cArrayCreateObjRef082()
              elseif indices < 84
                aArray = cArrayCreateObjRef083()
              else
                aArray = cArrayCreateObjRef084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateObjRef085()
              elseif indices < 87
                aArray = cArrayCreateObjRef086()
              elseif indices < 88
                aArray = cArrayCreateObjRef087()
              else
                aArray = cArrayCreateObjRef088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateObjRef089()
              elseif indices < 91
                aArray = cArrayCreateObjRef090()
              elseif indices < 92
                aArray = cArrayCreateObjRef091()
              else
                aArray = cArrayCreateObjRef092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateObjRef093()
              elseif indices < 95
                aArray = cArrayCreateObjRef094()
              elseif indices < 96
                aArray = cArrayCreateObjRef095()
              else
                aArray = cArrayCreateObjRef096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateObjRef097()
              elseif indices < 99
                aArray = cArrayCreateObjRef098()
              elseif indices < 100
                aArray = cArrayCreateObjRef099()
              else
                aArray = cArrayCreateObjRef100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateObjRef101()
              elseif indices < 103
                aArray = cArrayCreateObjRef102()
              elseif indices < 104
                aArray = cArrayCreateObjRef103()
              else
                aArray = cArrayCreateObjRef104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateObjRef105()
              elseif indices < 107
                aArray = cArrayCreateObjRef106()
              elseif indices < 108
                aArray = cArrayCreateObjRef107()
              else
                aArray = cArrayCreateObjRef108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateObjRef109()
              elseif indices < 111
                aArray = cArrayCreateObjRef110()
              elseif indices < 112
                aArray = cArrayCreateObjRef111()
              else
                aArray = cArrayCreateObjRef112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateObjRef113()
              elseif indices < 115
                aArray = cArrayCreateObjRef114()
              elseif indices < 116
                aArray = cArrayCreateObjRef115()
              else
                aArray = cArrayCreateObjRef116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateObjRef117()
              elseif indices < 119
                aArray = cArrayCreateObjRef118()
              elseif indices < 120
                aArray = cArrayCreateObjRef119()
              else
                aArray = cArrayCreateObjRef120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateObjRef121()
              elseif indices < 123
                aArray = cArrayCreateObjRef122()
              elseif indices < 124
                aArray = cArrayCreateObjRef123()
              else
                aArray = cArrayCreateObjRef124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateObjRef125()
              elseif indices < 127
                aArray = cArrayCreateObjRef126()
              elseif indices < 128
                aArray = cArrayCreateObjRef127()
              else
                aArray = cArrayCreateObjRef128()
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
ObjectReference[] function cArrayCreateObjRef001() global
  ObjectReference[] aArr = New ObjectReference[1]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef002() global
  ObjectReference[] aArr = New ObjectReference[2]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef003() global
  ObjectReference[] aArr = New ObjectReference[3]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef004() global
  ObjectReference[] aArr = New ObjectReference[4]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef005() global
  ObjectReference[] aArr = New ObjectReference[5]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef006() global
  ObjectReference[] aArr = New ObjectReference[6]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef007() global
  ObjectReference[] aArr = New ObjectReference[7]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef008() global
  ObjectReference[] aArr = New ObjectReference[8]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef009() global
  ObjectReference[] aArr = New ObjectReference[9]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef010() global
  ObjectReference[] aArr = New ObjectReference[10]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef011() global
  ObjectReference[] aArr = New ObjectReference[11]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef012() global
  ObjectReference[] aArr = New ObjectReference[12]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef013() global
  ObjectReference[] aArr = New ObjectReference[13]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef014() global
  ObjectReference[] aArr = New ObjectReference[14]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef015() global
  ObjectReference[] aArr = New ObjectReference[15]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef016() global
  ObjectReference[] aArr = New ObjectReference[16]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef017() global
  ObjectReference[] aArr = New ObjectReference[17]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef018() global
  ObjectReference[] aArr = New ObjectReference[18]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef019() global
  ObjectReference[] aArr = New ObjectReference[19]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef020() global
  ObjectReference[] aArr = New ObjectReference[20]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef021() global
  ObjectReference[] aArr = New ObjectReference[21]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef022() global
  ObjectReference[] aArr = New ObjectReference[22]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef023() global
  ObjectReference[] aArr = New ObjectReference[23]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef024() global
  ObjectReference[] aArr = New ObjectReference[24]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef025() global
  ObjectReference[] aArr = New ObjectReference[25]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef026() global
  ObjectReference[] aArr = New ObjectReference[26]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef027() global
  ObjectReference[] aArr = New ObjectReference[27]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef028() global
  ObjectReference[] aArr = New ObjectReference[28]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef029() global
  ObjectReference[] aArr = New ObjectReference[29]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef030() global
  ObjectReference[] aArr = New ObjectReference[30]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef031() global
  ObjectReference[] aArr = New ObjectReference[31]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef032() global
  ObjectReference[] aArr = New ObjectReference[32]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef033() global
  ObjectReference[] aArr = New ObjectReference[33]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef034() global
  ObjectReference[] aArr = New ObjectReference[34]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef035() global
  ObjectReference[] aArr = New ObjectReference[35]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef036() global
  ObjectReference[] aArr = New ObjectReference[36]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef037() global
  ObjectReference[] aArr = New ObjectReference[37]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef038() global
  ObjectReference[] aArr = New ObjectReference[38]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef039() global
  ObjectReference[] aArr = New ObjectReference[39]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef040() global
  ObjectReference[] aArr = New ObjectReference[40]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef041() global
  ObjectReference[] aArr = New ObjectReference[41]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef042() global
  ObjectReference[] aArr = New ObjectReference[42]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef043() global
  ObjectReference[] aArr = New ObjectReference[43]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef044() global
  ObjectReference[] aArr = New ObjectReference[44]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef045() global
  ObjectReference[] aArr = New ObjectReference[45]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef046() global
  ObjectReference[] aArr = New ObjectReference[46]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef047() global
  ObjectReference[] aArr = New ObjectReference[47]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef048() global
  ObjectReference[] aArr = New ObjectReference[48]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef049() global
  ObjectReference[] aArr = New ObjectReference[49]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef050() global
  ObjectReference[] aArr = New ObjectReference[50]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef051() global
  ObjectReference[] aArr = New ObjectReference[51]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef052() global
  ObjectReference[] aArr = New ObjectReference[52]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef053() global
  ObjectReference[] aArr = New ObjectReference[53]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef054() global
  ObjectReference[] aArr = New ObjectReference[54]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef055() global
  ObjectReference[] aArr = New ObjectReference[55]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef056() global
  ObjectReference[] aArr = New ObjectReference[56]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef057() global
  ObjectReference[] aArr = New ObjectReference[57]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef058() global
  ObjectReference[] aArr = New ObjectReference[58]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef059() global
  ObjectReference[] aArr = New ObjectReference[59]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef060() global
  ObjectReference[] aArr = New ObjectReference[60]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef061() global
  ObjectReference[] aArr = New ObjectReference[61]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef062() global
  ObjectReference[] aArr = New ObjectReference[62]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef063() global
  ObjectReference[] aArr = New ObjectReference[63]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef064() global
  ObjectReference[] aArr = New ObjectReference[64]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef065() global
  ObjectReference[] aArr = New ObjectReference[65]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef066() global
  ObjectReference[] aArr = New ObjectReference[66]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef067() global
  ObjectReference[] aArr = New ObjectReference[67]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef068() global
  ObjectReference[] aArr = New ObjectReference[68]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef069() global
  ObjectReference[] aArr = New ObjectReference[69]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef070() global
  ObjectReference[] aArr = New ObjectReference[70]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef071() global
  ObjectReference[] aArr = New ObjectReference[71]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef072() global
  ObjectReference[] aArr = New ObjectReference[72]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef073() global
  ObjectReference[] aArr = New ObjectReference[73]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef074() global
  ObjectReference[] aArr = New ObjectReference[74]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef075() global
  ObjectReference[] aArr = New ObjectReference[75]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef076() global
  ObjectReference[] aArr = New ObjectReference[76]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef077() global
  ObjectReference[] aArr = New ObjectReference[77]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef078() global
  ObjectReference[] aArr = New ObjectReference[78]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef079() global
  ObjectReference[] aArr = New ObjectReference[79]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef080() global
  ObjectReference[] aArr = New ObjectReference[80]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef081() global
  ObjectReference[] aArr = New ObjectReference[81]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef082() global
  ObjectReference[] aArr = New ObjectReference[82]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef083() global
  ObjectReference[] aArr = New ObjectReference[83]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef084() global
  ObjectReference[] aArr = New ObjectReference[84]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef085() global
  ObjectReference[] aArr = New ObjectReference[85]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef086() global
  ObjectReference[] aArr = New ObjectReference[86]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef087() global
  ObjectReference[] aArr = New ObjectReference[87]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef088() global
  ObjectReference[] aArr = New ObjectReference[88]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef089() global
  ObjectReference[] aArr = New ObjectReference[89]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef090() global
  ObjectReference[] aArr = New ObjectReference[90]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef091() global
  ObjectReference[] aArr = New ObjectReference[91]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef092() global
  ObjectReference[] aArr = New ObjectReference[92]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef093() global
  ObjectReference[] aArr = New ObjectReference[93]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef094() global
  ObjectReference[] aArr = New ObjectReference[94]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef095() global
  ObjectReference[] aArr = New ObjectReference[95]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef096() global
  ObjectReference[] aArr = New ObjectReference[96]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef097() global
  ObjectReference[] aArr = New ObjectReference[97]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef098() global
  ObjectReference[] aArr = New ObjectReference[98]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef099() global
  ObjectReference[] aArr = New ObjectReference[99]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef100() global
  ObjectReference[] aArr = New ObjectReference[100]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef101() global
  ObjectReference[] aArr = New ObjectReference[101]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef102() global
  ObjectReference[] aArr = New ObjectReference[102]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef103() global
  ObjectReference[] aArr = New ObjectReference[103]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef104() global
  ObjectReference[] aArr = New ObjectReference[104]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef105() global
  ObjectReference[] aArr = New ObjectReference[105]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef106() global
  ObjectReference[] aArr = New ObjectReference[106]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef107() global
  ObjectReference[] aArr = New ObjectReference[107]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef108() global
  ObjectReference[] aArr = New ObjectReference[108]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef109() global
  ObjectReference[] aArr = New ObjectReference[109]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef110() global
  ObjectReference[] aArr = New ObjectReference[110]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef111() global
  ObjectReference[] aArr = New ObjectReference[111]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef112() global
  ObjectReference[] aArr = New ObjectReference[112]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef113() global
  ObjectReference[] aArr = New ObjectReference[113]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef114() global
  ObjectReference[] aArr = New ObjectReference[114]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef115() global
  ObjectReference[] aArr = New ObjectReference[115]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef116() global
  ObjectReference[] aArr = New ObjectReference[116]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef117() global
  ObjectReference[] aArr = New ObjectReference[117]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef118() global
  ObjectReference[] aArr = New ObjectReference[118]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef119() global
  ObjectReference[] aArr = New ObjectReference[119]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef120() global
  ObjectReference[] aArr = New ObjectReference[120]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef121() global
  ObjectReference[] aArr = New ObjectReference[121]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef122() global
  ObjectReference[] aArr = New ObjectReference[122]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef123() global
  ObjectReference[] aArr = New ObjectReference[123]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef124() global
  ObjectReference[] aArr = New ObjectReference[124]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef125() global
  ObjectReference[] aArr = New ObjectReference[125]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef126() global
  ObjectReference[] aArr = New ObjectReference[126]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef127() global
  ObjectReference[] aArr = New ObjectReference[127]
  return aArr
endfunction
ObjectReference[] function cArrayCreateObjRef128() global
  ObjectReference[] aArr = New ObjectReference[128]
  return aArr
endfunction


String[] function cArrayCreateString(Int indices, String filler = "", Bool useSKSE = TRUE, Bool outputTrace = TRUE, \
    Bool useConsoleUtil = TRUE) global
  {Requirements: None, SKSE:Soft}
  String[] aArray
  if useSKSE && indices > 0
    aArray = Utility.CreateStringArray(indices, filler)
  elseif indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; useConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateString()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayString::" + msg + " Returning ArrayNone", 2)
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
