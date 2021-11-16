Scriptname cArrayLeveledActor Hidden


LeveledActor[] function cArrayCreateLeveledActor(Int indices, LeveledActor filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  LeveledActor[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    if outputTrace
      String msg = "cArrayCreateLeveledActor()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayLeveledActor::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateLeveledActor001()
              elseif indices < 3
                return cArrayCreateLeveledActor002()
              elseif indices < 4
                return cArrayCreateLeveledActor003()
              else
                return cArrayCreateLeveledActor004()
              endif
            else
              if indices < 6
                return cArrayCreateLeveledActor005()
              elseif indices < 7
                return cArrayCreateLeveledActor006()
              elseif indices < 8
                return cArrayCreateLeveledActor007()
              else
                return cArrayCreateLeveledActor008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateLeveledActor009()
              elseif indices < 11
                return cArrayCreateLeveledActor010()
              elseif indices < 12
                return cArrayCreateLeveledActor011()
              else
                return cArrayCreateLeveledActor012()
              endif
            else
              if indices < 14
                return cArrayCreateLeveledActor013()
              elseif indices < 15
                return cArrayCreateLeveledActor014()
              elseif indices < 16
                return cArrayCreateLeveledActor015()
              else
                return cArrayCreateLeveledActor016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateLeveledActor017()
              elseif indices < 19
                return cArrayCreateLeveledActor018()
              elseif indices < 20
                return cArrayCreateLeveledActor019()
              else
                return cArrayCreateLeveledActor020()
              endif
            else
              if indices < 22
                return cArrayCreateLeveledActor021()
              elseif indices < 23
                return cArrayCreateLeveledActor022()
              elseif indices < 24
                return cArrayCreateLeveledActor023()
              else
                return cArrayCreateLeveledActor024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateLeveledActor025()
              elseif indices < 27
                return cArrayCreateLeveledActor026()
              elseif indices < 28
                return cArrayCreateLeveledActor027()
              else
                return cArrayCreateLeveledActor028()
              endif
            else
              if indices < 30
                return cArrayCreateLeveledActor029()
              elseif indices < 31
                return cArrayCreateLeveledActor030()
              elseif indices < 32
                return cArrayCreateLeveledActor031()
              else
                return cArrayCreateLeveledActor032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateLeveledActor033()
              elseif indices < 35
                return cArrayCreateLeveledActor034()
              elseif indices < 36
                return cArrayCreateLeveledActor035()
              else
                return cArrayCreateLeveledActor036()
              endif
            else
              if indices < 38
                return cArrayCreateLeveledActor037()
              elseif indices < 39
                return cArrayCreateLeveledActor038()
              elseif indices < 40
                return cArrayCreateLeveledActor039()
              else
                return cArrayCreateLeveledActor040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateLeveledActor041()
              elseif indices < 43
                return cArrayCreateLeveledActor042()
              elseif indices < 44
                return cArrayCreateLeveledActor043()
              else
                return cArrayCreateLeveledActor044()
              endif
            else
              if indices < 46
                return cArrayCreateLeveledActor045()
              elseif indices < 47
                return cArrayCreateLeveledActor046()
              elseif indices < 48
                return cArrayCreateLeveledActor047()
              else
                return cArrayCreateLeveledActor048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateLeveledActor049()
              elseif indices < 51
                return cArrayCreateLeveledActor050()
              elseif indices < 52
                return cArrayCreateLeveledActor051()
              else
                return cArrayCreateLeveledActor052()
              endif
            else
              if indices < 54
                return cArrayCreateLeveledActor053()
              elseif indices < 55
                return cArrayCreateLeveledActor054()
              elseif indices < 56
                return cArrayCreateLeveledActor055()
              else
                return cArrayCreateLeveledActor056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateLeveledActor057()
              elseif indices < 59
                return cArrayCreateLeveledActor058()
              elseif indices < 60
                return cArrayCreateLeveledActor059()
              else
                return cArrayCreateLeveledActor060()
              endif
            else
              if indices < 62
                return cArrayCreateLeveledActor061()
              elseif indices < 63
                return cArrayCreateLeveledActor062()
              elseif indices < 64
                return cArrayCreateLeveledActor063()
              else
                return cArrayCreateLeveledActor064()
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
                return cArrayCreateLeveledActor065()
              elseif indices < 67
                return cArrayCreateLeveledActor066()
              elseif indices < 68
                return cArrayCreateLeveledActor067()
              else
                return cArrayCreateLeveledActor068()
              endif
            else
              if indices < 70
                return cArrayCreateLeveledActor069()
              elseif indices < 71
                return cArrayCreateLeveledActor070()
              elseif indices < 72
                return cArrayCreateLeveledActor071()
              else
                return cArrayCreateLeveledActor072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateLeveledActor073()
              elseif indices < 75
                return cArrayCreateLeveledActor074()
              elseif indices < 76
                return cArrayCreateLeveledActor075()
              else
                return cArrayCreateLeveledActor076()
              endif
            else
              if indices < 78
                return cArrayCreateLeveledActor077()
              elseif indices < 79
                return cArrayCreateLeveledActor078()
              elseif indices < 80
                return cArrayCreateLeveledActor079()
              else
                return cArrayCreateLeveledActor080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateLeveledActor081()
              elseif indices < 83
                return cArrayCreateLeveledActor082()
              elseif indices < 84
                return cArrayCreateLeveledActor083()
              else
                return cArrayCreateLeveledActor084()
              endif
            else
              if indices < 86
                return cArrayCreateLeveledActor085()
              elseif indices < 87
                return cArrayCreateLeveledActor086()
              elseif indices < 88
                return cArrayCreateLeveledActor087()
              else
                return cArrayCreateLeveledActor088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateLeveledActor089()
              elseif indices < 91
                return cArrayCreateLeveledActor090()
              elseif indices < 92
                return cArrayCreateLeveledActor091()
              else
                return cArrayCreateLeveledActor092()
              endif
            else
              if indices < 94
                return cArrayCreateLeveledActor093()
              elseif indices < 95
                return cArrayCreateLeveledActor094()
              elseif indices < 96
                return cArrayCreateLeveledActor095()
              else
                return cArrayCreateLeveledActor096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateLeveledActor097()
              elseif indices < 99
                return cArrayCreateLeveledActor098()
              elseif indices < 100
                return cArrayCreateLeveledActor099()
              else
                return cArrayCreateLeveledActor100()
              endif
            else
              if indices < 102
                return cArrayCreateLeveledActor101()
              elseif indices < 103
                return cArrayCreateLeveledActor102()
              elseif indices < 104
                return cArrayCreateLeveledActor103()
              else
                return cArrayCreateLeveledActor104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateLeveledActor105()
              elseif indices < 107
                return cArrayCreateLeveledActor106()
              elseif indices < 108
                return cArrayCreateLeveledActor107()
              else
                return cArrayCreateLeveledActor108()
              endif
            else
              if indices < 110
                return cArrayCreateLeveledActor109()
              elseif indices < 111
                return cArrayCreateLeveledActor110()
              elseif indices < 112
                return cArrayCreateLeveledActor111()
              else
                return cArrayCreateLeveledActor112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateLeveledActor113()
              elseif indices < 115
                return cArrayCreateLeveledActor114()
              elseif indices < 116
                return cArrayCreateLeveledActor115()
              else
                return cArrayCreateLeveledActor116()
              endif
            else
              if indices < 118
                return cArrayCreateLeveledActor117()
              elseif indices < 119
                return cArrayCreateLeveledActor118()
              elseif indices < 120
                return cArrayCreateLeveledActor119()
              else
                return cArrayCreateLeveledActor120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateLeveledActor121()
              elseif indices < 123
                return cArrayCreateLeveledActor122()
              elseif indices < 124
                return cArrayCreateLeveledActor123()
              else
                return cArrayCreateLeveledActor124()
              endif
            else
              if indices < 126
                return cArrayCreateLeveledActor125()
              elseif indices < 127
                return cArrayCreateLeveledActor126()
              elseif indices < 128
                return cArrayCreateLeveledActor127()
              else
                return cArrayCreateLeveledActor128()
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

LeveledActor[] function cArrayCreateLeveledActor001() global
  LeveledActor[] aArr = New LeveledActor[1]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor002() global
  LeveledActor[] aArr = New LeveledActor[2]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor003() global
  LeveledActor[] aArr = New LeveledActor[3]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor004() global
  LeveledActor[] aArr = New LeveledActor[4]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor005() global
  LeveledActor[] aArr = New LeveledActor[5]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor006() global
  LeveledActor[] aArr = New LeveledActor[6]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor007() global
  LeveledActor[] aArr = New LeveledActor[7]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor008() global
  LeveledActor[] aArr = New LeveledActor[8]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor009() global
  LeveledActor[] aArr = New LeveledActor[9]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor010() global
  LeveledActor[] aArr = New LeveledActor[10]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor011() global
  LeveledActor[] aArr = New LeveledActor[11]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor012() global
  LeveledActor[] aArr = New LeveledActor[12]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor013() global
  LeveledActor[] aArr = New LeveledActor[13]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor014() global
  LeveledActor[] aArr = New LeveledActor[14]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor015() global
  LeveledActor[] aArr = New LeveledActor[15]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor016() global
  LeveledActor[] aArr = New LeveledActor[16]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor017() global
  LeveledActor[] aArr = New LeveledActor[17]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor018() global
  LeveledActor[] aArr = New LeveledActor[18]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor019() global
  LeveledActor[] aArr = New LeveledActor[19]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor020() global
  LeveledActor[] aArr = New LeveledActor[20]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor021() global
  LeveledActor[] aArr = New LeveledActor[21]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor022() global
  LeveledActor[] aArr = New LeveledActor[22]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor023() global
  LeveledActor[] aArr = New LeveledActor[23]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor024() global
  LeveledActor[] aArr = New LeveledActor[24]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor025() global
  LeveledActor[] aArr = New LeveledActor[25]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor026() global
  LeveledActor[] aArr = New LeveledActor[26]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor027() global
  LeveledActor[] aArr = New LeveledActor[27]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor028() global
  LeveledActor[] aArr = New LeveledActor[28]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor029() global
  LeveledActor[] aArr = New LeveledActor[29]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor030() global
  LeveledActor[] aArr = New LeveledActor[30]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor031() global
  LeveledActor[] aArr = New LeveledActor[31]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor032() global
  LeveledActor[] aArr = New LeveledActor[32]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor033() global
  LeveledActor[] aArr = New LeveledActor[33]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor034() global
  LeveledActor[] aArr = New LeveledActor[34]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor035() global
  LeveledActor[] aArr = New LeveledActor[35]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor036() global
  LeveledActor[] aArr = New LeveledActor[36]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor037() global
  LeveledActor[] aArr = New LeveledActor[37]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor038() global
  LeveledActor[] aArr = New LeveledActor[38]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor039() global
  LeveledActor[] aArr = New LeveledActor[39]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor040() global
  LeveledActor[] aArr = New LeveledActor[40]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor041() global
  LeveledActor[] aArr = New LeveledActor[41]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor042() global
  LeveledActor[] aArr = New LeveledActor[42]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor043() global
  LeveledActor[] aArr = New LeveledActor[43]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor044() global
  LeveledActor[] aArr = New LeveledActor[44]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor045() global
  LeveledActor[] aArr = New LeveledActor[45]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor046() global
  LeveledActor[] aArr = New LeveledActor[46]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor047() global
  LeveledActor[] aArr = New LeveledActor[47]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor048() global
  LeveledActor[] aArr = New LeveledActor[48]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor049() global
  LeveledActor[] aArr = New LeveledActor[49]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor050() global
  LeveledActor[] aArr = New LeveledActor[50]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor051() global
  LeveledActor[] aArr = New LeveledActor[51]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor052() global
  LeveledActor[] aArr = New LeveledActor[52]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor053() global
  LeveledActor[] aArr = New LeveledActor[53]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor054() global
  LeveledActor[] aArr = New LeveledActor[54]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor055() global
  LeveledActor[] aArr = New LeveledActor[55]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor056() global
  LeveledActor[] aArr = New LeveledActor[56]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor057() global
  LeveledActor[] aArr = New LeveledActor[57]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor058() global
  LeveledActor[] aArr = New LeveledActor[58]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor059() global
  LeveledActor[] aArr = New LeveledActor[59]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor060() global
  LeveledActor[] aArr = New LeveledActor[60]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor061() global
  LeveledActor[] aArr = New LeveledActor[61]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor062() global
  LeveledActor[] aArr = New LeveledActor[62]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor063() global
  LeveledActor[] aArr = New LeveledActor[63]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor064() global
  LeveledActor[] aArr = New LeveledActor[64]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor065() global
  LeveledActor[] aArr = New LeveledActor[65]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor066() global
  LeveledActor[] aArr = New LeveledActor[66]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor067() global
  LeveledActor[] aArr = New LeveledActor[67]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor068() global
  LeveledActor[] aArr = New LeveledActor[68]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor069() global
  LeveledActor[] aArr = New LeveledActor[69]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor070() global
  LeveledActor[] aArr = New LeveledActor[70]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor071() global
  LeveledActor[] aArr = New LeveledActor[71]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor072() global
  LeveledActor[] aArr = New LeveledActor[72]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor073() global
  LeveledActor[] aArr = New LeveledActor[73]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor074() global
  LeveledActor[] aArr = New LeveledActor[74]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor075() global
  LeveledActor[] aArr = New LeveledActor[75]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor076() global
  LeveledActor[] aArr = New LeveledActor[76]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor077() global
  LeveledActor[] aArr = New LeveledActor[77]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor078() global
  LeveledActor[] aArr = New LeveledActor[78]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor079() global
  LeveledActor[] aArr = New LeveledActor[79]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor080() global
  LeveledActor[] aArr = New LeveledActor[80]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor081() global
  LeveledActor[] aArr = New LeveledActor[81]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor082() global
  LeveledActor[] aArr = New LeveledActor[82]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor083() global
  LeveledActor[] aArr = New LeveledActor[83]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor084() global
  LeveledActor[] aArr = New LeveledActor[84]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor085() global
  LeveledActor[] aArr = New LeveledActor[85]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor086() global
  LeveledActor[] aArr = New LeveledActor[86]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor087() global
  LeveledActor[] aArr = New LeveledActor[87]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor088() global
  LeveledActor[] aArr = New LeveledActor[88]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor089() global
  LeveledActor[] aArr = New LeveledActor[89]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor090() global
  LeveledActor[] aArr = New LeveledActor[90]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor091() global
  LeveledActor[] aArr = New LeveledActor[91]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor092() global
  LeveledActor[] aArr = New LeveledActor[92]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor093() global
  LeveledActor[] aArr = New LeveledActor[93]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor094() global
  LeveledActor[] aArr = New LeveledActor[94]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor095() global
  LeveledActor[] aArr = New LeveledActor[95]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor096() global
  LeveledActor[] aArr = New LeveledActor[96]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor097() global
  LeveledActor[] aArr = New LeveledActor[97]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor098() global
  LeveledActor[] aArr = New LeveledActor[98]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor099() global
  LeveledActor[] aArr = New LeveledActor[99]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor100() global
  LeveledActor[] aArr = New LeveledActor[100]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor101() global
  LeveledActor[] aArr = New LeveledActor[101]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor102() global
  LeveledActor[] aArr = New LeveledActor[102]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor103() global
  LeveledActor[] aArr = New LeveledActor[103]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor104() global
  LeveledActor[] aArr = New LeveledActor[104]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor105() global
  LeveledActor[] aArr = New LeveledActor[105]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor106() global
  LeveledActor[] aArr = New LeveledActor[106]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor107() global
  LeveledActor[] aArr = New LeveledActor[107]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor108() global
  LeveledActor[] aArr = New LeveledActor[108]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor109() global
  LeveledActor[] aArr = New LeveledActor[109]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor110() global
  LeveledActor[] aArr = New LeveledActor[110]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor111() global
  LeveledActor[] aArr = New LeveledActor[111]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor112() global
  LeveledActor[] aArr = New LeveledActor[112]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor113() global
  LeveledActor[] aArr = New LeveledActor[113]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor114() global
  LeveledActor[] aArr = New LeveledActor[114]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor115() global
  LeveledActor[] aArr = New LeveledActor[115]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor116() global
  LeveledActor[] aArr = New LeveledActor[116]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor117() global
  LeveledActor[] aArr = New LeveledActor[117]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor118() global
  LeveledActor[] aArr = New LeveledActor[118]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor119() global
  LeveledActor[] aArr = New LeveledActor[119]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor120() global
  LeveledActor[] aArr = New LeveledActor[120]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor121() global
  LeveledActor[] aArr = New LeveledActor[121]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor122() global
  LeveledActor[] aArr = New LeveledActor[122]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor123() global
  LeveledActor[] aArr = New LeveledActor[123]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor124() global
  LeveledActor[] aArr = New LeveledActor[124]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor125() global
  LeveledActor[] aArr = New LeveledActor[125]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor126() global
  LeveledActor[] aArr = New LeveledActor[126]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor127() global
  LeveledActor[] aArr = New LeveledActor[127]
  return aArr
endfunction
LeveledActor[] function cArrayCreateLeveledActor128() global
  LeveledActor[] aArr = New LeveledActor[128]
  return aArr
endfunction
