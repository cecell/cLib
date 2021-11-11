Scriptname cArrayActor Hidden

Int function cGetVersion() global
  return 9001
endfunction

Actor[] function cArrayCreateActor(Int indices, Actor filler = None, Bool usePapUtil = TRUE, \
  Bool outputTrace = TRUE, Bool tryConsoleUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Actor[] aArray
  if usePapUtil && indices > 0
    aArray = PapyrusUtil.ActorArray(indices, filler)
  elseif indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; tryConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateActor()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayActor::" + msg + " Returning ArrayNone", 2)
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
