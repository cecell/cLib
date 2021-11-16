Scriptname cArrayBook Hidden


Book[] function cArrayCreateBook(Int indices, Book filler = None, Bool outputTrace = TRUE) global
  {Requirements: None}
  Book[] aArray
  if indices > 128 || indices < 1
    ; outputTrace = False    ; uncomment to stop trace messages
    if outputTrace
      String msg = "cArrayCreateBook()::Arg 'indices' (" + indices + ") out of bounds! (>128)"
      Debug.Trace("cArrayBook::" + msg + " Returning ArrayNone", 2)
    endif
  else
    if indices < 65
      if indices < 33
        if indices < 17
          if indices < 9
            if indices < 5
              if indices < 2
                return cArrayCreateBook001()
              elseif indices < 3
                return cArrayCreateBook002()
              elseif indices < 4
                return cArrayCreateBook003()
              else
                return cArrayCreateBook004()
              endif
            else
              if indices < 6
                return cArrayCreateBook005()
              elseif indices < 7
                return cArrayCreateBook006()
              elseif indices < 8
                return cArrayCreateBook007()
              else
                return cArrayCreateBook008()
              endif
            endif
          else
            if indices < 13
              if indices < 10
                return cArrayCreateBook009()
              elseif indices < 11
                return cArrayCreateBook010()
              elseif indices < 12
                return cArrayCreateBook011()
              else
                return cArrayCreateBook012()
              endif
            else
              if indices < 14
                return cArrayCreateBook013()
              elseif indices < 15
                return cArrayCreateBook014()
              elseif indices < 16
                return cArrayCreateBook015()
              else
                return cArrayCreateBook016()
              endif
            endif
          endif
        else
          if indices < 25
            if indices < 21
              if indices < 18
                return cArrayCreateBook017()
              elseif indices < 19
                return cArrayCreateBook018()
              elseif indices < 20
                return cArrayCreateBook019()
              else
                return cArrayCreateBook020()
              endif
            else
              if indices < 22
                return cArrayCreateBook021()
              elseif indices < 23
                return cArrayCreateBook022()
              elseif indices < 24
                return cArrayCreateBook023()
              else
                return cArrayCreateBook024()
              endif
            endif
          else
            if indices < 29
              if indices < 26
                return cArrayCreateBook025()
              elseif indices < 27
                return cArrayCreateBook026()
              elseif indices < 28
                return cArrayCreateBook027()
              else
                return cArrayCreateBook028()
              endif
            else
              if indices < 30
                return cArrayCreateBook029()
              elseif indices < 31
                return cArrayCreateBook030()
              elseif indices < 32
                return cArrayCreateBook031()
              else
                return cArrayCreateBook032()
              endif
            endif
          endif
        endif
      else
        if indices < 49
          if indices < 41
            if indices < 37
              if indices < 34
                return cArrayCreateBook033()
              elseif indices < 35
                return cArrayCreateBook034()
              elseif indices < 36
                return cArrayCreateBook035()
              else
                return cArrayCreateBook036()
              endif
            else
              if indices < 38
                return cArrayCreateBook037()
              elseif indices < 39
                return cArrayCreateBook038()
              elseif indices < 40
                return cArrayCreateBook039()
              else
                return cArrayCreateBook040()
              endif
            endif
          else
            if indices < 45
              if indices < 42
                return cArrayCreateBook041()
              elseif indices < 43
                return cArrayCreateBook042()
              elseif indices < 44
                return cArrayCreateBook043()
              else
                return cArrayCreateBook044()
              endif
            else
              if indices < 46
                return cArrayCreateBook045()
              elseif indices < 47
                return cArrayCreateBook046()
              elseif indices < 48
                return cArrayCreateBook047()
              else
                return cArrayCreateBook048()
              endif
            endif
          endif
        else
          if indices < 57
            if indices < 53
              if indices < 50
                return cArrayCreateBook049()
              elseif indices < 51
                return cArrayCreateBook050()
              elseif indices < 52
                return cArrayCreateBook051()
              else
                return cArrayCreateBook052()
              endif
            else
              if indices < 54
                return cArrayCreateBook053()
              elseif indices < 55
                return cArrayCreateBook054()
              elseif indices < 56
                return cArrayCreateBook055()
              else
                return cArrayCreateBook056()
              endif
            endif
          else
            if indices < 61
              if indices < 58
                return cArrayCreateBook057()
              elseif indices < 59
                return cArrayCreateBook058()
              elseif indices < 60
                return cArrayCreateBook059()
              else
                return cArrayCreateBook060()
              endif
            else
              if indices < 62
                return cArrayCreateBook061()
              elseif indices < 63
                return cArrayCreateBook062()
              elseif indices < 64
                return cArrayCreateBook063()
              else
                return cArrayCreateBook064()
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
                return cArrayCreateBook065()
              elseif indices < 67
                return cArrayCreateBook066()
              elseif indices < 68
                return cArrayCreateBook067()
              else
                return cArrayCreateBook068()
              endif
            else
              if indices < 70
                return cArrayCreateBook069()
              elseif indices < 71
                return cArrayCreateBook070()
              elseif indices < 72
                return cArrayCreateBook071()
              else
                return cArrayCreateBook072()
              endif
            endif
          else
            if indices < 77
              if indices < 74
                return cArrayCreateBook073()
              elseif indices < 75
                return cArrayCreateBook074()
              elseif indices < 76
                return cArrayCreateBook075()
              else
                return cArrayCreateBook076()
              endif
            else
              if indices < 78
                return cArrayCreateBook077()
              elseif indices < 79
                return cArrayCreateBook078()
              elseif indices < 80
                return cArrayCreateBook079()
              else
                return cArrayCreateBook080()
              endif
            endif
          endif
        else
          if indices < 89
            if indices < 85
              if indices < 82
                return cArrayCreateBook081()
              elseif indices < 83
                return cArrayCreateBook082()
              elseif indices < 84
                return cArrayCreateBook083()
              else
                return cArrayCreateBook084()
              endif
            else
              if indices < 86
                return cArrayCreateBook085()
              elseif indices < 87
                return cArrayCreateBook086()
              elseif indices < 88
                return cArrayCreateBook087()
              else
                return cArrayCreateBook088()
              endif
            endif
          else
            if indices < 93
              if indices < 90
                return cArrayCreateBook089()
              elseif indices < 91
                return cArrayCreateBook090()
              elseif indices < 92
                return cArrayCreateBook091()
              else
                return cArrayCreateBook092()
              endif
            else
              if indices < 94
                return cArrayCreateBook093()
              elseif indices < 95
                return cArrayCreateBook094()
              elseif indices < 96
                return cArrayCreateBook095()
              else
                return cArrayCreateBook096()
              endif
            endif
          endif
        endif
      else
        if indices < 113
          if indices < 105
            if indices < 101
              if indices < 98
                return cArrayCreateBook097()
              elseif indices < 99
                return cArrayCreateBook098()
              elseif indices < 100
                return cArrayCreateBook099()
              else
                return cArrayCreateBook100()
              endif
            else
              if indices < 102
                return cArrayCreateBook101()
              elseif indices < 103
                return cArrayCreateBook102()
              elseif indices < 104
                return cArrayCreateBook103()
              else
                return cArrayCreateBook104()
              endif
            endif
          else
            if indices < 109
              if indices < 106
                return cArrayCreateBook105()
              elseif indices < 107
                return cArrayCreateBook106()
              elseif indices < 108
                return cArrayCreateBook107()
              else
                return cArrayCreateBook108()
              endif
            else
              if indices < 110
                return cArrayCreateBook109()
              elseif indices < 111
                return cArrayCreateBook110()
              elseif indices < 112
                return cArrayCreateBook111()
              else
                return cArrayCreateBook112()
              endif
            endif
          endif
        else
          if indices < 121
            if indices < 117
              if indices < 114
                return cArrayCreateBook113()
              elseif indices < 115
                return cArrayCreateBook114()
              elseif indices < 116
                return cArrayCreateBook115()
              else
                return cArrayCreateBook116()
              endif
            else
              if indices < 118
                return cArrayCreateBook117()
              elseif indices < 119
                return cArrayCreateBook118()
              elseif indices < 120
                return cArrayCreateBook119()
              else
                return cArrayCreateBook120()
              endif
            endif
          else
            if indices < 125
              if indices < 122
                return cArrayCreateBook121()
              elseif indices < 123
                return cArrayCreateBook122()
              elseif indices < 124
                return cArrayCreateBook123()
              else
                return cArrayCreateBook124()
              endif
            else
              if indices < 126
                return cArrayCreateBook125()
              elseif indices < 127
                return cArrayCreateBook126()
              elseif indices < 128
                return cArrayCreateBook127()
              else
                return cArrayCreateBook128()
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

Book[] function cArrayCreateBook001() global
  Book[] aArr = New Book[1]
  return aArr
endfunction
Book[] function cArrayCreateBook002() global
  Book[] aArr = New Book[2]
  return aArr
endfunction
Book[] function cArrayCreateBook003() global
  Book[] aArr = New Book[3]
  return aArr
endfunction
Book[] function cArrayCreateBook004() global
  Book[] aArr = New Book[4]
  return aArr
endfunction
Book[] function cArrayCreateBook005() global
  Book[] aArr = New Book[5]
  return aArr
endfunction
Book[] function cArrayCreateBook006() global
  Book[] aArr = New Book[6]
  return aArr
endfunction
Book[] function cArrayCreateBook007() global
  Book[] aArr = New Book[7]
  return aArr
endfunction
Book[] function cArrayCreateBook008() global
  Book[] aArr = New Book[8]
  return aArr
endfunction
Book[] function cArrayCreateBook009() global
  Book[] aArr = New Book[9]
  return aArr
endfunction
Book[] function cArrayCreateBook010() global
  Book[] aArr = New Book[10]
  return aArr
endfunction
Book[] function cArrayCreateBook011() global
  Book[] aArr = New Book[11]
  return aArr
endfunction
Book[] function cArrayCreateBook012() global
  Book[] aArr = New Book[12]
  return aArr
endfunction
Book[] function cArrayCreateBook013() global
  Book[] aArr = New Book[13]
  return aArr
endfunction
Book[] function cArrayCreateBook014() global
  Book[] aArr = New Book[14]
  return aArr
endfunction
Book[] function cArrayCreateBook015() global
  Book[] aArr = New Book[15]
  return aArr
endfunction
Book[] function cArrayCreateBook016() global
  Book[] aArr = New Book[16]
  return aArr
endfunction
Book[] function cArrayCreateBook017() global
  Book[] aArr = New Book[17]
  return aArr
endfunction
Book[] function cArrayCreateBook018() global
  Book[] aArr = New Book[18]
  return aArr
endfunction
Book[] function cArrayCreateBook019() global
  Book[] aArr = New Book[19]
  return aArr
endfunction
Book[] function cArrayCreateBook020() global
  Book[] aArr = New Book[20]
  return aArr
endfunction
Book[] function cArrayCreateBook021() global
  Book[] aArr = New Book[21]
  return aArr
endfunction
Book[] function cArrayCreateBook022() global
  Book[] aArr = New Book[22]
  return aArr
endfunction
Book[] function cArrayCreateBook023() global
  Book[] aArr = New Book[23]
  return aArr
endfunction
Book[] function cArrayCreateBook024() global
  Book[] aArr = New Book[24]
  return aArr
endfunction
Book[] function cArrayCreateBook025() global
  Book[] aArr = New Book[25]
  return aArr
endfunction
Book[] function cArrayCreateBook026() global
  Book[] aArr = New Book[26]
  return aArr
endfunction
Book[] function cArrayCreateBook027() global
  Book[] aArr = New Book[27]
  return aArr
endfunction
Book[] function cArrayCreateBook028() global
  Book[] aArr = New Book[28]
  return aArr
endfunction
Book[] function cArrayCreateBook029() global
  Book[] aArr = New Book[29]
  return aArr
endfunction
Book[] function cArrayCreateBook030() global
  Book[] aArr = New Book[30]
  return aArr
endfunction
Book[] function cArrayCreateBook031() global
  Book[] aArr = New Book[31]
  return aArr
endfunction
Book[] function cArrayCreateBook032() global
  Book[] aArr = New Book[32]
  return aArr
endfunction
Book[] function cArrayCreateBook033() global
  Book[] aArr = New Book[33]
  return aArr
endfunction
Book[] function cArrayCreateBook034() global
  Book[] aArr = New Book[34]
  return aArr
endfunction
Book[] function cArrayCreateBook035() global
  Book[] aArr = New Book[35]
  return aArr
endfunction
Book[] function cArrayCreateBook036() global
  Book[] aArr = New Book[36]
  return aArr
endfunction
Book[] function cArrayCreateBook037() global
  Book[] aArr = New Book[37]
  return aArr
endfunction
Book[] function cArrayCreateBook038() global
  Book[] aArr = New Book[38]
  return aArr
endfunction
Book[] function cArrayCreateBook039() global
  Book[] aArr = New Book[39]
  return aArr
endfunction
Book[] function cArrayCreateBook040() global
  Book[] aArr = New Book[40]
  return aArr
endfunction
Book[] function cArrayCreateBook041() global
  Book[] aArr = New Book[41]
  return aArr
endfunction
Book[] function cArrayCreateBook042() global
  Book[] aArr = New Book[42]
  return aArr
endfunction
Book[] function cArrayCreateBook043() global
  Book[] aArr = New Book[43]
  return aArr
endfunction
Book[] function cArrayCreateBook044() global
  Book[] aArr = New Book[44]
  return aArr
endfunction
Book[] function cArrayCreateBook045() global
  Book[] aArr = New Book[45]
  return aArr
endfunction
Book[] function cArrayCreateBook046() global
  Book[] aArr = New Book[46]
  return aArr
endfunction
Book[] function cArrayCreateBook047() global
  Book[] aArr = New Book[47]
  return aArr
endfunction
Book[] function cArrayCreateBook048() global
  Book[] aArr = New Book[48]
  return aArr
endfunction
Book[] function cArrayCreateBook049() global
  Book[] aArr = New Book[49]
  return aArr
endfunction
Book[] function cArrayCreateBook050() global
  Book[] aArr = New Book[50]
  return aArr
endfunction
Book[] function cArrayCreateBook051() global
  Book[] aArr = New Book[51]
  return aArr
endfunction
Book[] function cArrayCreateBook052() global
  Book[] aArr = New Book[52]
  return aArr
endfunction
Book[] function cArrayCreateBook053() global
  Book[] aArr = New Book[53]
  return aArr
endfunction
Book[] function cArrayCreateBook054() global
  Book[] aArr = New Book[54]
  return aArr
endfunction
Book[] function cArrayCreateBook055() global
  Book[] aArr = New Book[55]
  return aArr
endfunction
Book[] function cArrayCreateBook056() global
  Book[] aArr = New Book[56]
  return aArr
endfunction
Book[] function cArrayCreateBook057() global
  Book[] aArr = New Book[57]
  return aArr
endfunction
Book[] function cArrayCreateBook058() global
  Book[] aArr = New Book[58]
  return aArr
endfunction
Book[] function cArrayCreateBook059() global
  Book[] aArr = New Book[59]
  return aArr
endfunction
Book[] function cArrayCreateBook060() global
  Book[] aArr = New Book[60]
  return aArr
endfunction
Book[] function cArrayCreateBook061() global
  Book[] aArr = New Book[61]
  return aArr
endfunction
Book[] function cArrayCreateBook062() global
  Book[] aArr = New Book[62]
  return aArr
endfunction
Book[] function cArrayCreateBook063() global
  Book[] aArr = New Book[63]
  return aArr
endfunction
Book[] function cArrayCreateBook064() global
  Book[] aArr = New Book[64]
  return aArr
endfunction
Book[] function cArrayCreateBook065() global
  Book[] aArr = New Book[65]
  return aArr
endfunction
Book[] function cArrayCreateBook066() global
  Book[] aArr = New Book[66]
  return aArr
endfunction
Book[] function cArrayCreateBook067() global
  Book[] aArr = New Book[67]
  return aArr
endfunction
Book[] function cArrayCreateBook068() global
  Book[] aArr = New Book[68]
  return aArr
endfunction
Book[] function cArrayCreateBook069() global
  Book[] aArr = New Book[69]
  return aArr
endfunction
Book[] function cArrayCreateBook070() global
  Book[] aArr = New Book[70]
  return aArr
endfunction
Book[] function cArrayCreateBook071() global
  Book[] aArr = New Book[71]
  return aArr
endfunction
Book[] function cArrayCreateBook072() global
  Book[] aArr = New Book[72]
  return aArr
endfunction
Book[] function cArrayCreateBook073() global
  Book[] aArr = New Book[73]
  return aArr
endfunction
Book[] function cArrayCreateBook074() global
  Book[] aArr = New Book[74]
  return aArr
endfunction
Book[] function cArrayCreateBook075() global
  Book[] aArr = New Book[75]
  return aArr
endfunction
Book[] function cArrayCreateBook076() global
  Book[] aArr = New Book[76]
  return aArr
endfunction
Book[] function cArrayCreateBook077() global
  Book[] aArr = New Book[77]
  return aArr
endfunction
Book[] function cArrayCreateBook078() global
  Book[] aArr = New Book[78]
  return aArr
endfunction
Book[] function cArrayCreateBook079() global
  Book[] aArr = New Book[79]
  return aArr
endfunction
Book[] function cArrayCreateBook080() global
  Book[] aArr = New Book[80]
  return aArr
endfunction
Book[] function cArrayCreateBook081() global
  Book[] aArr = New Book[81]
  return aArr
endfunction
Book[] function cArrayCreateBook082() global
  Book[] aArr = New Book[82]
  return aArr
endfunction
Book[] function cArrayCreateBook083() global
  Book[] aArr = New Book[83]
  return aArr
endfunction
Book[] function cArrayCreateBook084() global
  Book[] aArr = New Book[84]
  return aArr
endfunction
Book[] function cArrayCreateBook085() global
  Book[] aArr = New Book[85]
  return aArr
endfunction
Book[] function cArrayCreateBook086() global
  Book[] aArr = New Book[86]
  return aArr
endfunction
Book[] function cArrayCreateBook087() global
  Book[] aArr = New Book[87]
  return aArr
endfunction
Book[] function cArrayCreateBook088() global
  Book[] aArr = New Book[88]
  return aArr
endfunction
Book[] function cArrayCreateBook089() global
  Book[] aArr = New Book[89]
  return aArr
endfunction
Book[] function cArrayCreateBook090() global
  Book[] aArr = New Book[90]
  return aArr
endfunction
Book[] function cArrayCreateBook091() global
  Book[] aArr = New Book[91]
  return aArr
endfunction
Book[] function cArrayCreateBook092() global
  Book[] aArr = New Book[92]
  return aArr
endfunction
Book[] function cArrayCreateBook093() global
  Book[] aArr = New Book[93]
  return aArr
endfunction
Book[] function cArrayCreateBook094() global
  Book[] aArr = New Book[94]
  return aArr
endfunction
Book[] function cArrayCreateBook095() global
  Book[] aArr = New Book[95]
  return aArr
endfunction
Book[] function cArrayCreateBook096() global
  Book[] aArr = New Book[96]
  return aArr
endfunction
Book[] function cArrayCreateBook097() global
  Book[] aArr = New Book[97]
  return aArr
endfunction
Book[] function cArrayCreateBook098() global
  Book[] aArr = New Book[98]
  return aArr
endfunction
Book[] function cArrayCreateBook099() global
  Book[] aArr = New Book[99]
  return aArr
endfunction
Book[] function cArrayCreateBook100() global
  Book[] aArr = New Book[100]
  return aArr
endfunction
Book[] function cArrayCreateBook101() global
  Book[] aArr = New Book[101]
  return aArr
endfunction
Book[] function cArrayCreateBook102() global
  Book[] aArr = New Book[102]
  return aArr
endfunction
Book[] function cArrayCreateBook103() global
  Book[] aArr = New Book[103]
  return aArr
endfunction
Book[] function cArrayCreateBook104() global
  Book[] aArr = New Book[104]
  return aArr
endfunction
Book[] function cArrayCreateBook105() global
  Book[] aArr = New Book[105]
  return aArr
endfunction
Book[] function cArrayCreateBook106() global
  Book[] aArr = New Book[106]
  return aArr
endfunction
Book[] function cArrayCreateBook107() global
  Book[] aArr = New Book[107]
  return aArr
endfunction
Book[] function cArrayCreateBook108() global
  Book[] aArr = New Book[108]
  return aArr
endfunction
Book[] function cArrayCreateBook109() global
  Book[] aArr = New Book[109]
  return aArr
endfunction
Book[] function cArrayCreateBook110() global
  Book[] aArr = New Book[110]
  return aArr
endfunction
Book[] function cArrayCreateBook111() global
  Book[] aArr = New Book[111]
  return aArr
endfunction
Book[] function cArrayCreateBook112() global
  Book[] aArr = New Book[112]
  return aArr
endfunction
Book[] function cArrayCreateBook113() global
  Book[] aArr = New Book[113]
  return aArr
endfunction
Book[] function cArrayCreateBook114() global
  Book[] aArr = New Book[114]
  return aArr
endfunction
Book[] function cArrayCreateBook115() global
  Book[] aArr = New Book[115]
  return aArr
endfunction
Book[] function cArrayCreateBook116() global
  Book[] aArr = New Book[116]
  return aArr
endfunction
Book[] function cArrayCreateBook117() global
  Book[] aArr = New Book[117]
  return aArr
endfunction
Book[] function cArrayCreateBook118() global
  Book[] aArr = New Book[118]
  return aArr
endfunction
Book[] function cArrayCreateBook119() global
  Book[] aArr = New Book[119]
  return aArr
endfunction
Book[] function cArrayCreateBook120() global
  Book[] aArr = New Book[120]
  return aArr
endfunction
Book[] function cArrayCreateBook121() global
  Book[] aArr = New Book[121]
  return aArr
endfunction
Book[] function cArrayCreateBook122() global
  Book[] aArr = New Book[122]
  return aArr
endfunction
Book[] function cArrayCreateBook123() global
  Book[] aArr = New Book[123]
  return aArr
endfunction
Book[] function cArrayCreateBook124() global
  Book[] aArr = New Book[124]
  return aArr
endfunction
Book[] function cArrayCreateBook125() global
  Book[] aArr = New Book[125]
  return aArr
endfunction
Book[] function cArrayCreateBook126() global
  Book[] aArr = New Book[126]
  return aArr
endfunction
Book[] function cArrayCreateBook127() global
  Book[] aArr = New Book[127]
  return aArr
endfunction
Book[] function cArrayCreateBook128() global
  Book[] aArr = New Book[128]
  return aArr
endfunction
