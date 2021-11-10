Scriptname cArrayGlobalVariable Hidden

Int function cGetVersion() global
  return 9001
endfunction

GlobalVariable[] function cArrayCreateGlobalVariable(Int indices, GlobalVariable filler = None, Bool outputTrace = TRUE, \
  Bool tryConsoleUtil = TRUE) global
  {Requirements: None}
  GlobalVariable[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    ; tryConsoleUtil = TRUE ; uncomment to stop ConsoleUtil use
    if outputTrace
      String msg = "cArrayCreateGlobalVariable()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayGlobalVariable::" + msg + " Returning ArrayNone", 2)
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
                aArray = cArrayCreateGlobalVariable001()
              elseif indices < 3
                aArray = cArrayCreateGlobalVariable002()
              elseif indices < 4
                aArray = cArrayCreateGlobalVariable003()
              else
                aArray = cArrayCreateGlobalVariable004()
              endif
            else
              if indices < 6
                aArray = cArrayCreateGlobalVariable005()
              elseif indices < 7
                aArray = cArrayCreateGlobalVariable006()
              elseif indices < 8
                aArray = cArrayCreateGlobalVariable007()
              else
                aArray = cArrayCreateGlobalVariable008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                aArray = cArrayCreateGlobalVariable009()
              elseif indices < 11
                aArray = cArrayCreateGlobalVariable010()
              elseif indices < 12
                aArray = cArrayCreateGlobalVariable011()
              else
                aArray = cArrayCreateGlobalVariable012()
              endif
            else
              if indices < 14
                aArray = cArrayCreateGlobalVariable013()
              elseif indices < 15
                aArray = cArrayCreateGlobalVariable014()
              elseif indices < 16
                aArray = cArrayCreateGlobalVariable015()
              else
                aArray = cArrayCreateGlobalVariable016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                aArray = cArrayCreateGlobalVariable017()
              elseif indices < 19
                aArray = cArrayCreateGlobalVariable018()
              elseif indices < 20
                aArray = cArrayCreateGlobalVariable019()
              else
                aArray = cArrayCreateGlobalVariable020()
              endif
            else
              if indices < 22
                aArray = cArrayCreateGlobalVariable021()
              elseif indices < 23
                aArray = cArrayCreateGlobalVariable022()
              elseif indices < 24
                aArray = cArrayCreateGlobalVariable023()
              else
                aArray = cArrayCreateGlobalVariable024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                aArray = cArrayCreateGlobalVariable025()
              elseif indices < 27
                aArray = cArrayCreateGlobalVariable026()
              elseif indices < 28
                aArray = cArrayCreateGlobalVariable027()
              else
                aArray = cArrayCreateGlobalVariable028()
              endif
            else
              if indices < 30
                aArray = cArrayCreateGlobalVariable029()
              elseif indices < 31
                aArray = cArrayCreateGlobalVariable030()
              elseif indices < 32
                aArray = cArrayCreateGlobalVariable031()
              else
                aArray = cArrayCreateGlobalVariable032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                aArray = cArrayCreateGlobalVariable033()
              elseif indices < 35
                aArray = cArrayCreateGlobalVariable034()
              elseif indices < 36
                aArray = cArrayCreateGlobalVariable035()
              else
                aArray = cArrayCreateGlobalVariable036()
              endif
            else
              if indices < 38
                aArray = cArrayCreateGlobalVariable037()
              elseif indices < 39
                aArray = cArrayCreateGlobalVariable038()
              elseif indices < 40
                aArray = cArrayCreateGlobalVariable039()
              else
                aArray = cArrayCreateGlobalVariable040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                aArray = cArrayCreateGlobalVariable041()
              elseif indices < 43
                aArray = cArrayCreateGlobalVariable042()
              elseif indices < 44
                aArray = cArrayCreateGlobalVariable043()
              else
                aArray = cArrayCreateGlobalVariable044()
              endif
            else
              if indices < 46
                aArray = cArrayCreateGlobalVariable045()
              elseif indices < 47
                aArray = cArrayCreateGlobalVariable046()
              elseif indices < 48
                aArray = cArrayCreateGlobalVariable047()
              else
                aArray = cArrayCreateGlobalVariable048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                aArray = cArrayCreateGlobalVariable049()
              elseif indices < 51
                aArray = cArrayCreateGlobalVariable050()
              elseif indices < 52
                aArray = cArrayCreateGlobalVariable051()
              else
                aArray = cArrayCreateGlobalVariable052()
              endif
            else
              if indices < 54
                aArray = cArrayCreateGlobalVariable053()
              elseif indices < 55
                aArray = cArrayCreateGlobalVariable054()
              elseif indices < 56
                aArray = cArrayCreateGlobalVariable055()
              else
                aArray = cArrayCreateGlobalVariable056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                aArray = cArrayCreateGlobalVariable057()
              elseif indices < 59
                aArray = cArrayCreateGlobalVariable058()
              elseif indices < 60
                aArray = cArrayCreateGlobalVariable059()
              else
                aArray = cArrayCreateGlobalVariable060()
              endif
            else
              if indices < 62
                aArray = cArrayCreateGlobalVariable061()
              elseif indices < 63
                aArray = cArrayCreateGlobalVariable062()
              elseif indices < 64
                aArray = cArrayCreateGlobalVariable063()
              else
                aArray = cArrayCreateGlobalVariable064()
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
                aArray = cArrayCreateGlobalVariable065()
              elseif indices < 67
                aArray = cArrayCreateGlobalVariable066()
              elseif indices < 68
                aArray = cArrayCreateGlobalVariable067()
              else
                aArray = cArrayCreateGlobalVariable068()
              endif
            else
              if indices < 70
                aArray = cArrayCreateGlobalVariable069()
              elseif indices < 71
                aArray = cArrayCreateGlobalVariable070()
              elseif indices < 72
                aArray = cArrayCreateGlobalVariable071()
              else
                aArray = cArrayCreateGlobalVariable072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                aArray = cArrayCreateGlobalVariable073()
              elseif indices < 75
                aArray = cArrayCreateGlobalVariable074()
              elseif indices < 76
                aArray = cArrayCreateGlobalVariable075()
              else
                aArray = cArrayCreateGlobalVariable076()
              endif
            else
              if indices < 78
                aArray = cArrayCreateGlobalVariable077()
              elseif indices < 79
                aArray = cArrayCreateGlobalVariable078()
              elseif indices < 80
                aArray = cArrayCreateGlobalVariable079()
              else
                aArray = cArrayCreateGlobalVariable080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                aArray = cArrayCreateGlobalVariable081()
              elseif indices < 83
                aArray = cArrayCreateGlobalVariable082()
              elseif indices < 84
                aArray = cArrayCreateGlobalVariable083()
              else
                aArray = cArrayCreateGlobalVariable084()
              endif
            else
              if indices < 86
                aArray = cArrayCreateGlobalVariable085()
              elseif indices < 87
                aArray = cArrayCreateGlobalVariable086()
              elseif indices < 88
                aArray = cArrayCreateGlobalVariable087()
              else
                aArray = cArrayCreateGlobalVariable088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                aArray = cArrayCreateGlobalVariable089()
              elseif indices < 91
                aArray = cArrayCreateGlobalVariable090()
              elseif indices < 92
                aArray = cArrayCreateGlobalVariable091()
              else
                aArray = cArrayCreateGlobalVariable092()
              endif
            else
              if indices < 94
                aArray = cArrayCreateGlobalVariable093()
              elseif indices < 95
                aArray = cArrayCreateGlobalVariable094()
              elseif indices < 96
                aArray = cArrayCreateGlobalVariable095()
              else
                aArray = cArrayCreateGlobalVariable096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                aArray = cArrayCreateGlobalVariable097()
              elseif indices < 99
                aArray = cArrayCreateGlobalVariable098()
              elseif indices < 100
                aArray = cArrayCreateGlobalVariable099()
              else
                aArray = cArrayCreateGlobalVariable100()
              endif
            else
              if indices < 102
                aArray = cArrayCreateGlobalVariable101()
              elseif indices < 103
                aArray = cArrayCreateGlobalVariable102()
              elseif indices < 104
                aArray = cArrayCreateGlobalVariable103()
              else
                aArray = cArrayCreateGlobalVariable104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                aArray = cArrayCreateGlobalVariable105()
              elseif indices < 107
                aArray = cArrayCreateGlobalVariable106()
              elseif indices < 108
                aArray = cArrayCreateGlobalVariable107()
              else
                aArray = cArrayCreateGlobalVariable108()
              endif
            else
              if indices < 110
                aArray = cArrayCreateGlobalVariable109()
              elseif indices < 111
                aArray = cArrayCreateGlobalVariable110()
              elseif indices < 112
                aArray = cArrayCreateGlobalVariable111()
              else
                aArray = cArrayCreateGlobalVariable112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                aArray = cArrayCreateGlobalVariable113()
              elseif indices < 115
                aArray = cArrayCreateGlobalVariable114()
              elseif indices < 116
                aArray = cArrayCreateGlobalVariable115()
              else
                aArray = cArrayCreateGlobalVariable116()
              endif
            else
              if indices < 118
                aArray = cArrayCreateGlobalVariable117()
              elseif indices < 119
                aArray = cArrayCreateGlobalVariable118()
              elseif indices < 120
                aArray = cArrayCreateGlobalVariable119()
              else
                aArray = cArrayCreateGlobalVariable120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                aArray = cArrayCreateGlobalVariable121()
              elseif indices < 123
                aArray = cArrayCreateGlobalVariable122()
              elseif indices < 124
                aArray = cArrayCreateGlobalVariable123()
              else
                aArray = cArrayCreateGlobalVariable124()
              endif
            else
              if indices < 126
                aArray = cArrayCreateGlobalVariable125()
              elseif indices < 127
                aArray = cArrayCreateGlobalVariable126()
              elseif indices < 128
                aArray = cArrayCreateGlobalVariable127()
              else
                aArray = cArrayCreateGlobalVariable128()
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

GlobalVariable[] function cArrayCreateGlobalVariable001() global
  GlobalVariable[] aArr = New GlobalVariable[1]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable002() global
  GlobalVariable[] aArr = New GlobalVariable[2]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable003() global
  GlobalVariable[] aArr = New GlobalVariable[3]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable004() global
  GlobalVariable[] aArr = New GlobalVariable[4]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable005() global
  GlobalVariable[] aArr = New GlobalVariable[5]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable006() global
  GlobalVariable[] aArr = New GlobalVariable[6]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable007() global
  GlobalVariable[] aArr = New GlobalVariable[7]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable008() global
  GlobalVariable[] aArr = New GlobalVariable[8]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable009() global
  GlobalVariable[] aArr = New GlobalVariable[9]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable010() global
  GlobalVariable[] aArr = New GlobalVariable[10]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable011() global
  GlobalVariable[] aArr = New GlobalVariable[11]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable012() global
  GlobalVariable[] aArr = New GlobalVariable[12]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable013() global
  GlobalVariable[] aArr = New GlobalVariable[13]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable014() global
  GlobalVariable[] aArr = New GlobalVariable[14]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable015() global
  GlobalVariable[] aArr = New GlobalVariable[15]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable016() global
  GlobalVariable[] aArr = New GlobalVariable[16]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable017() global
  GlobalVariable[] aArr = New GlobalVariable[17]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable018() global
  GlobalVariable[] aArr = New GlobalVariable[18]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable019() global
  GlobalVariable[] aArr = New GlobalVariable[19]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable020() global
  GlobalVariable[] aArr = New GlobalVariable[20]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable021() global
  GlobalVariable[] aArr = New GlobalVariable[21]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable022() global
  GlobalVariable[] aArr = New GlobalVariable[22]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable023() global
  GlobalVariable[] aArr = New GlobalVariable[23]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable024() global
  GlobalVariable[] aArr = New GlobalVariable[24]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable025() global
  GlobalVariable[] aArr = New GlobalVariable[25]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable026() global
  GlobalVariable[] aArr = New GlobalVariable[26]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable027() global
  GlobalVariable[] aArr = New GlobalVariable[27]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable028() global
  GlobalVariable[] aArr = New GlobalVariable[28]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable029() global
  GlobalVariable[] aArr = New GlobalVariable[29]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable030() global
  GlobalVariable[] aArr = New GlobalVariable[30]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable031() global
  GlobalVariable[] aArr = New GlobalVariable[31]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable032() global
  GlobalVariable[] aArr = New GlobalVariable[32]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable033() global
  GlobalVariable[] aArr = New GlobalVariable[33]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable034() global
  GlobalVariable[] aArr = New GlobalVariable[34]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable035() global
  GlobalVariable[] aArr = New GlobalVariable[35]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable036() global
  GlobalVariable[] aArr = New GlobalVariable[36]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable037() global
  GlobalVariable[] aArr = New GlobalVariable[37]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable038() global
  GlobalVariable[] aArr = New GlobalVariable[38]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable039() global
  GlobalVariable[] aArr = New GlobalVariable[39]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable040() global
  GlobalVariable[] aArr = New GlobalVariable[40]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable041() global
  GlobalVariable[] aArr = New GlobalVariable[41]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable042() global
  GlobalVariable[] aArr = New GlobalVariable[42]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable043() global
  GlobalVariable[] aArr = New GlobalVariable[43]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable044() global
  GlobalVariable[] aArr = New GlobalVariable[44]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable045() global
  GlobalVariable[] aArr = New GlobalVariable[45]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable046() global
  GlobalVariable[] aArr = New GlobalVariable[46]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable047() global
  GlobalVariable[] aArr = New GlobalVariable[47]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable048() global
  GlobalVariable[] aArr = New GlobalVariable[48]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable049() global
  GlobalVariable[] aArr = New GlobalVariable[49]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable050() global
  GlobalVariable[] aArr = New GlobalVariable[50]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable051() global
  GlobalVariable[] aArr = New GlobalVariable[51]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable052() global
  GlobalVariable[] aArr = New GlobalVariable[52]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable053() global
  GlobalVariable[] aArr = New GlobalVariable[53]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable054() global
  GlobalVariable[] aArr = New GlobalVariable[54]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable055() global
  GlobalVariable[] aArr = New GlobalVariable[55]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable056() global
  GlobalVariable[] aArr = New GlobalVariable[56]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable057() global
  GlobalVariable[] aArr = New GlobalVariable[57]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable058() global
  GlobalVariable[] aArr = New GlobalVariable[58]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable059() global
  GlobalVariable[] aArr = New GlobalVariable[59]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable060() global
  GlobalVariable[] aArr = New GlobalVariable[60]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable061() global
  GlobalVariable[] aArr = New GlobalVariable[61]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable062() global
  GlobalVariable[] aArr = New GlobalVariable[62]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable063() global
  GlobalVariable[] aArr = New GlobalVariable[63]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable064() global
  GlobalVariable[] aArr = New GlobalVariable[64]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable065() global
  GlobalVariable[] aArr = New GlobalVariable[65]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable066() global
  GlobalVariable[] aArr = New GlobalVariable[66]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable067() global
  GlobalVariable[] aArr = New GlobalVariable[67]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable068() global
  GlobalVariable[] aArr = New GlobalVariable[68]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable069() global
  GlobalVariable[] aArr = New GlobalVariable[69]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable070() global
  GlobalVariable[] aArr = New GlobalVariable[70]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable071() global
  GlobalVariable[] aArr = New GlobalVariable[71]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable072() global
  GlobalVariable[] aArr = New GlobalVariable[72]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable073() global
  GlobalVariable[] aArr = New GlobalVariable[73]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable074() global
  GlobalVariable[] aArr = New GlobalVariable[74]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable075() global
  GlobalVariable[] aArr = New GlobalVariable[75]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable076() global
  GlobalVariable[] aArr = New GlobalVariable[76]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable077() global
  GlobalVariable[] aArr = New GlobalVariable[77]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable078() global
  GlobalVariable[] aArr = New GlobalVariable[78]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable079() global
  GlobalVariable[] aArr = New GlobalVariable[79]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable080() global
  GlobalVariable[] aArr = New GlobalVariable[80]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable081() global
  GlobalVariable[] aArr = New GlobalVariable[81]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable082() global
  GlobalVariable[] aArr = New GlobalVariable[82]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable083() global
  GlobalVariable[] aArr = New GlobalVariable[83]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable084() global
  GlobalVariable[] aArr = New GlobalVariable[84]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable085() global
  GlobalVariable[] aArr = New GlobalVariable[85]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable086() global
  GlobalVariable[] aArr = New GlobalVariable[86]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable087() global
  GlobalVariable[] aArr = New GlobalVariable[87]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable088() global
  GlobalVariable[] aArr = New GlobalVariable[88]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable089() global
  GlobalVariable[] aArr = New GlobalVariable[89]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable090() global
  GlobalVariable[] aArr = New GlobalVariable[90]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable091() global
  GlobalVariable[] aArr = New GlobalVariable[91]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable092() global
  GlobalVariable[] aArr = New GlobalVariable[92]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable093() global
  GlobalVariable[] aArr = New GlobalVariable[93]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable094() global
  GlobalVariable[] aArr = New GlobalVariable[94]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable095() global
  GlobalVariable[] aArr = New GlobalVariable[95]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable096() global
  GlobalVariable[] aArr = New GlobalVariable[96]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable097() global
  GlobalVariable[] aArr = New GlobalVariable[97]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable098() global
  GlobalVariable[] aArr = New GlobalVariable[98]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable099() global
  GlobalVariable[] aArr = New GlobalVariable[99]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable100() global
  GlobalVariable[] aArr = New GlobalVariable[100]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable101() global
  GlobalVariable[] aArr = New GlobalVariable[101]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable102() global
  GlobalVariable[] aArr = New GlobalVariable[102]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable103() global
  GlobalVariable[] aArr = New GlobalVariable[103]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable104() global
  GlobalVariable[] aArr = New GlobalVariable[104]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable105() global
  GlobalVariable[] aArr = New GlobalVariable[105]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable106() global
  GlobalVariable[] aArr = New GlobalVariable[106]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable107() global
  GlobalVariable[] aArr = New GlobalVariable[107]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable108() global
  GlobalVariable[] aArr = New GlobalVariable[108]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable109() global
  GlobalVariable[] aArr = New GlobalVariable[109]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable110() global
  GlobalVariable[] aArr = New GlobalVariable[110]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable111() global
  GlobalVariable[] aArr = New GlobalVariable[111]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable112() global
  GlobalVariable[] aArr = New GlobalVariable[112]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable113() global
  GlobalVariable[] aArr = New GlobalVariable[113]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable114() global
  GlobalVariable[] aArr = New GlobalVariable[114]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable115() global
  GlobalVariable[] aArr = New GlobalVariable[115]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable116() global
  GlobalVariable[] aArr = New GlobalVariable[116]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable117() global
  GlobalVariable[] aArr = New GlobalVariable[117]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable118() global
  GlobalVariable[] aArr = New GlobalVariable[118]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable119() global
  GlobalVariable[] aArr = New GlobalVariable[119]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable120() global
  GlobalVariable[] aArr = New GlobalVariable[120]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable121() global
  GlobalVariable[] aArr = New GlobalVariable[121]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable122() global
  GlobalVariable[] aArr = New GlobalVariable[122]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable123() global
  GlobalVariable[] aArr = New GlobalVariable[123]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable124() global
  GlobalVariable[] aArr = New GlobalVariable[124]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable125() global
  GlobalVariable[] aArr = New GlobalVariable[125]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable126() global
  GlobalVariable[] aArr = New GlobalVariable[126]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable127() global
  GlobalVariable[] aArr = New GlobalVariable[127]
  return aArr
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable128() global
  GlobalVariable[] aArr = New GlobalVariable[128]
  return aArr
endfunction
