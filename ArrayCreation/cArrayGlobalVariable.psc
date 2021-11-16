Scriptname cArrayGlobalVariable Hidden


GlobalVariable[] function cArrayCreateGlobalVariable(Int indices, GlobalVariable filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  GlobalVariable[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    if outputTrace
      String msg = "cArrayCreateGlobalVariable()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayGlobalVariable::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateGlobalVariable001()
              elseif indices < 3
                return cArrayCreateGlobalVariable002()
              elseif indices < 4
                return cArrayCreateGlobalVariable003()
              else
                return cArrayCreateGlobalVariable004()
              endif
            else
              if indices < 6
                return cArrayCreateGlobalVariable005()
              elseif indices < 7
                return cArrayCreateGlobalVariable006()
              elseif indices < 8
                return cArrayCreateGlobalVariable007()
              else
                return cArrayCreateGlobalVariable008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateGlobalVariable009()
              elseif indices < 11
                return cArrayCreateGlobalVariable010()
              elseif indices < 12
                return cArrayCreateGlobalVariable011()
              else
                return cArrayCreateGlobalVariable012()
              endif
            else
              if indices < 14
                return cArrayCreateGlobalVariable013()
              elseif indices < 15
                return cArrayCreateGlobalVariable014()
              elseif indices < 16
                return cArrayCreateGlobalVariable015()
              else
                return cArrayCreateGlobalVariable016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateGlobalVariable017()
              elseif indices < 19
                return cArrayCreateGlobalVariable018()
              elseif indices < 20
                return cArrayCreateGlobalVariable019()
              else
                return cArrayCreateGlobalVariable020()
              endif
            else
              if indices < 22
                return cArrayCreateGlobalVariable021()
              elseif indices < 23
                return cArrayCreateGlobalVariable022()
              elseif indices < 24
                return cArrayCreateGlobalVariable023()
              else
                return cArrayCreateGlobalVariable024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateGlobalVariable025()
              elseif indices < 27
                return cArrayCreateGlobalVariable026()
              elseif indices < 28
                return cArrayCreateGlobalVariable027()
              else
                return cArrayCreateGlobalVariable028()
              endif
            else
              if indices < 30
                return cArrayCreateGlobalVariable029()
              elseif indices < 31
                return cArrayCreateGlobalVariable030()
              elseif indices < 32
                return cArrayCreateGlobalVariable031()
              else
                return cArrayCreateGlobalVariable032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateGlobalVariable033()
              elseif indices < 35
                return cArrayCreateGlobalVariable034()
              elseif indices < 36
                return cArrayCreateGlobalVariable035()
              else
                return cArrayCreateGlobalVariable036()
              endif
            else
              if indices < 38
                return cArrayCreateGlobalVariable037()
              elseif indices < 39
                return cArrayCreateGlobalVariable038()
              elseif indices < 40
                return cArrayCreateGlobalVariable039()
              else
                return cArrayCreateGlobalVariable040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateGlobalVariable041()
              elseif indices < 43
                return cArrayCreateGlobalVariable042()
              elseif indices < 44
                return cArrayCreateGlobalVariable043()
              else
                return cArrayCreateGlobalVariable044()
              endif
            else
              if indices < 46
                return cArrayCreateGlobalVariable045()
              elseif indices < 47
                return cArrayCreateGlobalVariable046()
              elseif indices < 48
                return cArrayCreateGlobalVariable047()
              else
                return cArrayCreateGlobalVariable048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateGlobalVariable049()
              elseif indices < 51
                return cArrayCreateGlobalVariable050()
              elseif indices < 52
                return cArrayCreateGlobalVariable051()
              else
                return cArrayCreateGlobalVariable052()
              endif
            else
              if indices < 54
                return cArrayCreateGlobalVariable053()
              elseif indices < 55
                return cArrayCreateGlobalVariable054()
              elseif indices < 56
                return cArrayCreateGlobalVariable055()
              else
                return cArrayCreateGlobalVariable056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateGlobalVariable057()
              elseif indices < 59
                return cArrayCreateGlobalVariable058()
              elseif indices < 60
                return cArrayCreateGlobalVariable059()
              else
                return cArrayCreateGlobalVariable060()
              endif
            else
              if indices < 62
                return cArrayCreateGlobalVariable061()
              elseif indices < 63
                return cArrayCreateGlobalVariable062()
              elseif indices < 64
                return cArrayCreateGlobalVariable063()
              else
                return cArrayCreateGlobalVariable064()
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
                return cArrayCreateGlobalVariable065()
              elseif indices < 67
                return cArrayCreateGlobalVariable066()
              elseif indices < 68
                return cArrayCreateGlobalVariable067()
              else
                return cArrayCreateGlobalVariable068()
              endif
            else
              if indices < 70
                return cArrayCreateGlobalVariable069()
              elseif indices < 71
                return cArrayCreateGlobalVariable070()
              elseif indices < 72
                return cArrayCreateGlobalVariable071()
              else
                return cArrayCreateGlobalVariable072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateGlobalVariable073()
              elseif indices < 75
                return cArrayCreateGlobalVariable074()
              elseif indices < 76
                return cArrayCreateGlobalVariable075()
              else
                return cArrayCreateGlobalVariable076()
              endif
            else
              if indices < 78
                return cArrayCreateGlobalVariable077()
              elseif indices < 79
                return cArrayCreateGlobalVariable078()
              elseif indices < 80
                return cArrayCreateGlobalVariable079()
              else
                return cArrayCreateGlobalVariable080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateGlobalVariable081()
              elseif indices < 83
                return cArrayCreateGlobalVariable082()
              elseif indices < 84
                return cArrayCreateGlobalVariable083()
              else
                return cArrayCreateGlobalVariable084()
              endif
            else
              if indices < 86
                return cArrayCreateGlobalVariable085()
              elseif indices < 87
                return cArrayCreateGlobalVariable086()
              elseif indices < 88
                return cArrayCreateGlobalVariable087()
              else
                return cArrayCreateGlobalVariable088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateGlobalVariable089()
              elseif indices < 91
                return cArrayCreateGlobalVariable090()
              elseif indices < 92
                return cArrayCreateGlobalVariable091()
              else
                return cArrayCreateGlobalVariable092()
              endif
            else
              if indices < 94
                return cArrayCreateGlobalVariable093()
              elseif indices < 95
                return cArrayCreateGlobalVariable094()
              elseif indices < 96
                return cArrayCreateGlobalVariable095()
              else
                return cArrayCreateGlobalVariable096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateGlobalVariable097()
              elseif indices < 99
                return cArrayCreateGlobalVariable098()
              elseif indices < 100
                return cArrayCreateGlobalVariable099()
              else
                return cArrayCreateGlobalVariable100()
              endif
            else
              if indices < 102
                return cArrayCreateGlobalVariable101()
              elseif indices < 103
                return cArrayCreateGlobalVariable102()
              elseif indices < 104
                return cArrayCreateGlobalVariable103()
              else
                return cArrayCreateGlobalVariable104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateGlobalVariable105()
              elseif indices < 107
                return cArrayCreateGlobalVariable106()
              elseif indices < 108
                return cArrayCreateGlobalVariable107()
              else
                return cArrayCreateGlobalVariable108()
              endif
            else
              if indices < 110
                return cArrayCreateGlobalVariable109()
              elseif indices < 111
                return cArrayCreateGlobalVariable110()
              elseif indices < 112
                return cArrayCreateGlobalVariable111()
              else
                return cArrayCreateGlobalVariable112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateGlobalVariable113()
              elseif indices < 115
                return cArrayCreateGlobalVariable114()
              elseif indices < 116
                return cArrayCreateGlobalVariable115()
              else
                return cArrayCreateGlobalVariable116()
              endif
            else
              if indices < 118
                return cArrayCreateGlobalVariable117()
              elseif indices < 119
                return cArrayCreateGlobalVariable118()
              elseif indices < 120
                return cArrayCreateGlobalVariable119()
              else
                return cArrayCreateGlobalVariable120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateGlobalVariable121()
              elseif indices < 123
                return cArrayCreateGlobalVariable122()
              elseif indices < 124
                return cArrayCreateGlobalVariable123()
              else
                return cArrayCreateGlobalVariable124()
              endif
            else
              if indices < 126
                return cArrayCreateGlobalVariable125()
              elseif indices < 127
                return cArrayCreateGlobalVariable126()
              elseif indices < 128
                return cArrayCreateGlobalVariable127()
              else
                return cArrayCreateGlobalVariable128()
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
