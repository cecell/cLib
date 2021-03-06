ScriptName clib Hidden

import cArrayCreateBase

Int    function cGetVersion() global
  {Requirements: None}
  return 9025
endfunction

function p(String msg) global
  ConsoleUtil.PrintMessage(msg)
endfunction
;--------------------------FORMS/OBJECT REFERENCES-----------------------------

;====== Query/Analysis
  ;>>> resolve form
Form    function cGetForm(Int decForm, String hexForm = "", String modName = "") global
  {Requirements: None}
  Form returnForm
  if !decForm && !hexForm
    cErrInvalidArg("cGetForm", "!decForm && !hexForm")
  else
    if hexForm
      decForm = cH2D(hexForm)
    endif
    if !modName
      returnForm = Game.GetForm(decForm)
    else
      returnForm = Game.GetFormFromFile(decForm, modName)
    endif
  endif
  return returnForm
endfunction
  ;>>> Get forms from file
    ;==> If all forms from same mod
Form[]   function cArrayHexIDToForms(String[] aArray, String esXName, Bool skipNones = TRUE, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  Form[] newArray
  if !aArray || !esXName
    cErrInvalidArg("cArrayHexIDToForms", "!aArray || !esXName", "")
  elseif useSKSE && clibUse.cUseSKSE() && !Game.IsPluginInstalled(esXName)
    cErrInvalidArg("cArrayHexIDToForms", "useSKSE && clibUse.cUseSKSE() && !Game.IsPluginInstalled(esXName)")
  else
    Int[] newArray2 = cArrayCreateInt(aArray.length)
    if newArray2.length
      newArray2 = cArrayHexStringsToDecimal(aArray)
      return cArrayIntIDToForms(newArray2, esXName, skipNones)
    else
      cErrArrInitFail("cArrayHexIDToForms")
    endif
  endif
  return newArray
endfunction
    ;==> If all forms from same mod
Form[]   function cArrayIntIDToForms(Int[] aArray, String esXName, Bool skipNones = TRUE, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  Form[] newArray
  if !aArray || !esXName
    cErrInvalidArg("cArrayIntIDToForms", "!aArray || !esXName", "")
  elseif useSKSE && clibUse.cUseSKSE() && !Game.IsPluginInstalled(esXName)
    cErrInvalidArg("cArrayIntIDToForms", "useSKSE && clibUse.cUseSKSE() && !Game.IsPluginInstalled(esXName)")
  else
    Form curForm
    newArray = cArrayCreateForm(aArray.length, None)
    if newArray.length
      Int invalidForms
      Int j = 0
      Int i = 0
      while i < aArray.length
        curForm = Game.GetFormFromFile(aArray[i], esXName)
        if !skipNones
          newArray[i] = curForm
          if !curForm
            invalidForms += 1
          endif
        elseif skipNones
          if !curForm
            invalidForms += 1
          else
            newArray[j] = curForm
            j += 1
          endif
        endif
        i += 1
      endwhile
      if invalidForms
        clibTrace("cArrayIntIDToForms", " " + invalidForms + " forms were invalid", 1)
      endif
    else
      cErrArrInitFail("cArrayIntIDToForms")
    endif
  endif
  return newArray
endfunction
    ;==> Each can be different mod, String[] to supply name for each
Form[]   function cArrayIntIDModNamesToForms(Int[] aArray, String[] esXName, Bool skipNones = TRUE, \
  Bool useSKSE = TRUE) global ; WORKING
  {Requirements: None, SKSE:Soft}
  Form[] newArray
  if !aArray || !esXName
    cErrInvalidArg("cArrayIntIDModNamesToForms", "!aArray || !esXName", "")
  elseif useSKSE && clibUse.cUseSKSE() && !Game.IsPluginInstalled(esXName)
    cErrInvalidArg("cArrayIntIDModNamesToForms", "useSKSE && clibUse.cUseSKSE() && !Game.IsPluginInstalled(esXName)")
  else
    Int invalidForms
    Form curForm
    newArray = cArrayCreateForm(aArray.length)
    if newArray.length
      Int j = 0
      Int i = 0
      while i < aArray.length
        curForm = cTernaryForm(aArray[i] && esXName[i], Game.GetFormFromFile(aArray[i], esXName[i]), None)
        if !skipNones
          newArray[i] = curForm
          if !curForm
            invalidForms += 1
          endif
        elseif skipNones
          if !curForm
            invalidForms += 1
          else
            newArray[j] = curForm
            j += 1
          endif
        endif
        i += 1
      endwhile
      if invalidForms
        clibTrace("cArrayIntIDModNamesToForms", " " + invalidForms + " forms were invalid", 1)
      endif
    else
      cErrArrInitFail("cArrayIntIDModNamesToForms")
    endif
  endif
  return newArray
endfunction
    ;==> Each can be different mod, String[] to supply name for each
Form[]   function cArrayHexIDModNamesToForms(String[] aArray, String[] esXNames, Bool clearNones = TRUE, \
    Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  Form[] newArray
  if !aArray || !esxNames
    cErrInvalidArg("cArrayHexIDModNamesToForms", "!aArray || !esxNames", "")
  else
    newArray = cArrayCreateForm(aArray.length, None)
    if newArray.length
      Int i = 0
      while i < aArray.length && i < esXNames.length
        if useSKSE && clibUse.cUseSKSE() && !Game.IsPluginInstalled(esXNames[i])
          cErrInvalidArg("cArrayHexIDModNamesToForms", "useSKSE && clibUse.cUseSKSE() && !Game.IsPluginInstalled(" + esXNames[i] + ")")
        else
          newArray[i] = cGetForm(0, aArray[i])
          if !newArray[i]
            newArray[i] = Game.GetFormFromFile(cH2D(aArray[i]), esXNames[i])
            if !newArray[i]
              newArray[i] = Game.GetFormFromFile(cGetIntSubID(0, aArray[i]), esXNames[i])
            endif
          endif
        endif
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayHexIDModNamesToForms")
    endif
  endif
  return newArray
endfunction
  ;>>> get type Non-SKSE relies on keywords yet covers > 10,000 items in vanilla alone
;   e.g. weapon, armor, ingredient, potion/food, book, scroll, soul gem
Int     function cGetSKSEType(Form aForm, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  ; Non-SKSE version only works for inventory items that use 'vendor' type keywords which means that
  ;   more obscure items could be missed but it covers quite a lot tbh (10,664 references)
  if !aForm
    cErrInvalidArg("cGetSKSEType", "!aForm")
  elseif useSKSE && clibUse.cUseSKSE()
    return aForm.GetType()
  else
    Int[] typeInts = New Int[23]
  ; this array is aligned with formlists as follows:
    ; GiftMiscVendor [FLST:000A248F]
    typeInts[0] = 41  ; VendorItemStaff [KYWD:000937A4]       111
    typeInts[1] = 52  ; VendorItemSoulGem [KYWD:000937A3]      28
    typeInts[2] = 23  ; VendorItemScroll [KYWD:000A0E57]      127
    typeInts[3] = 32  ; VendorItemOreIngot [KYWD:000914EC]     81
    typeInts[4] = 46  ; VendorItemFood [KYWD:0008CDEA]        182
    typeInts[5] = 32  ; VendorItemClutter [KYWD:000914E9]     188
    typeInts[6] = 27  ; VendorItemBook [KYWD:000937A2]       1611
    typeInts[7] = 32  ; VendorItemAnimalPart [KYWD:000914EB]   32 
    typeInts[8] = -1  ; SKIP GiftUniversallyValuable [KYWD:000A0E55] (not useful here)
    typeInts[9] = 41  ; VendorItemWeapon [KYWD:0008F958]     3622
    typeInts[10] = 32 ; VendorItemTool [KYWD:000914EE]         43
    typeInts[11] = 46 ; VendorItemPotion [KYWD:0008CDEC]       43
    typeInts[12] = 26 ; VendorItemJewelry [KYWD:0008F95A]     504
    typeInts[13] = 32 ; VendorItemGem [KYWD:000914ED]          68
    typeInts[14] = 26 ; VendorItemClothing [KYWD:0008F95B]    586
    typeInts[15] = 42 ; VendorItemArrow [KYWD:000917E7]        83
    typeInts[16] = 26 ; VendorItemArmor [KYWD:0008F959]      3033
    typeInts[17] = 32 ; VendorItemAnimalHide [KYWD:000914EA]   68
    ; VendorItemsApothecary [FLST:0009379F]
    typeInts[18] = 27 ; VendorItemRecipe [KYWD:000F5CB0]       40
    typeInts[19] = 46 ; VendorItemFoodRaw [KYWD:000A0E56]      
    typeInts[20] = 46 ; VendorItemPotion [KYWD:0008CDEC]      
    typeInts[21] = 46 ; VendorItemPoison [KYWD:0008CDED]       94
    typeInts[22] = 30 ; VendorItemIngredient [KYWD:0008CDEB]  120
    ; Next last two formlist entries were already covered in the prior list
    
    ;GiftMiscVendor [FLST:000A248F]
    FormList fl1 = Game.GetForm(0x000A248F) as FormList
    Int i = 0
    while i < 18
      if aForm.HasKeyword(fl1.GetAt(i) as Keyword) && i !=8
        return typeInts[i]
      endif
    endwhile
    ; VendorItemsApothecary [FLST:0009379F]
    FormList fl2 = Game.GetForm(0x0009379F) as FormList
    i = 0
    while i < 23
      if aForm.HasKeyword(fl2.GetAt(i) as Keyword)
        return typeInts[i + 18]
      endif
    endwhile
    ; Spell tome
    if aForm.HasKeyword(Game.GetForm(0x000937A5) as Keyword)
      return 27
    endif
    return -1
  endif
endfunction
  ;>>> Determine ownership
Form    function cGetOwner(ObjectReference aObjectRef) global
  {Requirements: None}
  Form returnForm
  if !aObjectRef
    cErrInvalidArg("cGetOwner", "!aObjectRef", "None")
  else
    ActorBase aActorBase = aObjectRef.GetActorOwner()
    returnForm = cTernaryForm(!aActorBase, cGetInheritedOwner(aObjectRef) as Form, aActorBase as Form)
  endif
  return returnForm
endfunction
Bool    function cIsPlayerOwner(ObjectReference aObjectRef, Actor playerAct = None) global
  {Requirements: None}
  Bool returnBool
  if !aObjectRef
    cErrInvalidArg("cIsPlayerOwner", "!aObjectRef", "False")
  else
    if !playerAct
      playerAct = Game.GetPlayer()
    endif
    returnBool = (playerAct.GetActorBase() == aObjectRef.GetActorOwner()) || \
      (playerAct.IsInFaction(cGetInheritedOwner(aObjectRef)))
  endif
  return returnBool
endfunction
Faction function cGetInheritedOwner(ObjectReference aObjectRef) global
  {Requirements: None}
  Faction returnFaction
  if !aObjectRef
    cErrInvalidArg("cGetInheritedOwner", "!aObjectRef", "None")
  else
    returnFaction = aObjectRef.GetFactionOwner()
    Faction returnFaction2 = aObjectRef.GetParentCell().GetFactionOwner()
    returnFaction = cTernaryForm(!returnFaction, returnFaction2 as Form, returnFaction as Form) as Faction
  endif
  return returnFaction
endfunction
  ;>>> Object query
Bool     function cIsContainer(ObjectReference aObjectRef, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  Bool returnBool
  if !aObjectRef
    cErrInvalidArg("cIsContainer", "!aObjectRef", "False")
  else
    if useSKSE && clibUse.cUseSKSE()
      returnBool = aObjectRef.GetType() == 28
    else    
      returnBool = aObjectRef && (aObjectRef.GetBaseObject() as container)
    endif
  endif
  return returnBool
endfunction
String   function cGetItemName(Form aForm, Bool simple = False) global
  {Requirements: None}
  ; !simple appends "No Name-" to hexFormID return
  String formName
  if !aForm
    cErrInvalidArg("cGetItemName", "!aForm", "\"\"")
  else
    formName = aForm.GetName()
    if !formName && aForm as Actor
      formName = (aForm as Actor).GetActorBase().GetName()
    elseif !formName && aForm as ObjectReference
      formName = (aForm as ObjectReference).GetBaseObject().GetName()
      if !formName
        formName = (aForm as ObjectReference).GetDisplayName()
      endif
    endif
    if !formName && !simple
      formName = "No Name-" + cGetHexIDFromForm(aForm)
    elseif !formName
      formName = cGetHexIDFromForm(aForm)
    endif
  endif
  return formName
endfunction  
String[] function cArrayNameFromForms(Form[] aArray) global
  {Requirements: None}
  String[] newArray
  if !aArray
    cErrInvalidArg("cArrayNameFromForms", "!aArray")
  else
    newArray = cArrayCreateString(aArray.length)
    if newArray.length
      Int i = 0
      while i < aArray.length
        if aArray[i]
          newArray[i] = cGetItemName(aArray[i], False)
        endif
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayNameFromForms")
    endif
  endif
  return newArray
endfunction
String[] function cArrayNameFromFL(FormList aFormList) global
  {Requirements: None}
  String[] returnArray
  if !aFormList
    cErrInvalidArg("cArrayNameFromFL", "!aFormList")
  else
    String[] newArray = cArrayCreateString(aFormList.GetSize())
    String curName
    if newArray.length
      Int i
      i = 0
      while i < aFormList.GetSize()
        if aFormList.GetAt(i)
          curName = aFormList.GetAt(i).GetName()
          if !curName
            curName = "No Name-" + cGetHexIDFromForm(aFormList.GetAt(i))
          endif
          newArray[i] = curName
        endif
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayNameFromFL")
    endif
  endif
  return returnArray
endfunction

;====== FormID handling
  ;>>> number base conversion
Int      function cGetIntSubID(Int decForm, String hexForm = "", Form aForm = None) global
  {Requirements: None}
  ; used in GetFormFromFile
  Int returnInt = 0 ; chose zero because it isn't a valid ID and can be used as a bool as well
  if !decForm && !hexForm && !aForm
    cErrInvalidArg("cGetIntSubID", "!decForm && !hexForm && !aForm", "0") ; no valid args
  else
    returnInt = cH2D(cGetHexSubID(decForm, hexForm, aForm))
  endif
  return returnInt
endfunction
String   function cGetHexSubID(Int decForm, String hexForm = "", Form aForm = None) global
  {Requirements: None}
  ; Returns last 3 hex digits for light or 6 in regular. Input for this function assumes some prior 
  ;   validation. FormIDs must be 'fully loaded' (e.g. hexForm must be 8 digits). Using aForm argument
  ;     requires that it be currently loaded but decForm || hexForm arguments does not
  String returnString = hexForm
  if !hexForm && !decForm && !aForm
    cErrInvalidArg("cGetHexSubID", "!hexForm && !decForm && !aForm", "\"\"")
  else
    if !hexForm
      if aForm
        returnString = cGetHexIDFromForm(aForm)
      elseif decForm
        returnString = cD2H(decForm) ; get the hex string first
      endif
    endif
    if cIsLight(returnString)
      returnString = cStringSubString(hexForm, 5) ; 3rd arg default == 'rest of string'
    else
      returnString = cStringSubString(hexForm, 2) ; 3rd arg default == 'rest of string'
    endif
  endif
  return returnString
endfunction
String   function cGetHexIDFromForm(Form aForm) global
  {Requirements: None}
  String returnString
  if !aForm
    cErrInvalidArg("cGetHexIDFromForm", "!aForm", "\"\"")
  else
    returnString = cD2H(aForm.GetFormID())
  endif
  return returnString
endfunction
Int[]    function cArrayHexStringsToDecimal(String[] aArray) global
  {Requirements: None}
  ; without SKSE array creation is limited to 128!
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayHexStringsToDecimal", "!aArray")
  else
    newArray = cArrayCreateInt(aArray.length)
    if newArray.length
      Int i = 0
      while i < aArray.length
        newArray[i] = cH2D(aArray[i])
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayHexStringsToDecimal")
    endif
  endif
  return newArray
endfunction
String[] function cArrayDecimalsToHexStrings(Int[] aArray) global
  {Requirements: None}
  String[] newArray
  if !aArray
    cErrInvalidArg("cArrayDecimalsToHexStrings", "!aArray")
  else
    newArray = cArrayCreateString(aArray.length, "")
    if newArray.length
      Int i = 0
      while i < aArray.length
        newArray[i] = cD2H(aArray[i])
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayDecimalsToHexStrings")
    endif
  endif
  return newArray
endfunction
  ;>>> fairly accurate method of determining if full (loaded) FormID is vanilla or not
Bool     function cIDInVanillaRange(Int decForm, String hexForm = "", Form aForm = None) global
  {Requirements: None}
  ; Requires full formID of a loaded plugin
  ; Checks if the dec FormID value is between 0 and SSEEdit value for next form in Dragonborn.esm
  ; NOTE: Injected records cannot be differentiated. This does not mean the form is valid, only that it's in range
  ;   however, apart from this caveat it does confirm that it is *not* from a mod use cGetForm to test validity
  Bool returnBool
  if !hexForm && !decForm && !aForm
    cErrInvalidArg("cIDInVanillaRange", "!hexForm && !decForm && !aForm", "\"\"")
  else
    if aForm
      decForm = aForm.GetFormID()
    elseif hexForm
      decForm = cH2D(hexForm)
    endif
    returnBool = cIsBetweenInt(decForm, 1, 67232578)
  endif
  return returnBool
endfunction

;====== Mod Functions
Bool   function cIsLight(String hexForm = "", Int decForm = 0,Form formVar = None, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  if !hexForm && !decForm && !formVar
    cErrInvalidArg("cIsLight", "!hexForm && !decForm && !formVar")
  elseif useSKSE && clibUse.cUseSKSE()
    if hexForm
      return cStringLeft(hexForm, 2) == "FE"
    elseif formVar
      return cStringLeft(cGetHexIDFromForm(formVar), 2) == "FE"
    elseif decForm
      return cStringLeft(cD2H(decForm), 2) == "FE"
    endif
  else
    String[] aArray
    if hexForm
      aArray = cStringHexToArray(hexForm)
    elseif decForm
      aArray = cStringHexToArray(cD2H(decForm))
    endif
    if aArray[0] + aArray[1] == "FE"
      return TRUE
    else
      return False
    endif
  endif
endfunction

;====== Leveled Item Lists
Int function cArrayAddLVLI(LeveledItem aLeveledList, Form[] aArray, Int level, Int count) global
  {Requirements: None}
  ; all items in the form must have the same level and count
  Int numAdded = 0
  if !aArray
    cErrInvalidArg("cArrayAddLVLI", "!aArray")
  elseif !aLeveledList
    cErrInvalidArg("cArrayAddLVLI", "!aLeveledList")
  else
    Int i = 0
    while i < aArray.length
      if aArray[i]
        aLeveledList.AddForm(aArray[i], level, count)
        numAdded += 1
      endif
      i += 1
    endwhile
  endif
  return numAdded
endfunction
Int function cArrayAllAddLVLI(LeveledItem aLeveledList, Form[] aArray, Int[] levels, Int[] counts) global
  {Requirements: None}
  ; accepts arrays for all three arguments, forms, levelss, countss
  ; Note: the levels and counts arrays use the cWrapInt function. This allows the following:
  ;   A 21 index form array and levels and counts arrays of 7 forms each:
  ;   Form[0] -> levels[0] -> counts[0]
  ;   ...
  ;   Form[6] -> levels[6] -> counts[6]
  ;   Form[7] -> levels[0] -> counts[0]
  ;   ...
  ;   Form[13] -> levels[6] -> counts[6]
  ;   Form[14] -> levels[0] -> counts[0]
  ; If all arrays are equal in size it will of course proceed in normal fashion
  Int numAdded = 0
  if !aArray
    cErrInvalidArg("cArrayAllAddLVLI", "!aArray")
  elseif !aleveledList
    cErrInvalidArg("cArrayAllAddLVLI", "!aleveledList")
  elseif !levels
    cErrInvalidArg("cArrayAllAddLVLI", "!levels")
  elseif !counts
    cErrInvalidArg("cArrayAllAddLVLI", "!counts")
  else
    Int i = 0
    Int j = 0
    Int k = 0
    while i < aArray.length
      if aArray[i]
        aleveledList.AddForm(aArray[i], levels[cWrapInt(j, levels.length, 0)], \
          counts[cWrapInt(k, counts.length, 0)])
        numAdded += 1
      endif
      j += 1
      k += 1
      i += 1
    endwhile
  endif
  return numAdded
endfunction

  ;>>> Inventory functions
Form[] function cGetAllEquippedForms(Actor aActor, Int slot = -1) global
  {Requirement: None}
  Int[] slots
  Int numAdded = 0
  Form[] newArray
  Form[] workingArray
  Form curForm
  if slot == -1
    newArray = New Form[17]
    slots = New Int[17]
    slots[0] = 30  ; Head
    slots[1] = 31  ; Hair
    slots[2] = 32  ; Body
    slots[3] = 33  ; Hands
    slots[4] = 34  ; Forearms
    slots[5] = 35  ; Amulet
    slots[6] = 36  ; Ring
    slots[7] = 37  ; Feet
    slots[8] = 38  ; Calves
    slots[9] = 39  ; Shield
    slots[10] = 40 ; Tail
    slots[11] = 41 ; LongHair
    slots[12] = 42 ; Circlet
    slots[13] = 43 ; Earrings
    slots[14] = 47 ; Backpack (Campfire)
    slots[15] = 51 ; Left Hand Rings Modified by Homercide
    slots[16] = 55 ; Earrings Left (Pierced Ears by Mossa)
  else
    slots = New Int[1]
    slots[0] = slot
    newArray = New Form[1]
  endif
  Int i = 0
  while i < slots.length
    curForm = aActor.GetEquippedArmorInSlot(slots[i]) ; Function is SSE ONLY
    if newArray.Find(curForm) == -1
      newArray[i] = curForm
      numAdded += 1
    endif
    i += 1
  endwhile
  if numAdded != slots.length
    newArray = cArrayRemoveValueForm(newArray, None)
  endif
  return newArray
  
endfunction


;========================= Map/Spatial
; Spatial ref data https://www.creationkit.com/index.php?title=Unit
;1	   1.428 cm	  0.5625"
;64:   91.41 cm	  3'
;128:  1.82m	    6' (1.0 height character)
;4096: 58.5m	  192' (dimension of a cell)
  ;>>> Map coordinates
Int[]   function cGetCellCKCoordsArray(ObjectReference aObjectRef) global
  {Requirements: None}
  ;Grid Map for reference
  ;https://docs.google.com/spreadsheets/d/1yhsNb12btLWpRNRIpZ2DfjVsWR946qEZTmVML_Wi9U8/edit?usp=sharing
  Int[] returnArray
  if !aObjectRef
    cErrInvalidArg("cGetCellCKCoordsArray", "!aObjectRef", "arrayNone")
  else
    returnArray = New Int[2]
    returnArray[0] = Math.Floor(aObjectRef.GetPositionX()/4096) as Int
    returnArray[1] = Math.Floor(aObjectRef.GetPositionY()/4096) as Int
  endif
  return returnArray
endfunction
String  function cGetCellXYAsString(ObjectReference aObjectRef) global
  {Requirements: None}
  ; Learned from Ashen thanks!!!
  ; Player Cell Position: https://www.nexusmods.com/skyrimspecialedition/mods/46173
  ; Convenience for display/messages
  ;Grid Map for reference
  ;https://docs.google.com/spreadsheets/d/1yhsNb12btLWpRNRIpZ2DfjVsWR946qEZTmVML_Wi9U8/edit?usp=sharing
  String returnString
  if !aObjectRef
    cErrInvalidArg("cGetCellXYAsString", "!aObjectRef")
  else
    Int[] cellCKXYIntArray = cGetCellCKCoordsArray(aObjectRef)
    returnString = cellCKXYIntArray[0] + "," + cellCKXYIntArray[1]
  endif
  return returnString
endfunction
  ;>>> Coordinate conversion (CK to XY, e.g. CK: 33, 8 == x: 135168, y: 32768)
Int[]   function cGetCKCoordsFromXY(Float xVar, Float yVar, ObjectReference aObjectRef = None) global
  {Requirements: None}
  ; If aObjectRef is provided then xVar and yVar are overwritten by its position
  ;Grid Map for reference
  ;https://docs.google.com/spreadsheets/d/1yhsNb12btLWpRNRIpZ2DfjVsWR946qEZTmVML_Wi9U8/edit?usp=sharing
  Int[] returnArray
  if !aObjectRef && !cIsBetweenFloat(xVar, -235520.0, 247808.0) 
    cErrInvalidArg("cGetCKCoordsFromXY", "!aObjectRef && !cIsBetweenFloat(xVar, -235520.0, 247808.0)", "arrayNone")
  elseif !aObjectRef && !cIsBetweenFloat(yVar, 206848.0, -178176.0)
    cErrInvalidArg("cGetCKCoordsFromXY", "!aObjectRef && !cIsBetweenFloat(yVar, 206848.0, -178176.0)", "arrayNone")
  else
    if aObjectRef
      xVar = aObjectRef.GetPositionX()
      yVar = aObjectRef.GetPositionY()
    endif
    returnArray = New Int[2]
    returnArray[0] = Math.Floor(xVar/4096)
    returnArray[1] = Math.Floor(yVar/4096)
  endif
  return returnArray
endfunction
Float[] function cGetCoCXYFromCKCoords(Int ckX, Int ckY, ObjectReference aObjectRef = None) global
  {Requirements: None}
  ; If aObjectRef is provided then ckX and ckY are overwritten by its position
  ;Grid Map for reference
  ;https://docs.google.com/spreadsheets/d/1yhsNb12btLWpRNRIpZ2DfjVsWR946qEZTmVML_Wi9U8/edit?usp=sharing
  Float[] returnArray = New Float[2]
  if !cIsBetweenInt(ckX, -57, 60)
    cErrInvalidArg("cGetCoCXYFromCKCoords", "!cIsBetweenInt(ckX, -57, 60)", "arrayNone")
  elseif !cIsBetweenInt(ckY, -43, 50)
    cErrInvalidArg("cGetCoCXYFromCKCoords", "!cIsBetweenInt(ckY, -43, 50)", "arrayNone")
  else
    if aObjectRef
      Int[] ckCoords = cGetCKCoordsFromXY(0.0, 0.0, aObjectRef)
      ckX = ckCoords[0]
      ckY = ckCoords[1]
    endif
    returnArray[0] = ckX as Float * 4096.0
    returnArray[1] = cky as Float * 4096.0
  endif
  return returnArray
endfunction
  ;>>> get the distances of array of objects from object aObj
Float[] function cArrayGetDistancesObjRef(ObjectReference aObj, ObjectReference[] aArray) global
  {Requirements:None}
  Float[] newArray 
  if !aObj
    cErrInvalidArg("cArrayGetDistancesObjRef", "!aObj")
  elseif !aArray
    cErrInvalidArg("cArrayGetDistancesObjRef", "!aArray")
  else
    newArray = cArrayCreateFloat(aArray.length)
    if newArray.length
      Int i = 0
      while i < aArray.length
        newArray[i] = aArray[i].GetDistance(aObj)
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayGetDistancesObjRef")
    endif
  endif
  return newArray
endfunction
  ;>>> .Get*() as an array && .Set*() accepts array
Float[] function cArrayGetAngle(ObjectReference aObj) global
  {Requirements: None}
  Float[] newArray
  if !aObj
    cErrInvalidArg("cArrayGetAngle", "!aObj")
  else
    newArray = cArrayCreateFloat(3)
    if newArray.length
      newArray[0] = aObj.GetAngleX()
      newArray[1] = aObj.GetAngleY()
      newArray[2] = aObj.GetAngleZ()
    else
      cErrArrInitFail("cArrayGetAngle")
    endif
  endif
  return newArray
endfunction
function cArraySetAngle(ObjectReference aObj, Float[] aArray) global
  {Requirements: None}
  if !aObj
    cErrInvalidArg("cArraySetAngle", "!aObj")
  elseif !aArray
    cErrInvalidArg("cArraySetAngle", "!aArray")
  elseif aArray.length < 3
    cErrInvalidArg("cArraySetAngle", "aArray.length < 3")
  else
    aObj.SetAngle(aArray[0], aArray[1], aArray[2])
  endif
endfunction
Float[] function cArrayGetPosition(ObjectReference aObj) global
  {Requirements: None}
  Float[] newArray
  if !aObj
    cErrInvalidArg("cArrayGetPosition", "!aObj")
  else
    newArray = cArrayCreateFloat(3)
    if newArray.length
      newArray[0] = aObj.GetPositionX()
      newArray[1] = aObj.GetPositionY()
      newArray[2] = aObj.GetPositionZ()
    else
      cErrArrInitFail("cArrayGetPosition")
    endif
  endif
  return newArray
endfunction
function cArraySetPosition(ObjectReference aObj, Float[] aArray) global
  {Requirements: None}
  if !aObj
    cErrInvalidArg("cArraySetPosition", "!aObj")
  elseif !aArray
    cErrInvalidArg("cArraySetPosition", "!aArray")
  elseif aArray.length < 3
    cErrInvalidArg("cArraySetPosition", "aArray.length < 3")
  else
    aObj.SetPosition(aArray[0], aArray[1], aArray[2])
  endif
endfunction
  ;>>> Placement == PosX&&PosY&&PosZ&&AngX&&AngY&&AngZ
Float[] function cArrayGetPlacement(ObjectReference aObj) global
  {Requirements: None}
  Float[] newArray
  if !aObj
    cErrInvalidArg("cArrayGetPlacement", "!aObj")
  else
    newArray = cArrayCreateFloat(6)
    if newArray.length
      newArray[0] = aObj.GetPositionX()
      newArray[1] = aObj.GetPositionY()
      newArray[2] = aObj.GetPositionZ()
      newArray[3] = aObj.GetAngleX()
      newArray[4] = aObj.GetAngleY()
      newArray[5] = aObj.GetAngleZ()
    else
      cErrArrInitFail("cArrayGetPlacement")
    endif
  endif
  return newArray
endfunction
function cArraySetPlacement(ObjectReference aObj, Float[] aArray) global
  {Requirements: None}
  if !aObj
    cErrInvalidArg("cArraySetPlacement", "!aObj")
  elseif !aArray
    cErrInvalidArg("cArraySetPlacement", "!aArray")
  elseif aArray.length < 6
    cErrInvalidArg("cArraySetPlacement", "aArray.length < 6")
  else
    aObj.SetPosition(aArray[0], aArray[1], aArray[2])
    aObj.SetAngle(aArray[3], aArray[4], aArray[5])
  endif
endfunction
  ;>>> Accepts placement array as an argument
function cArrayTranslateTo(ObjectReference aObj, Float[] pArray, Float speed = 50.0, Float maxSpeed = 0.0) global
  {Requirements: None}
  if !aObj
    cErrInvalidArg("cArrayTranslateTo", "!aObj")
  elseif !pArray
    cErrInvalidArg("cArrayTranslateTo", "!pArray")
  elseif pArray.length < 6
    cErrInvalidArg("cArrayTranslateTo", "pArray.length < 6")
  else
    aObj.TranslateTo(pArray[0], pArray[1], pArray[2], pArray[3], pArray[4], pArray[5], speed, maxSpeed)
  endif
endfunction

;========================= Conditional statements
; NOTE: These functions can't short circuit like a traditional ternary. Thus, they're most efficient if only
;   one argument is a function. If both are functions they *both* will be run before returning a value;
;   Nesting these functions is perfectly fine with numbers or operator calculations but know this: nesting 
;   with multiple functions as arguments will results in *allllll* of the function being called. Use of
;   traditional if/then is recommended in those cases. Nexting ternary functions *inside* if thens works
;   great though (and will still shave lines off)
  ;>>> Single value returns
Actor    function cTernaryActor(Bool ifThis, Actor returnThis, Actor elseThis = None) global
  {Requirements: None}
  if ifThis
    return returnThis
  endif
  return elseThis
endfunction
Alias    function cTernaryAlias(Bool ifThis, Alias returnThis, Alias elseThis = None) global
  {Requirements: None}
  if ifThis
    return returnThis
  endif
  return elseThis
endfunction
Float    function cTernaryFloat(Bool ifThis, Float returnThis, Float elseThis = 0.0) global
  {Requirements: None}
  if ifThis
    return returnThis
  endif
  return elseThis
endfunction
Form     function cTernaryForm(Bool ifThis, Form returnThis, Form elseThis = None) global
  {Requirements: None}
  if ifThis
    return returnThis
  endif
  return elseThis
endfunction
Int      function cTernaryInt(Bool ifThis, Int returnThis, Int elseThis = 0) global
  {Requirements: None}
  if ifThis
    return returnThis
  endif
  return elseThis
endfunction
ObjectReference function cTernaryObjRef(Bool ifThis, ObjectReference returnThis, ObjectReference elseThis = None) global
  {Requirements: None}
  if ifThis
    return returnThis
  endif
  return elseThis
endfunction
String   function cTernaryString(Bool ifThis, String returnThis, String elseThis = "") global
  {Requirements: None}
  if ifThis
    return returnThis
  endif
  return elseThis
endfunction
  ;>>> Array returns
Actor[]  function cTernaryArrayActor(Bool ifThis, Actor[] returnThis, Actor[] elseThis) global
  {Requirements: None}
  if ifThis
    return returnThis
  endif
  return elseThis
endfunction
Alias[]  function cTernaryArrayAlias(Bool ifThis, Alias[] returnThis, Alias[] elseThis) global
  {Requirements: None}
  if ifThis
    return returnThis
  endif
  return elseThis
endfunction
Bool[]   function cTernaryArrayBool(Bool ifThis, Bool[] returnThis, Bool[] elseThis) global
  {Requirements: None}
  if ifThis
    return returnThis
  endif
  return elseThis
endfunction
Float[]  function cTernaryArrayFloat(Bool ifThis, Float[] returnThis, Float[] elseThis) global
  {Requirements: None}
  if ifThis
    return returnThis
  endif
  return elseThis
endfunction
Form[]   function cTernaryArrayForm(Bool ifThis, Form[] returnThis, Form[] elseThis) global
  {Requirements: None}
  if ifThis
    return returnThis
  endif
  return elseThis
endfunction
Int[]    function cTernaryArrayInt(Bool ifThis, Int[] returnThis, Int[] elseThis) global
  {Requirements: None}
  if ifThis
    return returnThis
  endif
  return elseThis
endfunction
ObjectReference[] function cTernaryArrayObjRef(Bool ifThis, ObjectReference[] returnThis, \
  ObjectReference[] elseThis) global
  {Requirements: None}
  if ifThis
    return returnThis
  endif
  return elseThis
endfunction
String[] function cTernaryArrayString(Bool ifThis, String[] returnThis, String[] elseThis) global
  {Requirements: None}
  if ifThis
    return returnThis
  endif
  return elseThis
endfunction
  ;>>> Simple version when returns ARE the conditions
  ;>>> Single value returns
Actor    function cIfActor(Actor this, Actor that) global
  {Requirements: None}
  if this
    return this
  endif
  return that
endfunction
Alias    function cIfAlias(Alias this, Alias that) global
  {Requirements: None}
  if this
    return this
  endif
  return that
endfunction
Float    function cIfFloat(Float this, Float that) global
  {Requirements: None}
  if this
    return this
  endif
  return that
endfunction
Form     function cIfForm(Form this, Form that) global
  {Requirements: None}
  if this
    return this
  endif
  return that
endfunction
Int      function cIfInt(Int this, Int that) global
  {Requirements: None}
  if this
    return this
  endif
  return that
endfunction
ObjectReference function cIfObjRef(ObjectReference this, ObjectReference that) global
  {Requirements: None}
  if this
    return this
  endif
  return that
endfunction
String   function cIfString(String this, String that) global
  {Requirements: None}
  if this
    return this
  endif
  return that
endfunction
  ;>>> Array returns
Actor[]  function cIfArrayActor(Actor[] this, Actor[] that) global
  {Requirements: None}
  if this
    return this
  endif
  return that
endfunction
Alias[]  function cIfArrayAlias(Alias[] this, Alias[] that) global
  {Requirements: None}
  if this
    return this
  endif
  return that
endfunction
Bool[]   function cIfArrayBool(Bool[] this, Bool[] that) global
  {Requirements: None}
  if this
    return this
  endif
  return that
endfunction
Float[]  function cIfArrayFloat(Float[] this, Float[] that) global
  {Requirements: None}
  if this
    return this
  endif
  return that
endfunction
Form[]   function cIfArrayForm(Form[] this, Form[] that) global
  {Requirements: None}
  if this
    return this
  endif
  return that
endfunction
Int[]    function cIfArrayInt(Int[] this, Int[] that) global
  {Requirements: None}
  if this
    return this
  endif
  return that
endfunction
ObjectReference[] function cIfArrayObjRef(ObjectReference[] this, ObjectReference[] that) global
  {Requirements: None}
  if this
    return this
  endif
  return that
endfunction
String[] function cIfArrayString(String[] this, String[] that) global
  {Requirements: None}
  if this
    return this
  endif
  return that
endfunction
  ;>>> Longer chains of conditional values
Actor  function cOrActor(Actor this, Actor that, Actor orThat2 = None, Actor orThat3 = None, Actor orThat4 = None, \
    Actor orThat5 = None, Actor orThat6 = None, Actor orThat7 = None, Actor orThat8 = None, Actor orThat9 = None) global
  {Requirements: None}
  if this 
    return this
  elseif that
    return that
  elseif orThat2
    return orThat2
  elseif orThat3
    return orThat3
  elseif orThat4
    return orThat4
  elseif orThat5
    return orThat5
  elseif orThat6
    return orThat6
  elseif orThat7
    return orThat7
  elseif orThat8
    return orThat8
  endif
  return orThat9
endfunction
Alias  function cOrAlias(Alias this, Alias that, Alias orThat2 = None, Alias orThat3 = None, Alias orThat4 = None, \
    Alias orThat5 = None, Alias orThat6 = None, Alias orThat7 = None, Alias orThat8 = None, Alias orThat9 = None) global
  {Requirements: None}
  if this 
    return this
  elseif that
    return that
  elseif orThat2
    return orThat2
  elseif orThat3
    return orThat3
  elseif orThat4
    return orThat4
  elseif orThat5
    return orThat5
  elseif orThat6
    return orThat6
  elseif orThat7
    return orThat7
  elseif orThat8
    return orThat8
  endif
  return orThat9
endfunction
Float  function cOrFloat(Float this, Float that, Float orThat2 = 0.0, Float orThat3 = 0.0, Float orThat4 = 0.0, \
    Float orThat5 = 0.0, Float orThat6 = 0.0, Float orThat7 = 0.0, Float orThat8 = 0.0, Float orThat9 = 0.0) global
  {Requirements: None}
  if this 
    return this
  elseif that
    return that
  elseif orThat2
    return orThat2
  elseif orThat3
    return orThat3
  elseif orThat4
    return orThat4
  elseif orThat5
    return orThat5
  elseif orThat6
    return orThat6
  elseif orThat7
    return orThat7
  elseif orThat8
    return orThat8
  endif
  return orThat9
endfunction
Form   function cOrForm(Form this, Form that, Form orThat2 = None, Form orThat3 = None, Form orThat4 = None, \
    Form orThat5 = None) global
  {Requirements: None}
  ; Unnecessary really but I found it online and figured I'd include it
  if this 
    return this
  elseif that
    return that
  elseif orThat2
    return orThat2
  elseif orThat3
    return orThat3
  elseif orThat4
    return orThat4
  endif
  return orThat5
endfunction
Int    function cOrInt(Int this, Int that, Int orThat2 = 0, Int orThat3 = 0, Int orThat4 = 0, Int orThat5 = 0) global
  {Requirements: None}
  if this
    return this
  elseif that
    return that
  elseif orThat2
    return orThat2
  elseif orThat3
    return orThat3
  elseif orThat4
    return orThat4
  endif
  return orThat5
endfunction
ObjectReference  function cOrObjRef(ObjectReference this, ObjectReference that, ObjectReference orThat2 = None, \
  ObjectReference orThat3 = None, ObjectReference orThat4 = None, ObjectReference orThat5 = None, \
    ObjectReference orThat6 = None, ObjectReference orThat7 = None, ObjectReference orThat8 = None, \
      ObjectReference orThat9 = None) global
  {Requirements: None}
  if this 
    return this
  elseif that
    return that
  elseif orThat2
    return orThat2
  elseif orThat3
    return orThat3
  elseif orThat4
    return orThat4
  elseif orThat5
    return orThat5
  elseif orThat6
    return orThat6
  elseif orThat7
    return orThat7
  elseif orThat8
    return orThat8
  endif
  return orThat9
endfunction
String function cOrString(String this, String that, String orThat2 = "", String orThat3 = "", String orThat4 = "", \
    String orThat5 = "") global
  {Requirements: None}
  if this 
    return this
  elseif that
    return that
  elseif orThat2
    return orThat2
  elseif orThat3
    return orThat3
  elseif orThat4
    return orThat4
  endif
  return orThat5
endfunction
  ;>>> Pseudo-switch statements
Alias  function cPseudoSwitchAlias(Int case, Alias elseDefault, Alias case0, Alias case1 = None, Alias case2 = None, \
    Alias case3 = None, Alias case4 = None, Alias case5 = None, Alias case6 = None, Alias case7 = None, \
      Alias case8 = None, Alias case9 = None) global
  {Requirements: None}
  if !cIsBetweenInt(case, 0, 9)
    cErrInvalidArg("cPseudoSwitchAlias", "!cIsBetweenInt(case, 0, 9)", "None")
  else
    if case == 0
      return case0
    elseif case == 1
      return case1
    elseif case == 2
      return case2
    elseif case == 3
      return case3
    elseif case == 4
      return case4
    elseif case == 5
      return case5
    elseif case == 6
      return case6
    elseif case == 7
      return case7
    elseif case == 8
      return case8
    elseif case == 9
      return case9
    else
      return elseDefault
    endif
  endif
  return None
endfunction
Bool   function cPseudoSwitchBool(Int case, Bool elseDefault, Bool case0, Bool case1 = False, Bool case2 = False, \
    Bool case3 = False, Bool case4 = False, Bool case5 = False, Bool case6 = False, Bool case7 = False, \
      Bool case8 = False, Bool case9 = False) global
  {Requirements: None}
  if !cIsBetweenInt(case, 0, 9)
    cErrInvalidArg("cPseudoSwitchBool", "!cIsBetweenInt(case, 0, 9)", "False")
  else
    if case == 0
      return case0
    elseif case == 1
      return case1
    elseif case == 2
      return case2
    elseif case == 3
      return case3
    elseif case == 4
      return case4
    elseif case == 5
      return case5
    elseif case == 6
      return case6
    elseif case == 7
      return case7
    elseif case == 8
      return case8
    elseif case == 9
      return case9
    else
      return elseDefault
    endif
  endif
  return False
endfunction
Float  function cPseudoSwitchFloat(Int case, Float elseDefault, Float case0, Float case1 = 0.0, Float case2 = 0.0, \
    Float case3 = 0.0, Float case4 = 0.0, Float case5 = 0.0, Float case6 = 0.0, Float case7 = 0.0, \
      Float case8 = 0.0, Float case9 = 0.0) global
  {Requirements: None}
  if !cIsBetweenInt(case, 0, 9)
    cErrInvalidArg("cPseudoSwitchFloat", "!cIsBetweenInt(case, 0, 9)", "0.0")
  else
    if case == 0
      return case0
    elseif case == 1
      return case1
    elseif case == 2
      return case2
    elseif case == 3
      return case3
    elseif case == 4
      return case4
    elseif case == 5
      return case5
    elseif case == 6
      return case6
    elseif case == 7
      return case7
    elseif case == 8
      return case8
    elseif case == 9
      return case9
    else
      return elseDefault
    endif
  endif
  return 0.0
endfunction
Form   function cPseudoSwitchForm(Int case, Form elseDefault, Form case0, Form case1 = None, Form case2 = None, \
    Form case3 = None, Form case4 = None, Form case5 = None, Form case6 = None, Form case7 = None, \
      Form case8 = None, Form case9 = None) global
  {Requirements: None}
  if !cIsBetweenInt(case, 0, 9)
    cErrInvalidArg("cPseudoSwitchForm", "!cIsBetweenInt(case, 0, 9)", "None")
  else
    if case == 0
      return case0
    elseif case == 1
      return case1
    elseif case == 2
      return case2
    elseif case == 3
      return case3
    elseif case == 4
      return case4
    elseif case == 5
      return case5
    elseif case == 6
      return case6
    elseif case == 7
      return case7
    elseif case == 8
      return case8
    elseif case == 9
      return case9
    else
      return elseDefault
    endif
  endif
  return None
endfunction
Int    function cPseudoSwitchInt(Int case, Int elseDefault, Int case0, Int case1 = 0, Int case2 = 0, \
    Int case3 = 0, Int case4 = 0, Int case5 = 0, Int case6 = 0, Int case7 = 0, \
      Int case8 = 0, Int case9 = 0) global
  {Requirements: None}
  if !cIsBetweenInt(case, 0, 9)
    cErrInvalidArg("cPseudoSwitchInt", "!cIsBetweenInt(case, 0, 9)", "0")
  else
    if case == 0
      return case0
    elseif case == 1
      return case1
    elseif case == 2
      return case2
    elseif case == 3
      return case3
    elseif case == 4
      return case4
    elseif case == 5
      return case5
    elseif case == 6
      return case6
    elseif case == 7
      return case7
    elseif case == 8
      return case8
    elseif case == 9
      return case9
    else
      return elseDefault
    endif
  endif
  return 0
endfunction
String function cPseudoSwitchString(Int case, String elseDefault, String case0, String case1 = "", String case2 = "", \
    String case3 = "", String case4 = "", String case5 = "", String case6 = "", String case7 = "", \
      String case8 = "", String case9 = "") global
  {Requirements: None}
  if !cIsBetweenInt(case, 0, 9)
    cErrInvalidArg("cPseudoSwitchString", "!cIsBetweenInt(case, 0, 9)", "\"\"")
  else
    if case == 0
      return case0
    elseif case == 1
      return case1
    elseif case == 2
      return case2
    elseif case == 3
      return case3
    elseif case == 4
      return case4
    elseif case == 5
      return case5
    elseif case == 6
      return case6
    elseif case == 7
      return case7
    elseif case == 8
      return case8
    elseif case == 9
      return case9
    else
      return elseDefault
    endif
  endif
  return ""
endfunction
  ;>>> Actual switch used in message.Show() output
function cActualSwitchTemplate(Int case) ; message.Show() results
  {Requirements: None}
  if case == 0
    
  elseif case == 1
    
  elseif case == 2
    
  elseif case == 3
    
  elseif case == 4
    
  elseif case == 5
    
  elseif case == 6
    
  elseif case == 7
    
  elseif case == 8
    
  elseif case == 9
    
  else
    
  endif
  
endfunction

;========================= Math / Logic
  ;>>> Analysis
Bool function cIsEven(Int aInt) global
  {Requirements: None}
  return aInt % 2 == 0
endfunction
Bool function cIsOdd(Int aInt) global
  {Requirements: None}
  return aInt % 2 != 0
endfunction
Bool function cIsFloat(String aString) global ; may not work with very small/large numbers
  {Requirements: None}
  return !cIsInt(aString)
endfunction
Bool function cIsInt(String aString) global
  {Requirements: None}
  return ((aString as Float) as Int) as String == aString
endfunction
Bool function cIsBetweenFloat(Float aValue, Float minV, Float maxV) global
  {Requirements: None}
  if minV > maxV
    cErrInvalidArg("cIsBetweenFloat", "minV > maxV", "False")
  else
    return minV <= maxV && aValue >= minV && aValue <= maxV
  endif
  return False
endfunction
Bool function cIsBetweenInt(Int aValue, Int minV, Int maxV) global
  {Requirements: None}
  if minV > maxV
    cErrInvalidArg("cIsBetweenInt", "minV > maxV", "False")
  else
    return minV <= maxV && aValue >= minV && aValue <= maxV
  endif
  return False
endfunction
  ;>>> Conditional manipulation
Float function cClampFloat(Float aValue, Float minV, Float maxV, Bool usePapUtil = TRUE) global
	{Requirements: None, PapyrusUtil:Soft}
  Float returnFloat
  if minV > maxV
    cErrInvalidArg("cClampFloat", "minV > maxV", "False")
  elseif usePapUtil && clibUse.cUsePapUtil()
    returnFloat = PapyrusUtil.ClampFloat(aValue, minV, maxV)
  else
    returnFloat = cTernaryFloat(aValue > maxV, maxV, cTernaryFloat(aValue < minV, minV, aValue))
  endif
  return returnFloat
endfunction
Int   function cClampInt(Int aValue, Int minV, Int maxV, Bool usePapUtil = TRUE) global
	{Requirements: None, PapyrusUtil:Soft}
  Int returnInt
  if minV > maxV
    cErrInvalidArg("cClampInt", "minV > maxV", "False")
  elseif usePapUtil && clibUse.cUsePapUtil()
    returnInt = PapyrusUtil.ClampInt(aValue, minV, maxV)
  else
    returnInt = cTernaryInt(aValue > maxV, maxV, cTernaryInt(aValue < minV, minV, aValue))
  endif
  return returnInt
endfunction
Int   function cWrapIndex(Int aValue, Int endIndex, Int startIndex = 0, Bool usePapUtil = TRUE) global
	{Requirements: None, PapyrusUtil:Soft}
  ; Adapted from PapyrusUtil function, awesome function!
  Int returnInt
  if endIndex < startIndex
    cErrInvalidArg("cWrapIndex", "endIndex < startIndex")
  elseif endIndex < 0
    cErrInvalidArg("cWrapIndex", "endIndex < 0")
  elseif startIndex < 0
    cErrInvalidArg("cWrapIndex", "startIndex < 0")
  elseif endIndex == 0
    cErrInvalidArg("cWrapIndex", "endIndex == 0")
  elseif usePapUtil && clibUse.cUsePapUtil()
    returnInt = PapyrusUtil.WrapInt(aValue, endIndex, startIndex)
  else
    returnInt = aValue % endIndex
  endif
  return returnInt
endfunction
Int   function cWrapInt(Int aValue, Int highVal, Int lowVal = 0, Bool usePapUtil = TRUE) global
	{Requirements: None, PapyrusUtil:Soft}
  ; Adapted from PapyrusUtil function, awesome function!
  Int returnInt
  if highVal < lowVal
    cErrInvalidArg("cWrapInt", "highVal < lowVal")
  elseif usePapUtil && clibUse.cUsePapUtil()
    returnInt = PapyrusUtil.WrapInt(aValue, highVal, lowVal)
  else
    returnInt = aValue % highVal
  endif
  return returnInt
endfunction
Float function cWrapFloat(Float aValue, Float maxValue, Float minValue = 0.0, Bool usePapUtil = TRUE) global
	{Requirements: None, PapyrusUtil:Soft}
  Float returnFloat
  if maxValue < minValue
    cErrInvalidArg("cWrapFloat", "endIndex < startIndex")
  elseif usePapUtil && clibUse.cUsePapUtil()
    returnFloat = PapyrusUtil.WrapFloat(aValue, maxValue, minValue)
  else
    returnFloat = aValue
    while returnFloat > minValue
      returnFloat -= minValue
    endwhile
  endif
  return returnFloat
endfunction
  ;>>> Rounding
Float function cRoundFloat(Float aFloat, Int places = 1) global
  {Requirements: None}
  Float returnFloat
  if places < 0
    cErrInvalidArg("cRoundFloat", "places < 0", "0.0")
  else
    places = Math.Pow(10.0, places as Float) as Int
    Float workingFloat = aFloat * places
    workingFloat -= (workingFloat as Int) as Float
    Int workingInt = (aFloat * (places as Float)) as Int
    if workingFloat >= 0.5
      workingInt = Math.Ceiling(Math.Abs(aFloat) * (places as Float))
    else
      workingInt = Math.Floor(Math.Abs(aFloat) * (places as Float))
    endif
    returnFloat = (workingInt as Float) / (places as Float)
  endif
  if aFloat < 0
    returnFloat *= -1
  endif
  return returnFloat
endfunction
Int   function cRoundInt(Int aInt, Int places = 1) global
  {Requirements: None}
  ; places == places to the *left*
  Int returnInt
  if places < 0
    cErrInvalidArg("cRoundInt", "places < 0", "0")
  elseif aInt < (places as Int)
    cErrInvalidArg("cRoundInt", "aInt < (places as Int)", "0")
  elseif aInt == 0
    returnInt = aInt
  else
    places = Math.Pow(10.0, places as Float) as Int
    Float workingFloat = Math.Abs(aInt as Float) / (places as Float)
    workingFloat -= (workingFloat as Int) as Float
    if workingFloat >= 0.5
      returnInt = Math.Ceiling(Math.Abs(aInt as Float) / (places as Float))
    else
      returnInt = Math.Floor(Math.Abs(aInt as Float) / (places as Float))
    endif
    returnInt *= places
    if aInt < 0
      returnInt *= -1
    endif
  endif
  return returnInt
endfunction
  ;>>> Entire array calculations
Float function cArraySumFloat(Float[] aArray, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Float aFloat
  if !aArray
    cErrInvalidArg("cArraySumFloat", "!aArray", "0.0")
  elseif usePapUtil && clibUse.cUsePapUtil()
    aFloat = PapyrusUtil.AddFloatValues(aArray)
  else
    Int i = 0
    while i < aArray.length
      aFloat += aArray[i]
      i += 1
    endwhile
  endif
  return aFloat
endfunction
Int   function cArraySumInt(Int[] aArray, Bool usePapUtil = TRUE) global
  {Requirements: None}
  Int aInt
  if !aArray
    cErrInvalidArg("cArraySumInt", "!aArray", "0")
  elseif usePapUtil && clibUse.cUsePapUtil()
    aInt = PapyrusUtil.AddIntValues(aArray)
  else
    Int i = 0
    while i < aArray.length
      aInt += aArray[i]
      i += 1
    endwhile
  endif
  return aInt
endfunction
Float function cArrayAverageFloat(Float[] aArray) global
  {Requirements: None}
  Float aFloat
  if !aArray
    cErrInvalidArg("cArrayAverageFloat", "!aArray", "0.0")
  else
    Int i = 0
    while i < aArray.length
      aFloat += aArray[i]
      i += 1
    endwhile
    aFloat = aFloat / aArray.length
  endif
  return aFloat
endfunction
Int   function cArrayAverageInt(Int[] aArray) global
  {Requirements: None}
  ; remainder is dropped!
  Int aInt
  if !aArray
    cErrInvalidArg("cArrayAverageInt", "!aArray", "0")
  else
    Int i = 0
    while i < aArray.length
      aInt += aArray[i]
      i += 1
    endwhile
    aInt = aInt / aArray.length
  endif
  return aInt
endfunction
  ;>>> Random Number Generation (no limitation aside from VM capability at this point)
Float   function cRandomNumberGenFloat(Float this, Float that, Bool usePO3 = TRUE) global 
  {Requirements: None}
  Float returnFloat
  if this > that
    cErrInvalidArg("cRandomNumberGenFloat", "this > that")
  elseif usePO3 && clibUse.cUsePO3()
    returnFloat = PO3_SKSEFunctions.GenerateRandomFloat(this, that)
  else
    returnFloat = this + (that - this) * Utility.RandomFloat(0.0, 1.0)
  endif
  return returnFloat
endfunction
Int     function cRandomNumberGenInt(Int this, Int that, Bool usePO3 = TRUE) global 
  {Requirements: None}
  Int returnInt
  if this > that
    cErrInvalidArg("cRandomNumberGenInt", "this > that")
  elseif usePO3 && clibUse.cUsePO3()
    returnInt = PO3_SKSEFunctions.GenerateRandomInt(this, that)
  else
    Float difference = (that as Float) - (this as Float)
    difference *= Utility.RandomFloat(0, 1)
    returnInt = this + (difference as Int)
  endif
  return returnInt
endfunction
  ;>>> Create array of random numbers, capped at 128 indices
Float[] function cArrayRandomFloats(Int arraySize = 128, Float this = 0.0, Float that = 100.0) global 
  {Requirements: None}
  ; array length capped at 128
  arraySize = cClampInt(arraySize, 0, 128)
  Float[] returnArray = cArrayCreateFloat(arraySize)
  Float curValue
  if this > that
    cErrInvalidArg("cArrayRandomFloats", "this > that")
  else
    Int i = 0
    while i < arraySize
      curValue = cRandomNumberGenFloat(this, that)
      returnArray[i] = curValue
      i += 1
    endwhile
  endif
  return returnArray
endfunction
Int[]   function cArrayRandomInts(Int arraySize = 128, Int this = 0, Int that = 100) global 
  {Requirements: None}
  ; array length capped at 128
  arraySize = cClampInt(arraySize, 1, 128)
  Int[] returnArray = cArrayCreateInt(arraySize)
  Int curValue
  if this > that
    cErrInvalidArg("cArrayRandomInts", "this > that")
  else
    Int i = 0
    while i < arraySize
      curValue = cRandomNumberGenInt(this, that)
      returnArray[i] = curValue
      i += 1
    endwhile
  endif
  return returnArray
endfunction
  ;>>> Hex <-> Decimal conversion
String function cD2H(Int aInt, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  String returnString
  if useSKSE && clibUse.cUseSKSE()
    String digits = "0123456789ABCDEF"
    Int shifted = 0
    while shifted < 32
      returnString = StringUtil.GetNthChar(digits, Math.LogicalAnd(0xF, aInt)) + returnString
      aInt = Math.RightShift(aInt, 4)
      shifted += 4
    endwhile
  else
    ; This code from dylbill, thanks!!
    ; https://forums.nexusmods.com/index.php?/topic/8441118-convert-decimal-formid-to-hexadecimal/
    String[] HexDigits = New String[16]
    HexDigits[0] = "0"
    HexDigits[1] = "1"
    HexDigits[2] = "2"
    HexDigits[3] = "3"
    HexDigits[4] = "4"
    HexDigits[5] = "5"
    HexDigits[6] = "6"
    HexDigits[7] = "7"
    HexDigits[8] = "8"
    HexDigits[9] = "9"
    HexDigits[10] = "a"
    HexDigits[11] = "b"
    HexDigits[12] = "c"
    HexDigits[13] = "d"
    HexDigits[14] = "e"
    HexDigits[15] = "f"
    
    Int[] NegativeDecDigits = New Int[16]
    NegativeDecDigits[0] = -15
    NegativeDecDigits[1] = -14
    NegativeDecDigits[2] = -13
    NegativeDecDigits[3] = -12
    NegativeDecDigits[4] = -11
    NegativeDecDigits[5] = -10
    NegativeDecDigits[6] = -9
    NegativeDecDigits[7] = -8
    NegativeDecDigits[8] = -7
    NegativeDecDigits[9] = -6
    NegativeDecDigits[10] = -5
    NegativeDecDigits[11] = -4
    NegativeDecDigits[12] = -3
    NegativeDecDigits[13] = -2
    NegativeDecDigits[14] = -1
    NegativeDecDigits[15] = 0
    Int scratchInt
    if aInt >= 0
      String s
      Int v = 0x10000000  ; init divisor
      while (v > 0)
        Int j = aInt / v
        s += HexDigits[j]
        aInt = aInt % v         ; new remainder as result of modulo
        if (v > 1)
          v = v / 16      ; new divisor
        else
          v = 0           ; 1 / 16 = ?    safety first
        endif
      endwhile
      return s
    else
      aInt += 1
      string s
      Int v = 0x10000000  ; init divisor
      while (v > 0)
        Int j = aInt / v
        s += HexDigits[NegativeDecDigits.Find(j)]
        aInt = aInt % v         ; new remainder as result of modulo
        if (v > 1)
          v = v / 16      ; new divisor
        else
          v = 0           ; 1 / 16 = ?    safety first
        endif
      endwhile
      returnString = s
    endif
  endif
  return returnString
endfunction
Int    function cH2D(String aString) global
  {Requirements: None, SKSE:Soft}
  Int returnInt
  if !aString
    cErrInvalidArg("cH2D", "!aString")
  else
    String[] digits = cArrayHexDigits()
    String[] aArray
    String curDigit
    Int hCalcVal
    Int remaining
    Int power
    aArray = cStringHexToArray(aString)
    remaining = aArray.length
    while remaining >= 0
      curDigit = aArray[remaining - 1]
      hCalcVal = digits.Find(curDigit)
      power = aArray.length - remaining
      returnInt = hCalcVal * (Math.Pow(16, power) as int) + returnInt
      remaining -= 1
    endwhile
  endif
  return returnInt
endfunction
  ;>>> Bitwise operations (all Non-SKSE)
Int function cBitwiseOp(Int i1, Int i2, Int iBits = 31, Int iOp = 1, Bool bWarn = False) Global ; Needs testing
  {Requirements: None}
  ;31 bitwise operations. Returns a negative number on errors
  ;  Set iBits lower to limit the bitmask to the lower bits for efficiency - Def = 31bits
  ;    Set bOp for the bitwise operation. 0 = NOT, 1 = AND(default), 2 = OR, 3 = XOR
  ;      Set bWarn to True if you are too lazy to check the error return value, and want a notification
  ; Code from Milagros Osorio http://www.gamesas.com/bitwise-ops-t256983.html
  Int iRes = 0 ; Accumulated result
  Int iDiv
  ;iBits Sanity checks
  if iBits < 1 
    return 0
  endif
  if iBits > 31 
    iRes = -3 ; iBits too high
  elseif i1 < 0 
    iRes = -1 ; 1st param -ve
  elseif iOp && (i2 < 0) 
    iRes = -2 ; 2nd param -ve
  endif
  if iRes != 0 
    if bWarn 
      Debug.Notification("PARAMETER ERROR in function bitwiseOp. Code = " + iRes ) 
    endif 
    return iRes
  endif; Throw away the upper bits
  if iBits != 31 
    Int i = Math.Pow(2, iBits) As Int 
    i1 %= i 
    i2 %= i
  endif; Init divisor to loop from MSBsiDiv = Math.Pow(2, (iBits - 1)) As Int
  if iOp == 1 ; AND 
    if !i1 || !i2 
      return 0 
    endif 
    while(iBits) 
      if ((i1 / iDiv) As Int) && ((i2 / iDiv) As Int) 
        iRes += iDiv 
      endif 
      i1 %= iDiv 
      i2 %= iDiv 
      iDiv /= 2 
      iBits -= 1 
    endwhile
  elseif iOp == 2 ; OR 
    if !i1 && !i2 
      return 0 
    endif 
    while(iBits) 
      if ((i1 / iDiv) As Int) || ((i2 / iDiv) As Int) 
        iRes += iDiv 
      endif 
      i1 %= iDiv 
      i2 %= iDiv 
      iDiv /= 2 
      iBits -= 1 
    endwhile
  elseif iOp == 3 ; XOR 
    while(iBits) 
      Int a = i1 / iDiv 
      Int b = i2 / iDiv 
      if (( a && !b ) || ( !a && B)) 
        iRes += iDiv 
      endif 
      i1 %= iDiv 
      i2 %= iDiv 
      iDiv /= 2 
      iBits -= 1 
    endwhile
  elseif iOp == 0 ; NOT 
    while(iBits) 
      if !((i1 / iDiv) As Int) 
        iRes += iDiv 
      endif 
      i1 %= iDiv 
      iDiv /= 2 
      iBits -= 1 
    endwhile
  elseif bWarn 
    Debug.Notification("PARAMETER ERROR in function bitwiseOp. Code = -4 (unknown iOp)") 
    return -4
  endif
  return iRes
endfunction
    ;--> cBitwiseOp provides non-SKSE functionality for these
Int function cLogicalAND(Int i1, Int i2, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  if useSKSE && clibUse.cUseSKSE()
    return Math.LogicalAND(i1, i2)
  else
    return cBitwiseOp(i1, i2, 31, 1)
  endif
endfunction
Int function cLogicalNOT(Int i1, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  if useSKSE && clibUse.cUseSKSE()
    return Math.LogicalNOT(i1)
  else
    return cBitwiseOp(i1, 0, 31, 0)
  endif
endfunction
Int function cLogicalOR(Int i1, Int i2, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  if useSKSE && clibUse.cUseSKSE()
    return Math.LogicalOR(i1, i2)
  else
    return cBitwiseOp(i1, i2, 31, 2)
  endif
endfunction
Int function cLogicalXOR(Int i1, Int i2, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  if useSKSE && clibUse.cUseSKSE()
    return Math.LogicalXOR(i1, i2)
  else
    return cBitwiseOp(i1, i2, 31, 3)
  endif
endfunction
Int function cBitShiftL(Int aInt, Int numShifts) global
  {Requirements: None}
  return aInt * ((Math.Pow(2.0, numShifts as Float)) as Int)
endfunction
Int function cBitShiftR(Int aInt, Int numShifts) global
  {Requirements: None}
  return aInt / ((Math.Pow(2.0, numShifts as Float)) as Int)
endfunction

;========================= STRINGS
  ;>>> Analysis/Query
Bool   function cStringIsLetter(String aLetter, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  ; Like the SKSE version, the non-SKSE version only checks the first char
  ; thank you cadpnq for the suggestion that made the non-SKSE version possible!
  Bool returnBool
  if !aLetter
    cErrInvalidArg("cStringIsLetter", "!aLetter")
  elseif useSKSE && clibUse.cUseSKSE()
    returnBool = StringUtil.IsLetter(aLetter)
  else
    String aString = cStringASCIICheck(aLetter, "", cArrayASCIIChars())
    returnBool = aString > "`" && aString < "{"
  endif
  return returnBool
endfunction
Bool   function cStringIsDigit(String aDigit, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  ; thank you cadpnq for the suggestion that made the non-SKSE version possible!
  Bool returnBool
  ; removed all argument checks, should check anything
  if useSKSE && clibUse.cUseSKSE()
    returnBool = StringUtil.IsDigit(aDigit)
  else
    returnBool = aDigit > "//" && aDigit < ":"
  endif
  return returnBool
endfunction
Bool   function cStringIsMiscChar(String aChar) global
  {Requirements: None}
  ; This is !cStringIsDigit(aChar) && !cStringIsLetter(aChar)
  ; thank you cadpnq for the suggestion that made the non-SKSE version possible!
  Bool returnBool
  if !aChar
    cErrInvalidArg("cStringIsMiscChar", "!aChar", "\"\"")
  else
    returnBool = !cStringIsDigit(aChar) && !cStringIsLetter(aChar)
  endif
  return returnBool
endfunction
Int    function cStringFind(String inThis, String findThis, Int startIndex = 0, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  Int returnInt = -1
  if !inThis
    cErrInvalidArg("cStringFind", "!inThis", "\"\"") ; log message reporting invalid argument
  elseif !findThis
    cErrInvalidArg("cStringFind", "!findThis", "\"\"")  ; log message reporting invalid argument
  elseif useSKSE && clibUse.cUseSKSE() ; is SKSE available?
    returnInt = StringUtil.Find(inThis, findThis, startIndex) ; with SKSE single command
  else
    String[] findThisArray = cStringToArray(findThis, -1) ; split the string to find to an array
    String[] inThisArray = cStringToArray(inThis, -1)     ; split the main string to an array
    if findThisArray.length && inThisArray.length
      String workingString                                ; this is the string used to build the comparison
      Int firstIndex = 0            ; Position of first found in series (to be returned)
      Int curIndex = startIndex - 1
      Int findThisIndex = 0
      while firstIndex != -1 && findThisIndex < findThisArray.length
        findThisIndex = 0
        curIndex = inThisArray.Find(findThisArray[findThisIndex], curIndex + 1)
        firstIndex = curIndex
        workingString = ""
        while curIndex != -1 && findThisArray[findThisIndex] == inThisArray[curIndex]
          workingString += inThisArray[curIndex]
          if workingString == findThis
            return firstIndex
          endif
          curIndex += 1
          findThisIndex += 1
        endwhile
      endwhile
    else
      cErrArrInitFail("cStringFind")
    endif
  endif
  return -1
endfunction
Int    function cStringLength(String aString, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  ; Because the entire string must be parsed to calculate the size it is recommended to combine string handling 
  ;   functions if possible. Non-SKSE max length 128
  ; thank you cadpnq for the suggestion that made the non-SKSE version possible!
  Int returnInt = 0
  if useSKSE && clibUse.cUseSKSE()
    returnInt = StringUtil.GetLength(aString)
  else
    String[] asciiChars = cArrayASCIIChars()
    String builtString = ""
    while builtString != aString && returnInt < 128 ; catch for runaway loops
      builtString += cStringASCIICheck(aString, builtString, asciiChars)
      returnInt += 1
    endwhile
  endif
  return returnInt
endfunction
String function cStringGetNthChar(String aString, Int n, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  ; thank you cadpnq for the suggestion that made the non-SKSE version possible!
  String returnString = ""
  if !aString
    cErrInvalidArg("cStringGetNthChar", "!aString")
  elseif n < 0
    cErrInvalidArg("cStringGetNthChar", "n < 0")
  elseif useSKSE && clibUse.cUseSKSE()
    returnString = StringUtil.GetNthChar(aString, n)
  else
    String[] asciiChars = cArrayASCIIChars()
    String builtString
    Int iterations = 0
    while iterations <= (n - 1)
      returnString = cStringASCIICheck(aString, builtString, asciiChars)
      builtString += returnString
      iterations += 1
    endwhile
  endif
  return returnString
endfunction
String function cStringSubString(String aString, Int startChar, Int numChars = 0, Bool useSKSE = TRUE) global
  {Requirements None, SKSE:Soft}
  String returnString
  if !aString
    cErrInvalidArg("cStringSubString", "!aString", "\"\"")
  elseif numChars < 0
    cErrInvalidArg("cStringSubString", "numChars < 0", "\"\"")
  elseif useSKSE && clibUse.cUseSKSE()
    if StringUtil.GetLength(aString) > numChars
      numChars = 0 ; 0 == rest of string
    endif
    returnString = StringUtil.SubString(aString, startChar, numChars)
  else
    String[] stringBuild = cStringToArray(aString, -1)
    returnString = cArrayJoinString(stringBuild, "", startChar, startChar + (numChars - 1))
  endif
  return returnString
endfunction
  ;>>> Manipulation
String function cStringReplace(String aString, String toReplace, String withWhat = "", Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  String returnString = aString
  if !aString
    cErrInvalidArg("cStringReplace", "!aString", "\"\"")
  elseif !toReplace
    cErrInvalidArg("cStringReplace", "!toReplace", "\"\"")
  elseif aString == toReplace
    cErrInvalidArg("cStringReplace", "aString == toReplace", "\"\"")
  else
    Int toReplaceLength
    Int maxIterations = 10 ; prevent a runaway loop, also means max 10 replacements
    Int startIndex
    String head
    String tail
    if useSKSE && clibUse.cUseSKSE()
      toReplaceLength = StringUtil.GetLength(toReplace)
      while startIndex != -1 && maxIterations >= 0
        startIndex = StringUtil.Find(returnString, toReplace)
        if startIndex != -1
          head = StringUtil.Substring(returnString, 0, startIndex)
          tail = StringUtil.Substring(returnString, startIndex + toReplaceLength, 0)
          returnString = head + withWhat + tail
        endif
        maxIterations -= 1
      endwhile
    else
      String[] stringBuild
      toReplaceLength = cStringLength(toReplace)
      while startIndex != -1 && maxIterations >= 0
        stringBuild = cStringToArray(returnString, -1) ; <- returnString was set to aString already
        startIndex = cStringFind(returnString, toReplace) ;<- already have array so pass it
        if startIndex != -1 ; it was found
          head = cArrayJoinString(stringBuild, "", 0, startIndex)
          tail = cArrayJoinString(stringBuild, "", startIndex + toReplaceLength)
          returnString = head + withWhat + tail
        endif
        maxIterations -= 1
      endwhile
    endif
  endif
  return returnString
endfunction
String function cStringSetNthChar(String aString, Int a1stCharIndex, String withThis1st = "", Int a2ndCharIndex = 0, \
  String withThis2nd = "*&^", Int a3rdCharIndex = 0, String withThis3rd = "*&^") global 
  {Requirements: None}
  ; withThis2nd or 3rd == "*&^" allows mix/match of ""
  String returnString
  String[] newArray
  if !aString && a1stCharIndex != 0
    cErrInvalidArg("cStringSetNthChar", "!aString && a1stCharIndex != 0")
  else
    newArray = cStringToArray(aString, -1)
    newArray[a1stCharIndex - 1] = withThis1st
    if a2ndCharIndex != 0 && withThis2nd != "*&^"
      newArray[a2ndCharIndex - 1] = withThis2nd
    endif
    if a3rdCharIndex != 0 && withThis3rd != "*&^"
      newArray[a3rdCharIndex - 1] = withThis3rd
    endif
    returnString = cArrayJoinString(newArray)
  endif
  return returnString
endfunction
  ;>>> String truncation
String function cStringRemove(String aString, String toRemove) global
  {Requirements: None}
  ; Convenience version of cStringReplace()
  String returnString
  if !aString
    cErrInvalidArg("cStringRemove", "!aString", "\"\"")
  elseif !toRemove
    cErrInvalidArg("cStringRemove", "!toRemove", "\"\"")
  else
    returnString = cStringReplace(aString, toRemove, "")
  endif
  return returnString
endfunction
String function cStringLeft(String aString, Int numChars, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  ; thank you cadpnq for the suggestion that made the non-SKSE version possible!
  String returnString
  if !aString
    cErrInvalidArg("cStringLeft", "!aString", "\"\"")
  elseif !numChars 
    cErrInvalidArg("cStringLeft", "!numChars", "\"\"")
  elseif numChars < 0
    cErrInvalidArg("cStringLeft", "numChars < 0", "\"\"")
  elseif useSKSE && clibUse.cUseSKSE()
    if StringUtil.GetLength(aString) <= numChars
      numChars = 0 ; 0 == rest of string
    endif
    returnString = StringUtil.SubString(aString, 0, numChars)
  else
    String[] asciiChars = cArrayASCIIChars()
    Int iterations = 0
    while iterations < numChars && returnString != aString
      returnString += cStringASCIICheck(aString, returnString, asciiChars)
      iterations += 1
    endwhile
  endif
  return returnString
endfunction
String function cStringRight(String aString, Int numChars, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  ; thank you cadpnq for the suggestion that made the non-SKSE version possible!
  String returnString
  if !aString
    cErrInvalidArg("cStringRight", "!aString", "\"\"")
  elseif numChars == 0
    cErrInvalidArg("cStringRight", "numChars == 0", "\"\"")
  elseif useSKSE && clibUse.cUseSKSE()
    Int stringLength = StringUtil.GetLength(aString)
    returnString = cTernaryString(stringLength < numChars, aString, StringUtil.SubString(aString, \
      stringLength - numChars, 0))
  else
    String[] stringBuild = cStringToArray(aString, -1)
    returnString = cArrayJoinString(stringBuild, "", stringBuild.length - numChars)
  endif
  return returnString
endfunction
String function cStringSetLength(String aString, Int stringLength, String filler = " ") global
  {Requirements: None}
  ; Think of this as a combination of 'ArrayResize' a 'string length clamp' for a string
  ; filler can be any length desired so long as the string doesn't exceed 128 chars!
  ; thank you cadpnq for the suggestion that made the non-SKSE version possible!
  String returnString
  if !aString
    cErrInvalidArg("cStringSetLength", "!aString", "aString")
  elseif stringLength < 1
    cErrInvalidArg("cStringSetLength", "stringLength < 1", "aString")
  elseif stringLength > 128
    cErrInvalidArg("cStringSetLength", "stringLength > 128, Capped at 128!", "aString")
  else
    returnString = aString
    Int iterations = 0
    Int workingLength = cStringLength(aString)
    Int fillerLength = cStringLength(filler)
    while workingLength < stringLength && iterations < 128
      returnString += filler
      workingLength += fillerLength 
      iterations += 1
    endwhile
    if workingLength > stringLength
      returnString = cStringLeft(returnString, stringLength)
    endif
  endif
  return returnString
endfunction
String function cStringTrimLeft(String aString, String charToTrim = " ", Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  ; charToTrim cannot be longer than one char (it will trim more than one just the string length can't be > 1)
  ; thank you cadpnq for the suggestion that made the non-SKSE version possible!
  String returnString
  if !aString
    cErrInvalidArg("cStringTrimLeft", "!aString", "aString")
  elseif !charToTrim
    cErrInvalidArg("cStringTrimLeft", "!charToTrim", "aString")
  else
    returnString = aString
    Int len = cStringLength(aString)
    Int lengthToTrim = cStringLength(charToTrim)
    if lengthToTrim > len
      cErrInvalidArg("cStringTrimLeft", "lengthToTrim > len", "aString")
    elseif useSKSE && clibUse.cUseSKSE()
      while StringUtil.Substring(returnString, 0, 1) == charToTrim && len > lengthToTrim
        returnString = StringUtil.Substring(aString, 1, 0)
        len -= 1
      endwhile
    else
      String[] stringBuild = cStringToArray(aString, -1)
      Int stringLength = stringBuild.length
      Int numberToTrim = 0
      while stringBuild[numberToTrim] == charToTrim
        numberToTrim += 1
      endwhile
      if numberToTrim
        returnString = cArrayJoinString(stringBuild, "", numberToTrim)
      endif
    endif
  endif
  return returnString
endfunction
String function cStringTrimRight(String aString, String charToTrim = " ", Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  ; rewritten to allow charToTrim to be longer than one char in ***SKSE version only!*** One char only in non-SKSE
  ; thank you cadpnq for the suggestion that made the non-SKSE version possible!
  String returnString
  if !aString
    cErrInvalidArg("cStringTrimRight", "!aString", "\"\"")
  elseif !charToTrim
    cErrInvalidArg("cStringTrimRight", "!charToTrim", "\"\"")
  else
    returnString = aString
    if useSKSE && clibUse.cUseSKSE()
      Int len = StringUtil.GetLength(aString)
      Int lengthToTrim = StringUtil.GetLength(charToTrim)
      if lengthToTrim > 1
        lengthToTrim = 1
        charToTrim = StringUtil.SubString(charToTrim, 0, 1)
      endif
      while StringUtil.Substring(returnString, len - 1, 1) == charToTrim && len > lengthToTrim
        returnString = StringUtil.Substring(returnString, 0, len - 1)
        len -= 1
      endwhile
    else
      String[] stringBuild = cStringToArray(aString, -1)
      Int numChars = 1
      while stringBuild[stringBuild.length - numChars] == charToTrim && numChars < 129 ; to catch a runaway
        numChars += 1
      endwhile
      returnString = cArrayJoinString(stringBuild, "", 0, stringBuild.length - numChars)
    endif
  endif
  return returnString
endfunction
String function cStringTrim(String aString, String charToTrim = " ", Bool useSKSE = TRUE) global ; trim both ends
  {Requirements: None, SKSE:Soft}
  ; rewritten to allow charToTrim to be longer than one char in ***SKSE version only!*** One char only in non-SKSE
  ; thank you cadpnq for the suggestion that made the non-SKSE version possible!
  String returnString
  Int len = 0
  Int lengthToTrim = 0
  if useSKSE && clibUse.cUseSKSE()
    len = StringUtil.GetLength(aString)
    lengthToTrim = StringUtil.GetLength(charToTrim)
  endif
  if !aString
    cErrInvalidArg("cStringTrim", "!aString", "\"\"")
  elseif !charToTrim
    cErrInvalidArg("cStringTrim", "!charToTrim", "\"\"")
  elseif lengthToTrim > len
    cErrInvalidArg("cStringTrim", "lengthToTrim > len", "\"\"")
  else
    returnString = cStringTrimRight(cStringTrimLeft(aString, charToTrim), charToTrim)
  endif
  return returnString
endfunction
  ;>>> String join and split
String   function cStringAddCommaList(String aString0, String aString1, String aString2 = "", \
  String aString3 = "", String aString4 = "", String aString5 = "", String aString6 = "", String aString7 = "", \ 
    String aString8 = "", String aString9 = "") global
  {Requirements: None}
  ; for convenience ensures no comma in front
  if !aString0
    cErrInvalidArg("cStringAddCommaList", "!aString0", "\"\"")
  elseif !aString1
    cErrInvalidArg("cStringAddCommaList", "!aString1", "\"\"")
  else
    ; convenience function. Ensures there's no comma at the beginning of the list
    return aString0 + ", " + aString1 + cTernaryString(aString2,", " + aString2, "") + \
      cTernaryString(aString3,", " + aString3, "") + cTernaryString(aString4,", " + aString4, "") + \
        cTernaryString(aString5,", " + aString5, "") + cTernaryString(aString6,", " + aString6, "") + \
          cTernaryString(aString7,", " + aString7, "") + cTernaryString(aString8,", " + aString8, "") + \
            cTernaryString(aString9,", " + aString9, "")
  endif
endfunction
String   function cArrayJoinString(String[] aArray, String delimiterString = "", Int startIndex = 0, \
    Int numIndices = -1) global
  {Requirements: None}
  String returnString
  if !aArray
    cErrInvalidArg("cArrayJoinString", "!aArray")
  elseif startIndex < 0 
    cErrInvalidArg("cArrayJoinString", "startIndex < 0")
  elseif startIndex > aArray.length - 1
    cErrInvalidArg("cArrayJoinString", "startIndex > aArray.length - 1")
  elseif (numIndices + startIndex) > aArray.length
    cErrInvalidArg("cArrayJoinString", "(numIndices + startIndex) > aArray.length")
  else
    if numIndices == -1
      numIndices = aArray.length - 1 - startIndex
    endif
    Int i = startIndex
    while i < aArray.length && i <= numIndices
      if !returnString
        returnString = aArray[i] ; skip delimiter until returnString has something in it
      else
        returnString += delimiterString + aArray[i]
      endif
      i += 1
    endwhile
  endif
  return returnString
endfunction
String   function cStringJoin(String[] aArray, String delimiterString = "", Bool usePapUtil = TRUE) global
  return cArrayJoinString(aArray, delimiterString)
endfunction
String[] function cStringToArray(String aString, Int numChars = -1, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  ; Splits a string into an array of its characters 
  String[] stringBuild
  if !aString
    cErrInvalidArg("cStringToArray", "!aString")
  elseif useSKSE && clibUse.cUseSKSE()
    Int stringLength = StringUtil.GetLength(aString)
    if stringLength == 1 || numChars == 1
      stringBuild = New String[1] ; returns single index array containing aString
      stringBuild[0] = aString
    else
      ; Updated to use .Split()
      stringBuild = StringUtil.Split(aString,"")
      ;stringBuild = Utility.CreateStringArray(stringLength)
      ;Int i = 0
      ;while i < stringLength
      ;  stringBuild[i] = StringUtil.SubString(aString, i, 1)
      ;  i += 1
      ;endwhile
    endif
  else
    String[] asciiChars = cArrayASCIIChars()
    String builtString = ""
    stringBuild = cArrayCreateString(128, "") ; the individual letters
    Int maxIterations = 128
    Int iterations = 0
    if numChars != -1
      maxIterations = numChars
    endif
    while builtString != aString && iterations < maxIterations
      stringBuild[iterations] = cStringASCIICheck(aString, builtString, asciiChars)
      builtString += stringBuild[iterations]
      iterations += 1
    endwhile
    stringBuild = cArrayResizeString(stringBuild, iterations)
  endif
  return stringBuild
endfunction
String[] function cStringHexToArray(String aString, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  ; Non-SKSE version only has to look through the *16* hex digits as opposed to all 69 ASCII chars
  String[] stringBuild
  if !aString
    cErrInvalidArg("cStringHexToArray", "!aString")
  elseif useSKSE && clibUse.cUseSKSE()
    Int stringLength = StringUtil.GetLength(aString)
    if stringLength == 1
      stringBuild = New String[1] ; returns single index array containing aString
      stringBuild[0] = aString
    else
      stringBuild = Utility.CreateStringArray(stringLength)
      Int i = 0
      while i < stringLength
        stringBuild[i] = StringUtil.SubString(aString, i, 1)
        i += 1
      endwhile
    endif
  else
    String[] hexDigits = cArrayHexDigits()
    String builtString = ""
    stringBuild = New String[12] ; the individual letters, no idea how many are being passed
    Int iterations = 0
    while builtString != aString && iterations < stringBuild.length
      stringBuild[iterations] = cStringHexCheck(aString, builtString, hexDigits)
      builtString += stringBuild[iterations]
      iterations += 1
    endwhile
    stringBuild = cArrayResizeString(stringBuild, iterations)
  endif
  return stringBuild
endfunction
  ;>>> Generation
String function cStringRepeat(String repeatThis, Int thisManyTimes) global
  {Requirements: None}
  String returnString
  if !repeatThis
    cErrInvalidArg("cStringRepeat", "!repeatThis", "\"\"")
  elseif !thisManyTimes
    cErrInvalidArg("cStringRepeat", "!thisManyTimes", "\"\"")
  else
    Int i = 0
    while i < thisManyTimes
      returnString += repeatThis
      i += 1
    endwhile
  endif
  return returnString
endfunction
  ;>>> Grammar/Spelling (used for dynamic message generation)
String function cStringAdd_ed(String aString) global ; list of words to check (expand at your leisure)
  {Requirements: None}
  ; useful for dynamic confirmation, progress, completion, log or error reporting messages. 
  ; e.g. The function uses "save", "restore" or "remove" as an function argument.
  ; User's choice: argument == "save"
  ; 1. cConcatenate("Do you want to ", argument, "?")              == Do you want to save?
  ; 2. cConcatenate(cStringAdd_ing(argument), "...")               == Saving...
  ; 3. cConcatenate("Successfully ", cStringAdd_ed(argument), "!") == Successfully saved!
  ; now you can make a single function that adds, saves, restores, clears and/or removes something and use a single
  ;   set of dynamically constructed messages (this is just one part of that)
  String returnString
  if !aString
    cErrInvalidArg("cStringAdd_ed", "!aString", "\"\"")
  else
    if aString == "clear" 
      returnString = "cleared"
    elseif aString == "load"
      returnString = "loaded"
    elseif aString == "save"
      returnString = "saved"
    elseif aString == "restore"
      returnString = "restored"
    elseif aString == "remove"
      returnString = "removed"
    elseif aString == "delete"
      returnString = "deleted"
    elseif aString == "return"
      returnString = "returned"
    elseif aString == "add"
      returnString = "added"
    else
      returnString = aString
    endif
  endif
  return returnString
endfunction
String function cStringAdd_ing(String aString) global ; list of words to check (expand at your leisure)
  {Requirements: None}
  ; useful for dynamic confirmation, progress, completion, log or error reporting messages. 
  ; e.g. The function uses "save", "restore" or "remove" as an function argument.
  ; User's choice: argument == "save"
  ; 1. cConcatenate("Do you want to ", argument, "?")              == Do you want to save?
  ; 2. cConcatenate(cStringAdd_ing(argument), "...")               == Saving...
  ; 3. cConcatenate("Successfully ", cStringAdd_ed(argument), "!") == Successfully saved!
  ; now you can make a single function that adds, saves, restores, clears and/or removes something and use a single
  ;   set of dynamically constructed messages (this is just one part of that)
  String returnString
  if !aString
    cErrInvalidArg("cStringAdd_ing", "!aString", "\"\"")
  else
    if aString == "clear" 
      returnString = "clearing"
    elseif aString == "load"
      returnString = "loading"
    elseif aString == "save"
      returnString = "saving"
    elseif aString == "restore"
      returnString = "restoring"
    elseif aString == "remove"
      returnString = "removing"
    elseif aString == "delete"
      returnString = "deleting"
    elseif aString == "return"
        returnString = "returning"
    elseif aString == "add"
        returnString = "adding"
    else
      returnString = aString
    endif
  endif
  return returnString
endfunction
  ;>>> non-SKSE String parsing: Credit to cadpnq
String function cStringASCIICheck(String aString, String builtString, String[] asciiChars) global
  {Requirements: None}
  ; Returns next ASCII character in string without SKSE
  String returnString
  if aString < (builtstring + asciiChars[34])
    if aString < (builtstring + asciiChars[18])
      if aString < (builtstring + asciiChars[8])
        if aString < (builtstring + asciiChars[4])
          if aString < (builtstring + asciiChars[1])
            returnString = asciiChars[0]
          elseif aString < (builtstring + asciiChars[2])
            returnString = asciiChars[1]
          elseif aString < (builtstring + asciiChars[3])
            returnString = asciiChars[2]
          else
            returnString = asciiChars[3]
          endif
        elseif aString < (builtstring + asciiChars[5])
          returnString = asciiChars[4]
        elseif aString < (builtstring + asciiChars[6])
          returnString = asciiChars[5]
        elseif aString < (builtstring + asciiChars[7])
          returnString = asciiChars[6]
        else
          returnString = asciiChars[7]
        endif
      elseif aString < (builtstring + asciiChars[13])
        if aString < (builtstring + asciiChars[9])
          returnString = asciiChars[8]
        elseif aString < (builtstring + asciiChars[10])
          returnString = asciiChars[9]
        elseif aString < (builtstring + asciiChars[11])
          returnString = asciiChars[10]
        elseif aString < (builtstring + asciiChars[12])
          returnString = asciiChars[11]
        else
          returnString = asciiChars[12]
        endif
      elseif aString < (builtstring + asciiChars[14])
        returnString = asciiChars[13]
      elseif aString < (builtstring + asciiChars[15])
        returnString = asciiChars[14]
      elseif aString < (builtstring + asciiChars[16])
        returnString = asciiChars[15]
      elseif aString < (builtstring + asciiChars[17])
        returnString = asciiChars[16]
      else
        returnString = asciiChars[17]
      endif
    elseif aString < (builtstring + asciiChars[26])
      if aString < (builtstring + asciiChars[22])
        if aString < (builtstring + asciiChars[19])
          returnString = asciiChars[18]
        elseif aString < (builtstring + asciiChars[20])
          returnString = asciiChars[19]
        elseif aString < (builtstring + asciiChars[21])
          returnString = asciiChars[20]
        else
          returnString = asciiChars[21]
        endif
      elseif aString < (builtstring + asciiChars[23])
        returnString = asciiChars[22]
      elseif aString < (builtstring + asciiChars[24])
        returnString = asciiChars[23]
      elseif aString < (builtstring + asciiChars[25])
        returnString = asciiChars[24]
      else
        returnString = asciiChars[25]
      endif
    elseif aString < (builtstring + asciiChars[30])
      if aString < (builtstring + asciiChars[27])
        returnString = asciiChars[26]
      elseif aString < (builtstring + asciiChars[28])
        returnString = asciiChars[27]
      elseif aString < (builtstring + asciiChars[29])
        returnString = asciiChars[28]
      else
        returnString = asciiChars[29]
      endif
    elseif aString < (builtstring + asciiChars[31])
      returnString = asciiChars[30]
    elseif aString < (builtstring + asciiChars[32])
      returnString = asciiChars[31]
    elseif aString < (builtstring + asciiChars[33])
      returnString = asciiChars[32]
    else
      returnString = asciiChars[33]
    endif
  else ; don't feel like researching non-printable characters to add them 'else' catches the rest
    if aString < (builtstring + asciiChars[51])
      if aString < (builtstring + asciiChars[43])
        if aString < (builtstring + asciiChars[39])
          if aString < (builtstring + asciiChars[35])
            returnString = asciiChars[34]
          elseif aString < (builtstring + asciiChars[36])
            returnString = asciiChars[35]
          elseif aString < (builtstring + asciiChars[37])
            returnString = asciiChars[36]
          elseif aString < (builtstring + asciiChars[38])
            returnString = asciiChars[37]
          else ; < [39]
            returnString = asciiChars[38]
          endif
        elseif aString < (builtstring + asciiChars[40])
          returnString = asciiChars[39]
        elseif aString < (builtstring + asciiChars[41])
          returnString = asciiChars[40]
        elseif aString < (builtstring + asciiChars[42])
          returnString = asciiChars[41]
        else ; < [43]
          returnString = asciiChars[42]
        endif
      elseif aString < (builtstring + asciiChars[47])
        if aString < (builtstring + asciiChars[44])
          returnString = asciiChars[43]
        elseif aString < (builtstring + asciiChars[45])
          returnString = asciiChars[44]
        elseif aString < (builtstring + asciiChars[46])
          returnString = asciiChars[45]
        else
          returnString = asciiChars[46]
        endif
      elseif aString < (builtstring + asciiChars[48])
        returnString = asciiChars[47]
      elseif aString < (builtstring + asciiChars[49])
        returnString = asciiChars[48]
      elseif aString < (builtstring + asciiChars[50])
        returnString = asciiChars[49]
      else
        returnString = asciiChars[50]
      endif
    else ; don't feel like researching non-printable characters so this is the final stop
      if aString < (builtstring + asciiChars[60])
        if aString < (builtstring + asciiChars[55])
          if aString < (builtstring + asciiChars[52])
            returnString = asciiChars[51]
          elseif aString < (builtstring + asciiChars[53])
            returnString = asciiChars[52]
          elseif aString < (builtstring + asciiChars[54])
            returnString = asciiChars[53]
          else
            returnString = asciiChars[54]
          endif
        elseif aString < (builtstring + asciiChars[56])
          returnString = asciiChars[55]
        elseif aString < (builtstring + asciiChars[57])
          returnString = asciiChars[56]
        elseif aString < (builtstring + asciiChars[58])
          returnString = asciiChars[57]
        elseif aString < (builtstring + asciiChars[59])
          returnString = asciiChars[58]
        else
          returnString = asciiChars[59]
        endif
      elseif aString < (builtstring + asciiChars[65])
        if aString < (builtstring + asciiChars[61])
          returnString = asciiChars[60]
        elseif aString < (builtstring + asciiChars[62])
          returnString = asciiChars[61]
        elseif aString < (builtstring + asciiChars[63])
          returnString = asciiChars[62]
        elseif aString < (builtstring + asciiChars[64])
          returnString = asciiChars[63]
        else
          returnString = asciiChars[64]
        endif
      elseif aString < (builtstring + asciiChars[66])
        returnString = asciiChars[65]
      elseif aString < (builtstring + asciiChars[67])
        returnString = asciiChars[66]
      elseif aString < (builtstring + asciiChars[68])
        returnString = asciiChars[67]
      else ; don't feel like researching non-printable characters so this is the final stop
        returnString = asciiChars[68]
      endif
    endif
  endif
  ;cLibTrace("cStringASCIICheck", "aString: " + aString + ", builtString: " + builtString + ", returnString: " + returnString,0)
  return returnString
  
endfunction
String function cStringHexCheck(String aString, String builtString, String[] hexDigits) global
  {Requirements: None}
  ; Returns next hex digit in string without SKSE
  String returnString
  if aString < (builtstring + hexDigits[8])
    if aString < (builtstring + hexDigits[4])
      if aString < (builtstring + hexDigits[1])
        returnString = hexDigits[0]
      elseif aString < (builtstring + hexDigits[2])
        returnString = hexDigits[1]
      elseif aString < (builtstring + hexDigits[3])
        returnString = hexDigits[2]
      else
        returnString = hexDigits[3]
      endif
    elseif aString < (builtstring + hexDigits[5])
        returnString = hexDigits[4]
    elseif aString < (builtstring + hexDigits[6])
      returnString = hexDigits[5]
    elseif aString < (builtstring + hexDigits[7])
      returnString = hexDigits[6]
    else
      returnString = hexDigits[7]
    endif
  elseif aString < (builtstring + hexDigits[16])
    if aString < (builtstring + hexDigits[12])
      if aString < (builtstring + hexDigits[9])
        returnString = hexDigits[8]
      elseif aString < (builtstring + hexDigits[10])
        returnString = hexDigits[9]
      elseif aString < (builtstring + hexDigits[11])
        returnString = hexDigits[10]
      else
        returnString = hexDigits[11]
      endif
    elseif aString < (builtstring + hexDigits[13])
      returnString = hexDigits[12]
    elseif aString < (builtstring + hexDigits[14])
      returnString = hexDigits[13]
    elseif aString < (builtstring + hexDigits[15])
      returnString = hexDigits[14]
    elseif aString < (builtstring + hexDigits[16])
      returnString = hexDigits[15]
    endif
  endif
  return returnString
endfunction

;========================= FormList Functions
Bool     function cFLReplaceValue(FormList aFormlist, Form replaceThis, Form withThis, Bool forceAdd = False) global
  {Requirements: None}
  ;Bool return is whether or not the replaced value is still there (can only remove ADDED forms)
  ;forceAdd forces the value to be added even if replaceThis can't be removed
  ; a return of TRUE == success, False == failed
  Bool returnBool
  if !aFormlist
    cErrInvalidArg("cFLReplaceValue", "!aFormList", "False")
  elseif withThis == None ; can't add None to a FormList
    cErrInvalidArg("cFLReplaceValue", "withThis == None", "False")
  else
    aFormlist.RemoveAddedForm(replaceThis)
    returnBool = !aFormlist.HasForm(replaceThis) ; a return of False == failed
    if returnBool || !forceAdd  ; whether or not withThis is added
      aFormlist.AddForm(withThis)
    endif
  endif
  return returnBool ; a return of TRUE == success, False == failed
endfunction
  ;>>> to/from Array
FormList function cArrayToFL(Form[] aArray, FormList aFormList, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  if !aArray
    cErrInvalidArg("cFLAddFormsFromArray", "!aArray", "None")
  elseif !aFormlist
    cErrInvalidArg("cFLAddFormsFromArray", "!aFormList", "None")
  else
    if useSKSE && clibUse.cUseSKSE()
      aFormList.AddForms(aArray)
    else
      Int invalidForms = 0
      Int flSize = aFormList.GetSize()
      Int i = 0
      while i < aArray.length
        if aArray[i]
          aFormList.AddForm(aArray[i])
        else
          invalidForms += 1
        endif
        i += 1
      endwhile
      if aFormList.GetSize() != (flSize + aArray.length)
       clibTrace("cFLAddFormsFromArray", " " + cTernaryString(invalidForms,invalidForms + " forms were invalid","") + \
         cTernaryString(aFormList.GetSize() != (flSize + aArray.length), " :" + (flSize - aFormList.GetSize()) + \
           " forms were already in the list", "") + ".", 0)
      endif
    endif
  endif
  return aFormList
endfunction
Form[]   function cFLToArray(FormList aFormList, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  Form[] newArray
  if !aFormList
    cErrInvalidArg("cArrayFromFLForm", "!aFormList", "")
  else
    if useSKSE && clibUse.cUseSKSE()
      return aFormList.ToArray()
    endif
    Int flSize = aFormList.GetSize()
    newArray = cArrayCreateForm(flSize, None)
    if newArray.length
      Int i = 0
      while i < flSize
        newArray[i] = aFormList.GetAt(i)
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayFromFLForm")
    endif
  endif
  return newArray
endfunction

;========================= Array Functions

  ;>>> Analysis/Comparison/Query/Tally
Float function cArraySmallestFloat(Float[] aArray) global
  {Requirements: None}
  Float smallestValue = 214748364.0
  if !aArray
    cErrInvalidArg("cArraySmallestFloat", "!aArray", "0.0")
  else
    Int i = 0
    while i < aArray.length
      if aArray[i] < smallestValue
        smallestValue = aArray[i]
      endif
      i += 1
    endwhile
  endif
  return smallestValue
endfunction
Int   function cArraySmallestInt(Int[] aArray) global
  {Requirements: None}
  Int smallestValue = 214748364
  if !aArray
    cErrInvalidArg("cArraySmallestInt", "!aArray", "0")
  else
    Int i = 0
    while i < aArray.length
      if aArray[i] < smallestValue
        smallestValue = aArray[i]
      endif
      i += 1
    endwhile
  endif
  return smallestValue
endfunction
Float function cArrayLargestFloat(Float[] aArray) global
  {Requirements: None}
  Float largestValue = -214748364.0
  if !aArray
    cErrInvalidArg("cArrayLargestFloat", "!aArray", "0.0")
  else
    Int i = 0
    while i < aArray.length
      if aArray[i] > largestValue
        largestValue = aArray[i]
      endif
      i += 1
    endwhile
  endif
  return largestValue
endfunction
Int   function cArrayLargestInt(Int[] aArray) global
  {Requirements: None}
  Int largestValue = -214748364
  if !aArray
    cErrInvalidArg("cArrayLargestInt", "!aArray", "0")
  else
    Int i = 0
    while i < aArray.length
      if aArray[i] > largestValue
        largestValue = aArray[i]
      endif
      i += 1
    endwhile
  endif
  return largestValue
endfunction
  ;>>> Tally
Int function cArrayCountValueActor(Actor[] aArray, Actor valueToCount = None, Bool invertIt = False, \
  Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Int returnInt
  if !aArray
    cErrInvalidArg("cArrayCountValueActor", "!aArray", "")
  elseif usePapUtil && clibUse.cUsePapUtil()
    returnInt = PapyrusUtil.CountActor(aArray, valueToCount)
  else
    returnInt = 0
    Int i = 0
    while i < aArray.length
      returnInt += (((!invertIt) && (aArray[i] == valueToCount)) || ((invertIt) && (aArray[i] != valueToCount))) as Int
      i += 1
    endwhile
  endif
  return returnInt
endfunction
Int function cArrayCountValueAlias(Alias[] aArray, Alias valueToCount = None, Bool invertIt = False, \
  Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Int returnInt
  if !aArray
    cErrInvalidArg("cArrayCountValueAlias", "!aArray", "")
  elseif usePapUtil && clibUse.cUsePapUtil()
    returnInt = PapyrusUtil.CountAlias(aArray, valueToCount)
  else
    returnInt = 0
    Int i = 0
    while i < aArray.length
      returnInt += (((!invertIt) && (aArray[i] == valueToCount)) || ((invertIt) && (aArray[i] != valueToCount))) as Int
      i += 1
    endwhile
  endif
  return returnInt
endfunction
Int function cArrayCountValueBool(Bool[] aArray, Bool valueToCount = TRUE, Bool invertIt = False, \
  Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Int returnInt = 0
  if !aArray
    cErrInvalidArg("cArrayCountValueBool", "!aArray", "")
  elseif usePapUtil && clibUse.cUsePapUtil()
    returnInt = PapyrusUtil.CountBool(aArray, valueToCount)
  else
    Int i = 0
    while i < aArray.length
      returnInt += (((!invertIt) && (aArray[i] == valueToCount)) || ((invertIt) && (aArray[i] != valueToCount))) as Int
      i += 1
    endwhile
  endif
  return returnInt
endfunction
Int function cArrayCountValueFloat(Float[] aArray, Float valueToCount = 0.0, Bool invertIt = False, \
  Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Int returnInt = 0
  if !aArray
    cErrInvalidArg("cArrayCountValueFloat", "!aArray", "")
  elseif usePapUtil && clibUse.cUsePapUtil()
    returnInt = PapyrusUtil.CountFloat(aArray, valueToCount)
  else
    Int i = 0
    while i < aArray.length
      returnInt += (((!invertIt) && (aArray[i] == valueToCount)) || ((invertIt) && (aArray[i] != valueToCount))) as Int
      i += 1
    endwhile
  endif
  return returnInt
endfunction
Int function cArrayCountValueForm(Form[] aArray, Form valueToCount = None, Bool invertIt = False, \
  Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Int returnInt
  if !aArray
    cErrInvalidArg("cArrayCountValueForm", "!aArray", "")
  elseif usePapUtil && clibUse.cUsePapUtil()
    returnInt = PapyrusUtil.CountForm(aArray, valueToCount)
  else
    returnInt = 0
    Int i = 0
    while i < aArray.length
      returnInt += (((!invertIt) && (aArray[i] == valueToCount)) || ((invertIt) && (aArray[i] != valueToCount))) as Int
      i += 1
    endwhile
  endif
  return returnInt
endfunction
Int function cArrayCountValueInt(Int[] aArray, Int valueToCount = 0, Bool invertIt = False, \
  Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Int returnInt
  if !aArray
    cErrInvalidArg("cArrayCountValueInt", "!aArray", "")
  elseif usePapUtil && clibUse.cUsePapUtil()
    returnInt = PapyrusUtil.CountInt(aArray, valueToCount)
  else
    returnInt = 0
    Int i = 0
    while i < aArray.length
      returnInt += (((!invertIt) && (aArray[i] == valueToCount)) || ((invertIt) && (aArray[i] != valueToCount))) as Int
      i += 1
    endwhile
  endif
  return returnInt
endfunction
Int function cArrayCountValueObjRef(ObjectReference[] aArray, ObjectReference valueToCount = None, \
  Bool invertIt = False, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Int returnInt
  if !aArray
    cErrInvalidArg("cArrayCountValueObjRef", "!aArray", "")
  elseif usePapUtil && clibUse.cUsePapUtil()
    returnInt = PapyrusUtil.CountObjRef(aArray, valueToCount)
  else
    returnInt = 0
    Int i = 0
    while i < aArray.length
      returnInt += (((!invertIt) && (aArray[i] == valueToCount)) || ((invertIt) && (aArray[i] != valueToCount))) as Int
      i += 1
    endwhile
  endif
  return returnInt
endfunction
Int function cArrayCountValueString(String[] aArray, String valueToCount = "", Bool invertIt = False, \
  Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Int returnInt
  if !aArray
    cErrInvalidArg("cArrayCountValueString", "!aArray", "")
  elseif usePapUtil && clibUse.cUsePapUtil()
    returnInt = PapyrusUtil.CountString(aArray, valueToCount)
  else
    returnInt = 0
    Int i = 0
    while i < aArray.length
      ;if aArray[i] == valueToCount
      ;  returnInt += (!invertIt) as Int
      ;else
      ;  returnInt += (invertIt) as Int
      ;endif
      returnInt += (((!invertIt) && (aArray[i] == valueToCount)) || ((invertIt) && (aArray[i] != valueToCount))) as Int
      i += 1
    endwhile
  endif
  return returnInt
endfunction
Int function cArrayCountValueFormList(FormList aFormList, Form valueToCount = None, Bool invertIt = False) global
  {Requirements: None}
  Int returnInt
  if !aFormList
    cErrInvalidArg("cArrayCountValueFormList", "!aFormList", "")
  else
    returnInt = 0
    Int flSize = aFormList.GetSize()
    Int i = 0
    while i < flSize
      returnInt += (((!invertIt) && (aFormList.GetAt(i) == valueToCount)) || ((invertIt) && (aFormList.GetAt(i) != valueToCount))) as Int
      i += 1
    endwhile
  endif
  return returnInt
endfunction
    ;see also: ArraySumFloat()
    ;          ArraySumInt()
    ;          ArrayAverageFloat()
    ;          ArrayAverageInt()
  ;>>> Conversion
Bool[] function cArrayIntToBool(Int[] aArray) global
  {Requirements:None}
  Bool[] newArray
  if !aArray
    cErrInvalidArg("cArrayIntToBool", "!aArray")
  else
    newArray = cArrayCreateBool(aArray.length)
    if newArray.length
      Int i = 0
      while i < aArray.length
        newArray[i] = aArray[i] as Bool
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayIntToBool")
    endif
  endif
  return newArray
endfunction
Int[]  function cArrayBoolToInt(Int[] aArray) global
  {Requirements:None}
  Int[] newArray 
  if !aArray
    cErrInvalidArg("cArrayBoolToInt", "!aArray")
  else
    newArray = cArrayCreateInt(aArray.length)
    if newArray.length
      Int i = 0
      while i < aArray.length
        newArray[i] = aArray[i] as Int
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayBoolToInt")
    endif
  endif
  return newArray
endfunction
Form[] function cArrayActorToActorBase(Actor[] aArray) global
  {Requirements:None}
  Form[] newArray
  if !aArray
    cErrInvalidArg("cArrayActorToActorBase", "!aArray")
  else
    newArray = cArrayCreateForm(aArray.length)
    if newArray.length
      Int i = 0
      while i < aArray.length
        newArray[i] = aArray[i].GetLeveledActorBase()
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayActorToActorBase")
    endif
  endif
  return newArray
endfunction
Form[] function cArrayObjRefToBaseObject(ObjectReference[] aArray) global
  {Requirements:None}
  Form[] newArray = cArrayCreateForm(aArray.length)
  if !aArray
    cErrInvalidArg("cArrayObjRefToBaseObject", "!aArray")
  else
    newArray = cArrayCreateForm(aArray.length)
    if newArray.length
      Int i = 0
      while i < aArray.length
        newArray[i] = aArray[i].GetBaseObject()
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayObjRefToBaseObject")
    endif
  endif
  return newArray
endfunction
   ;>>> Returns array of indices == valueToFind, also can provide the inverse
Int[] function cArrayGetValueIndicesActor(Actor[] aArray, Actor valueToFind = None, Bool invertIt = False) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayGetValueIndicesActor", "!aArray")
  else
    newArray = cArrayCreateInt(cArrayCountValueActor(aArray, valueToFind, invertIt), 0)
    if newArray.length
      Int j = 0
      Int i = 0
      while i < aArray.length
        if (!invertIt && (aArray[i] == valueToFind)) || (invertIt && (aArray[i] != valueToFind))
          newArray[j] = i
          j += 1
        endif
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayGetValueIndicesActor")
    endif
  endif
  return newArray
endfunction
Int[] function cArrayGetValueIndicesAlias(Alias[] aArray, Alias valueToFind = None, Bool invertIt = False) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayGetValueIndicesAlias", "!aArray")
  else
    newArray = cArrayCreateInt(cArrayCountValueAlias(aArray, valueToFind, invertIt), 0)
    if newArray.length
      Int j = 0
      Int i = 0
      while i < aArray.length
        if (!invertIt && (aArray[i] == valueToFind)) || (invertIt && (aArray[i] != valueToFind))
          newArray[j] = i
          j += 1
        endif
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayGetValueIndicesAlias")
    endif
  endif
  return newArray
endfunction
Int[] function cArrayGetValueIndicesBool(Bool[] aArray, Bool valueToFind = False, Bool invertIt = False) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayGetValueIndicesBool", "!aArray")
  else
    newArray = cArrayCreateInt(cArrayCountValueBool(aArray, valueToFind, invertIt), 0)
    if newArray.length
      Int j = 0
      Int i = 0
      while i < aArray.length
        if (!invertIt && (aArray[i] == valueToFind)) || (invertIt && (aArray[i] != valueToFind))
          newArray[j] = i
          j += 1
        endif
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayGetValueIndicesBool")
    endif
  endif
  return newArray
endfunction
Int[] function cArrayGetValueIndicesFloat(Float[] aArray, Float valueToFind = 0.0, Bool invertIt = False) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayGetValueIndicesFloat", "!aArray")
  else
    newArray = cArrayCreateInt(cArrayCountValueFloat(aArray, valueToFind, invertIt), 0)
    if newArray.length
      Int j = 0
      Int i = 0
      while i < aArray.length
        if (!invertIt && (aArray[i] == valueToFind)) || (invertIt && (aArray[i] != valueToFind))
          newArray[j] = i
          j += 1
        endif
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayGetValueIndicesFloat")
    endif
  endif
  return newArray
endfunction
Int[] function cArrayGetValueIndicesForm(Form[] aArray, Form valueToFind = None, Bool invertIt = False) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayGetValueIndicesForm", "!aArray")
  else
    newArray = cArrayCreateInt(cArrayCountValueForm(aArray, valueToFind, invertIt), 0)
    if newArray.length
      Int j = 0
      Int i = 0
      while i < aArray.length
        if (!invertIt && (aArray[i] == valueToFind)) || (invertIt && (aArray[i] != valueToFind))
          newArray[j] = i
          j += 1
        endif
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayGetValueIndicesForm")
    endif
  endif
  return newArray
endfunction
Int[] function cArrayGetValueIndicesInt(Int[] aArray, Int valueToFind = 0, Bool invertIt = False) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayGetValueIndicesInt", "!aArray")
  else
    newArray = cArrayCreateInt(cArrayCountValueInt(aArray, valueToFind, invertIt), 0)
    if newArray.length
      Int j = 0
      Int i = 0
      while i < aArray.length
        if (!invertIt && (aArray[i] == valueToFind)) || (invertIt && (aArray[i] != valueToFind))
          newArray[j] = i
          j += 1
        endif
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayGetValueIndicesInt")
    endif
  endif
  return newArray
endfunction
Int[] function cArrayGetValueIndicesObjRef(ObjectReference[] aArray, ObjectReference valueToFind = None, \
  Bool invertIt = False) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayGetValueIndicesObjectReference", "!aArray")
  else
    newArray = cArrayCreateInt(cArrayCountValueObjRef(aArray, valueToFind, invertIt), 0)
    if newArray.length
      Int j = 0
      Int i = 0
      while i < aArray.length
        if (!invertIt && (aArray[i] == valueToFind)) || (invertIt && (aArray[i] != valueToFind))
          newArray[j] = i
          j += 1
        endif
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayGetValueIndicesObjectReference")
    endif
  endif
  return newArray
endfunction
Int[] function cArrayGetValueIndicesString(String[] aArray, String valueToFind = "", Bool invertIt = False) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayGetValueIndicesString", "!aArray")
  else
    newArray = cArrayCreateInt(cArrayCountValueString(aArray, valueToFind, invertIt))
    if newArray.length
      Int j = 0
      Int i = 0
      while i < aArray.length
        if (!invertIt && (aArray[i] == valueToFind)) || (invertIt && (aArray[i] != valueToFind))
          newArray[j] = i
          j += 1
        endif
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayGetValueIndicesString")
    endif
  endif
  return newArray
endfunction
  ;>>> Yes...This is .Find() and rFind() **used for Bool invert** (first value that != aValue)
Int function cArrayFindActor(Actor[] aArray, Actor aValue = None, Int startAt = 0, Bool invertIt = TRUE) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFindActor", "!aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayFindActor", "startAt < 0")
  else
    if !invertIt
      return aArray.Find(aValue)
    endif
    Int i = 0 + startAt
    while i < aArray.length
      if aArray[i] != aValue
        return i
      endif
      i += 1
    endwhile
  endif
  return -1
endfunction
Int function cArrayFindAlias(Alias[] aArray, Alias aValue = None, Int startAt = 0, Bool invertIt = TRUE) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFindAlias", "!aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayFindAlias", "startAt < 0")
  else
    if !invertIt
      return aArray.Find(aValue)
    endif
    Int i = 0 + startAt
    while i < aArray.length
      if aArray[i] != aValue
        return i
      endif
      i += 1
    endwhile
  endif
  return -1
endfunction
Int function cArrayFindBool(Bool[] aArray, Bool aValue = False, Int startAt = 0, Bool invertIt = TRUE) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFindBool", "!aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayFindBool", "startAt < 0")
  else
    if !invertIt
      return aArray.Find(aValue)
    endif
    Int i = 0 + startAt
    while i < aArray.length
      if aArray[i] != aValue
        return i
      endif
      i += 1
    endwhile
  endif
  return -1
endfunction
Int function cArrayFindFloat(Float[] aArray, Float aValue = 0.0, Int startAt = 0, Bool invertIt = TRUE) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFindFloat", "!aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayFindFloat", "startAt < 0")
  else
    if !invertIt
      return aArray.Find(aValue)
    endif
    Int i = 0 + startAt
    while i < aArray.length
      if aArray[i] != aValue
        return i
      endif
      i += 1
    endwhile
  endif
  return -1
endfunction
Int function cArrayFindForm(Form[] aArray, Form aValue = None, Int startAt = 0, Bool invertIt = TRUE) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFindForm", "!aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayFindForm", "startAt < 0")
  else
    if !invertIt
      return aArray.Find(aValue)
    endif
    Int i = 0 + startAt
    while i < aArray.length
      if aArray[i] != aValue
        return i
      endif
      i += 1
    endwhile
  endif
  return -1
endfunction
Int function cArrayFindInt(Int[] aArray, Int aValue = 0, Int startAt = 0, Bool invertIt = TRUE) global
  {Requirements: None}
  ; kept for invertIt
  if !aArray
    cErrInvalidArg("cArrayFindInt", "!aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayFindInt", "startAt < 0")
  else
    if !invertIt
      return aArray.Find(aValue)
    endif
    Int i = 0 + startAt
    while i < aArray.length
      if aArray[i] != aValue
        return i
      endif
      i += 1
    endwhile
  endif
  return -1
endfunction
Int function cArrayFindObjRef(ObjectReference[] aArray, ObjectReference aValue = None, Int startAt = 0, \
  Bool invertIt = TRUE) global
  {Requirements: None}
  ; kept for invert
  if !aArray
    cErrInvalidArg("cArrayFindObjRef", "!aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayFindObjRef", "startAt < 0")
  else
    if !invertIt
      return aArray.Find(aValue)
    endif
    Int i = 0 + startAt
    while i < aArray.length
      if aArray[i] != aValue
        return i
      endif
      i += 1
    endwhile
  endif
  return -1
endfunction
Int function cArrayFindString(String[] aArray, String aValue = "", Int startAt = 0, Bool invertIt = TRUE) global
  {Requirements: None}
  ; kept for invert
  if !aArray
    cErrInvalidArg("cArrayFindString", "!aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayFindString", "startAt < 0")
  else
    if !invertIt
      return aArray.Find(aValue)
    endif
    Int i = 0 + startAt
    while i < aArray.length
      if aArray[i] != aValue
        return i
      endif
      i += 1
    endwhile
  endif
  return -1
endfunction
Int function cArrayRFindActor(Actor[] aArray, Actor aValue = None, Int startAt = 0, Bool invertIt = TRUE) global
  {Requirements: None}
  ; use it for invertIt
  ; startAt requires a positive int and counts backwards from the end
  if !aArray
    cErrInvalidArg("cArrayRFindActor", "!aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayRFindActor", "startAt < 0")
  else
    Int curIndex = aArray.length - 1 - startAt
    while curIndex >= 0
      if ((aArray[curIndex] == aValue) && !invertIt) || ((aArray[curIndex] != aValue) && invertIt)
        return curIndex
      endif
      curIndex -= 1
    endwhile
  endif
  return -1
endfunction
Int function cArrayRFindAlias(Alias[] aArray, Alias aValue = None, Int startAt = 0, Bool invertIt = TRUE) global
  {Requirements: None}
  ; use it for invertIt
  ; startAt requires a positive int and counts backwards from the end
  if !aArray
    cErrInvalidArg("cArrayRFindAlias", "!aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayRFindAlias", "startAt < 0")
  else
    Int curIndex = aArray.length - 1 - startAt
    while curIndex >= 0
      if ((aArray[curIndex] == aValue) && !invertIt) || ((aArray[curIndex] != aValue) && invertIt)
        return curIndex
      endif
      curIndex -= 1
    endwhile
  endif
  return -1
endfunction
Int function cArrayRFindBool(Bool[] aArray, Bool aValue = False, Int startAt = 0, Bool invertIt = TRUE) global
  {Requirements: None}
  ; use it for invertIt
  ; startAt requires a positive int and counts backwards from the end
  if !aArray
    cErrInvalidArg("cArrayRFindBool", "!aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayRFindBool", "startAt < 0")
  else
    Int curIndex = aArray.length - 1 - startAt
    while curIndex >= 0
      if ((aArray[curIndex] == aValue) && !invertIt) || ((aArray[curIndex] != aValue) && invertIt)
        return curIndex
      endif
      curIndex -= 1
    endwhile
  endif
  return -1
endfunction
Int function cArrayRFindFloat(Float[] aArray, Float aValue = 0.0, Int startAt = 0, Bool invertIt = TRUE) global
  {Requirements: None}
  ; use it for invertIt
  ; startAt requires a positive int and counts backwards from the end
  if !aArray
    cErrInvalidArg("cArrayRFindFloat", "!aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayRFindFloat", "startAt < 0")
  else
    Int curIndex = aArray.length - 1 - startAt
    while curIndex >= 0
      if ((aArray[curIndex] == aValue) && !invertIt) || ((aArray[curIndex] != aValue) && invertIt)
        return curIndex
      endif
      curIndex -= 1
    endwhile
  endif
  return -1
endfunction
Int function cArrayRFindForm(Form[] aArray, Form aValue = None, Int startAt = 0, Bool invertIt = TRUE) global
  {Requirements: None}
  ; use it for invertIt
  ; startAt requires a positive int and counts backwards from the end
  if !aArray
    cErrInvalidArg("cArrayRFindForm", "!aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayRFindForm", "startAt < 0")
  else
    Int curIndex = aArray.length - 1 - startAt
    while curIndex >= 0
      if ((aArray[curIndex] == aValue) && !invertIt) || ((aArray[curIndex] != aValue) && invertIt)
        return curIndex
      endif
      curIndex -= 1
    endwhile
  endif
  return -1
endfunction
Int function cArrayRFindInt(Int[] aArray, Int aValue = 0, Int startAt = 0, Bool invertIt = TRUE) global
  {Requirements: None}
  ; use it for invertIt
  ; startAt requires a positive int and counts backwards from the end
  if !aArray
    cErrInvalidArg("cArrayRFindInt", "!aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayRFindInt", "startAt < 0")
  else
    Int curIndex = aArray.length - 1 - startAt
    while curIndex >= 0
      if ((aArray[curIndex] == aValue) && !invertIt) || ((aArray[curIndex] != aValue) && invertIt)
        return curIndex
      endif
      curIndex -= 1
    endwhile
  endif
  return -1
endfunction
Int function cArrayRFindObjRef(ObjectReference[] aArray, ObjectReference aValue = None, Int startAt = 0, \
  Bool invertIt = TRUE) global
  {Requirements: None}
  ; use it for invertIt
  ; startAt requires a positive int and counts backwards from the end
  if !aArray
    cErrInvalidArg("cArrayRFindObjRef", "!aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayRFindObjRef", "startAt < 0")
  else
    Int curIndex = aArray.length - 1 - startAt
    while curIndex >= 0
      if ((aArray[curIndex] == aValue) && !invertIt) || ((aArray[curIndex] != aValue) && invertIt)
        return curIndex
      endif
      curIndex -= 1
    endwhile
  endif
  return -1
endfunction
Int function cArrayRFindString(String[] aArray, String aValue = "", Int startAt = -1, Bool invertIt = TRUE) global
  {Requirements: None}
  ; used for invertIt ; -1 == last element
  if !aArray
    cErrInvalidArg("cArrayRFindString", "!aArray")
  elseif startAt < -1
    cErrInvalidArg("cArrayRFindString", "startAt < -1")
  elseif startAt > aArray.length - 1
    cErrInvalidArg("cArrayRFindString", "startAt > aArray.length - 1")
  else
    if !invertIt
      return aArray.RFind(aValue, startAt)
    endif
    Int curIndex = cTernaryInt(startAt == -1, aArray.length - 1, startAt)
    while curIndex > -1
      if aArray[curIndex] != aValue
        return curIndex
      endif
      curIndex -= 1
    endwhile
  endif
  return -1
endfunction
  ;>>> Replace value
Actor[]  function cArrayReplaceActor(Actor[] aArray, Actor replaceThis, Actor withThis, Bool forceAll = False) global
  {Requirements: None}
  ; forceAll == TRUE replaces EVERYTHING with aValue
  if !aArray
    cErrInvalidArg("cArrayReplaceActor", "!aArray")
  else
    Int i = 0
    while i < aArray.length
      if aArray[i] == replaceThis || forceAll == TRUE
        aArray[i] = withThis
      endif
      i += 1
    endwhile
  endif
  return aArray
endfunction
Alias[]  function cArrayReplaceAlias(Alias[] aArray, Alias replaceThis, Alias withThis, Bool forceAll = False) global
  {Requirements: None}
  ; forceAll == TRUE replaces EVERYTHING with aValue
  if !aArray
    cErrInvalidArg("cArrayReplaceAlias", "!aArray")
  else
    Int i = 0
    while i < aArray.length
      if aArray[i] == replaceThis || forceAll == TRUE
        aArray[i] = withThis
      endif
      i += 1
    endwhile
  endif
  return aArray
endfunction
Bool[]   function cArrayReplaceBool(Bool[] aArray, Bool replaceThis, Bool withThis, Bool forceAll = False) global
  {Requirements: None}
  ; forceAll == TRUE replaces EVERYTHING with aValue
  if !aArray
    cErrInvalidArg("cArrayReplaceBool", "!aArray")
  else
    Int i = 0
    while i < aArray.length
      if aArray[i] == replaceThis || forceAll == TRUE
        aArray[i] = withThis
      endif
      i += 1
    endwhile
  endif
  return aArray
endfunction
Float[]  function cArrayReplaceFloat(Float[] aArray, Float replaceThis, Float withThis, Bool forceAll = False) global
  {Requirements: None}
  ; forceAll == TRUE replaces EVERYTHING with aValue
  if !aArray
    cErrInvalidArg("cArrayReplaceFloat", "!aArray")
  else
    Int i = 0
    while i < aArray.length
      if aArray[i] == replaceThis || forceAll == TRUE
        aArray[i] = withThis
      endif
      i += 1
    endwhile
  endif
  return aArray
endfunction
Form[]   function cArrayReplaceForm(Form[] aArray, Form replaceThis, Form withThis, Bool forceAll = False) global
  {Requirements: None}
  ; forceAll == TRUE replaces EVERYTHING with aValue
  if !aArray
    cErrInvalidArg("cArrayReplaceForm", "!aArray")
  else
    Int i = 0
    while i < aArray.length
      if aArray[i] == replaceThis || forceAll == TRUE
        aArray[i] = withThis
      endif
      i += 1
    endwhile
  endif
  return aArray
endfunction
Int[]    function cArrayReplaceInt(Int[] aArray, Int replaceThis, Int withThis, Bool forceAll = False) global
  {Requirements: None}
  ; forceAll == TRUE replaces EVERYTHING with aValue
  if !aArray
    cErrInvalidArg("cArrayReplaceInt", "!aArray")
  else
    Int i = 0
    while i < aArray.length
      if aArray[i] == replaceThis || forceAll == TRUE
        aArray[i] = withThis
      endif
      i += 1
    endwhile
  endif
  return aArray
endfunction
ObjectReference[] function cArrayReplaceObjRef(ObjectReference[] aArray, ObjectReference replaceThis, \
  ObjectReference withThis, Bool forceAll = False) global
  {Requirements: None}
  ; forceAll == TRUE replaces EVERYTHING with aValue
  if !aArray
    cErrInvalidArg("cArrayReplaceObjRef", "!aArray")
  else
    Int i = 0
    while i < aArray.length
      if aArray[i] == replaceThis || forceAll == TRUE
        aArray[i] = withThis
      endif
      i += 1
    endwhile
  endif
  return aArray
endfunction
String[] function cArrayReplaceString(String[] aArray, String replaceThis, String withThis, Bool forceAll = False) global
  {Requirements: None}
  ; forceAll == TRUE replaces EVERYTHING with aValue
  if !aArray
    cErrInvalidArg("cArrayReplaceString", "!aArray")
  else
    Int i = 0
    while i < aArray.length
      if aArray[i] == replaceThis || forceAll == TRUE
        aArray[i] = withThis
      endif
      i += 1
    endwhile
  endif
  return aArray
endfunction
  ;>>> 1) allows return via .Find(), returnIndex == -1 returns 1st value that casts as TRUE
Actor  function cArrayReturnActor(Actor[] aArray, Int returnIndex = -1) global
  {Requirements: None}
  Actor returnActor
  if !aArray
    cErrInvalidArg("cArrayReturnActor", "!aArray")
  elseif returnIndex != -1 && returnIndex < 0
    cErrInvalidArg("cArrayReturnActor", "!= -1 && returnIndex < 0")
  elseif returnIndex > (aArray.length - 1)
    cErrInvalidArg("cArrayReturnActor", "returnIndex > (aArray.length - 1)")
  elseif returnIndex != -1 && returnIndex >= 0
    returnActor = aArray[returnIndex]
  elseif returnIndex == -1
    Int i = 0
    while i < aArray.length
      if aArray[i]
        returnActor = aArray[i]
        i = aArray.length
      endif
      i += 1
    endwhile
  endif
  return returnActor
endfunction
Alias  function cArrayReturnAlias(Alias[] aArray, Int returnIndex = -1) global
  {Requirements: None}
  Alias returnAlias
  if !aArray
    cErrInvalidArg("cArrayReturnAlias", "!aArray")
  elseif returnIndex != -1 && returnIndex < 0
    cErrInvalidArg("cArrayReturnAlias", "!= -1 && returnIndex < 0")
  elseif returnIndex > (aArray.length - 1)
    cErrInvalidArg("cArrayReturnAlias", "returnIndex > (aArray.length - 1)")
  elseif returnIndex != -1 && returnIndex >= 0
    returnAlias = aArray[returnIndex]
  elseif returnIndex == -1
    Int i = 0
    while i < aArray.length
      if aArray[i]
        returnAlias = aArray[i]
        i = aArray.length
      endif
      i += 1
    endwhile
  endif
  return returnAlias
endfunction
Bool   function cArrayReturnBool(Bool[] aArray, Int returnIndex = -1) global
  {Requirements: None}
  Bool returnBool
  if !aArray
    cErrInvalidArg("cArrayReturnBool", "!aArray")
  elseif returnIndex != -1 && returnIndex < 0
    cErrInvalidArg("cArrayReturnBool", "!= -1 && returnIndex < 0")
  elseif returnIndex > (aArray.length - 1)
    cErrInvalidArg("cArrayReturnBool", "returnIndex > (aArray.length - 1)")
  elseif returnIndex != -1 && returnIndex >= 0
    returnBool = aArray[returnIndex]
  elseif returnIndex == -1
    Int i = 0
    while i < aArray.length
      if aArray[i]
        returnBool = aArray[i]
        i = aArray.length
      endif
      i += 1
    endwhile
  endif
  return returnBool
endfunction
Float  function cArrayReturnFloat(Float[] aArray, Int returnIndex = -1) global
  {Requirements: None}
  Float returnFloat
  if !aArray
    cErrInvalidArg("cArrayReturnFloat", "!aArray")
  elseif returnIndex != -1 && returnIndex < 0
    cErrInvalidArg("cArrayReturnFloat", "!= -1 && returnIndex < 0")
  elseif returnIndex > (aArray.length - 1)
    cErrInvalidArg("cArrayReturnFloat", "returnIndex > (aArray.length - 1)")
  elseif returnIndex != -1 && returnIndex >= 0
    returnFloat = aArray[returnIndex]
  elseif returnIndex == -1
    Int i = 0
    while i < aArray.length
      if aArray[i]
        returnFloat = aArray[i]
        i = aArray.length
      endif
      i += 1
    endwhile
  endif
  return returnFloat
endfunction
Form   function cArrayReturnForm(Form[] aArray, Int returnIndex = -1) global
  {Requirements: None}
  Form returnForm
  if !aArray
    cErrInvalidArg("cArrayReturnForm", "!aArray")
  elseif returnIndex != -1 && returnIndex < 0
    cErrInvalidArg("cArrayReturnForm", "!= -1 && returnIndex < 0")
  elseif returnIndex > (aArray.length - 1)
    cErrInvalidArg("cArrayReturnForm", "returnIndex > (aArray.length - 1)")
  elseif returnIndex != -1 && returnIndex >= 0
    returnForm = aArray[returnIndex]
  elseif returnIndex == -1
    Int i = 0
    while i < aArray.length
      if aArray[i]
        returnForm = aArray[i]
        i = aArray.length
      endif
      i += 1
    endwhile
  endif
  return returnForm
endfunction
Int    function cArrayReturnInt(Int[] aArray, Int returnIndex = -1) global
  {Requirements: None}
  Int returnInt
  if !aArray
    cErrInvalidArg("cArrayReturnInt", "!aArray")
  elseif returnIndex != -1 && returnIndex < 0
    cErrInvalidArg("cArrayReturnInt", "!= -1 && returnIndex < 0")
  elseif returnIndex > (aArray.length - 1)
    cErrInvalidArg("cArrayReturnInt", "returnIndex > (aArray.length - 1)")
  elseif returnIndex != -1 && returnIndex >= 0
    returnInt = aArray[returnIndex]
  elseif returnIndex == -1
    Int i = 0
    while i < aArray.length
      if aArray[i]
        returnInt = aArray[i]
        i = aArray.length
      endif
      i += 1
    endwhile
  endif
  return returnInt
endfunction
ObjectReference  function cArrayReturnObjRef(ObjectReference[] aArray, Int returnIndex = -1) global
  {Requirements: None}
  ObjectReference returnObjRef
  if !aArray
    cErrInvalidArg("cArrayReturnObjRef", "!aArray")
  elseif returnIndex != -1 && returnIndex < 0
    cErrInvalidArg("cArrayReturnObjRef", "!= -1 && returnIndex < 0")
  elseif returnIndex > (aArray.length - 1)
    cErrInvalidArg("cArrayReturnObjRef", "returnIndex > (aArray.length - 1)")
  elseif returnIndex != -1 && returnIndex >= 0
    returnObjRef = aArray[returnIndex]
  elseif returnIndex == -1
    Int i = 0
    while i < aArray.length
      if aArray[i]
        returnObjRef = aArray[i]
        i = aArray.length
      endif
      i += 1
    endwhile
  endif
  return returnObjRef
endfunction
String function cArrayReturnString(String[] aArray, Int returnIndex = -1) global
  {Requirements: None}
  String returnString
  if !aArray
    cErrInvalidArg("cArrayReturnString", "!aArray")
  elseif returnIndex != -1 && returnIndex < 0
    cErrInvalidArg("cArrayReturnString", "!= -1 && returnIndex < 0")
  elseif returnIndex > (aArray.length - 1)
    cErrInvalidArg("cArrayReturnString", "returnIndex > (aArray.length - 1)")
  elseif returnIndex != -1 && returnIndex >= 0
    returnString = aArray[returnIndex]
  elseif returnIndex == -1
    Int i = 0
    while i < aArray.length
      if aArray[i]
        returnString = aArray[i]
        i = aArray.length
      endif
      i += 1
    endwhile
  endif
  return returnString
endfunction
  ;cArrayFirstIndex.*() == cArrayFind.*(aArray, (None/0/0.0/""), invertIt == TRUE)
  ;>>> Analyze: returns array [0] == smallest value, [1] == its index, [2] == largest value, 
  ;      [3] == its index, [4] == array length, [5] == array sum (!string), [6] == array average (!string), 
  ;      (Int[] only-> [7] == remainder of average)
Float[]  function cArrayAnalyzeFloat(Float[] aArray) global 
  {Requirements: None}
  ; returns array [0] == smallest value, [1] == its index, [2] == largest value, [3] == its index, 
  ;   [4] == array length, [5] == array sum, [6] == array average
  Float[] returnArray = New Float[7]
  if !aArray
    cErrInvalidArg("cArrayAnalyzeFloat", "!aArray", "arrayNone")
  else
    returnArray[0] = 214748364.0 ; val for smallest can't start at 0
    returnArray[2] = -214748364.0 ; adjust value in preparation for comparison
    Int i = 0
    while i < aArray.length
    ; smallest
      if aArray[i] < returnArray[0]
        returnArray[0] = aArray[i]
        returnArray[1] = i as Float
      endif
    ; largest
      if aArray[i] > returnArray[2]
        returnArray[2] = aArray[i]
        returnArray[3] = i as Float
      endif
    ; array sum
      returnArray[5] = returnArray[5] + aArray[i]
      i += 1
    endwhile
  ; length
    returnArray[4] = aArray.length
  ; average
    returnArray[6] = returnArray[5] / returnArray[4]
  endif
  return returnArray
endfunction
Int[]    function cArrayAnalyzeInt(Int[] aArray) global 
  {Requirements: None}
  ; returns array [0] == smallest value, [1] == its index, [2] == largest value, [3] == its index, 
  ;   [4] == array length, [5] == array sum, [6] == array average, [7] == average remainder (if any)
  Int[] returnArray = New Int[8]
  if !aArray
    cErrInvalidArg("cArrayAnalyzeInt", "!aArray", "arrayNone")
  else
    returnArray[0] = 214748364 ; val for smallest can't start at 0
    returnArray[2] = -214748364 ; adjust value in preparation for comparison
    Int i = 0
    while i < aArray.length
    ; smallest
      if aArray[i] < returnArray[0]
        returnArray[0] = aArray[i]
        returnArray[1] = i
      endif
    ; largest
      if aArray[i] > returnArray[2]
        returnArray[2] = aArray[i]
        returnArray[3] = i
      endif
    ; array sum
      returnArray[5] = returnArray[5] + aArray[i]
      i += 1
    endwhile
  ; length
    returnArray[4] = aArray.length
  ; average
    returnArray[6] = returnArray[5] / returnArray[4]
  ; remainder
    returnArray[7] = returnArray[5] % returnArray[4]
  endif
  return returnArray
endfunction
String[] function cArrayAnalyzeString(String[] aArray) global 
  {Requirements: None}
  ; returns array [0] == smallest value (lex), [1] == its index, [2] == largest value (lex), [3] == its index, 
  ;   [4] == array length
  String[] returnArray = New String[5]
  if !aArray
    cErrInvalidArg("cArrayAnalyzeString", "!aArray", "arrayNone")
  else
    Int i = 0
    while i < aArray.length
    ; comparatively smallest (lexicographical)
      if aArray[i] < returnArray[0]
        returnArray[0] = aArray[i]
        returnArray[1] = i as String
      endif
    ; comparatively largest (lexicographical)
      if aArray[i] > returnArray[2]
        returnArray[2] = aArray[i]
        returnArray[3] = i as String
      endif
      i += 1
    endwhile
  ; length
    returnArray[4] = aArray.length as String
  endif
  return returnArray
endfunction

;====== Manipulation
  ;>>>  Housekeeping (returns original)
    ;---@ Three(2 for objects) in one
Actor[]  function cArrayTidyActor(Actor[] aArray, Bool clearNone = False, Bool clearDupes = False) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayTidyActor", "!aArray", "")
  elseif !clearNone && !clearDupes
    cErrInvalidArg("cArrayTidyActor", "!clearNone && !clearDupes")
  else
    if clearNone
      aArray = cArrayRemoveValueActor(aArray, None)
    endif
    if clearDupes 
      aArray = cArrayRemoveDuplicatesActor(aArray)
    endif
  endif
  return aArray
endfunction
Alias[]  function cArrayTidyAlias(Alias[] aArray, Bool clearNone = False, Bool clearDupes = False) global
  {Requirements: None, PapyrusUtil:Soft}
  if !aArray
    cErrInvalidArg("cArrayTidyAlias", "!aArray", "")
  elseif !clearNone && !clearDupes
    cErrInvalidArg("cArrayTidyAlias", "!clearNone && !clearDupes")
  else
    if clearNone
      aArray = cArrayRemoveValueAlias(aArray, None)
    endif
    if clearDupes 
      aArray = cArrayRemoveDuplicatesAlias(aArray)
    endif
  endif
  return aArray
endfunction
Float[]  function cArrayTidyFloat(Float[] aArray, Bool clearZero = False, Bool clearDupes = False,  \
    Bool sortIt = False) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayTidyFloat", "!aArray", "")
  elseif !clearZero && !clearDupes && !sortIt
    cErrInvalidArg("cArrayTidyFloat", "!clearZero && !clearDupes && !sortIt")
  else
    if clearZero
      aArray = cArrayRemoveValueFloat(aArray, 0.0)
    endif
    if clearDupes 
      aArray = cArrayRemoveDuplicatesFloat(aArray)
    endif
    if sortIt 
      aArray = cArraySortFloat(aArray)
    endif
  endif
  return aArray
endfunction
Form[]   function cArrayTidyForm(Form[] aArray, Bool clearNone = False, Bool clearDupes = False) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayTidyForm", "!aArray", "")
  elseif !clearNone && !clearDupes
    cErrInvalidArg("cArrayTidyForm", "!clearNone && !clearDupes")
  else
    if clearNone
      aArray = cArrayRemoveValueForm(aArray, None)
    endif
    if clearDupes 
      aArray = cArrayRemoveDuplicatesForm(aArray)
    endif
  endif
  return aArray
endfunction
Int[]    function cArrayTidyInt(Int[] aArray, Bool clearZero = False, Bool clearDupes = False,  \
    Bool sortIt = False) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayTidyInt", "!aArray", "")
  elseif !clearZero && !clearDupes && !sortIt
    cErrInvalidArg("cArrayTidyInt", "!clearZero && !clearDupes && !sortIt")
  else
    if clearZero
      aArray = cArrayRemoveValueInt(aArray, 0)
    endif
    if clearDupes 
      aArray = cArrayRemoveDuplicatesInt(aArray)
    endif
    if sortIt
      aArray = cArraySortInt(aArray)
    endif
  endif
  return aArray
endfunction
ObjectReference[] function cArrayTidyObjRef(ObjectReference[] aArray, Bool clearNone = False, \
  Bool clearDupes = False) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayTidyObjRef", "!aArray", "")
  elseif !clearNone && !clearDupes
    cErrInvalidArg("cArrayTidyObjRef", "!clearNone && !clearDupes")
  else
    if clearNone
      aArray = cArrayRemoveValueObjRef(aArray, None)
    endif
    if clearDupes 
      aArray = cArrayRemoveDuplicatesObjRef(aArray)
    endif
  endif
  return aArray
endfunction
String[] function cArrayTidyString(String[] aArray, Bool clearEmpty = False, Bool clearDupes = False,  \
    Bool sortIt = False) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayTidyString", "!aArray", "")
  elseif !clearEmpty && !clearDupes && !sortIt
    cErrInvalidArg("cArrayTidyString", "!clearEmpty && !clearDupes && !sortIt")
  else
    if clearEmpty
      aArray = cArrayRemoveValueString(aArray, "")
    endif
    if clearDupes
      aArray = cArrayRemoveDuplicatesString(aArray)
    endif
    if sortIt 
      aArray = cArrayBubbleSortString(aArray) ; only bubble works atm
      ; has optional argument in function to use PapyrusUtil
    endif
  endif
  return aArray
endfunction
  ;>>> HowTo: RemoveValue
    ;cArrayReplace.*(replaceThis = (None,0,0.0,""), withThis = filler)
    ;cArrayClearNone.*() == cArrayRemoveValue.*(aArray, None)
    ;cArrayClearZero.*() == cArrayRemoveValue.*(aArray, 0) <- 0.0 (Int/Float)
    ;cArrayClearBlank() == cArrayRemoveValueString(aArray, "") (String)
    ;cArrayClearEmpty() == cArrayRemoveValueString(aArray, "") (String)
  ;>>> Remove duplicate records no Bool version, only returns 1-2 index array
Actor[]  function cArrayRemoveDuplicatesActor(Actor[] aArray, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Actor[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveDuplicatesActor", "!aArray", "")
  elseif usePapUtil && clibUse.cUsePapUtil()
    newArray = PapyrusUtil.MergeActorArray(aArray, newArray, TRUE)
  else
    Int[] indicesToRemove = cArrayCreateInt(aArray.length)
    Actor[] alreadyCounted = cArrayCreateActor(aArray.length)
    Int k = 0
    Int j = 0
    Int i = 0
    while i < aArray.length
      if alreadyCounted.Find(aArray[i]) == -1
        alreadyCounted[j] = aArray[i]
        j += 1
      else
        indicesToRemove[k] = i
        k += 1
      endif
      i += 1
    endwhile
    newArray = cArrayRemoveIndicesActor(aArray, indicesToRemove, k)
  endif
  return newArray
endfunction
Alias[]  function cArrayRemoveDuplicatesAlias(Alias[] aArray, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Alias[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveDuplicatesAlias", "!aArray", "")
  elseif usePapUtil && clibUse.cUsePapUtil()
    newArray = PapyrusUtil.MergeAliasArray(aArray, newArray, TRUE)
  else
    Int[] indicesToRemove = cArrayCreateInt(aArray.length)
    Alias[] alreadyCounted = cArrayCreateAlias(aArray.length)
    Int k = 0
    Int j = 0
    Int i = 0
    while i < aArray.length
      if alreadyCounted.Find(aArray[i]) == -1
        alreadyCounted[j] = aArray[i]
        j += 1
      else
        indicesToRemove[k] = i
        k += 1
      endif
      i += 1
    endwhile
    newArray = cArrayRemoveIndicesAlias(aArray, indicesToRemove, k)
  endif
  return newArray
endfunction
Float[]  function cArrayRemoveDuplicatesFloat(Float[] aArray, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Float[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveDuplicatesFloat", "!aArray", "")
  elseif usePapUtil && clibUse.cUsePapUtil()
    newArray = PapyrusUtil.MergeFloatArray(aArray, newArray, TRUE)
  else
    Int[]   indicesToRemove = cArrayCreateInt(aArray.length)
    Float[] alreadyCounted = cArrayCreateFloat(aArray.length, -2537988.2)
    Int k = 0
    Int j = 0
    Int i = 0
    while i < aArray.length
      if alreadyCounted.Find(aArray[i]) == -1
        alreadyCounted[j] = aArray[i]
        j += 1
      else
        indicesToRemove[k] = i
        k += 1
      endif
      i += 1
    endwhile
    newArray = cArrayRemoveIndicesFloat(aArray, indicesToRemove, k)
  endif
  return newArray
endfunction
Form[]   function cArrayRemoveDuplicatesForm(Form[] aArray, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Form[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveDuplicatesForm", "!aArray", "")
  elseif usePapUtil && clibUse.cUsePapUtil()
    newArray = PapyrusUtil.MergeFormArray(aArray, newArray, TRUE)
  else
    Int[] indicesToRemove = cArrayCreateInt(aArray.length)
    Form[] alreadyCounted = cArrayCreateForm(aArray.length)
    Int k = 0
    Int j = 0
    Int i = 0
    while i < aArray.length
      if alreadyCounted.Find(aArray[i]) == -1
        alreadyCounted[j] = aArray[i]
        j += 1
      else
        indicesToRemove[k] = i
        k += 1
      endif
      i += 1
    endwhile
    newArray = cArrayRemoveIndicesForm(aArray, indicesToRemove, k)
  endif
  return newArray
endfunction
Int[]    function cArrayRemoveDuplicatesInt(Int[] aArray, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveDuplicatesInt", "!aArray")
  elseif usePapUtil && clibUse.cUsePapUtil()
    newArray = PapyrusUtil.MergeIntArray(aArray, newArray, TRUE)
  else
    Int[] indicesToRemove = cArrayCreateInt(aArray.length)
    Int[] alreadyCounted = cArrayCreateInt(aArray.length, -2537988)
    Int k = 0
    Int j = 0
    Int i = 0
    while i < aArray.length
      if alreadyCounted.Find(aArray[i]) == -1
        alreadyCounted[j] = aArray[i]
        j += 1
      else
        indicesToRemove[k] = i
        k += 1
      endif
      i += 1
    endwhile
    newArray = cArrayRemoveIndicesInt(aArray, indicesToRemove, k)
  endif
  return newArray
endfunction
ObjectReference[] function cArrayRemoveDuplicatesObjRef(ObjectReference[] aArray, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  ObjectReference[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveDuplicatesObjRef", "!aArray", "")
  elseif usePapUtil && clibUse.cUsePapUtil()
    newArray = PapyrusUtil.MergeObjRefArray(aArray, newArray, TRUE)
  else
    Int[] indicesToRemove = cArrayCreateInt(aArray.length)
    ObjectReference[] alreadyCounted = cArrayCreateObjRef(aArray.length)
    Int k = 0
    Int j = 0
    Int i = 0
    while i < aArray.length
      if alreadyCounted.Find(aArray[i]) == -1
        alreadyCounted[j] = aArray[i]
        j += 1
      else
        indicesToRemove[k] = i
        k += 1
      endif
      i += 1
    endwhile
    newArray = cArrayRemoveIndicesObjRef(aArray, indicesToRemove, k)
  endif
  return newArray
endfunction
String[] function cArrayRemoveDuplicatesString(String[] aArray, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  String[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveDuplicatesString", "!aArray", "")
  elseif usePapUtil && clibUse.cUsePapUtil()
    newArray = PapyrusUtil.MergeStringArray(aArray, newArray, TRUE)
  else
    Int[] indicesToRemove = cArrayCreateInt(aArray.length)
    String[] alreadyCounted = cArrayCreateString(aArray.length, "#&*(s")
    Int k = 0
    Int j = 0
    Int i = 0
    while i < aArray.length
      if alreadyCounted.Find(aArray[i]) == -1
        alreadyCounted[j] = aArray[i]
        j += 1
      else
        indicesToRemove[k] = i
        k += 1
      endif
      i += 1
    endwhile
    newArray = cArrayRemoveIndicesString(aArray, indicesToRemove, k)
  endif
  return newArray
endfunction
  ;>>> Swap Indices
function cArraySwapIndexActor(Actor[] aArray, Int index1, Int index2) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArraySwapIndexActor", "!aArray", "")
  elseif index1 < 0
    cErrInvalidArg("cArraySwapIndexActor", "index1 < 0", "")
  elseif index1 > (aArray.length - 1)
    cErrInvalidArg("cArraySwapIndexActor", "index1 > (aArray.length - 1)", "")
  elseif index2 < 0
    cErrInvalidArg("cArraySwapIndexActor", "index2 < 0", "")
  elseif index2 > (aArray.length - 1)
    cErrInvalidArg("cArraySwapIndexActor", "index2 > (aArray.length - 1)", "")
  else
    Actor tempValue = aArray[index1]
    aArray[index1] = aArray[index2]
    aArray[index2] = tempValue
  endif
endfunction
function cArraySwapIndexAlias(Alias[] aArray, Int index1, Int index2) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArraySwapIndexAlias", "!aArray", "")
  elseif index1 < 0
    cErrInvalidArg("cArraySwapIndexAlias", "index1 < 0", "")
  elseif index1 > (aArray.length - 1)
    cErrInvalidArg("cArraySwapIndexAlias", "index1 > (aArray.length - 1)", "")
  elseif index2 < 0
    cErrInvalidArg("cArraySwapIndexAlias", "index2 < 0", "")
  elseif index2 > (aArray.length - 1)
    cErrInvalidArg("cArraySwapIndexAlias", "index2 > (aArray.length - 1)", "")
  else
    Alias tempValue = aArray[index1]
    aArray[index1] = aArray[index2]
    aArray[index2] = tempValue
  endif
endfunction
function cArraySwapIndexBool(Bool[] aArray, Int index1, Int index2) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArraySwapIndexBool", "!aArray", "")
  elseif index1 < 0
    cErrInvalidArg("cArraySwapIndexBool", "index1 < 0", "")
  elseif index1 > (aArray.length - 1)
    cErrInvalidArg("cArraySwapIndexBool", "index1 > (aArray.length - 1)", "")
  elseif index2 < 0
    cErrInvalidArg("cArraySwapIndexBool", "index2 < 0", "")
  elseif index2 > (aArray.length - 1)
    cErrInvalidArg("cArraySwapIndexBool", "index2 > (aArray.length - 1)", "")
  else
    Bool tempValue = aArray[index1]
    aArray[index1] = aArray[index2]
    aArray[index2] = tempValue
  endif
endfunction
function cArraySwapIndexFloat(Float[] aArray, Int index1, Int index2) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArraySwapIndexFloat", "!aArray", "")
  elseif index1 < 0
    cErrInvalidArg("cArraySwapIndexFloat", "index1 < 0", "")
  elseif index1 > (aArray.length - 1)
    cErrInvalidArg("cArraySwapIndexFloat", "index1 > (aArray.length - 1)", "")
  elseif index2 < 0
    cErrInvalidArg("cArraySwapIndexFloat", "index2 < 0", "")
  elseif index2 > (aArray.length - 1)
    cErrInvalidArg("cArraySwapIndexFloat", "index2 > (aArray.length - 1)", "")
  else
    Float tempValue = aArray[index1]
    aArray[index1] = aArray[index2]
    aArray[index2] = tempValue
  endif
endfunction
function cArraySwapIndexForm(Form[] aArray, Int index1, Int index2) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArraySwapIndexForm", "!aArray", "")
  elseif index1 < 0
    cErrInvalidArg("cArraySwapIndexForm", "index1 < 0", "")
  elseif index1 > (aArray.length - 1)
    cErrInvalidArg("cArraySwapIndexForm", "index1 > (aArray.length - 1)", "")
  elseif index2 < 0
    cErrInvalidArg("cArraySwapIndexForm", "index2 < 0", "")
  elseif index2 > (aArray.length - 1)
    cErrInvalidArg("cArraySwapIndexForm", "index2 > (aArray.length - 1)", "")
  else
    Form tempValue = aArray[index1]
    aArray[index1] = aArray[index2]
    aArray[index2] = tempValue
  endif
endfunction
function cArraySwapIndexInt(Int[] aArray, Int index1, Int index2) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArraySwapIndexInt", "!aArray", "")
  elseif index1 < 0
    cErrInvalidArg("cArraySwapIndexInt", "index1 < 0", "")
  elseif index1 > (aArray.length - 1)
    cErrInvalidArg("cArraySwapIndexInt", "index1 > (aArray.length - 1)", "")
  elseif index2 < 0
    cErrInvalidArg("cArraySwapIndexInt", "index2 < 0", "")
  elseif index2 > (aArray.length - 1)
    cErrInvalidArg("cArraySwapIndexInt", "index2 > (aArray.length - 1)", "")
  else
    Int tempValue = aArray[index1]
    aArray[index1] = aArray[index2]
    aArray[index2] = tempValue
  endif
endfunction
function cArraySwapIndexObjRef(ObjectReference[] aArray, Int index1, Int index2) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArraySwapIndexObjRef", "!aArray", "")
  elseif index1 < 0
    cErrInvalidArg("cArraySwapIndexObjRef", "index1 < 0", "")
  elseif index1 > (aArray.length - 1)
    cErrInvalidArg("cArraySwapIndexObjRef", "index1 > (aArray.length - 1)", "")
  elseif index2 < 0
    cErrInvalidArg("cArraySwapIndexObjRef", "index2 < 0", "")
  elseif index2 > (aArray.length - 1)
    cErrInvalidArg("cArraySwapIndexObjRef", "index2 > (aArray.length - 1)", "")
  else
    ObjectReference tempValue = aArray[index1]
    aArray[index1] = aArray[index2]
    aArray[index2] = tempValue
  endif
endfunction
function cArraySwapIndexString(String[] aArray, Int index1, Int index2) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArraySwapIndexString", "!aArray", "")
  elseif index1 < 0
    cErrInvalidArg("cArraySwapIndexString", "index1 < 0", "")
  elseif index1 > (aArray.length - 1)
    cErrInvalidArg("cArraySwapIndexString", "index1 > (aArray.length - 1)", "")
  elseif index2 < 0
    cErrInvalidArg("cArraySwapIndexString", "index2 < 0", "")
  elseif index2 > (aArray.length - 1)
    cErrInvalidArg("cArraySwapIndexString", "index2 > (aArray.length - 1)", "")
  else
    String tempValue = aArray[index1]
    aArray[index1] = aArray[index2]
    aArray[index2] = tempValue
  endif
endfunction
  ;>>> Remove all trailing indices == trailingValue
Actor[]  function cArrayRemoveTrailingActor(Actor[] aArray, Actor trailingValue = None) global
  {Requirements: None}
  ; this assumes that the last indices are not *supposed* to be trailingValue
  Actor[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveTrailingActor", "!aArray", "")
  else
    Int numToRemove
    Int i = 1
    while aArray[aArray.length - i] == trailingValue
      numToRemove += 1
      i += 1
    endwhile
    if numToRemove
      newArray = cArrayResizeActor(aArray, aArray.length - numToRemove)
    else
      clibTrace("cArrayRemoveTrailingActor", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
Alias[]  function cArrayRemoveTrailingAlias(Alias[] aArray, Alias trailingValue = None) global
  {Requirements: None}
  ; this assumes that the last indices are not *supposed* to be trailingValue
  Alias[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveTrailingAlias", "!aArray", "")
  else
    Int numToRemove
    Int i = 1
    while aArray[aArray.length - i] == trailingValue
      numToRemove += 1
      i += 1
    endwhile
    if numToRemove
      newArray = cArrayResizeAlias(aArray, aArray.length - numToRemove)
    else
      clibTrace("cArrayRemoveTrailingAlias", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
Bool[]   function cArrayRemoveTrailingBool(Bool[] aArray, Bool trailingValue = False) global
  {Requirements: None}
  ; this assumes that the last indices are not *supposed* to be trailingValue
  Bool[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveTrailingBool", "!aArray", "")
  else
    Int numToRemove
    Int i = 1
    while aArray[aArray.length - i] == trailingValue
      numToRemove += 1
      i += 1
    endwhile
    if numToRemove
      newArray = cArrayResizeBool(aArray, aArray.length - numToRemove)
    else
      clibTrace("cArrayRemoveTrailingBool", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
Float[]  function cArrayRemoveTrailingFloat(Float[] aArray, Float trailingValue = 0.0) global
  {Requirements: None}
  ; this assumes that the last indices are not *supposed* to be trailingValue
  Float[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveTrailingFloat", "!aArray", "")
  else
    Int numToRemove
    Int i = 1
    while aArray[aArray.length - i] == trailingValue
      numToRemove += 1
      i += 1
    endwhile
    if numToRemove
      newArray = cArrayResizeFloat(aArray, aArray.length - numToRemove)
    else
      clibTrace("cArrayRemoveTrailingFloat", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
Form[]   function cArrayRemoveTrailingForm(Form[] aArray, Form trailingValue = None) global
  {Requirements: None}
  ; this assumes that the last indices are not *supposed* to be trailingValue
  Form[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveTrailingForm", "!aArray", "")
  else
    Int numToRemove
    Int i = 1
    while aArray[aArray.length - i] == trailingValue
      numToRemove += 1
      i += 1
    endwhile
    if numToRemove
      newArray = cArrayResizeForm(aArray, aArray.length - numToRemove)
    else
      clibTrace("cArrayRemoveTrailingForm", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
Int[]    function cArrayRemoveTrailingInt(Int[] aArray, Int trailingValue = 0) global     
  {Requirements: None}
  ; this assumes that the last indices are not *supposed* to be trailingValue
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveTrailingInt", "!aArray", "")
  else
    Int numToRemove
    Int i = 1
    while aArray[aArray.length - i] == trailingValue
      numToRemove += 1
      i += 1
    endwhile
    if numToRemove
      newArray = cArrayResizeInt(aArray, aArray.length - numToRemove)
    else
      clibTrace("cArrayRemoveTrailingInt", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
ObjectReference[] function cArrayRemoveTrailingObjRef(ObjectReference[] aArray, \
  ObjectReference trailingValue = None) global
  {Requirements: None}
  ; this assumes that the last indices are not *supposed* to be trailingValue
  ObjectReference[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveTrailingObjRef", "!aArray", "")
  else
    Int numToRemove
    Int i = 1
    while aArray[aArray.length - i] == trailingValue
      numToRemove += 1
      i += 1
    endwhile
    if numToRemove
      newArray = cArrayResizeObjRef(aArray, aArray.length - numToRemove)
    else
      clibTrace("cArrayRemoveTrailingObjectReference", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
String[] function cArrayRemoveTrailingString(String[] aArray, String trailingValue = "") global
  {Requirements: None}
  ; this assumes that the last indices are not *supposed* to be trailingValue
  String[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveTrailingString", "!aArray", "")
  else
    Int numToRemove
    Int i = 1
    while aArray[aArray.length - i] == trailingValue
      numToRemove += 1
      i += 1
    endwhile
    if numToRemove
      newArray = cArrayResizeString(aArray, aArray.length - numToRemove)
    else
      clibTrace("cArrayRemoveTrailingString", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
  ;>>> Shift all values that cast to Bool as False to the end
Actor[]  function cArrayCompactActor(Actor[] aArray, Actor shiftValue = None) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayCompactActor", "!aArray")
  else
    Int lFind = aArray.Find(shiftValue)
    Int nFind = cArrayFindActor(aArray, shiftValue, 0, TRUE)
    Int i = 0
    while lFind < nFind
      cArraySwapIndexActor(aArray, lFind, nFind)
      lFind = aArray.Find(shiftValue, lFind)
      nFind = cArrayFindActor(aArray, shiftValue, lFind + 1, TRUE) ; TRUE = Inverse
      i += 1
    endwhile
  endif
  return aArray
endfunction
Alias[]  function cArrayCompactAlias(Alias[] aArray, Alias shiftValue = None) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayCompactAlias", "!aArray")
  else
    Int lFind = aArray.Find(shiftValue)
    Int nFind = cArrayFindAlias(aArray, shiftValue, 0, TRUE)
    Int i = 0
    while lFind < nFind
      cArraySwapIndexAlias(aArray, lFind, nFind)
      lFind = aArray.Find(shiftValue, lFind)
      nFind = cArrayFindAlias(aArray, shiftValue, lFind + 1, TRUE) ; TRUE = Inverse
      i += 1
    endwhile
  endif
  return aArray
endfunction
Float[]  function cArrayCompactFloat(Float[] aArray, Float shiftValue = 0.0) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayCompactFloat", "!aArray")
  else
    Int lFind = aArray.Find(shiftValue)
    Int nFind = cArrayFindFloat(aArray, shiftValue, 0, TRUE)
    Int i = 0
    while lFind < nFind
      cArraySwapIndexFloat(aArray, lFind, nFind)
      lFind = aArray.Find(shiftValue, lFind)
      nFind = cArrayFindFloat(aArray, shiftValue, lFind + 1, TRUE) ; TRUE = Inverse
      i += 1
    endwhile
  endif
  return aArray
endfunction
Form[]   function cArrayCompactForm(Form[] aArray, Form shiftValue = None) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayCompactForm", "!aArray")
  else
    Int lFind = aArray.Find(shiftValue)
    Int nFind = cArrayFindForm(aArray, shiftValue, 0, TRUE)
    Int i = 0
    while lFind < nFind
      cArraySwapIndexForm(aArray, lFind, nFind)
      lFind = aArray.Find(shiftValue, lFind)
      nFind = cArrayFindForm(aArray, shiftValue, lFind + 1, TRUE) ; TRUE = Inverse
      i += 1
    endwhile
  endif
  return aArray
endfunction
Int[]    function cArrayCompactInt(Int[] aArray, Int shiftValue = 0) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayCompactInt", "!aArray")
  else
    Int lFind = aArray.Find(shiftValue)
    Int nFind = cArrayFindInt(aArray, shiftValue, 0, TRUE)
    Int i = 0
    while lFind < nFind
      cArraySwapIndexInt(aArray, lFind, nFind)
      lFind = aArray.Find(shiftValue, lFind)
      nFind = cArrayFindInt(aArray, shiftValue, lFind + 1, TRUE) ; TRUE = Inverse
      i += 1
    endwhile
  endif
  return aArray
endfunction
ObjectReference[] function cArrayCompactObjRef(ObjectReference[] aArray, ObjectReference shiftValue = None) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayCompactObjRef", "!aArray")
  else
    Int lFind = aArray.Find(shiftValue)
    Int nFind = cArrayFindObjRef(aArray, shiftValue, 0, TRUE)
    Int i = 0
    while lFind < nFind
      cArraySwapIndexObjRef(aArray, lFind, nFind)
      lFind = aArray.Find(shiftValue, lFind)
      nFind = cArrayFindObjRef(aArray, shiftValue, lFind + 1, TRUE) ; TRUE = Inverse
      i += 1
    endwhile
  endif
  return aArray
endfunction
String[] function cArrayCompactString(String[] aArray, String shiftValue = "") global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayCompactString", "!aArray")
  else
    Int lFind = aArray.Find(shiftValue)
    Int nFind = cArrayFindString(aArray, shiftValue, 0, TRUE)
    Int i = 0
    while lFind < nFind
      cArraySwapIndexString(aArray, lFind, nFind)
      lFind = aArray.Find(shiftValue, lFind)
      nFind = cArrayFindString(aArray, shiftValue, lFind + 1, TRUE) ; TRUE = Inverse
      i += 1
    endwhile
  endif
  return aArray
endfunction
;--> ARRAY ORDER
  ;>>> Sort (doesn't return an array as it sorts actual array)
Int function cArrayPartitionFloat(Float[] aArray, Int low, Int high) global
  {Requirements: None}
  ; Only for use as part of the cArraySortFloat function
  if !aArray
    cErrInvalidArg("cArrayPartitionFloat", "!aArray")
  else
    Float pivot = aArray[high]
    Int i = low - 1 ; Index of smaller element and indicates the right position of pivot found so far
    Int j = low
    while j <= (high - 1)
      if aArray[j] < pivot
        i += 1
        cArraySwapIndexFloat(aArray, i, j)
      endif
      j += 1
    endwhile
    cArraySwapIndexFloat(aArray, i + 1, high)
    return (i + 1)
  endif
  return -1
endfunction
function cArraySortFloat(Float[] aArray, Int low = -1, Int high = -1, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  if !aArray
    cErrInvalidArg("cArraySortFloat", "!aArray")
  elseif usePapUtil && clibUse.cUsePapUtil()
    PapyrusUtil.SortFloatArray(aArray)
  else
    if high == -1
      high = aArray.length - 1
    endif
    if low == -1
      low = 0
    endif
    if low < high
      Int pi = cArrayPartitionFloat(aArray, low, high) ; pi is partitioning index, aArray[p] now at right place 
    ; Separately sort elements before partition and after partition
      cArraySortFloat(aArray, low, pi - 1)
      cArraySortFloat(aArray, pi + 1, high)
    endif
  endif
endfunction
Int function cArrayPartitionInt(Int[] aArray, Int low, Int high) global
  {Requirements: None}
    ; Only for use as part of the cArraySortInt function
  if !aArray
    cErrInvalidArg("cArrayPartitionInt", "!aArray")
  else
    Int pivot = aArray[high]
    Int i = low - 1 ; Index of smaller element and indicates the right position of pivot found so far
    Int j = low
    while j <= (high - 1)
      if aArray[j] < pivot
        i += 1
        cArraySwapIndexInt(aArray, i, j)
      endif
      j += 1
    endwhile
    cArraySwapIndexInt(aArray, i + 1, high)
    return (i + 1)
  endif
  return -1
endfunction
function cArraySortInt(Int[] aArray, Int low = -1, Int high = -1, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  if !aArray
    cErrInvalidArg("cArraySortInt", "!aArray")
  elseif usePapUtil && clibUse.cUsePapUtil()
    PapyrusUtil.SortIntArray(aArray)
  else
    if high == -1
      high = aArray.length - 1
    endif
    if low == -1
      low = 0
    endif
    if low < high
      Int pi = cArrayPartitionInt(aArray, low, high) ; pi is partitioning index, aArray[p] now at right place 
    ; Separately sort elements before partition and after partition
      cArraySortInt(aArray, low, pi - 1)
      cArraySortInt(aArray, pi + 1, high)
    endif
  endif
endfunction
; String QuickSort Bugged currently. Use cArrayBubbleSortString() for now
;/
Int function cArrayPartitionString(String[] aArray, Int low, Int high) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayPartitionString", "!aArray")
  else
    String pivot = aArray[high]
    Int i = low - 1 ; Index of smaller element and indicates the right position of pivot found so far
    Int j = low
    while j <= (high - 1)
      if aArray[j] < pivot
        i += 1
        cArraySwapIndexString(aArray, i, j)
      endif
      j += 1
    endwhile
    cArraySwapIndexString(aArray, i + 1, high)
    return (i + 1)
  endif
  return -1
endfunction
function cArrayQuickSortString(String[] aArray, Int low = -1, Int high = -1) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayQuickSortString", "!aArray")
  else
    if high == -1
      high = aArray.length - 1
    endif
    if low == -1
      low = 0
    endif
    if low < high
      Int pi = cArrayPartitionString(aArray, low, high) ; pi is partitioning index, aArray[p] now at right place 
    ; Separately sort elements before partition and after partition
      cArrayQuickSortString(aArray, low, pi - 1)
      cArrayQuickSortString(aArray, pi + 1, high)
    endif
  endif
endfunction
/;
  ;>>> Returns new array [cArraySortFloat/Int() faster but no return]
Float[]  function cArrayBubbleSortFloat(Float[] aArray, Bool invertIt = False, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  if !aArray
    cErrInvalidArg("cArrayBubbleSortFloat", "!aArray")
  elseif usePapUtil && clibUse.cUsePapUtil() 
    if invertIt
      PapyrusUtil.SortFloatArray(aArray, TRUE)
    else
      PapyrusUtil.SortFloatArray(aArray)
    endif
  else
    Float tempData
    Int j = aArray.length - 1
    Int i = 0
    while j > 0
      i = 0
      while i < j
        if ((!invertIt) && (aArray[i] > aArray[i + 1])) || ((invertIt) && (aArray[i] < aArray[i + 1]))
          tempData = aArray[i]
          aArray[i] = aArray[i + 1]
          aArray[i + 1] = tempData
        endif
        i += 1
      endwhile
      j -= 1
    endwhile
  endif
  return aArray
endfunction
Int[]    function cArrayBubbleSortInt(Int[] aArray, Bool invertIt = False, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  if !aArray
    cErrInvalidArg("cArrayBubbleSortInt", "!aArray")
  elseif usePapUtil && clibUse.cUsePapUtil() && invertIt
    if invertIt
      PapyrusUtil.SortIntArray(aArray, TRUE)
    else
      PapyrusUtil.SortIntArray(aArray)
    endif
  else
    Int tempData
    Int j = aArray.length - 1
    Int i = 0
    while j > 0
      i = 0
      while i < j
        if ((!invertIt) && (aArray[i] > aArray[i + 1])) || ((invertIt) && (aArray[i] < aArray[i + 1]))
          tempData = aArray[i]
          aArray[i] = aArray[i + 1]
          aArray[i + 1] = tempData
        endif
        i += 1
      endwhile
      j -= 1
    endwhile
  endif
  return aArray
endfunction
String[] function cArrayBubbleSortString(String[] aArray, Bool invertIt = False, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  if !aArray
    cErrInvalidArg("cArrayBubbleSortString", "!aArray")
  elseif usePapUtil && clibUse.cUsePapUtil()
    if invertIt
      PapyrusUtil.SortStringArray(aArray, TRUE)
    else
      PapyrusUtil.SortStringArray(aArray)
    endif
  else
    String tempData
    Int j = aArray.length - 1
    Int i = 0
    while j > 0
      i = 0
      while i < j
        if ((!invertIt) && (aArray[i] > aArray[i + 1])) || ((invertIt) && (aArray[i] < aArray[i + 1]))
          tempData = aArray[i]
          aArray[i] = aArray[i + 1]
          aArray[i + 1] = tempData
        endif
        i += 1
      endwhile
      j -= 1
    endwhile
  endif
  return aArray
endfunction
  ;>>> Reverse order (returns new array)
Actor[]  function cArrayReverseActor(Actor[] aArray) global
  {Requirements: None}
  Actor[] newArray
  if !aArray
    cErrInvalidArg("cArrayReverseActor", "!aArray", "")
  else 
    newArray = cArrayCreateActor(aArray.length)
    if newArray.length
      Int numIndices = aArray.length
      Int i = 0
      while i < aArray.length
        numIndices -= 1
        newArray[i] = aArray[numIndices]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayReverseActor")
    endif
  endif
  return newArray
endfunction
Alias[]  function cArrayReverseAlias(Alias[] aArray) global
  {Requirements: None}
  Alias[] newArray
  if !aArray
    cErrInvalidArg("cArrayReverseAlias", "!aArray", "")
  else 
    newArray = cArrayCreateAlias(aArray.length)
    if newArray.length
      Int numIndices = aArray.length
      Int i = 0
      while i < aArray.length
        numIndices -= 1
        newArray[i] = aArray[numIndices]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayReverseAlias")
    endif
  endif
  return newArray
endfunction
Bool[]   function cArrayReverseBool(Bool[] aArray) global
  {Requirements: None}
  Bool[] newArray
  if !aArray
    cErrInvalidArg("cArrayReverseBool", "!aArray", "")
  else
    newArray = cArrayCreateBool(aArray.length)
    if newArray.length
      Int numIndices = aArray.length
      Int i = 0
      while i < aArray.length
        numIndices -= 1
        newArray[i] = aArray[numIndices]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayReverseBool")
    endif
  endif
  return newArray
endfunction
Float[]  function cArrayReverseFloat(Float[] aArray) global
  {Requirements: None}
  Float[] newArray
  if !aArray
    cErrInvalidArg("cArrayReverseFloat", "!aArray", "")
  else 
    newArray = cArrayCreateFloat(aArray.length)
    if newArray.length
      Int numIndices = aArray.length
      Int i = 0
      while i < aArray.length
        numIndices -= 1
        newArray[i] = aArray[numIndices]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayReverseFloat")
    endif
  endif
  return newArray
endfunction
Form[]   function cArrayReverseForm(Form[] aArray) global
  {Requirements: None}
  Form[] newArray
  if !aArray
    cErrInvalidArg("cArrayReverseForm", "!aArray", "")
  else 
    newArray = cArrayCreateForm(aArray.length)
    if newArray.length
      Int numIndices = aArray.length
      Int i = 0
      while i < aArray.length
        numIndices -= 1
        newArray[i] = aArray[numIndices]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayReverseForm")
    endif
  endif
  return newArray
endfunction
Int[]    function cArrayReverseInt(Int[] aArray) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayReverseInt", "!aArray", "")
  else 
    newArray = cArrayCreateInt(aArray.length)
    if newArray.length
      Int numIndices = aArray.length
      Int i = 0
      while i < aArray.length
        numIndices -= 1
        newArray[i] = aArray[numIndices]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayReverseInt")
    endif
  endif
  return newArray
endfunction
ObjectReference[] function cArrayReverseObjRef(ObjectReference[] aArray) global
  {Requirements: None}
  ObjectReference[] newArray
  if !aArray
    cErrInvalidArg("cArrayReverseObjectReference", "!aArray", "")
  else 
    newArray = cArrayCreateObjRef(aArray.length)
    if newArray.length
      Int numIndices = aArray.length
      Int i = 0
      while i < aArray.length
        numIndices -= 1
        newArray[i] = aArray[numIndices]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayReverseObjectReference")
    endif
  endif
  return newArray
endfunction
String[] function cArrayReverseString(String[] aArray) global
  {Requirements: None}
  String[] newArray
  if !aArray
    cErrInvalidArg("cArrayReverseString", "!aArray", "")
  else 
    newArray = cArrayCreateString(aArray.length)
    if newArray.length
      Int numIndices = aArray.length
      Int i = 0
      while i < aArray.length
        numIndices -= 1
        newArray[i] = aArray[numIndices]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayReverseString")
    endif
  endif
  return newArray
endfunction
  ;>>> 'fill' empty values
;--> cArrayReplace.*(replaceThis = (None,0,0.0,""), withThis = filler)
  ;>>> Clear all values
;--> 'clear' == cArrayReplace.*(replaceThis = (irrelevant), withThis = (None,0,0.0,""), forceAll = TRUE)
; OR
;--> 'clear' == cArrayCreate.*()
  ;>>> Add new value to end
;--> 'push' == cArrayResize.*(newSize = aArray.length + 1, filler = new value)
  ;>>> Remove Index [allows Pop & Shift behavior] (returns new array)
;--> 'shift' mimic cArrayRemoveIndex.*(indexToRemove == 0)
;--> 'pop'   mimic cArrayRemoveIndex.*(indexToRemove == aArray.length)
  ;>>> Add new index 'unshift'
;--> use cArrayMerge.*
Actor[]  function cArrayRemoveIndexActor(Actor[] aArray, Int indexToRemove = 0, Bool usePapUtil = TRUE) global 
  ; indexToRemove == -1 means the last index
  {Requirements: None, PapyrusUtil:Soft}
  Actor[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveIndexActor", "!aArray", "")
  else
    if indexToRemove == -1 ; indexToRemove == -1 means remove the last index
      indexToRemove = aArray.length - 1
    elseif !cIsBetweenInt(indexToRemove, 0, aArray.length - 1)
      cErrInvalidArg("cArrayRemoveIndexActor", "!cIsBetweenInt(indexToRemove, 0, aArray.length - 1)")
    else
      if usePapUtil && clibUse.cUsePapUtil()
        Actor[] head
        Actor[] tail
        if indexToRemove
          head = PapyrusUtil.SliceActorArray(aArray, 0, indexToRemove)
        endif
        if indexToRemove < aArray.length - 1
          tail = PapyrusUtil.SliceActorArray(aArray, indexToRemove + 1)
        endif
        newArray = PapyrusUtil.MergeActorArray(head, tail)
      else
        Int newSize = aArray.length - 1
        newArray = cArrayCreateActor(newSize)
        if newArray.length
          Int i = 0
          Int j = 0
          while i < aArray.length
            if i != indexToRemove
              newArray[j] = aArray[i]
              j += 1
            endif
            i += 1
          endwhile
        else
          cErrArrInitFail("cArrayRemoveIndexActor")
        endif
      endif
    endif
  endif
  return newArray
endfunction
Alias[]  function cArrayRemoveIndexAlias(Alias[] aArray, Int indexToRemove = 0, Bool usePapUtil = TRUE) global 
  ; indexToRemove == -1 means the last index
  {Requirements: None, PapyrusUtil:Soft}
  Alias[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveIndexAlias", "!aArray", "")
  else
    if indexToRemove == -1 ; indexToRemove == -1 means remove the last index
      indexToRemove = aArray.length - 1
    elseif !cIsBetweenInt(indexToRemove, 0, aArray.length - 1)
      cErrInvalidArg("cArrayRemoveIndexAlias", "!cIsBetweenInt(indexToRemove, 0, aArray.length - 1)")
    else
      if usePapUtil && clibUse.cUsePapUtil()
        Alias[] head
        Alias[] tail
        if indexToRemove
          head = PapyrusUtil.SliceAliasArray(aArray, 0, indexToRemove)
        endif
        if indexToRemove < aArray.length - 1
          tail = PapyrusUtil.SliceAliasArray(aArray, indexToRemove + 1)
        endif
        newArray = PapyrusUtil.MergeAliasArray(head, tail)
      else
        Int newSize = aArray.length - 1
        newArray = cArrayCreateAlias(newSize)
        if newArray.length
          Int i = 0
          Int j = 0
          while i < aArray.length
            if i != indexToRemove
              newArray[j] = aArray[i]
              j += 1
            endif
            i += 1
          endwhile
        else
          cErrArrInitFail("cArrayRemoveIndexAlias")
        endif
      endif
    endif
  endif
  return newArray
endfunction
Bool[]   function cArrayRemoveIndexBool(Bool[] aArray, Int indexToRemove = 0, Bool usePapUtil = TRUE) global 
  ; indexToRemove == -1 means the last index
  {Requirements: None, PapyrusUtil:Soft}
  Bool[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveIndexBool", "!aArray", "")
  else
    if indexToRemove == -1 ; indexToRemove == -1 means remove the last index
      indexToRemove = aArray.length - 1
    elseif !cIsBetweenInt(indexToRemove, 0, aArray.length - 1)
      cErrInvalidArg("cArrayRemoveIndexBool", "!cIsBetweenInt(indexToRemove, 0, aArray.length - 1)")
    else
      if usePapUtil && clibUse.cUsePapUtil()
        Bool[] head
        Bool[] tail
        if indexToRemove
          head = PapyrusUtil.SliceBoolArray(aArray, 0, indexToRemove)
        endif
        if indexToRemove < aArray.length - 1
          tail = PapyrusUtil.SliceBoolArray(aArray, indexToRemove + 1)
        endif
        newArray = PapyrusUtil.MergeBoolArray(head, tail)
      else
        Int newSize = aArray.length - 1
        newArray = cArrayCreateBool(newSize)
        if newArray.length
          Int i = 0
          Int j = 0
          while i < aArray.length
            if i != indexToRemove
              newArray[j] = aArray[i]
              j += 1
            endif
            i += 1
          endwhile
        else
          cErrArrInitFail("cArrayRemoveIndexBool")
        endif
      endif
    endif
  endif
  return newArray
endfunction
Float[]  function cArrayRemoveIndexFloat(Float[] aArray, Int indexToRemove = 0, Bool usePapUtil = TRUE) global 
  ; indexToRemove == -1 means the last index
  {Requirements: None, PapyrusUtil:Soft}
  Float[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveIndexFloat", "!aArray", "")
  else
    if indexToRemove == -1 ; indexToRemove == -1 means remove the last index
      indexToRemove = aArray.length - 1
    elseif !cIsBetweenInt(indexToRemove, 0, aArray.length - 1)
      cErrInvalidArg("cArrayRemoveIndexFloat", "!cIsBetweenInt(indexToRemove, 0, aArray.length - 1)")
    else
      if usePapUtil && clibUse.cUsePapUtil()
        Float[] head
        Float[] tail
        if indexToRemove
          head = PapyrusUtil.SliceFloatArray(aArray, 0, indexToRemove)
        endif
        if indexToRemove < aArray.length - 1
          tail = PapyrusUtil.SliceFloatArray(aArray, indexToRemove + 1)
        endif
        newArray = PapyrusUtil.MergeFloatArray(head, tail)
      else
        Int newSize = aArray.length - 1
        newArray = cArrayCreateFloat(newSize)
        if newArray.length
          Int i = 0
          Int j = 0
          while i < aArray.length
            if i != indexToRemove
              newArray[j] = aArray[i]
              j += 1
            endif
            i += 1
          endwhile
        else
          cErrArrInitFail("cArrayRemoveIndexFloat")
        endif
      endif
    endif
  endif
  return newArray
endfunction
Form[]   function cArrayRemoveIndexForm(Form[] aArray, Int indexToRemove = 0, Bool usePapUtil = TRUE) global 
  ; indexToRemove == -1 means the last index
  {Requirements: None, PapyrusUtil:Soft}
  Form[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveIndexForm", "!aArray", "")
  else
    if indexToRemove == -1 ; indexToRemove == -1 means remove the last index
      indexToRemove = aArray.length - 1
    elseif !cIsBetweenInt(indexToRemove, 0, aArray.length - 1)
      cErrInvalidArg("cArrayRemoveIndexForm", "indexToRemove")
    else
      if usePapUtil && clibUse.cUsePapUtil()
        Form[] head
        Form[] tail
        if indexToRemove
          head = PapyrusUtil.SliceFormArray(aArray, 0, indexToRemove)
        endif
        if indexToRemove < aArray.length - 1
          tail = PapyrusUtil.SliceFormArray(aArray, indexToRemove + 1)
        endif
        newArray = PapyrusUtil.MergeFormArray(head, tail)
      else
        Int newSize = aArray.length - 1
        newArray = cArrayCreateForm(newSize)
        if newArray.length
          Int i = 0
          Int j = 0
          while i < aArray.length
            if i != indexToRemove
              newArray[j] = aArray[i]
              j += 1
            endif
            i += 1
          endwhile
        else
          cErrArrInitFail("cArrayRemoveIndexForm")
        endif
      endif
    endif
  endif
  return newArray
endfunction
Int[]    function cArrayRemoveIndexInt(Int[] aArray, Int indexToRemove = 0, Bool usePapUtil = TRUE) global 
  ; indexToRemove == -1 means the last index
  {Requirements: None, PapyrusUtil:Soft}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveIndexInt", "!aArray")
  else
    if indexToRemove == -1 ; indexToRemove == -1 means remove the last index
      indexToRemove = aArray.length - 1
    elseif !cIsBetweenInt(indexToRemove, 0, aArray.length - 1)
      cErrInvalidArg("cArrayRemoveIndexInt", "!cIsBetweenInt(indexToRemove, 0, aArray.length - 1)")
    else
      if usePapUtil && clibUse.cUsePapUtil()
        Int[] head
        Int[] tail
        if indexToRemove
          head = PapyrusUtil.SliceIntArray(aArray, 0, indexToRemove)
        endif
        if indexToRemove < aArray.length - 1
          tail = PapyrusUtil.SliceIntArray(aArray, indexToRemove + 1)
        endif
        newArray = PapyrusUtil.MergeIntArray(head, tail)
      else
        Int newSize = aArray.length - 1
        newArray = cArrayCreateInt(newSize)
        if newArray.length
          Int i = 0
          Int j = 0
          while i < aArray.length
            if i != indexToRemove
              newArray[j] = aArray[i]
              j += 1
            endif
            i += 1
          endwhile
        else
          cErrArrInitFail("cArrayRemoveIndexInt")
        endif
      endif
    endif
  endif
  return newArray
endfunction
ObjectReference[] function cArrayRemoveIndexObjRef(ObjectReference[] aArray, Int indexToRemove = 0, \
  Bool usePapUtil = TRUE) global 
  ; indexToRemove == -1 means the last index
  {Requirements: None, PapyrusUtil:Soft}
  ObjectReference[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveIndexObjRef", "!aArray", "")
  else
    if indexToRemove == -1 ; indexToRemove == -1 means remove the last index
      indexToRemove = aArray.length - 1
    elseif !cIsBetweenInt(indexToRemove, 0, aArray.length - 1)
      cErrInvalidArg("cArrayRemoveIndexObjRef", "indexToRemove")
    else
      if usePapUtil && clibUse.cUsePapUtil()
        ObjectReference[] head
        ObjectReference[] tail
        if indexToRemove
          head = PapyrusUtil.SliceObjRefArray(aArray, 0, indexToRemove)
        endif
        if indexToRemove < aArray.length - 1
          tail = PapyrusUtil.SliceObjRefArray(aArray, indexToRemove + 1)
        endif
        newArray = PapyrusUtil.MergeObjRefArray(head, tail)
      else
        Int newSize = aArray.length - 1
        newArray = cArrayCreateObjRef(newSize)
        if newArray.length
          Int i = 0
          Int j = 0
          while i < aArray.length
            if i != indexToRemove
              newArray[j] = aArray[i]
              j += 1
            endif
            i += 1
          endwhile
        else
          cErrArrInitFail("cArrayRemoveIndexObjRef")
        endif
      endif
    endif
  endif
  return newArray
endfunction
String[] function cArrayRemoveIndexString(String[] aArray, Int indexToRemove = 0, Bool usePapUtil = TRUE) global 
  ; indexToRemove == -1 means the last index
  {Requirements: None, PapyrusUtil:Soft}
  String[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveIndexString", "!aArray")
  else
    if indexToRemove == -1 ; indexToRemove == -1 means remove the last index
      indexToRemove = aArray.length - 1
    elseif !cIsBetweenInt(indexToRemove, 0, aArray.length - 1)
      cErrInvalidArg("cArrayRemoveIndexString", "indexToRemove")
    else
      if usePapUtil && clibUse.cUsePapUtil()
        String[] head
        String[] tail
        if indexToRemove
          head = PapyrusUtil.SliceStringArray(aArray, 0, indexToRemove)
        endif
        if indexToRemove < aArray.length - 1
          tail = PapyrusUtil.SliceStringArray(aArray, indexToRemove + 1)
        endif
        newArray = PapyrusUtil.MergeStringArray(head, tail)
      else
        Int newSize = aArray.length - 1
        newArray = cArrayCreateString(newSize)
        if newArray.length
          Int i = 0
          Int j = 0
          while i < aArray.length
            if i != indexToRemove
              newArray[j] = aArray[i]
              j += 1
            endif
            i += 1
          endwhile
        else
          cErrArrInitFail("cArrayRemoveIndexString")
        endif
      endif
    endif
  endif
  return newArray
endfunction
  ;>>> Supply with array of ints and this removes those IndICES then returns new array
Actor[]  function cArrayRemoveIndicesActor(Actor[] aArray, Int[] indicesToRemove, Int stopLength = 0) global
  {Requirements: None}
  Actor[] newArray
  if !indicesToRemove
    cErrInvalidArg("cArrayRemoveIndicesActor", "!indicesToRemove", "")
  elseif !aArray
    cErrInvalidArg("cArrayRemoveIndicesActor", "!aArray", "")
  else
    Int newLength = cTernaryInt(stopLength, aArray.length - stopLength, aArray.length - indicesToRemove.length)
    if newLength
      newArray = cArrayCreateActor(newLength)
      if newArray.length
        Int k = 0
        Int j = 0
        Int i = 0
        while i < aArray.length
          if i != indicesToRemove[k]
            newArray[j] = aArray[i]
            j += 1
          else
            k += 1
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayRemoveIndicesActor")
      endif
    else
      clibTrace("cArrayRemoveIndicesActor", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
Alias[]  function cArrayRemoveIndicesAlias(Alias[] aArray, Int[] indicesToRemove, Int stopLength = 0) global
  {Requirements: None}
  Alias[] newArray
  if !indicesToRemove
    cErrInvalidArg("cArrayRemoveIndicesAlias", "!indicesToRemove", "")
  elseif !aArray
    cErrInvalidArg("cArrayRemoveIndicesAlias", "!aArray", "")
  else
    Int newLength = cTernaryInt(stopLength, aArray.length - stopLength, aArray.length - indicesToRemove.length)
    if newLength
      newArray = cArrayCreateAlias(newLength)
      if newArray.length
        Int k = 0
        Int j = 0
        Int i = 0
        while i < aArray.length
          if i != indicesToRemove[k]
            newArray[j] = aArray[i]
            j += 1
          else
            k += 1
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayRemoveIndicesAlias")
      endif
    else
      clibTrace("cArrayRemoveIndicesAlias", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
Bool[]   function cArrayRemoveIndicesBool(Bool[] aArray, Int[] indicesToRemove, Int stopLength = 0) global
  {Requirements: None}
  Bool[] newArray
  if !indicesToRemove
    cErrInvalidArg("cArrayRemoveIndicesBool", "!indicesToRemove", "")
  elseif !aArray
    cErrInvalidArg("cArrayRemoveIndicesBool", "!aArray", "")
  else
    Int newLength = cTernaryInt(stopLength, aArray.length - stopLength, aArray.length - indicesToRemove.length)
    if newLength
      newArray = cArrayCreateBool(newLength)
      if newArray.length
        Int k = 0
        Int j = 0
        Int i = 0
        while i < aArray.length
          if i != indicesToRemove[k]
            newArray[j] = aArray[i]
            j += 1
          else
            k += 1
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayRemoveIndicesBool")
      endif
    else
      clibTrace("cArrayRemoveIndicesBool", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
Float[]  function cArrayRemoveIndicesFloat(Float[] aArray, Int[] indicesToRemove, Int stopLength = 0) global
  {Requirements: None}
  Float[] newArray
  if !indicesToRemove
    cErrInvalidArg("cArrayRemoveIndicesFloat", "!indicesToRemove", "")
  elseif !aArray
    cErrInvalidArg("cArrayRemoveIndicesFloat", "!aArray", "")
  else
    Int newLength = cTernaryInt(stopLength, aArray.length - stopLength, aArray.length - indicesToRemove.length)
    if newLength
      newArray = cArrayCreateFloat(newLength)
      if newArray.length
        Int k = 0
        Int j = 0
        Int i = 0
        while i < aArray.length
          if i != indicesToRemove[k]
            newArray[j] = aArray[i]
            j += 1
          else
            k += 1
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayRemoveIndicesFloat")
      endif
    else
      clibTrace("cArrayRemoveIndicesFloat", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
Form[]   function cArrayRemoveIndicesForm(Form[] aArray, Int[] indicesToRemove, Int stopLength = 0) global
  {Requirements: None}
  Form[] newArray
  if !indicesToRemove
    cErrInvalidArg("cArrayRemoveIndicesForm", "!indicesToRemove", "")
  elseif !aArray
    cErrInvalidArg("cArrayRemoveIndicesForm", "!aArray", "")
  else
    Int newLength = cTernaryInt(stopLength, aArray.length - stopLength, aArray.length - indicesToRemove.length)
    if newLength
      newArray = cArrayCreateForm(newLength)
      if newArray.length
        Int k = 0
        Int j = 0
        Int i = 0
        while i < aArray.length
          if i != indicesToRemove[k]
            newArray[j] = aArray[i]
            j += 1
          else
            k += 1
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayRemoveIndicesForm")
      endif
    else
      clibTrace("cArrayRemoveIndicesForm", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
Int[]    function cArrayRemoveIndicesInt(Int[] aArray, Int[] indicesToRemove, Int stopLength = 0) global
  {Requirements: None}
  Int[] newArray
  if !indicesToRemove
    cErrInvalidArg("cArrayRemoveIndicesInt", "!indicesToRemove", "")
  elseif !aArray
    cErrInvalidArg("cArrayRemoveIndicesInt", "!aArray", "")
  else
    Int newLength = cTernaryInt(stopLength, aArray.length - stopLength, aArray.length - indicesToRemove.length)
    if newLength
      newArray = cArrayCreateInt(newLength)
      if newArray.length
        Int k = 0
        Int j = 0
        Int i = 0
        while i < aArray.length
          if i != indicesToRemove[k]
            newArray[j] = aArray[i]
            j += 1
          else
            k += 1
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayRemoveIndicesInt")
      endif
    else
      clibTrace("cArrayRemoveIndicesInt", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
ObjectReference[] function cArrayRemoveIndicesObjRef(ObjectReference[] aArray, Int[] indicesToRemove, \
  Int stopLength = 0) global
  {Requirements: None}
  ObjectReference[] newArray
  if !indicesToRemove
    cErrInvalidArg("cArrayRemoveIndicesObjRef", "!indicesToRemove", "")
  elseif !aArray
    cErrInvalidArg("cArrayRemoveIndicesObjRef", "!aArray", "")
  else
    Int newLength = cTernaryInt(stopLength, aArray.length - stopLength, aArray.length - indicesToRemove.length)
    if newLength
      newArray = cArrayCreateObjRef(newLength)
      if newArray.length
        Int k = 0
        Int j = 0
        Int i = 0
        while i < aArray.length
          if i != indicesToRemove[k]
            newArray[j] = aArray[i]
            j += 1
          else
            k += 1
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayRemoveIndicesObjRef")
      endif
    else
      clibTrace("cArrayRemoveIndicesObjRef", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
String[] function cArrayRemoveIndicesString(String[] aArray, Int[] indicesToRemove, Int stopLength = 0) global
  {Requirements: None}
  String[] newArray
  if !indicesToRemove
    cErrInvalidArg("cArrayRemoveIndicesString", "!indicesToRemove", "")
  elseif !aArray
    cErrInvalidArg("cArrayRemoveIndicesString", "!aArray", "")
  else
    Int newLength = cTernaryInt(stopLength, aArray.length - stopLength, aArray.length - indicesToRemove.length)
    if newLength
      newArray = cArrayCreateString(newLength)
      if newArray.length
        Int k = 0
        Int j = 0
        Int i = 0
        while i < aArray.length
          if i != indicesToRemove[k]
            newArray[j] = aArray[i]
            j += 1
          else
            k += 1
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayRemoveIndicesString")
      endif
    else
      clibTrace("cArrayRemoveIndicesString", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
  ;>>> *Removes* all indices of said value (returns new array)
Actor[]  function cArrayRemoveValueActor(Actor[] aArray, Actor toRemove = None, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Actor[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveValueActor", "!aArray")
  else
    if usePapUtil && clibUse.cUsePapUtil()
      return PapyrusUtil.RemoveActor(aArray, toRemove)
    endif
    Int numToRemove = cArrayCountValueActor(aArray, toRemove)
    if numToRemove
      Int newLength = aArray.length - numToRemove
      newArray = cArrayCreateActor(newLength)
      if newArray.length
        Int j = 0
        Int i = 0
        while j < newLength
          if aArray[i] != toRemove
            newArray[j] = aArray[i]
            j += 1
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayRemoveValueActor")
      endif
    else
      clibTrace("cArrayRemoveValueActor", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
Alias[]  function cArrayRemoveValueAlias(Alias[] aArray, Alias toRemove = None, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Alias[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveValueAlias", "!aArray")
  else
    if usePapUtil && clibUse.cUsePapUtil()
      return PapyrusUtil.RemoveAlias(aArray, toRemove)
    endif
    Int numToRemove = cArrayCountValueAlias(aArray, toRemove)
    if numToRemove
      Int newLength = aArray.length - numToRemove
      newArray = cArrayCreateAlias(newLength)
      if newArray.length
        Int j = 0
        Int i = 0
        while j < newLength
          if aArray[i] != toRemove
            newArray[j] = aArray[i]
            j += 1
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayRemoveValueAlias")
      endif
    else
      clibTrace("cArrayRemoveValueAlias", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
Bool[]   function cArrayRemoveValueBool(Bool[] aArray, Bool toRemove = False, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Bool[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveValueBool", "!aArray")
  else
    if usePapUtil && clibUse.cUsePapUtil()
      return PapyrusUtil.RemoveBool(aArray, toRemove)
    endif
    Int numToRemove = cArrayCountValueBool(aArray, toRemove)
    if numToRemove
      Int newLength = aArray.length - numToRemove
      newArray = cArrayCreateBool(newLength)
      if newArray.length
        Int j = 0
        Int i = 0
        while j < newLength
          if aArray[i] != toRemove
            newArray[j] = aArray[i]
            j += 1
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayRemoveValueBool")
      endif
    else
      clibTrace("cArrayRemoveValueBool", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
Float[]  function cArrayRemoveValueFloat(Float[] aArray, Float toRemove = 0.0, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Float[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveValueFloat", "!aArray")
  else
    if usePapUtil && clibUse.cUsePapUtil()
      return PapyrusUtil.RemoveFloat(aArray, toRemove)
    endif
    Int numToRemove = cArrayCountValueFloat(aArray, toRemove)
    if numToRemove
      Int newLength = aArray.length - numToRemove
      newArray = cArrayCreateFloat(newLength)
      if newArray.length
        Int j = 0
        Int i = 0
        while j < newLength
          if aArray[i] != toRemove
            newArray[j] = aArray[i]
            j += 1
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayRemoveValueFloat")
      endif
    else
      clibTrace("cArrayRemoveValueFloat", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
Form[]   function cArrayRemoveValueForm(Form[] aArray, Form toRemove = None, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Form[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveValueForm", "!aArray", "")
  else
    if usePapUtil && clibUse.cUsePapUtil()
      return PapyrusUtil.RemoveForm(aArray, toRemove)
    endif
    Int numToRemove = cArrayCountValueForm(aArray, toRemove)
    if numToRemove
      Int newLength = aArray.length - numToRemove
      newArray = cArrayCreateForm(newLength)
      if newArray.length
        Int j = 0
        Int i = 0
        while j < newLength
          if aArray[i] != toRemove
            newArray[j] = aArray[i]
            j += 1
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayRemoveValueForm")
      endif
    else
      clibTrace("cArrayRemoveValueForm", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
Int[]    function cArrayRemoveValueInt(Int[] aArray, Int toRemove = 0, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveValueInt", "!aArray", "")
  else
    if usePapUtil && clibUse.cUsePapUtil()
      return PapyrusUtil.RemoveInt(aArray, toRemove)
    endif
    Int numToRemove = cArrayCountValueInt(aArray, toRemove)
    if numToRemove
      Int newLength = aArray.length - numToRemove
      newArray = cArrayCreateInt(newLength)
      if newArray.length
        Int j = 0
        Int i = 0
        while j < newLength
          if aArray[i] != toRemove
            newArray[j] = aArray[i]
            j += 1
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayRemoveValueInt")
      endif
    else
      clibTrace("cArrayRemoveValueInt", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
ObjectReference[] function cArrayRemoveValueObjRef(ObjectReference[] aArray, ObjectReference toRemove = None, \
  Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  ObjectReference[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveValueObjRef", "!aArray")
  else
    if usePapUtil && clibUse.cUsePapUtil()
      return PapyrusUtil.RemoveObjRef(aArray, toRemove)
    endif
    Int numToRemove = cArrayCountValueObjRef(aArray, toRemove)
    if numToRemove
      Int newLength = aArray.length - numToRemove
      newArray = cArrayCreateObjRef(newLength)
      if newArray.length
        Int j = 0
        Int i = 0
        while j < newLength
          if aArray[i] != toRemove
            newArray[j] = aArray[i]
            j += 1
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayRemoveValueObjRef")
      endif
    else
      clibTrace("cArrayRemoveValueObjRef", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
String[] function cArrayRemoveValueString(String[] aArray, String toRemove = "", Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  String[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveValueString", "!aArray", "")
  else
    if usePapUtil && clibUse.cUsePapUtil()
      return PapyrusUtil.RemoveString(aArray, toRemove)
    endif
    Int numToRemove = cArrayCountValueString(aArray, toRemove)
    if numToRemove
      Int newLength = aArray.length - numToRemove
      newArray = cArrayCreateString(newLength)
      if newArray.length
        Int j = 0
        Int i = 0
        while j < newLength
          if aArray[i] != toRemove
            newArray[j] = aArray[i]
            j += 1
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayRemoveValueString")
      endif
    else
      clibTrace("cArrayRemoveValueString", "After processing no indices remain! Returning ArrayNone", 0)
    endif
  endif
  return newArray
endfunction
  ;>>> Array copying
    ;--> Returns new array copy
Actor[]  function cArrayCopyActor(Actor[] aArray) global
  {Requirements: None}
  Actor[] newArray
  if !aArray
    cErrInvalidArg("cArrayCopyActor", "!aArray", "")
  else
    newArray = cArrayCreateActor(aArray.length)
    if newArray.length
      Int i = 0
      while i < aArray.length
        newArray[i] = aArray[i]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayCopyActor")
    endif
  endif
  return newArray
endfunction
Alias[]  function cArrayCopyAlias(Alias[] aArray) global
  {Requirements: None}
  Alias[] newArray
  if !aArray
    cErrInvalidArg("cArrayCopyAlias", "!aArray", "")
  else
    newArray = cArrayCreateAlias(aArray.length)
    if newArray.length
      Int i = 0
      while i < aArray.length
        newArray[i] = aArray[i]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayCopyAlias")
    endif
  endif
  return newArray
endfunction
Bool[]   function cArrayCopyBool(Bool[] aArray) global
  {Requirements: None}
  Bool[] newArray
  if !aArray
    cErrInvalidArg("cArrayCopyBool", "!aArray", "")
  else
    newArray = cArrayCreateBool(aArray.length)
    if newArray.length
      Int i = 0
      while i < aArray.length
        newArray[i] = aArray[i]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayCopyBool")
    endif
  endif
  return newArray
endfunction
Float[]  function cArrayCopyFloat(Float[] aArray) global
  {Requirements: None}
  Float[] newArray
  if !aArray
    cErrInvalidArg("cArrayCopyFloat", "!aArray", "")
  else
    newArray = cArrayCreateFloat(aArray.length)
    if newArray.length
      Int i = 0
      while i < aArray.length
        newArray[i] = aArray[i]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayCopyFloat")
    endif
  endif
  return newArray
endfunction
Form[]   function cArrayCopyForm(Form[] aArray) global
  {Requirements: None}
  Form[] newArray
  if !aArray
    cErrInvalidArg("cArrayCopyForm", "!aArray", "")
  else
    newArray = cArrayCreateForm(aArray.length)
    if newArray.length
      Int i = 0
      while i < aArray.length
        newArray[i] = aArray[i]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayCopyForm")
    endif
  endif
  return newArray
endfunction
Int[]    function cArrayCopyInt(Int[] aArray) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayCopyInt", "!aArray", "")
  else
    newArray = cArrayCreateInt(aArray.length)
    if newArray.length
      Int i = 0
      while i < aArray.length
        newArray[i] = aArray[i]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayCopyInt")
    endif
  endif
  return newArray
endfunction
ObjectReference[] function cArrayCopyObjRef(ObjectReference[] aArray) global
  {Requirements: None}
  ObjectReference[] newArray
  if !aArray
    cErrInvalidArg("cArrayCopyObjRef", "!aArray", "")
  else
    newArray = cArrayCreateObjectReference(aArray.length)
    if newArray.length
      Int i = 0
      while i < aArray.length
        newArray[i] = aArray[i]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayCopyObjRef")
    endif
  endif
  return newArray
endfunction
String[] function cArrayCopyString(String[] aArray) global
  {Requirements: None}
  String[] newArray
  if !aArray
    cErrInvalidArg("cArrayCopyString", "!aArray", "")
  else
    newArray = cArrayCreateString(aArray.length)
    if newArray.length
      Int i = 0
      while i < aArray.length
        newArray[i] = aArray[i]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayCopyString")
    endif
  endif
  return newArray
endfunction
  ;--> Copies aArray1 to aArray2 then returns aArray2
Actor[]  function cArrayCopyToActor(Actor[] aArray1, Actor[] aArray2, Actor filler = None) global
  {Requirements: None}
  ; just copies one array to another, can be used for arrays of any size whether SKSE is installed or not
  if !aArray1
    cErrInvalidArg("cArrayCopyToActor", "!aArray1")
  elseif !aArray2
    cErrInvalidArg("cArrayCopyToActor", "!aArray2")
  else
    Int i = 0
    while i < aArray2.length
      if i < aArray1.length
        aArray2[i] = aArray1[i]
      elseif filler
        aArray2[i] = filler
      else
        i = aArray2.length
      endif
      i += 1
    endwhile
  endif
  return aArray2
endfunction
Alias[]  function cArrayCopyToAlias(Alias[] aArray1, Alias[] aArray2, Alias filler = None) global
  {Requirements: None}
  ; just copies one array to another, can be used for arrays of any size whether SKSE is installed or not
  if !aArray1
    cErrInvalidArg("cArrayCopyToAlias", "!aArray1")
  elseif !aArray2
    cErrInvalidArg("cArrayCopyToAlias", "!aArray2")
  else
    Int i = 0
    while i < aArray2.length
      if i < aArray1.length
        aArray2[i] = aArray1[i]
      elseif filler
        aArray2[i] = filler
      else
        i = aArray2.length
      endif
      i += 1
    endwhile
  endif
  return aArray2
endfunction
Bool[]   function cArrayCopyToBool(Bool[] aArray1, Bool[] aArray2, Bool filler = False) global
  {Requirements: None}
  ; just copies one array to another, can be used for arrays of any size whether SKSE is installed or not
  if !aArray1
    cErrInvalidArg("cArrayCopyToBool", "!aArray1")
  elseif !aArray2
    cErrInvalidArg("cArrayCopyToBool", "!aArray2")
  else
    Int i = 0
    while i < aArray2.length
      if i < aArray1.length
        aArray2[i] = aArray1[i]
      elseif filler
        aArray2[i] = filler
      else
        i = aArray2.length
      endif
      i += 1
    endwhile
  endif
  return aArray2
endfunction
Float[]  function cArrayCopyToFloat(Float[] aArray1, Float[] aArray2, Float filler = 0.0) global
  {Requirements: None}
  ; just copies one array to another, can be used for arrays of any size whether SKSE is installed or not
  if !aArray1
    cErrInvalidArg("cArrayCopyToFloat", "!aArray1")
  elseif !aArray2
    cErrInvalidArg("cArrayCopyToFloat", "!aArray2")
  else
    Int i = 0
    while i < aArray2.length
      if i < aArray1.length
        aArray2[i] = aArray1[i]
      elseif filler
        aArray2[i] = filler
      else
        i = aArray2.length
      endif
      i += 1
    endwhile
  endif
  return aArray2
endfunction
Form[]   function cArrayCopyToForm(Form[] aArray1, Form[] aArray2, Form filler = None) global
  {Requirements: None}
  ; just copies one array to another, can be used for arrays of any size whether SKSE is installed or not
  if !aArray1
    cErrInvalidArg("cArrayCopyToForm", "!aArray1")
  elseif !aArray2
    cErrInvalidArg("cArrayCopyToForm", "!aArray2")
  else
    Int i = 0
    while i < aArray2.length
      if i < aArray1.length
        aArray2[i] = aArray1[i]
      elseif filler
        aArray2[i] = filler
      else
        i = aArray2.length
      endif
      i += 1
    endwhile
  endif
  return aArray2
endfunction
Int[]    function cArrayCopyToInt(Int[] aArray1, Int[] aArray2, Int filler = 0) global
  {Requirements: None}
  ; just copies one array to another, can be used for arrays of any size whether SKSE is installed or not
  if !aArray1
    cErrInvalidArg("cArrayCopyToInt", "!aArray1")
  elseif !aArray2
    cErrInvalidArg("cArrayCopyToInt", "!aArray2")
  else
    Int i = 0
    while i < aArray2.length
      if i < aArray1.length
        aArray2[i] = aArray1[i]
      elseif filler
        aArray2[i] = filler
      else
        i = aArray2.length
      endif
      i += 1
    endwhile
  endif
  return aArray2
endfunction
ObjectReference[] function cArrayCopyToObjRef(ObjectReference[] aArray1, ObjectReference[] aArray2, \
  ObjectReference filler = None) global
  {Requirements: None}
  ; just copies one array to another, can be used for arrays of any size whether SKSE is installed or not
  if !aArray1
    cErrInvalidArg("cArrayCopyToObjRef", "!aArray1")
  elseif !aArray2
    cErrInvalidArg("cArrayCopyToObjRef", "!aArray2")
  else
    Int i = 0
    while i < aArray2.length
      if i < aArray1.length
        aArray2[i] = aArray1[i]
      elseif filler
        aArray2[i] = filler
      else
        i = aArray2.length
      endif
      i += 1
    endwhile
  endif
  return aArray2
endfunction
String[] function cArrayCopyToString(String[] aArray1, String[] aArray2, String filler = "") global
  {Requirements: None}
  ; just copies one array to another, can be used for arrays of any size whether SKSE is installed or not
  if !aArray1
    cErrInvalidArg("cArrayCopyToString", "!aArray1")
  elseif !aArray2
    cErrInvalidArg("cArrayCopyToString", "!aArray2")
  else
    Int i = 0
    while i < aArray2.length
      if i < aArray1.length
        aArray2[i] = aArray1[i]
      elseif filler
        aArray2[i] = filler
      else
        i = aArray2.length
      endif
      i += 1
    endwhile
  endif
  return aArray2
endfunction
  ;>>> Resizing (mixed return, SKSE = resize original, vanilla = new copy)
    ; clampMinLength, clampMaxLength allows 'automated' conditional length
Actor[]  function cArrayResizeActor(Actor[] aArray, Int newSize, Actor filler = None, Int clampMinLength = -1, \
  Int clampMaxLength = -1, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Actor[] newArray
  if !aArray
    cErrInvalidArg("cArrayResizeActor", "!aArray", "")
  elseif newSize < 1
    cErrInvalidArg("cArrayResizeActor", "newSize < 1", "")
  elseif clampMinLength != -1 && clampMinLength < 0
    cErrInvalidArg("cArrayResizeActor", "newSize < 1", "")
  else
    if (clampMinLength != -1) && (newSize < clampMinLength)
      newSize = clampMinLength
    endif
    if (clampMaxLength != -1) && (newSize > clampMaxLength)
      newSize = clampMaxLength
    endif
    if usePapUtil && clibUse.cUsePapUtil()
      newArray = PapyrusUtil.ResizeActorArray(aArray, newSize, filler)
    else
      newArray = cArrayCreateActor(newSize, filler)
      if newArray.length
        Int i = 0
        while i < newArray.length
          if i < aArray.length
            newArray[i] = aArray[i]
          else
            newArray[i] = filler
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayResizeActor")
      endif
    endif
  endif
  return newArray
endfunction
Alias[]  function cArrayResizeAlias(Alias[] aArray, Int newSize, Alias filler = None, Int clampMinLength = -1, \
  Int clampMaxLength = -1, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Alias[] newArray
  if !aArray
    cErrInvalidArg("cArrayResizeAlias", "!aArray", "")
  elseif newSize < 1
    cErrInvalidArg("cArrayResizeAlias", "newSize < 1", "")
  elseif clampMinLength != -1 && clampMinLength < 0
    cErrInvalidArg("cArrayResizeAlias", "newSize < 1", "")
  else
    if (clampMinLength != -1) && (newSize < clampMinLength)
      newSize = clampMinLength
    endif
    if (clampMaxLength != -1) && (newSize > clampMaxLength)
      newSize = clampMaxLength
    endif
    if usePapUtil && clibUse.cUsePapUtil()
      newArray = PapyrusUtil.ResizeAliasArray(aArray, newSize, filler)
    else
      newArray = cArrayCreateAlias(newSize, filler)
      if newArray.length
        Int i = 0
        while i < newArray.length
          if i < aArray.length
            newArray[i] = aArray[i]
          else
            newArray[i] = filler
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayResizeAlias")
      endif
    endif
  endif
  return newArray
endfunction
Bool[]   function cArrayResizeBool(Bool[] aArray, Int newSize, Bool filler = False, Int clampMinLength = -1, \
  Int clampMaxLength = -1, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Bool[] newArray
  if !aArray
    cErrInvalidArg("cArrayResizeBool", "!aArray", "")
  elseif newSize < 1
    cErrInvalidArg("cArrayResizeBool", "newSize < 1", "")
  elseif clampMinLength != -1 && clampMinLength < 0
    cErrInvalidArg("cArrayResizeBool", "newSize < 1", "")
  else
    if (clampMinLength != -1) && (newSize < clampMinLength)
      newSize = clampMinLength
    endif
    if (clampMaxLength != -1) && (newSize > clampMaxLength)
      newSize = clampMaxLength
    endif
    if usePapUtil && clibUse.cUsePapUtil()
      newArray = PapyrusUtil.ResizeBoolArray(aArray, newSize, filler)
    else
      newArray = cArrayCreateBool(newSize, filler)
      if newArray.length
        Int i = 0
        while i < newArray.length
          if i < aArray.length
            newArray[i] = aArray[i]
          else
            newArray[i] = filler
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayResizeBool")
      endif
    endif
  endif
  return newArray
endfunction
Float[]  function cArrayResizeFloat(Float[] aArray, Int newSize, Float filler = 0.0, Int clampMinLength = -1, \
  Int clampMaxLength = -1, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Float[] newArray
  if !aArray
    cErrInvalidArg("cArrayResizeFloat", "!aArray", "")
  elseif newSize < 1
    cErrInvalidArg("cArrayResizeFloat", "newSize < 1", "")
  elseif clampMinLength != -1 && clampMinLength < 0
    cErrInvalidArg("cArrayResizeFloat", "newSize < 1", "")
  else
    if (clampMinLength != -1) && (newSize < clampMinLength)
      newSize = clampMinLength
    endif
    if (clampMaxLength != -1) && (newSize > clampMaxLength)
      newSize = clampMaxLength
    endif
    if usePapUtil && clibUse.cUsePapUtil()
      newArray = PapyrusUtil.ResizeFloatArray(aArray, newSize, filler)
    else
      newArray = cArrayCreateFloat(newSize, filler)
      if newArray.length
        Int i = 0
        while i < newArray.length
          if i < aArray.length
            newArray[i] = aArray[i]
          else
            newArray[i] = filler
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayResizeFloat")
      endif
    endif
  endif
  return newArray
endfunction
Form[]   function cArrayResizeForm(Form[] aArray, Int newSize, Form filler = None, Int clampMinLength = -1, \
  Int clampMaxLength = -1, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Form[] newArray
  if !aArray
    cErrInvalidArg("cArrayResizeForm", "!aArray", "")
  elseif newSize < 1
    cErrInvalidArg("cArrayResizeForm", "newSize < 1", "")
  elseif clampMinLength != -1 && clampMinLength < 0
    cErrInvalidArg("cArrayResizeForm", "newSize < 1", "")
  else
    if (clampMinLength != -1) && (newSize < clampMinLength)
      newSize = clampMinLength
    endif
    if (clampMaxLength != -1) && (newSize > clampMaxLength)
      newSize = clampMaxLength
    endif
    if usePapUtil && clibUse.cUsePapUtil()
      newArray = PapyrusUtil.ResizeFormArray(aArray, newSize, filler)
    else
      newArray = cArrayCreateForm(newSize, filler)
      if newArray.length
        Int i = 0
        while i < newArray.length
          if i < aArray.length
            newArray[i] = aArray[i]
          else
            newArray[i] = filler
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayResizeForm")
      endif
    endif
  endif
  return newArray
endfunction
Int[]    function cArrayResizeInt(Int[] aArray, Int newSize, Int filler = 0, Int clampMinLength = -1, \
  Int clampMaxLength = -1, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayResizeInt", "!aArray", "")
  elseif newSize < 1
    cErrInvalidArg("cArrayResizeInt", "newSize < 1", "")
  elseif clampMinLength != -1 && clampMinLength < 0
    cErrInvalidArg("cArrayResizeInt", "newSize < 1", "")
  else
    if (clampMinLength != -1) && (newSize < clampMinLength)
      newSize = clampMinLength
    endif
    if (clampMaxLength != -1) && (newSize > clampMaxLength)
      newSize = clampMaxLength
    endif
    if usePapUtil && clibUse.cUsePapUtil()
      newArray = PapyrusUtil.ResizeIntArray(aArray, newSize, filler)
    else
      newArray = cArrayCreateInt(newSize, filler)
      if newArray.length
        Int i = 0
        while i < newArray.length
          if i < aArray.length
            newArray[i] = aArray[i]
          else
            newArray[i] = filler
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayResizeInt")
      endif
    endif
  endif
  return newArray
endfunction
ObjectReference[] function cArrayResizeObjRef(ObjectReference[] aArray, Int newSize, ObjectReference filler = None, \
  Int clampMinLength = -1, Int clampMaxLength = -1, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  ObjectReference[] newArray
  if !aArray
    cErrInvalidArg("cArrayResizeObjRef", "!aArray", "")
  elseif newSize < 1
    cErrInvalidArg("cArrayResizeObjRef", "newSize < 1", "")
  elseif clampMinLength != -1 && clampMinLength < 0
    cErrInvalidArg("cArrayResizeObjRef", "newSize < 1", "")
  else
    if (clampMinLength != -1) && (newSize < clampMinLength)
      newSize = clampMinLength
    endif
    if (clampMaxLength != -1) && (newSize > clampMaxLength)
      newSize = clampMaxLength
    endif
    if usePapUtil && clibUse.cUsePapUtil()
      newArray = PapyrusUtil.ResizeObjRefArray(aArray, newSize, filler)
    else
      newArray = cArrayCreateObjRef(newSize, filler)
      if newArray.length
        Int i = 0
        while i < newArray.length
          if i < aArray.length
            newArray[i] = aArray[i]
          else
            newArray[i] = filler
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayResizeObjRef")
      endif
    endif
  endif
  return newArray
endfunction
String[] function cArrayResizeString(String[] aArray, Int newSize, String filler = "", Int clampMinLength = -1, \
  Int clampMaxLength = -1, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  String[] newArray
  if !aArray
    cErrInvalidArg("cArrayResizeString", "!aArray", "")
  elseif newSize < 1
    cErrInvalidArg("cArrayResizeString", "newSize < 1", "")
  elseif clampMinLength != -1 && clampMinLength < 0
    cErrInvalidArg("cArrayResizeString", "newSize < 1", "")
  else
    if (clampMinLength != -1) && (newSize < clampMinLength)
      newSize = clampMinLength
    endif
    if (clampMaxLength != -1) && (newSize > clampMaxLength)
      newSize = clampMaxLength
    endif
    if usePapUtil && clibUse.cUsePapUtil()
      newArray = PapyrusUtil.ResizeStringArray(aArray, newSize, filler)
    else
      newArray = cArrayCreateString(newSize, filler)
      if newArray.length
        Int i = 0
        while i < newArray.length
          if i < aArray.length
            newArray[i] = aArray[i]
          else
            newArray[i] = filler
          endif
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayResizeString")
      endif
    endif
  endif
  return newArray
endfunction
  ;>>> Slice copies a portion of aArray to new array and returns it
Actor[]  function cArraySliceActor(Actor[] aArray, Int fromIndex, Int toIndex = 0, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Actor[] newArray
  if !aArray
    cErrInvalidArg("cArraySliceActor", "!aArray")
  elseif fromIndex < 0
    cErrInvalidArg("cArraySliceActor", "fromIndex < 0")
  elseif toIndex < fromIndex
    cErrInvalidArg("cArraySliceActor", "toIndex < fromIndex")
  elseif !cIsBetweenInt(fromIndex, 1, aArray.length - 1)
    cErrInvalidArg("cArraySliceActor", "!cIsBetweenInt(fromIndex, 1, aArray.length - 1)")
  elseif !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)
    cErrInvalidArg("cArraySliceActor", "!orNumIndices && !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)")
  elseif usePapUtil && clibUse.cUsePapUtil()
    newArray = PapyrusUtil.SliceActorArray(aArray, fromIndex, toIndex)
  else
    Int newLength = toIndex - fromIndex + 1
    if newLength
      newArray = cArrayCreateActor(newLength)
      if newArray.length
        Int j = 0
        Int i = fromIndex
        while j < newArray.length
          newArray[j] = aArray[i]
          j += 1
          i += 1
        endwhile
      else
        cErrArrInitFail("cArraySliceActor")
      endif
    else
      cErrInvalidArg("cArraySliceActor", "!newLength")
    endif
  endif
  return newArray
endfunction
Alias[]  function cArraySliceAlias(Alias[] aArray, Int fromIndex, Int toIndex = 0, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Alias[] newArray
  if !aArray
    cErrInvalidArg("cArraySliceAlias", "!aArray")
  elseif fromIndex < 0
    cErrInvalidArg("cArraySliceAlias", "fromIndex < 0")
  elseif toIndex < fromIndex
    cErrInvalidArg("cArraySliceAlias", "toIndex < fromIndex")
  elseif !cIsBetweenInt(fromIndex, 1, aArray.length - 1)
    cErrInvalidArg("cArraySliceAlias", "!cIsBetweenInt(fromIndex, 1, aArray.length - 1)")
  elseif !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)
    cErrInvalidArg("cArraySliceAlias", "!orNumIndices && !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)")
  elseif usePapUtil && clibUse.cUsePapUtil()
    newArray = PapyrusUtil.SliceAliasArray(aArray, fromIndex, toIndex)
  else
    Int newLength = toIndex - fromIndex + 1
    if newLength
      newArray = cArrayCreateAlias(newLength)
      if newArray.length
        Int j = 0
        Int i = fromIndex
        while j < newArray.length
          newArray[j] = aArray[i]
          j += 1
          i += 1
        endwhile
      else
        cErrArrInitFail("cArraySliceAlias")
      endif
    else
      cErrInvalidArg("cArraySliceAlias", "!newLength")
    endif
  endif
  return newArray
endfunction
Bool[]   function cArraySliceBool(Bool[] aArray, Int fromIndex, Int toIndex = 0, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Bool[] newArray
  if !aArray
    cErrInvalidArg("cArraySliceBool", "!aArray")
  elseif fromIndex < 0
    cErrInvalidArg("cArraySliceBool", "fromIndex < 0")
  elseif toIndex < fromIndex
    cErrInvalidArg("cArraySliceBool", "toIndex < fromIndex")
  elseif !cIsBetweenInt(fromIndex, 1, aArray.length - 1)
    cErrInvalidArg("cArraySliceBool", "!cIsBetweenInt(fromIndex, 1, aArray.length - 1)")
  elseif !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)
    cErrInvalidArg("cArraySliceBool", "!orNumIndices && !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)")
  elseif usePapUtil && clibUse.cUsePapUtil()
    newArray = PapyrusUtil.SliceBoolArray(aArray, fromIndex, toIndex)
  else
    Int newLength = toIndex - fromIndex + 1
    if newLength
      newArray = cArrayCreateBool(newLength)
      if newArray.length
        Int j = 0
        Int i = fromIndex
        while j < newArray.length
          newArray[j] = aArray[i]
          j += 1
          i += 1
        endwhile
      else
        cErrArrInitFail("cArraySliceBool")
      endif
    else
      cErrInvalidArg("cArraySliceBool", "!newLength")
    endif
  endif
  return newArray
endfunction
Float[]  function cArraySliceFloat(Float[] aArray, Int fromIndex, Int toIndex = 0, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Float[] newArray
  if !aArray
    cErrInvalidArg("cArraySliceFloat", "!aArray")
  elseif fromIndex < 0
    cErrInvalidArg("cArraySliceFloat", "fromIndex < 0")
  elseif toIndex < fromIndex
    cErrInvalidArg("cArraySliceFloat", "toIndex < fromIndex")
  elseif !cIsBetweenInt(fromIndex, 1, aArray.length - 1)
    cErrInvalidArg("cArraySliceFloat", "!cIsBetweenInt(fromIndex, 1, aArray.length - 1)")
  elseif !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)
    cErrInvalidArg("cArraySliceFloat", "!orNumIndices && !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)")
  elseif usePapUtil && clibUse.cUsePapUtil()
    newArray = PapyrusUtil.SliceFloatArray(aArray, fromIndex, toIndex)
  else
    Int newLength = toIndex - fromIndex + 1
    if newLength
      newArray = cArrayCreateFloat(newLength)
      if newArray.length
        Int j = 0
        Int i = fromIndex
        while j < newArray.length
          newArray[j] = aArray[i]
          j += 1
          i += 1
        endwhile
      else
        cErrArrInitFail("cArraySliceFloat")
      endif
    else
      cErrInvalidArg("cArraySliceFloat", "!newLength")
    endif
  endif
  return newArray
endfunction
Form[]   function cArraySliceForm(Form[] aArray, Int fromIndex, Int toIndex = 0, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Form[] newArray
  if !aArray
    cErrInvalidArg("cArraySliceForm", "!aArray")
  elseif fromIndex < 0
    cErrInvalidArg("cArraySliceForm", "fromIndex < 0")
  elseif toIndex < fromIndex
    cErrInvalidArg("cArraySliceForm", "toIndex < fromIndex")
  elseif !cIsBetweenInt(fromIndex, 1, aArray.length - 1)
    cErrInvalidArg("cArraySliceForm", "!cIsBetweenInt(fromIndex, 1, aArray.length - 1)")
  elseif !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)
    cErrInvalidArg("cArraySliceForm", "!orNumIndices && !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)")
  elseif usePapUtil && clibUse.cUsePapUtil()
    newArray = PapyrusUtil.SliceFormArray(aArray, fromIndex, toIndex)
  else
    Int newLength = toIndex - fromIndex + 1
    if newLength
      newArray = cArrayCreateForm(newLength)
      if newArray.length
        Int j = 0
        Int i = fromIndex
        while j < newArray.length
          newArray[j] = aArray[i]
          j += 1
          i += 1
        endwhile
      else
        cErrArrInitFail("cArraySliceForm")
      endif
    else
      cErrInvalidArg("cArraySliceForm", "!newLength")
    endif
  endif
  return newArray
endfunction
Int[]    function cArraySliceInt(Int[] aArray, Int fromIndex, Int toIndex = 0, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArraySliceInt", "!aArray")
  elseif fromIndex < 0
    cErrInvalidArg("cArraySliceInt", "fromIndex < 0")
  elseif toIndex < fromIndex
    cErrInvalidArg("cArraySliceInt", "toIndex < fromIndex")
  elseif !cIsBetweenInt(fromIndex, 1, aArray.length - 1)
    cErrInvalidArg("cArraySliceInt", "!cIsBetweenInt(fromIndex, 1, aArray.length - 1)")
  elseif !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)
    cErrInvalidArg("cArraySliceInt", "!orNumIndices && !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)")
  elseif usePapUtil && clibUse.cUsePapUtil()
    newArray = PapyrusUtil.SliceIntArray(aArray, fromIndex, toIndex)
  else
    Int newLength = toIndex - fromIndex + 1
    if newLength
      newArray = cArrayCreateInt(newLength)
      if newArray.length
        Int j = 0
        Int i = fromIndex
        while j < newArray.length
          newArray[j] = aArray[i]
          j += 1
          i += 1
        endwhile
      else
        cErrArrInitFail("cArraySliceInt")
      endif
    else
      cErrInvalidArg("cArraySliceInt", "!newLength")
    endif
  endif
  return newArray
endfunction
ObjectReference[] function cArraySliceObjRef(ObjectReference[] aArray, Int fromIndex, Int toIndex = 0, \
  Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  ObjectReference[] newArray
  if !aArray
    cErrInvalidArg("cArraySliceObjectReference", "!aArray")
  elseif fromIndex < 0
    cErrInvalidArg("cArraySliceObjectReference", "fromIndex < 0")
  elseif toIndex < fromIndex
    cErrInvalidArg("cArraySliceObjectReference", "toIndex < fromIndex")
  elseif !cIsBetweenInt(fromIndex, 1, aArray.length - 1)
    cErrInvalidArg("cArraySliceObjectReference", "!cIsBetweenInt(fromIndex, 1, aArray.length - 1)")
  elseif !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)
    cErrInvalidArg("cArraySliceObjectReference", "!orNumIndices && !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)")
  elseif usePapUtil && clibUse.cUsePapUtil()
    newArray = PapyrusUtil.SliceObjRefArray(aArray, fromIndex, toIndex)
  else
    Int newLength = toIndex - fromIndex + 1
    if newLength
      newArray = cArrayCreateObjRef(newLength)
      if newArray.length
        Int j = 0
        Int i = fromIndex
        while j < newArray.length
          newArray[j] = aArray[i]
          j += 1
          i += 1
        endwhile
      else
        cErrArrInitFail("cArraySliceObjectReference")
      endif
    else
      cErrInvalidArg("cArraySliceObjectReference", "!newLength")
    endif
  endif
  return newArray
endfunction
String[] function cArraySliceString(String[] aArray, Int fromIndex, Int toIndex = 0, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  String[] newArray
  if !aArray
    cErrInvalidArg("cArraySliceString", "!aArray")
  elseif fromIndex < 0
    cErrInvalidArg("cArraySliceString", "fromIndex < 0")
  elseif toIndex < fromIndex
    cErrInvalidArg("cArraySliceString", "toIndex < fromIndex")
  elseif !cIsBetweenInt(fromIndex, 1, aArray.length - 1)
    cErrInvalidArg("cArraySliceString", "!cIsBetweenInt(fromIndex, 1, aArray.length - 1)")
  elseif !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)
    cErrInvalidArg("cArraySliceString", "!orNumIndices && !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)")
  elseif usePapUtil && clibUse.cUsePapUtil()
    newArray = PapyrusUtil.SliceStringArray(aArray, fromIndex, toIndex)
  else
    Int newLength = toIndex - fromIndex + 1
    if newLength
      newArray = cArrayCreateString(newLength)
      if newArray.length
        Int j = 0
        Int i = fromIndex
        while j < newArray.length
          newArray[j] = aArray[i]
          j += 1
          i += 1
        endwhile
      else
        cErrArrInitFail("cArraySliceString")
      endif
    else
      cErrInvalidArg("cArraySliceString", "!newLength")
    endif
  endif
  return newArray
endfunction
  ;>>> Inserts an array into another (returns new array)
Actor[]  function cArraySpliceActor(Actor[] aArray, Actor[] toInsert, Int insertAtIndex = 0) global
  {Requirements: None}
  Actor[] newArray
  if !aArray
    cErrInvalidArg("cArraySpliceActors", "!aArray")
  elseif !toInsert
    cErrInvalidArg("cArraySpliceActors", "!toInsert")
  elseif insertAtIndex < 0
    cErrInvalidArg("cArraySpliceActors", "insertAtIndex < 0")
  elseif insertAtIndex > aArray.length
    cErrInvalidArg("cArraySpliceActors", "insertAtIndex > (aArray.length - 1)")
  else
    Int newLength = aArray.length + toInsert.length
    newArray = cArrayCreateActor(newLength)
    if newArray.length
      Int i = 0
      Int j = 0
      Int k = 0
      while i < insertAtIndex
        newArray[i] = aArray[j]
        i += 1
        j += 1
      endwhile
      while k < toInsert.length
        newArray[i] = toInsert[k]
        i += 1
        k += 1
      endwhile
      while j < aArray.length
        newArray[i] = aArray[j]
        i += 1
        j += 1
      endwhile
    else
      cErrArrInitFail("cArraySpliceActor")
    endif
  endif
  return newArray
endfunction
Alias[]  function cArraySpliceAlias(Alias[] aArray, Alias[] toInsert, Int insertAtIndex = 0) global
  {Requirements: None}
  Alias[] newArray
  if !aArray
    cErrInvalidArg("cArraySpliceAliass", "!aArray")
  elseif !toInsert
    cErrInvalidArg("cArraySpliceAliass", "!toInsert")
  elseif insertAtIndex < 0
    cErrInvalidArg("cArraySpliceAliass", "insertAtIndex < 0")
  elseif insertAtIndex > aArray.length
    cErrInvalidArg("cArraySpliceAliass", "insertAtIndex > (aArray.length - 1)")
  else
    Int newLength = aArray.length + toInsert.length
    newArray = cArrayCreateAlias(newLength)
    if newArray.length
      Int i = 0
      Int j = 0
      Int k = 0
      while i < insertAtIndex
        newArray[i] = aArray[j]
        i += 1
        j += 1
      endwhile
      while k < toInsert.length
        newArray[i] = toInsert[k]
        i += 1
        k += 1
      endwhile
      while j < aArray.length
        newArray[i] = aArray[j]
        i += 1
        j += 1
      endwhile
    else
      cErrArrInitFail("cArraySpliceAlias")
    endif
  endif
  return newArray
endfunction
Bool[]   function cArraySpliceBool(Bool[] aArray, Bool[] toInsert, Int insertAtIndex = 0) global
  {Requirements: None}
  Bool[] newArray
  if !aArray
    cErrInvalidArg("cArraySpliceBools", "!aArray")
  elseif !toInsert
    cErrInvalidArg("cArraySpliceBools", "!toInsert")
  elseif insertAtIndex < 0
    cErrInvalidArg("cArraySpliceBools", "insertAtIndex < 0")
  elseif insertAtIndex > aArray.length
    cErrInvalidArg("cArraySpliceBools", "insertAtIndex > (aArray.length - 1)")
  else
    Int newLength = aArray.length + toInsert.length
    newArray = cArrayCreateBool(newLength)
    if newArray.length
      Int i = 0
      Int j = 0
      Int k = 0
      while i < insertAtIndex
        newArray[i] = aArray[j]
        i += 1
        j += 1
      endwhile
      while k < toInsert.length
        newArray[i] = toInsert[k]
        i += 1
        k += 1
      endwhile
      while j < aArray.length
        newArray[i] = aArray[j]
        i += 1
        j += 1
      endwhile
    else
      cErrArrInitFail("cArraySpliceBool")
    endif
  endif
  return newArray
endfunction
Float[]  function cArraySpliceFloat(Float[] aArray, Float[] toInsert, Int insertAtIndex = 0) global
  {Requirements: None}
  Float[] newArray
  if !aArray
    cErrInvalidArg("cArraySpliceFloats", "!aArray")
  elseif !toInsert
    cErrInvalidArg("cArraySpliceFloats", "!toInsert")
  elseif insertAtIndex < 0
    cErrInvalidArg("cArraySpliceFloats", "insertAtIndex < 0")
  elseif insertAtIndex > aArray.length
    cErrInvalidArg("cArraySpliceFloats", "insertAtIndex > (aArray.length - 1)")
  else
    Int newLength = aArray.length + toInsert.length
    newArray = cArrayCreateFloat(newLength)
    if newArray.length
      Int i = 0
      Int j = 0
      Int k = 0
      while i < insertAtIndex
        newArray[i] = aArray[j]
        i += 1
        j += 1
      endwhile
      while k < toInsert.length
        newArray[i] = toInsert[k]
        i += 1
        k += 1
      endwhile
      while j < aArray.length
        newArray[i] = aArray[j]
        i += 1
        j += 1
      endwhile
    else
      cErrArrInitFail("cArraySpliceFloat")
    endif
  endif
  return newArray
endfunction
Form[]   function cArraySpliceForm(Form[] aArray, Form[] toInsert, Int insertAtIndex = 0) global
  {Requirements: None}
  Form[] newArray
  if !aArray
    cErrInvalidArg("cArraySpliceForms", "!aArray")
  elseif !toInsert
    cErrInvalidArg("cArraySpliceForms", "!toInsert")
  elseif insertAtIndex < 0
    cErrInvalidArg("cArraySpliceForms", "insertAtIndex < 0")
  elseif insertAtIndex > aArray.length
    cErrInvalidArg("cArraySpliceForms", "insertAtIndex > (aArray.length - 1)")
  else
    Int newLength = aArray.length + toInsert.length
    newArray = cArrayCreateForm(newLength)
    if newArray.length
      Int i = 0
      Int j = 0
      Int k = 0
      while i < insertAtIndex
        newArray[i] = aArray[j]
        i += 1
        j += 1
      endwhile
      while k < toInsert.length
        newArray[i] = toInsert[k]
        i += 1
        k += 1
      endwhile
      while j < aArray.length
        newArray[i] = aArray[j]
        i += 1
        j += 1
      endwhile
    else
      cErrArrInitFail("cArraySpliceForm")
    endif
  endif
  return newArray
endfunction
Int[]    function cArraySpliceInt(Int[] aArray, Int[] toInsert, Int insertAtIndex = 0) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArraySpliceInts", "!aArray")
  elseif !toInsert
    cErrInvalidArg("cArraySpliceInts", "!toInsert")
  elseif insertAtIndex < 0
    cErrInvalidArg("cArraySpliceInts", "insertAtIndex < 0")
  elseif insertAtIndex > aArray.length
    cErrInvalidArg("cArraySpliceInts", "insertAtIndex > (aArray.length - 1)")
  else
    Int newLength = aArray.length + toInsert.length
    newArray = cArrayCreateInt(newLength)
    if newArray.length
      Int i = 0
      Int j = 0
      Int k = 0
      while i < insertAtIndex
        newArray[i] = aArray[j]
        i += 1
        j += 1
      endwhile
      while k < toInsert.length
        newArray[i] = toInsert[k]
        i += 1
        k += 1
      endwhile
      while j < aArray.length
        newArray[i] = aArray[j]
        i += 1
        j += 1
      endwhile
    else
      cErrArrInitFail("cArraySpliceInt")
    endif
  endif
  return newArray
endfunction
ObjectReference[] function cArraySpliceObjRef(ObjectReference[] aArray, ObjectReference[] toInsert, \
  Int insertAtIndex = 0) global
  {Requirements: None}
  ObjectReference[] newArray
  if !aArray
    cErrInvalidArg("cArraySpliceObjectReferences", "!aArray")
  elseif !toInsert
    cErrInvalidArg("cArraySpliceObjectReferences", "!toInsert")
  elseif insertAtIndex < 0
    cErrInvalidArg("cArraySpliceObjectReferences", "insertAtIndex < 0")
  elseif insertAtIndex > aArray.length
    cErrInvalidArg("cArraySpliceObjectReferences", "insertAtIndex > (aArray.length - 1)")
  else
    Int newLength = aArray.length + toInsert.length
    newArray = cArrayCreateObjRef(newLength)
    if newArray.length
      Int i = 0
      Int j = 0
      Int k = 0
      while i < insertAtIndex
        newArray[i] = aArray[j]
        i += 1
        j += 1
      endwhile
      while k < toInsert.length
        newArray[i] = toInsert[k]
        i += 1
        k += 1
      endwhile
      while j < aArray.length
        newArray[i] = aArray[j]
        i += 1
        j += 1
      endwhile
    else
      cErrArrInitFail("cArraySpliceObjRef")
    endif
  endif
  return newArray
endfunction
String[] function cArraySpliceString(String[] aArray, String[] toInsert, Int insertAtIndex = 0) global
  {Requirements: None}
  String[] newArray
  if !aArray
    cErrInvalidArg("cArraySpliceStrings", "!aArray")
  elseif !toInsert
    cErrInvalidArg("cArraySpliceStrings", "!toInsert")
  elseif insertAtIndex < 0
    cErrInvalidArg("cArraySpliceStrings", "insertAtIndex < 0")
  elseif insertAtIndex > aArray.length
    cErrInvalidArg("cArraySpliceStrings", "insertAtIndex > (aArray.length - 1)")
  else
    Int newLength = aArray.length + toInsert.length
    newArray = cArrayCreateString(newLength)
    if newArray.length
      Int i = 0
      Int j = 0
      Int k = 0
      while i < insertAtIndex
        newArray[i] = aArray[j]
        i += 1
        j += 1
      endwhile
      while k < toInsert.length
        newArray[i] = toInsert[k]
        i += 1
        k += 1
      endwhile
      while j < aArray.length
        newArray[i] = aArray[j]
        i += 1
        j += 1
      endwhile
    else
      cErrArrInitFail("cArraySpliceString")
    endif
  endif
  return newArray
endfunction
  ;>>> Merging (returns new array)
Actor[]  function cArrayMergeActor(Actor[] aArray1, Actor[] aArray2, Bool useSKSE = TRUE, Bool usePapUtil = TRUE) global
  {Requirements: None, SKSE:Soft, PapyrusUtil:Soft}
  Actor[] newArray
  ;if !aArray1 && !aArray2
  ;  cErrInvalidArg("cArrayMergeActor", "aArray1 && aArray2", "")
  ;else
  ; NO ARGUMENT CHECK FOR MERGE COULD BE INTENTIONAL
    if usePapUtil && clibUse.cUsePapUtil()
      return PapyrusUtil.MergeActorArray(aArray1, aArray2)
    endif
    Int newSize = aArray1.length + aArray2.length
    newArray = cArrayCreateActor(newSize)
    if newArray.length
      Int i = 0
      Int j = 0
      while i < newArray.length
        if i < aArray1.length
          newArray[i] = aArray1[i]
        else
          newArray[i] = aArray2[j]
          j += 1
        endif
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayMergeActor")
    endif
  ;endif
  return newArray
endfunction
Alias[]  function cArrayMergeAlias(Alias[] aArray1, Alias[] aArray2, Bool useSKSE = TRUE, Bool usePapUtil = TRUE) global
  {Requirements: None, SKSE:Soft, PapyrusUtil:Soft}
  Alias[] newArray
  ;if !aArray1 && !aArray2
  ;  cErrInvalidArg("cArrayMergeAlias", "aArray1 && aArray2", "")
  ;else
  ; NO ARGUMENT CHECK FOR MERGE COULD BE INTENTIONAL
    if usePapUtil && clibUse.cUsePapUtil()
      return PapyrusUtil.MergeAliasArray(aArray1, aArray2)
    endif
    Int newSize = aArray1.length + aArray2.length
    newArray = cArrayCreateAlias(newSize)
    if newArray.length
      Int i = 0
      Int j = 0
      while i < newArray.length
        if i < aArray1.length
          newArray[i] = aArray1[i]
        else
          newArray[i] = aArray2[j]
          j += 1
        endif
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayMergeAlias")
    endif
  ;endif
  return newArray
endfunction
Bool[]   function cArrayMergeBool(Bool[] aArray1, Bool[] aArray2, Bool useSKSE = TRUE, Bool usePapUtil = TRUE) global
  {Requirements: None, SKSE:Soft, PapyrusUtil:Soft}
  Bool[] newArray
  ;if !aArray1 && !aArray2
  ;  cErrInvalidArg("cArrayMergeBool", "aArray1 && aArray2", "")
  ;else
  ; NO ARGUMENT CHECK FOR MERGE, COULD BE INTENTIONAL
    if usePapUtil && clibUse.cUsePapUtil()
      return PapyrusUtil.MergeBoolArray(aArray1, aArray2)
    endif
    newArray = cArrayCreateBool(aArray1.length + aArray2.length)
    if newArray.length
      Int i = 0
      Int j = 0
      while i < newArray.length
        if i < aArray1.length
          newArray[i] = aArray1[i]
        else
          newArray[i] = aArray2[j]
          j += 1
        endif
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayMergeBool")
    endif
  ;endif
  return newArray
endfunction
Float[]  function cArrayMergeFloat(Float[] aArray1, Float[] aArray2, Bool useSKSE = TRUE, Bool usePapUtil = TRUE) global
  {Requirements: None, SKSE:Soft, PapyrusUtil:Soft}
  Float[] newArray
  ;if !aArray1 && !aArray2
  ;  cErrInvalidArg("cArrayMergeFloat", "aArray1 && aArray2", "")
  ;else
  ; NO ARGUMENT CHECK FOR MERGE COULD BE INTENTIONAL
    if usePapUtil && clibUse.cUsePapUtil()
      return PapyrusUtil.MergeFloatArray(aArray1, aArray2)
    endif
    Int newSize = aArray1.length + aArray2.length
    newArray = cArrayCreateFloat(newSize)
    if newArray.length
      Int i = 0
      Int j = 0
      while i < newArray.length
        if i < aArray1.length
          newArray[i] = aArray1[i]
        else
          newArray[i] = aArray2[j]
          j += 1
        endif
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayMergeFloat")
    endif
  ;endif
  return newArray
endfunction
Form[]   function cArrayMergeForm(Form[] aArray1, Form[] aArray2, Bool useSKSE = TRUE, Bool usePapUtil = TRUE) global
  {Requirements: None, SKSE:Soft, PapyrusUtil:Soft}
  Form[] newArray
  ;if !aArray1 && !aArray2
  ;  cErrInvalidArg("cArrayMergeForm", "aArray1 && aArray2", "")
  ;else
  ; NO ARGUMENT CHECK FOR MERGE COULD BE INTENTIONAL
    if usePapUtil && clibUse.cUsePapUtil()
      return PapyrusUtil.MergeFormArray(aArray1, aArray2)
    endif
    Int newSize = aArray1.length + aArray2.length
    newArray = cArrayCreateForm(newSize)
    if newArray.length
      Int i = 0
      Int j = 0
      while i < newArray.length
        if i < aArray1.length
          newArray[i] = aArray1[i]
        else
          newArray[i] = aArray2[j]
          j += 1
        endif
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayMergeForm")
    endif
  ;endif
  return newArray
endfunction
Int[]    function cArrayMergeInt(Int[] aArray1, Int[] aArray2, Bool useSKSE = TRUE, Bool usePapUtil = TRUE) global
  {Requirements: None, SKSE:Soft, PapyrusUtil:Soft}
  Int[] newArray
  ;if !aArray1 && !aArray2
  ;  cErrInvalidArg("cArrayMergeInt", "aArray1 && aArray2", "")
  ;else
  ; NO ARGUMENT CHECK FOR MERGE COULD BE INTENTIONAL
    if usePapUtil && clibUse.cUsePapUtil()
      return PapyrusUtil.MergeIntArray(aArray1, aArray2)
    endif
    Int newSize = aArray1.length + aArray2.length
    newArray = cArrayCreateInt(newSize)
    if newArray.length
      Int i = 0
      Int j = 0
      while i < newArray.length
        if i < aArray1.length
          newArray[i] = aArray1[i]
        else
          newArray[i] = aArray2[j]
          j += 1
        endif
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayMergeInt")
    endif
  ;endif
  return newArray
endfunction
ObjectReference[] function cArrayMergeObjRef(ObjectReference[] aArray1, ObjectReference[] aArray2, Bool useSKSE = TRUE,\
  Bool usePapUtil = TRUE) global
  {Requirements: None, SKSE:Soft, PapyrusUtil:Soft}
  ObjectReference[] newArray
  ;if !aArray1 && !aArray2
  ;  cErrInvalidArg("cArrayMergeObjRef", "aArray1 && aArray2", "")
  ;else
  ; NO ARGUMENT CHECK FOR MERGE COULD BE INTENTIONAL
    if usePapUtil && clibUse.cUsePapUtil()
      return PapyrusUtil.MergeObjRefArray(aArray1, aArray2)
    endif
    Int newSize = aArray1.length + aArray2.length
    newArray = cArrayCreateObjRef(newSize)
    if newArray.length
      Int i = 0
      Int j = 0
      while i < newArray.length
        if i < aArray1.length
          newArray[i] = aArray1[i]
        else
          newArray[i] = aArray2[j]
          j += 1
        endif
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayMergeObjRef")
    endif
  ;endif
  return newArray
endfunction
String[] function cArrayMergeString(String[] aArray1, String[] aArray2, Bool useSKSE = TRUE, \
  Bool usePapUtil = TRUE) global
  {Requirements: None, SKSE:Soft, PapyrusUtil:Soft}
  String[] newArray
  ;if !aArray1 && !aArray2
  ;  cErrInvalidArg("cArrayMergeString", "aArray1 && aArray2", "")
  ;else
  ; NO ARGUMENT CHECK FOR MERGE COULD BE INTENTIONAL
    if usePapUtil && clibUse.cUsePapUtil()
      return PapyrusUtil.MergeStringArray(aArray1, aArray2)
    endif
    Int newSize = aArray1.length + aArray2.length
    newArray = cArrayCreateString(newSize)
    if newArray.length
      Int i = 0
      Int j = 0
      while i < newArray.length
        if i < aArray1.length
          newArray[i] = aArray1[i]
        else
          newArray[i] = aArray2[j]
          j += 1
        endif
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayMergeString")
    endif
  ;endif
  return newArray
endfunction

;====== CREATION
  ;>>> See cStringToArray() in "String" section above
  ;>>> Array from separated values (10 each)
Actor[]  function cArrayFromActors(Actor aActor0, Actor aActor1 = None, Actor aActor2 = None, \
    Actor aActor3 = None, Actor aActor4 = None, Actor aActor5 = None, Actor aActor6 = None, Actor aActor7 = None, \
      Actor aActor8 = None, Actor aActor9 = None, Bool skipTrailingNone = TRUE) global
  {Requirements: None}
  Int arrayLength
  if skipTrailingNone
    if aActor0 != None
      arrayLength = 1
    endif
    if aActor1 != None
      arrayLength = 2
    endif
    if aActor2 != None
      arrayLength = 3
    endif
    if aActor3 != None
      arrayLength = 4
    endif
    if aActor4 != None
      arrayLength = 5
    endif
    if aActor5 != None
      arrayLength = 6
    endif
    if aActor6 != None
      arrayLength = 7
    endif
    if aActor7 != None
      arrayLength = 8
    endif
    if aActor8 != None
      arrayLength = 9
    endif
    if aActor9 != None
      arrayLength = 10
    endif
  endif
  Actor[] newArray = cArrayCreateActor(arrayLength)
  if newArray.length
    Int i = 0
    if i < arrayLength
      newArray[i] = aActor0
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aActor1
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aActor2
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aActor3
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aActor4
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aActor5
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aActor6
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aActor7
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aActor8
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aActor9
    endif
  else
    cErrArrInitFail("cArrayFromActors")
  endif
  return newArray
endfunction
Alias[]  function cArrayFromAliases(Alias aAlias0, Alias aAlias1 = None, Alias aAlias2 = None, \
    Alias aAlias3 = None, Alias aAlias4 = None, Alias aAlias5 = None, Alias aAlias6 = None, Alias aAlias7 = None, \
      Alias aAlias8 = None, Alias aAlias9 = None, Bool skipTrailingNone = TRUE) global
  {Requirements: None}
  Int arrayLength
  if skipTrailingNone
    if aAlias0 != None
      arrayLength = 1
    endif
    if aAlias1 != None
      arrayLength = 2
    endif
    if aAlias2 != None
      arrayLength = 3
    endif
    if aAlias3 != None
      arrayLength = 4
    endif
    if aAlias4 != None
      arrayLength = 5
    endif
    if aAlias5 != None
      arrayLength = 6
    endif
    if aAlias6 != None
      arrayLength = 7
    endif
    if aAlias7 != None
      arrayLength = 8
    endif
    if aAlias8 != None
      arrayLength = 9
    endif
    if aAlias9 != None
      arrayLength = 10
    endif
  endif
  Alias[] newArray = cArrayCreateAlias(arrayLength)
  if newArray.length
    Int i = 0
    if i < arrayLength
      newArray[i] = aAlias0
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aAlias1
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aAlias2
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aAlias3
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aAlias4
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aAlias5
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aAlias6
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aAlias7
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aAlias8
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aAlias9
    endif
  else
    cErrArrInitFail("cArrayFromAliass")
  endif
  return newArray
endfunction
Float[]  function cArrayFromFloats(Float aFloat0, Float aFloat1 = 0.0, Float aFloat2 = 0.0, \
    Float aFloat3 = 0.0, Float aFloat4 = 0.0, Float aFloat5 = 0.0, Float aFloat6 = 0.0, Float aFloat7 = 0.0, \
      Float aFloat8 = 0.0, Float aFloat9 = 0.0, Bool skipTrailingZero = TRUE) global
  {Requirements: None}
  Int arrayLength
  if skipTrailingZero
    if aFloat0 != 0.0
      arrayLength = 1
    endif
    if aFloat1 != 0.0
      arrayLength = 2
    endif
    if aFloat2 != 0.0
      arrayLength = 3
    endif
    if aFloat3 != 0.0
      arrayLength = 4
    endif
    if aFloat4 != 0.0
      arrayLength = 5
    endif
    if aFloat5 != 0.0
      arrayLength = 6
    endif
    if aFloat6 != 0.0
      arrayLength = 7
    endif
    if aFloat7 != 0.0
      arrayLength = 8
    endif
    if aFloat8 != 0.0
      arrayLength = 9
    endif
    if aFloat9 != 0.0
      arrayLength = 10
    endif
  endif
  Float[] newArray = cArrayCreateFloat(arrayLength)
  if newArray.length
    Int i = 0
    if i < arrayLength
      newArray[i] = aFloat0
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aFloat1
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aFloat2
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aFloat3
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aFloat4
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aFloat5
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aFloat6
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aFloat7
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aFloat8
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aFloat9
    endif
  else
    cErrArrInitFail("cArrayFromFloats")
  endif
  return newArray
endfunction
Form[]   function cArrayFromForms(Form aForm0, Form aForm1 = None, Form aForm2 = None, Form aForm3 = None, \
    Form aForm4 = None, Form aForm5 = None, Form aForm6 = None, Form aForm7 = None, Form aForm8 = None, \
      Form aForm9 = None, Bool skipTrailingNone = TRUE) global
  {Requirements: None}
  Int arrayLength
  if skipTrailingNone
    if aForm0 != None
      arrayLength = 1
    endif
    if aForm1 != None
      arrayLength = 2
    endif
    if aForm2 != None
      arrayLength = 3
    endif
    if aForm3 != None
      arrayLength = 4
    endif
    if aForm4 != None
      arrayLength = 5
    endif
    if aForm5 != None
      arrayLength = 6
    endif
    if aForm6 != None
      arrayLength = 7
    endif
    if aForm7 != None
      arrayLength = 8
    endif
    if aForm8 != None
      arrayLength = 9
    endif
    if aForm9 != None
      arrayLength = 10
    endif
  endif
  Form[] newArray = cArrayCreateForm(arrayLength)
  if newArray.length
    Int i = 0
    if i < arrayLength
      newArray[i] = aForm0
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aForm1
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aForm2
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aForm3
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aForm4
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aForm5
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aForm6
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aForm7
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aForm8
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aForm9
    endif
  else
    cErrArrInitFail("cArrayFromForms")
  endif
  return newArray
endfunction
Int[]    function cArrayFromInts(Int aInt0, Int aInt1 = 0, Int aInt2 = 0, \
    Int aInt3 = 0, Int aInt4 = 0, Int aInt5 = 0, Int aInt6 = 0, Int aInt7 = 0, \
      Int aInt8 = 0, Int aInt9 = 0, Bool skipTrailingZero = TRUE) global
  {Requirements: None}
  Int arrayLength
  Int i
  if skipTrailingZero
    if aInt0 != 0
      arrayLength = 1
    endif
    if aInt1 != 0
      arrayLength = 2
    endif
    if aInt2 != 0
      arrayLength = 3
    endif
    if aInt3 != 0
      arrayLength = 4
    endif
    if aInt4 != 0
      arrayLength = 5
    endif
    if aInt5 != 0
      arrayLength = 6
    endif
    if aInt6 != 0
      arrayLength = 7
    endif
    if aInt7 != 0
      arrayLength = 8
    endif
    if aInt8 != 0
      arrayLength = 9
    endif
    if aInt9 != 0
      arrayLength = 10
    endif
  endif
  Int[] newArray = cArrayCreateInt(arrayLength)
  if newArray.length
    i = 0
    if i < arrayLength
      newArray[i] = aInt0
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aInt1
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aInt2
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aInt3
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aInt4
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aInt5
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aInt6
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aInt7
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aInt8
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aInt9
    endif
  else
    cErrArrInitFail("cArrayFromInts")
  endif
  return newArray
endfunction
ObjectReference[]  function cArrayFromObjRefs(ObjectReference aObjRef0, ObjectReference aObjRef1 = None, \
   ObjectReference aObjRef2 = None, ObjectReference aObjRef3 = None, ObjectReference aObjRef4 = None, \
    ObjectReference aObjRef5 = None, ObjectReference aObjRef6 = None, ObjectReference aObjRef7 = None, \
      ObjectReference aObjRef8 = None, ObjectReference aObjRef9 = None, Bool skipTrailingNone = TRUE) global
  {Requirements: None}
  Int arrayLength
  if skipTrailingNone
    if aObjRef0 != None
      arrayLength = 1
    endif
    if aObjRef1 != None
      arrayLength = 2
    endif
    if aObjRef2 != None
      arrayLength = 3
    endif
    if aObjRef3 != None
      arrayLength = 4
    endif
    if aObjRef4 != None
      arrayLength = 5
    endif
    if aObjRef5 != None
      arrayLength = 6
    endif
    if aObjRef6 != None
      arrayLength = 7
    endif
    if aObjRef7 != None
      arrayLength = 8
    endif
    if aObjRef8 != None
      arrayLength = 9
    endif
    if aObjRef9 != None
      arrayLength = 10
    endif
  endif
  ObjectReference[] newArray = cArrayCreateObjRef(arrayLength)
  if newArray.length
    Int i = 0
    if i < arrayLength
      newArray[i] = aObjRef0
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aObjRef1
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aObjRef2
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aObjRef3
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aObjRef4
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aObjRef5
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aObjRef6
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aObjRef7
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aObjRef8
      i += 1
    endif
    if i < arrayLength
      newArray[i] = aObjRef9
    endif
  else
    cErrArrInitFail("cArrayFromObjRefs")
  endif
  return newArray
endfunction
String[] function cArrayFromStrings(String aString0, String aString1 = "", String aString2 = "", \
    String aString3 = "", String aString4 = "", String aString5 = "", String aString6 = "", String aString7 = "", \
      String aString8 = "", String aString9 = "", Bool skipTrailingEmpty = TRUE) global
  {Requirements: None}
  Int newLength
  if skipTrailingEmpty
    newLength = cTernaryInt(aString0 != "", 1, newLength)
    newLength = cTernaryInt(aString1 != "", 2, newLength)
    newLength = cTernaryInt(aString2 != "", 3, newLength)
    newLength = cTernaryInt(aString3 != "", 4, newLength)
    newLength = cTernaryInt(aString4 != "", 5, newLength)
    newLength = cTernaryInt(aString5 != "", 6, newLength)
    newLength = cTernaryInt(aString6 != "", 7, newLength)
    newLength = cTernaryInt(aString7 != "", 8, newLength)
    newLength = cTernaryInt(aString8 != "", 9, newLength)
    newLength = cTernaryInt(aString9 != "", 10, newLength)
  elseif !newLength && !skipTrailingEmpty
    newLength = 10
  endif
  String[] newArray = cArrayCreateString(newLength)
  if newArray.length
    Int i = 0
    if i < newLength
      newArray[i] = aString0
      i += 1
    endif
    if i < newLength
      newArray[i] = aString1
      i += 1
    endif
    if i < newLength
      newArray[i] = aString2
      i += 1
    endif
    if i < newLength
      newArray[i] = aString3
      i += 1
    endif
    if i < newLength
      newArray[i] = aString4
      i += 1
    endif
    if i < newLength
      newArray[i] = aString5
      i += 1
    endif
    if i < newLength
      newArray[i] = aString6
      i += 1
    endif
    if i < newLength
      newArray[i] = aString7
      i += 1
    endif
    if i < newLength
      newArray[i] = aString8
      i += 1
    endif
    if i < newLength
      newArray[i] = aString9
    endif
  else
    cErrArrInitFail("cArrayFromStrings")
  endif
  return newArray
endfunction
  ;>>> None arrays (great for papyrus array spam handling, also 'resets' an array variable)
Actor[]       function cArrayNoneActor() global
  {Requirements: None}
  Actor[] arr
  return arr
endfunction
Alias[]       function cArrayNoneAlias() global
  {Requirements: None}
  Alias[] arr
  return arr
endfunction
Bool[]        function cArrayNoneBool() global
  {Requirements: None}
  Bool[] arr
  return arr
endfunction
Float[]       function cArrayNoneFloat() global
  {Requirements: None}
  Float[] arr
  return arr
endfunction
Form[]        function cArrayNoneForm() global
  {Requirements: None}
  Form[] arr
  return arr
endfunction
Int[]         function cArrayNoneInt() global
  {Requirements: None}
  Int[] arr
  return arr
endfunction
ObjectReference[] function cArrayNoneObjectReference() global
  {Requirements: None}
  ObjectReference[] arr
  return arr
endfunction
ObjectReference[] function cArrayNoneObjRef() global
  {Requirements: None}
  ObjectReference[] arr
  return arr
endfunction
String[]      function cArrayNoneString() global
  {Requirements: None}
  String[] arr
  return arr
endfunction

;------------------------------------------------------------------------------
;-----------------------------c Laboratory Functions---------------------------
;------------------------------------------------------------------------------

  ;>>> Perform pretty much any combination of comparisons against all values in an array
  ;      62 functions for the price of 5 (int, float & String have 14 each)
Bool[] function cArrayDynamicComparisonBool(String operators, Bool this, Bool[] thatArray) global
  {Requirements: None}
  ;Valid operators: ==, !=, &&, ||, !&&, &&!, !&&!, !||, ||!, !||! (10 functions in one)
  ;  e.g. !&& == !this && that ; &&! == this && !that ; !&&! == !this && !that
  Bool[] returnArray
  if !thatArray
    cErrInvalidArg("cArrayDynamicComparisonBool", "!thatArray", "arrayNone")
  else
    returnArray = cArrayCreateBool(thatArray.length) ; if !SKSE watch out for > 128 indices!
    Int i = 0
    while i < thatArray.length
      returnArray[i] = cDynamicComparisonBool(operators, this, thatArray[i])
      i += 1
    endwhile
  endif
  return returnArray
endfunction
Bool[] function cArrayDynamicComparisonFloat(String operators, Float this, Float[] thatArray) global
  {Requirements: None}
  ;Valid operators: ==, !=, &&, ||, !&&, &&!, !&&!, !||, ||!, !||! (10 functions in one)
  ;  e.g. !&& == !this && that ; &&! == this && !that ; !&&! == !this && !that
  Bool[] returnArray
  if !thatArray
    cErrInvalidArg("cArrayDynamicComparisonFloat", "!thatArray", "arrayNone")
  else
    returnArray = cArrayCreateBool(thatArray.length) ; if !SKSE watch out for > 128 indices!
    Int i = 0
    while i < thatArray.length
      returnArray[i] = cDynamicComparisonFloat(operators, this, thatArray[i])
      i += 1
    endwhile
  endif
  return returnArray
endfunction
Bool[] function cArrayDynamicComparisonForm(String operators, Form this, Form[] thatArray) global
  {Requirements: None}
  ;Valid operators: ==, !=, &&, ||, !&&, &&!, !&&!, !||, ||!, !||!
  ;  e.g. !&& == !this && that ; &&! == this && !that ; !&&! == !this && !that
  Bool[] returnArray
  if !thatArray
    cErrInvalidArg("cArrayDynamicComparisonForm", "!thatArray", "arrayNone")
  else
    returnArray = cArrayCreateBool(thatArray.length) ; watch for > 128 indices!
    Int i = 0
    while i < thatArray.length
      returnArray[i] = cDynamicComparisonForm(operators, this, thatArray[i])
      i += 1
    endwhile
  endif
  return returnArray
endfunction
Bool[] function cArrayDynamicComparisonInt(String operators, Int this, Int[] thatArray) global
  {Requirements: None}
  ;Valid operators: ==, !=, &&, ||, !&&, &&!, !&&!, !||, ||!, !||!
  ;  e.g. !&& == !this && that ; &&! == this && !that ; !&&! == !this && !that
  Bool[] returnArray
  if !thatArray
    cErrInvalidArg("cArrayDynamicComparisonInt", "!thatArray", "arrayNone")
  else
    returnArray = cArrayCreateBool(thatArray.length) ; watch for > 128 indices!
    Int i = 0
    while i < thatArray.length
      returnArray[i] = cDynamicComparisonInt(operators, this, thatArray[i])
      i += 1
    endwhile
  endif
  return returnArray
endfunction
Bool[] function cArrayDynamicComparisonString(String operators, String this, String[] thatArray) global
  {Requirements: None}
  ;Valid operators: ==, !=, &&, ||, !&&, &&!, !&&!, !||, ||!, !||!
  ;  e.g. !&& == !this && that ; &&! == this && !that ; !&&! == !this && !that
  Bool[] returnArray
  if !thatArray
    cErrInvalidArg("cArrayDynamicComparisonString", "!thatArray", "arrayNone")
  else
    returnArray = cArrayCreateBool(thatArray.length) ; watch for > 128 indices!
    Int i = 0
    while i < thatArray.length
      returnArray[i] = cDynamicComparisonString(operators, this, thatArray[i])
      i += 1
    endwhile
  endif
  return returnArray
endfunction
  ;>>> Base functions for array comparisons, 62 functions for the price of 5 (int, float & String have 14 each)
Bool   function cDynamicComparisonBool(String operators, Bool this, Bool that) global
  {Requirements: None}
  ;Valid operators: ==, !=, &&, ||, !&&, &&!, !&&!, !||, ||!, !||!
  ;e.g. !&& == !this && that ; &&! == this && !that ; !&&! == !this && !that
  if operators == "=="
    return this == that
  elseif operators == "&&"
    return this && that
  elseif operators == "||"
    return this || that
  elseif operators == "!="
    return this != that
  elseif operators == "!&&"
    return !this && that
  elseif operators == "&&!"
    return this && !that
  elseif operators == "!&&!" || operators == "!"
    return !this && !that
  elseif operators == "!||"
    return !this || that
  elseif operators == "||!"
    return this || !that
  elseif operators == "!||!"
    return !this || !that
  else
    cErrInvalidArg("cComparisonDynamicBool", "operators", "False")
  endif
  return False 
endfunction
Bool   function cDynamicComparisonFloat(String operators, Float this, Float that) global
  {Requirements: None}
  ;Valid operators: ==, !=, <, <=, >, >=, &&, ||, !&&, &&!, !&&!, !||, ||!, !||!
  ;e.g. !&& == !this && that ; &&! == this && !that ; !&&! == !this && !that
  if operators == "=="
    return this == that
  elseif operators == "&&"
    return this && that
  elseif operators == "||"
    return this || that
  elseif operators == "<"
    return this < that
  elseif operators == "<="
    return this <= that
  elseif operators == ">"
    return this > that
  elseif operators == ">="
    return this >= that
  elseif operators == "!="
    return this != that
  elseif operators == "!&&"
    return !this && that
  elseif operators == "&&!"
    return this && !that
  elseif operators == "!&&!" || operators == "!"
    return !this && !that
  elseif operators == "!||"
    return !this || that
  elseif operators == "||!"
    return this || !that
  elseif operators == "!||!"
    return !this || !that
  else
    cErrInvalidArg("cComparisonDynamicFloat", "operators", "False")
  endif
  return False
endfunction
Bool   function cDynamicComparisonForm(String operators, Form this, Form that) global
  {Requirements: None}
  ;Valid operators: ==, !=, &&, ||, !&&, &&!, !&&!, !||, ||!, !||!
  ;e.g. !&& == !this && that ; &&! == this && !that ; !&&! == !this && !that
  if operators == "=="
    return this == that
  elseif operators == "&&"
    return this && that
  elseif operators == "||"
    return this || that
  elseif operators == "!="
    return this != that
  elseif operators == "!&&"
    return !this && that
  elseif operators == "&&!"
    return this && !that
  elseif operators == "!&&!" || operators == "!"
    return !this && !that
  elseif operators == "!||"
    return !this || that
  elseif operators == "||!"
    return this || !that
  elseif operators == "!||!"
    return !this || !that
  else
    cErrInvalidArg("cComparisonDynamicForm", "operators", "False")
  endif
  return False
endfunction
Bool   function cDynamicComparisonInt(String operators, Int this, Int that) global
  {Requirements: None}
  ;Valid operators: ==, !=, <, <=, >, >=, &&, ||, !&&, &&!, !&&!, !||, ||!, !||!
  ;e.g. !&& == !this && that ; &&! == this && !that ; !&&! == !this && !that
  if operators == "=="
    return this == that
  elseif operators == "&&"
    return this && that
  elseif operators == "||"
    return this || that
  elseif operators == "<"
    return this < that
  elseif operators == "<="
    return this <= that
  elseif operators == ">"
    return this > that
  elseif operators == ">="
    return this >= that
  elseif operators == "!="
    return this != that
  elseif operators == "!&&"
    return !this && that
  elseif operators == "&&!"
    return this && !that
  elseif operators == "!&&!" || operators == "!"
    return !this && !that
  elseif operators == "!||"
    return !this || that
  elseif operators == "||!"
    return this || !that
  elseif operators == "!||!"
    return !this || !that
  else
    cErrInvalidArg("cComparisonDynamicInt", "operators", "False")
  endif 
   return False
endfunction
Bool   function cDynamicComparisonString(String operators, String this, String that) global
  {Requirements: None}
  ;Valid operators: ==, !=, <, <=, >, >=, &&, ||, !&&, &&!, !&&!, !||, ||!, !||!
  ;e.g. !&& == !this && that ; &&! == this && !that ; !&&! == !this && !that
  if operators == "=="
    return this == that
  elseif operators == "&&"
    return this && that
  elseif operators == "||"
    return this || that
  elseif operators == "<"
    return this < that
  elseif operators == "<="
    return this <= that
  elseif operators == ">"
    return this > that
  elseif operators == ">="
    return this >= that
  elseif operators == "!="
    return this != that
  elseif operators == "!&&"
    return !this && that
  elseif operators == "&&!"
    return this && !that
  elseif operators == "!&&!" || operators == "!"
    return !this && !that
  elseif operators == "!||"
    return !this || that
  elseif operators == "||!"
    return this || !that
  elseif operators == "!||!"
    return !this || !that
  else
    cErrInvalidArg("cComparisonDynamicString", "operators", "False")
  endif
  return False
endfunction
  ;>>> 20 functions for the price of 3
Float[]  function cArrayDynamicOperationFloat(String operation, Float this, Float[] thatArray) global
  {Requirements: None}
  ;Valid operators: +, -, /, *, **, ^, pow
  Float[] returnArray
  if !thatArray
    cErrInvalidArg("cArrayDynamicComparisonFloat", "!thatArray", "arrayNone")
  else
    returnArray = cArrayCreateFloat(thatArray.length) ; if !SKSE watch out for > 128 indices!
    Int i = 0
    while i < thatArray.length
      returnArray[i] = cDynamicOperationFloat(operation, this, thatArray[i])
      i += 1
    endwhile
  endif
  return returnArray
endfunction
Int[]    function cArrayDynamicOperationInt(String operation, Int this, Int[] thatArray) global
  {Requirements: None}
  ;Valid operators: +, -, /, *, <<, leftshift, lshift, >>, rightshift, rshift, AND, NOT, OR, XOR
  Int[] returnArray
  if !thatArray
    cErrInvalidArg("cArrayDynamicComparisonInt", "!thatArray", "arrayNone")
  else
    returnArray = cArrayCreateInt(thatArray.length) ; if !SKSE watch out for > 128 indices!
    Int i = 0
    while i < thatArray.length
      returnArray[i] = cDynamicOperationInt(operation, this, thatArray[i])
      i += 1
    endwhile
  endif
  return returnArray
endfunction
String[] function cArrayDynamicOperationString(String operation, String this, String[] thatArray) global
  {Requirements: None}
  ;Valid operators: +s, s+, +s+
  String[] returnArray
  if !thatArray
    cErrInvalidArg("cArrayDynamicComparisonString", "!thatArray", "arrayNone")
  else
    returnArray = cArrayCreateString(thatArray.length) ; if !SKSE watch out for > 128 indices!
    Int i = 0
    while i < thatArray.length
      returnArray[i] = cDynamicOperationString(operation, this, thatArray[i])
      i += 1
    endwhile
  endif
  return returnArray
endfunction
  ;>>> 20 functions for the price of 3, base functions for the array functions
Float    function cDynamicOperationFloat(String operation, Float this, Float that) global
  {Requirements: None}
  ;Valid operators: +, -, /, *, **, ^, pow
  if operation == "+"
    return this + that
  elseif operation == "-"
    return this - that
  elseif operation == "/"
    return this / that
  elseif operation == "*"
    return this * that
  elseif operation == "**" || operation == "^" || operation == "pow"
    return Math.Pow(this, that)
  else
    cErrInvalidArg("cDynamicOperationFloat", "operation", "0.0")
  endif
  return 0.0
endfunction
Int      function cDynamicOperationInt(String operation, Int this, Int that) global
  {Requirements: None}
  ;Valid operators: +, -, /, *, <<, leftshift, lshift, >>, rightshift, rshift, AND, NOT, OR, XOR
  if operation == "+"
    return this + that
  elseif operation == "-"
    return this - that
  elseif operation == "/"
    return this / that
  elseif operation == "*"
    return this * that
  elseif operation == "%"
    return this % that
  elseif operation == "<<" || operation == "leftshift" || operation == "lshift" 
    return cBitShiftL(this, that)
  elseif operation == ">>" || operation == "rightshift" || operation == "rshift" 
    return cBitShiftR(this, that)
  elseif operation == "AND"
    return cLogicalAND(this, that)
  elseif operation == "NOT"
    return cLogicalNOT(this, that)
  elseif operation == "OR"
    return cLogicalOR(this, that)
  elseif operation == "XOR"
    return cLogicalXOR(this, that)
  else
    cErrInvalidArg("cDynamicOperationInt", "operation", "0.0")
  endif
  return 0
endfunction
String   function cDynamicOperationString(String operation, String this, String s) global
  {Requirements: None}
  ;Valid operators: +s, s+, +s+
  if operation == "+s"
    return this + s
  elseif operation == "s+"
    return s + this
  elseif operation == "+s+"
    return this + s + this
  else
    cErrInvalidArg("cDynamicOperationString", "operation", "")
  endif
  return ""
endfunction

  ;>>> MAP FUNCTIONS
String[] function cMapSet(String keyName, String aValue, String[] aArray) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cMapSet", "!aArray")
  elseif !keyName
    cErrInvalidArg("cMapSet", "!keyName")
  else
    Int aIndex = aArray.Find(keyName)
    if aIndex == -1
      cErrInvalidArg("cMapSet", "aArray.Find(keyName) == -1")
    else
      aArray[aIndex] = aValue
    endif
  endif
  return aArray
endfunction
String   function cMapGet(String keyName, String[] aArray) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cMapGet", "!aArray")
  elseif !keyName
    cErrInvalidArg("cMapGet", "!keyName")
  else
    Int idx = aArray.Find(keyName)
    if idx == -1
      cErrInvalidArg("cMapSet", "aArray.Find(keyName) == -1")
    else
      return aArray[idx + 1]
    endif
  endif
endfunction
Bool     function cMapGetBool(String keyName, String[] aArray) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cMapGetBool", "!aArray")
  elseif !keyName
    cErrInvalidArg("cMapGetBool", "!keyName")
  endif
  return cMapGet(keyName, aArray) as Bool
endfunction
Float    function cMapGetFloat(String keyName, String[] aArray) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cMapGetFloat", "!aArray")
  elseif !keyName
    cErrInvalidArg("cMapGetFloat", "!keyName")
  endif
  return cMapGet(keyName, aArray) as Float
endfunction
Form     function cMapGetForm(String keyName, String[] aArray) global
  {Requirements: SKSE}
  Form returnForm
  if !aArray
    cErrInvalidArg("cMapGetForm", "!aArray")
  elseif !keyName
    cErrInvalidArg("cMapGetForm", "!keyName")
  else
    String aValue = cMapGet(keyName, aArray)
    String[] formInfo = StringUtil.Split(aValue, "|")
    returnForm = Game.GetFormFromFile(formInfo[0] as Int, formInfo[1])
  endif
  return returnForm
endfunction
Int      function cMapGetInt(String keyName, String[] aArray) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cMapGetInt", "!aArray")
  elseif !keyName
    cErrInvalidArg("cMapGetInt", "!keyName")
  endif
  return cMapGet(keyName, aArray) as Int
endfunction
String[] function cMapCreate(String keyName, String aValue = "", Int numKeyPairs = 64, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  String[] aMap
  if numKeyPairs < 1
    cErrInvalidArg("cMapCreate", "numKeyPairs < 1")
  elseif !keyName
    cErrInvalidArg("cMapCreate", "!keyName")
  elseif numKeyPairs > 64 && (!useSKSE || !clibUse.cUseSKSE())
    cErrInvalidArg("cMapCreate", "numKeyPairs > 64 && (!useSKSE || !clibUse.cUseSKSE())")
  else
    aMap = cArrayCreateString(numKeyPairs * 2)
    aMap[0] = keyName
    aMap[1] = aValue
  endif
  return aMap
endfunction
String[] function cMapAdd(String keyName, String aValue, String[] aArray) global
  {Requirements: None}
  if cMapHasKey(keyName, aArray)
    cErrInvalidArg("cMapCreate", "cMapHasKey(keyName, aArray) ALREADY HAS")
  else
    Int firstFree = cMapFirstFree(aArray)
    aArray[firstFree] = keyName
    aArray[firstFree + 1] = aValue
  endif
  return aArray
endfunction
String[] function cMapAddForm(String keyName, Form aForm, String[] aArray, Bool useSKSE = TRUE) global
  {Requirements: SKSE}
  String modName = cGetModName("",0,aForm)
  String intSubID = cGetIntSubID(0, "", aForm)
  String toSave = intSubID + "|" + modName
  cMapSet(keyName, toSave, aArray)
  return aArray
endfunction
Bool     function cMapHasKey(String keyName, String[] aArray) global
  {Requirements: None}
  return aArray.Find(keyName) > -1
endfunction
Int      function cMapFirstFree(String[] aArray) global
  {Requirements: None}
  Int i = 0
  while i < aArray.length
    if aArray[i] == ""
      return i
    endif
    i += 2
  endwhile
  return -1
endfunction
String[] function cMapRemove(String keyName, String[] aArray) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cMapRemove", "!aArray")
  else
    Int idx = aArray.Find(keyName)
    if idx == -1
      cErrInvalidArg("cMapRemove", "aArray.Find(keyName) == -1")
    else
      aArray[idx] = ""
      aArray[idx + 1] = ""
    endif
  endif
  return aArray
endfunction


;====== Retrieve temporary data for various functions 
;***CONFIRMED WORKING 21-11-02
String[] function cArrayListSkillNames() global
  {Requirements: None}
  String[] skillList = New String[18]
  skillList[0] = "OneHanded"
  skillList[1] = "TwoHanded"
  skillList[2] = "Marksman"
  skillList[3] = "Block"
  skillList[4] = "Smithing"
  skillList[5] = "HeavyArmor"
  skillList[6] = "LightArmor"
  skillList[7] = "Pickpocket"
  skillList[8] = "Lockpicking"
  skillList[9] = "Sneak"
  skillList[10] = "Alchemy"
  skillList[11] = "Speechcraft"
  skillList[12] = "Alteration"
  skillList[13] = "Conjuration"
  skillList[14] = "Destruction"
  skillList[15] = "Illusion"
  skillList[16] = "Restoration"
  skillList[17] = "Enchanting"
  return skillList
endfunction
;***CONFIRMED WORKING 21-11-02
String[] function cArrayHexDigits() global
  {Requirements: None}
  String[] digits = New String[17]
  digits[0] = "0"
  digits[1] = "1"
  digits[2] = "2"
  digits[3] = "3"
  digits[4] = "4"
  digits[5] = "5"
  digits[6] = "6"
  digits[7] = "7"
  digits[8] = "8"
  digits[9] = "9"
  digits[10] = "A"
  digits[11] = "B"
  digits[12] = "C"
  digits[13] = "D"
  digits[14] = "E"
  digits[15] = "F"
  digits[16] = "G" ; makes nabbing F more accurate ('else' will also allow invalid values to pass through)
  return digits
endfunction
;***CONFIRMED WORKING 21-11-02
String[] function cArrayDecDigits() global
  {Requirements: None}
  String[] digits = New String[10]
  digits[0] = "0"
  digits[1] = "1"
  digits[2] = "2"
  digits[3] = "3"
  digits[4] = "4"
  digits[5] = "5"
  digits[6] = "6"
  digits[7] = "7"
  digits[8] = "8"
  digits[9] = "9"
  return digits
endfunction
;***CONFIRMED WORKING 21-11-02
String[] function cArrayASCIIChars() global
  {Requirements: None}
  String[] ascii = New String[69]
  ascii[0] = " "
  ascii[1] = "!"
  ascii[2] = "\""
  ascii[3] = "#"
  ascii[4] = "$"
  ascii[5] = "%"
  ascii[6] = "&"
  ascii[7] = "'"
  ascii[8] = "("
  ascii[9] = ")"
  ascii[10] = "*"
  ascii[11] = "+"
  ascii[12] = ","
  ascii[13] = "-"
  ascii[14] = "."
  ascii[15] = "/"
  ascii[16] = "0"
  ascii[17] = "1"
  ascii[18] = "2"
  ascii[19] = "3"
  ascii[20] = "4"
  ascii[21] = "5"
  ascii[22] = "6"
  ascii[23] = "7"
  ascii[24] = "8"
  ascii[25] = "9"
  ascii[26] = ":"
  ascii[27] = ";"
  ascii[28] = "<"
  ascii[29] = "="
  ascii[30] = ">"
  ascii[31] = "?"
  ascii[32] = "@"
  ascii[33] = "["
  ascii[34] = "\\"
  ascii[35] = "]"
  ascii[36] = "^"
  ascii[37] = "_"
  ascii[38] = "`"
  ascii[39] = "A"
  ascii[40] = "B"
  ascii[41] = "C"
  ascii[42] = "D"
  ascii[43] = "E"
  ascii[44] = "F"
  ascii[45] = "G"
  ascii[46] = "H"
  ascii[47] = "I"
  ascii[48] = "J"
  ascii[49] = "K"
  ascii[50] = "L"
  ascii[51] = "M"
  ascii[52] = "N"
  ascii[53] = "O"
  ascii[54] = "P"
  ascii[55] = "Q"
  ascii[56] = "R"
  ascii[57] = "S"
  ascii[58] = "T"
  ascii[59] = "U"
  ascii[60] = "V"
  ascii[61] = "W"
  ascii[62] = "X"
  ascii[63] = "Y"
  ascii[64] = "Z"
  ascii[65] = "{"
  ascii[66] = "|"
  ascii[67] = "}"
  ascii[68] = "~"
  return ascii
endfunction
String   function cASCII2Hex(String char)
  String[] ascii = cArrayASCIIChars()
  String[] hexArray
  String returnString
  Int idx = ascii.Find(char)
  if idx == -1
    cErrInvalidArg("cASCII2Hex", "ascii.Find(char) == -1")
  else
    hexArray = cArrayASCIIAsHex()
    returnString = hexArray[idx]
  endif
  return returnString
endfunction
String   function cASCII2Binary(String char)
  String[] ascii = cArrayASCIIChars()
  String[] binaryArray
  String returnString
  Int idx = ascii.Find(char)
  if idx == -1
    cErrInvalidArg("cASCII2Binary", "ascii.Find(char) == -1")
  else
    binaryArray = cArrayASCIIAsBinary()
    returnString = binaryArray[idx]
  endif
  return returnString
endfunction
String[] function cArrayASCIIAsBinary() global
  {Requirements: None}
  ; aligned with cArrayASCIIChars()
  String[] charAsBin = New String[69]
  charAsBin[0] = "100000"
  charAsBin[1] = "100001"
  charAsBin[2] = "100010"
  charAsBin[3] = "100011"
  charAsBin[4] = "100100"
  charAsBin[5] = "100101"
  charAsBin[6] = "100110"
  charAsBin[7] = "100111"
  charAsBin[8] = "101000"
  charAsBin[9] = "101001"
  charAsBin[10] = "101010"
  charAsBin[11] = "101011"
  charAsBin[12] = "101100"
  charAsBin[13] = "101101"
  charAsBin[14] = "101110"
  charAsBin[15] = "101111"
  charAsBin[16] = "110000"
  charAsBin[17] = "110001"
  charAsBin[18] = "110010"
  charAsBin[19] = "110011"
  charAsBin[20] = "110100"
  charAsBin[21] = "110101"
  charAsBin[22] = "110110"
  charAsBin[23] = "110111"
  charAsBin[24] = "111000"
  charAsBin[25] = "111001"
  charAsBin[26] = "111010"
  charAsBin[27] = "111011"
  charAsBin[28] = "111100"
  charAsBin[29] = "111101"
  charAsBin[30] = "111110"
  charAsBin[31] = "111111"
  charAsBin[32] = "1000000"
  charAsBin[33] = "1011011"
  charAsBin[34] = "1011100"
  charAsBin[35] = "1011101"
  charAsBin[36] = "1011110"
  charAsBin[37] = "1011111"
  charAsBin[38] = "1100000"
  charAsBin[39] = "1000001"
  charAsBin[40] = "1000010"
  charAsBin[41] = "1000011"
  charAsBin[42] = "1000100"
  charAsBin[43] = "1000101"
  charAsBin[44] = "1000110"
  charAsBin[45] = "1000111"
  charAsBin[46] = "1001000"
  charAsBin[47] = "1001001"
  charAsBin[48] = "1001010"
  charAsBin[49] = "1001011"
  charAsBin[50] = "1001100"
  charAsBin[51] = "1001101"
  charAsBin[52] = "1001110"
  charAsBin[53] = "1001111"
  charAsBin[54] = "1010000"
  charAsBin[55] = "1010001"
  charAsBin[56] = "1010010"
  charAsBin[57] = "1010011"
  charAsBin[58] = "1010100"
  charAsBin[59] = "1010101"
  charAsBin[60] = "1010110"
  charAsBin[61] = "1010111"
  charAsBin[62] = "1011000"
  charAsBin[63] = "1011001"
  charAsBin[64] = "1011010"
  charAsBin[65] = "1111011"
  charAsBin[66] = "1111100"
  charAsBin[67] = "1111101"
  charAsBin[68] = "1111110"
  return charAsBin
endfunction
String[] function cArrayASCIIAsHex() global
  {Requirements: None}
  ; aligned with cArrayASCIIChars()
  String[] charAsHex = New String[69]
  charAsHex[0] = "20"
  charAsHex[1] = "21"
  charAsHex[2] = "22"
  charAsHex[3] = "23"
  charAsHex[4] = "24"
  charAsHex[5] = "25"
  charAsHex[6] = "26"
  charAsHex[7] = "27"
  charAsHex[8] = "28"
  charAsHex[9] = "29"
  charAsHex[10] = "2A"
  charAsHex[11] = "2B"
  charAsHex[12] = "2C"
  charAsHex[13] = "2D"
  charAsHex[14] = "2E"
  charAsHex[15] = "2F"
  charAsHex[16] = "30"
  charAsHex[17] = "31"
  charAsHex[18] = "32"
  charAsHex[19] = "33"
  charAsHex[20] = "34"
  charAsHex[21] = "35"
  charAsHex[22] = "36"
  charAsHex[23] = "37"
  charAsHex[24] = "38"
  charAsHex[25] = "39"
  charAsHex[26] = "3A"
  charAsHex[27] = "3B"
  charAsHex[28] = "3C"
  charAsHex[29] = "3D"
  charAsHex[30] = "3E"
  charAsHex[31] = "3F"
  charAsHex[32] = "40"
  charAsHex[33] = "5B"
  charAsHex[34] = "5C"
  charAsHex[35] = "5D"
  charAsHex[36] = "5E"
  charAsHex[37] = "5F"
  charAsHex[38] = "60"
  charAsHex[39] = "41"
  charAsHex[40] = "42"
  charAsHex[41] = "43"
  charAsHex[42] = "44"
  charAsHex[43] = "45"
  charAsHex[44] = "46"
  charAsHex[45] = "47"
  charAsHex[46] = "48"
  charAsHex[47] = "49"
  charAsHex[48] = "4A"
  charAsHex[49] = "4B"
  charAsHex[50] = "4C"
  charAsHex[51] = "4D"
  charAsHex[52] = "4E"
  charAsHex[53] = "4F"
  charAsHex[54] = "50"
  charAsHex[55] = "51"
  charAsHex[56] = "52"
  charAsHex[57] = "53"
  charAsHex[58] = "54"
  charAsHex[59] = "55"
  charAsHex[60] = "56"
  charAsHex[61] = "57"
  charAsHex[62] = "58"
  charAsHex[63] = "59"
  charAsHex[64] = "5A"
  charAsHex[65] = "7B"
  charAsHex[66] = "7C"
  charAsHex[67] = "7D"
  charAsHex[68] = "7E"
  return charAsHex
endfunction
;***CONFIRMED WORKING 21-11-02
String[] function cArrayLetterChars() global
  {Requirements: None}
  String[] letters = New String[26]
  letters[0] = "A"
  letters[1] = "B"
  letters[2] = "C"
  letters[3] = "D"
  letters[4] = "E"
  letters[5] = "F"
  letters[6] = "G"
  letters[7] = "H"
  letters[8] = "I"
  letters[9] = "J"
  letters[10] = "K"
  letters[11] = "L"
  letters[12] = "M"
  letters[13] = "N"
  letters[14] = "O"
  letters[15] = "P"
  letters[16] = "Q"
  letters[17] = "R"
  letters[18] = "S"
  letters[19] = "T"
  letters[20] = "U"
  letters[21] = "V"
  letters[22] = "W"
  letters[23] = "X"
  letters[24] = "Y"
  letters[25] = "Z"
  return letters
endfunction

; Misc reference info
;/
  --- means that it is NOT a reserved word
List of Known Reserved Strings
  Alchemy
  Alteration
  AMBER
  ---amethyst
  ---ancient
  Armor
  Arrow
  Axe
  ---band
  bandit
  Bear
  ---bird
  ---black
  Blade
  ---blank
  Block
  Book
  broken
  ---bull
  ---cabbage
  ---cairn
  ---carrot
  ---cat
  ---cattle
  ---chamber
  ---charcoal
  Circle
  Circlet
  claw
  ---claws
  Clear
  clothes
  Clothing
  ---cloud
  Conjuration
  ---cottage
  cow
  Crown
  Dawnguard
  dead
  Death
  deathBell
  Destruction
  Diamond
  DIAMONDS
  ---dibella
  ---difficulty
  Dog
  Dragon
  ---dragonborn
  draugr
  EBONY
  ---elder
  ---emerald
  Enchanting
  ---exquisite
  False
  ---farm
  ---farming
  ---feather
  ---flawless
  Forge
  ---forging
  ---fork
  Fort
  Fur
  Game
  ---garnet
  gem
  ---gems
  General
  Giant
  gold
  ---good
  ---goods
  ---green
  Guard
  ---hand
  ---handed
  ---haven
  HEAD
  ---heading
  ---hearth
  ---hearthfire
  ---hearthfires
  Heavy
  HeavyArmor
  Hide
  Horn
  Horse
  Illusion
  ---imbuing
  IMPERIAL
  ---ingot
  IRON
  ---jug
  ---keep
  ---keg
  ---learn
  ---learning
  Leather
  ---legendary
  Light
  LightArmor
  Lockpicking
  Mace
  Magic
  Mammoth
  Map
  Markarth
  Marksman
  master
  ---mead
  ---metal
  ---mine
  ---mining
  No
  ---nothing
  object
  ObjectReference
  ---oblivion
  ONE
  OneHanded
  Options
  ---orange
  Ore
  ---paper
  pelt
  Pickpocket
  plate
  ---precious
  Quest
  ---questing
  ---quests
  ---quill
  rank
  ---ranks
  Reach
  ---red
  ---reference
  Relationship
  Restoration
  Rift
  Riften
  ring
  robe
  robes
  ---ruby
  ---ruin
  ---ruins
  ---salmon
  ---sapphire
  Scroll
  Scrolls
  ---septim
  ---shack
  ---ship
  ---shrine
  Silver
  ---skill
  Sky
  ---skyrim
  Smithing
  Sneak
  Solitude
  ---soul
  ---soul gem
  SOUL GEMS
  SoulGem
  ---soulgems
  Speechcraft
  SPELL
  Sphere
  Spider
  ---stalhrim
  ---star
  STEEL
  Stone
  ---stones
  Summon
  Sword
  ---testing
  Tome
  Tree
  TRUE
  ---tusk
  TwoHanded
  ---undead
  Wall
  ---war
  ---warrior
  ---weigh
  ---weighing
  ---weighs
  Weight
  ---whirlwind
  WHITE
  Whiterun
  Windhelm
  Work
  ---yellow
  Yes

SKSE Item Type Names just a reference list
    type == 0 "kNone"
    type == 1 "kTES4"
    type == 2 "kGroup"
    type == 3 "kGMST"
    type == 4 "kKeyword"
    type == 5 "kLocationRef"
    type == 6 "kAction"
    type == 7 "kTextureSet"
    type == 8 "kMenuIcon"
    type == 9 "kGlobal"
    type == 10 "kClass"
    type == 11 "kFaction"
    type == 12 "kHeadPart"
    type == 13 "kEyes"
    type == 14 "kRace"
    type == 15 "kSound"
    type == 16 "kAcousticSpace"
    type == 17 "kSkill"
    type == 18 "kEffectSetting"
    type == 19 "kScript"
    type == 20 "kLandTexture"
    type == 21 "kEnchantment"
    type == 22 "kSpell"
    type == 23 "kScrollItem"
    type == 24 "kActivator"
    type == 25 "kTalkingActivator"
    type == 26 "kArmor"
    type == 27 "kBook"
    type == 28 "kContainer"
    type == 29 "kDoor"
    type == 30 "kIngredient"
    type == 31 "kLight"
    type == 32 "kMisc"
    type == 33 "kApparatus"
    type == 34 "kStatic"
    type == 35 "kStaticCollection"
    type == 36 "kMovableStatic"
    type == 37 "kGrass"
    type == 38 "kTree"
    type == 39 "kFlora"
    type == 40 "kFurniture"
    type == 41 "kWeapon"
    type == 42 "kAmmo"
    type == 43 "kNPC"
    type == 44 "kLeveledCharacter"
    type == 45 "kKey"
    type == 46 "kPotion"
    type == 47 "kIdleMarker"
    type == 48 "kNote"
    type == 49 "kConstructibleObject"
    type == 50 "kProjectile"
    type == 51 "kHazard"
    type == 52 "kSoulGem"
    type == 53 "kLeveledItem"
    type == 54 "kWeather"
    type == 55 "kClimate"
    type == 56 "kShaderParticleGeometryData"
    type == 57 "kReferenceEffect"
    type == 58 "kRegion"
    type == 59 "kNAVI"
    type == 60 "kCell"
    type == 61 "kReference"
    type == 62 "kCharacter"
    type == 63 "kMissileProjectile"
    type == 64 "kArrowProjectile"
    type == 65 "kGrenadeProjectile"
    type == 66 "kBeamProjectile"
    type == 67 "kFlameProjectile"
    type == 68 "kConeProjectile"
    type == 69 "kBarrierProjectile"
    type == 70 "kPHZD"
    type == 71 "kWorldSpace"
    type == 72 "kLand"
    type == 73 "kNavMesh"
    type == 74 "kTLOD"
    type == 75 "kTopic"
    type == 76 "kTopicInfo"
    type == 77 "kQuest"
    type == 78 "kIdle"
    type == 79 "kPackage"
    type == 80 "kCombatStyle"
    type == 81 "kLoadScreen"
    type == 82 "kLeveledSpell"
    type == 83 "kANIO"
    type == 84 "kWater"
    type == 85 "kEffectShader"
    type == 86 "kTOFT"
    type == 87 "kExplosion"
    type == 88 "kDebris"
    type == 89 "kImageSpace"
    type == 90 "kImageSpaceModifier"
    type == 91 "kList"
    type == 92 "kPerk"
    type == 93 "kBodyPartData"
    type == 94 "kAddonNode"
    type == 95 "kActorValueInfo"
    type == 96 "kCameraShot"
    type == 97 "kCameraPath"
    type == 98 "kVoiceType"
    type == 99 "kMaterialType"
    type == 100 "kImpactData"
    type == 101 "kImpactDataSet"
    type == 102 "kARMA"
    type == 103 "kEncounterZone"
    type == 104 "kLocation"
    type == 105 "kMessage"
    type == 106 "kRagdoll"
    type == 107 "kDefaultObject"
    type == 108 "kLightingTemplate"
    type == 109 "kMusicType"
    type == 110 "kFootstep"
    type == 111 "kFootstepSet"
    type == 112 "kStoryBranchNode"
    type == 113 "kStoryQuestNode"
    type == 114 "kStoryEventNode"
    type == 115 "kDialogueBranch"
    type == 116 "kMusicTrack"
    type == 117 "kDLVW"
    type == 118 "kWordOfPower"
    type == 119 "kShout"
    type == 120 "kEquipSlot"
    type == 121 "kRelationship"
    type == 122 "kScene"
    type == 123 "kAssociationType"
    type == 124 "kOutfit"
    type == 125 "kArt"
    type == 126 "kMaterial"
    type == 127 "kMovementType"
    type == 128 "kSoundDescriptor"
    type == 129 "kDualCastData"
    type == 130 "kSoundCategory"
    type == 131 "kSoundOutput"
    type == 132 "kCollisionLayer"
    type == 133 "kColorForm"
    type == 134 "kReverbParam"
/;

;Functions used to output error messages
function clibTrace(String functionName, String msg, Int errorLevel, Bool condition = TRUE, \
    Bool useConsoleUtil = TRUE) global
  {Requirements: None, ConsoleUtil:Soft}
  condition = TRUE ; change this to false to disable all trace messages
  if condition
    Debug.Trace(cGetScriptName() + "::" + functionName + "():: " + msg, errorLevel)
    if useConsoleUtil && clibUse.cUseConsoleUtil() && ConsoleUtil.GetVersion()
      ConsoleUtil.PrintMessage(cTernaryString(errorLevel == 2, "Error! ", \
        cTernaryString(errorLevel == 1, "Warning: ", \
          cTernaryString(errorLevel == 0, "Info: ", ""))) + "clib::" + functionName + "() " + msg)
    endif
  endif
endfunction
function cErrInvalidArg(String functionName, String argName = "", String returnValue = "", \
    Int errorLevel = 2, Bool condition = TRUE, Bool useSKSE = TRUE, Bool useConsoleUtil = TRUE) global
  {Requirements: None, ConsoleUtil:Soft}
  if useSKSE && clibUse.cUseSKSE() && StringUtil.Find(functionName, "array") != -1
    returnValue = "arrayNone"
  endif
  clibTrace(functionName, "Argument(s)" + cTernaryString(argName != "", ": " + argName, "") + " invalid!" + \
    cTernaryString(returnValue != "", " Returning " + returnValue, ""), errorLevel, condition, useConsoleUtil)
endfunction
function cErrArrInitFail(String functionName, String arrayName = "newArray", String returnValue = "ArrayNone", \
    Int errorLevel = 2, Bool condition = TRUE, Bool useConsoleUtil = TRUE) global
  {Requirements: None, ConsoleUtil:Soft}
  clibTrace(functionName, "Variable: " + arrayName + " failed to initialize! Returning " + returnValue, errorLevel, \
    condition, useConsoleUtil)
endfunction
function cErrReqDisabled(String functionName, String modName = "SKSE", String returnValue = "", \
    Int errorLevel = 2, Bool condition = TRUE, Bool useConsoleUtil = TRUE) global
  {Requirements: None, ConsoleUtil:Soft}
  clibTrace(functionName, modName + " functionality is disabled; This function cannot operate without it!" + \
    cTernaryString(returnValue == "", " Returning \"\"", ""), errorLevel, condition, useConsoleUtil)
endfunction

;--------------------------SKSE:HARD-------------------------------------------

String function cGetModName(String hexForm = "", Int decForm = 0,Form formVar = None) global
  {Requirements: SKSE}
  String returnString
  if clibUse.cUseSKSE()
    String modIndex
    if formVar
      returnString = cGetModNameForm(formVar)
    else
      if decForm
        hexForm = cD2H(decForm)
      endif
      if cIsLight(hexForm)
        modIndex = StringUtil.SubString(hexForm,2,3)
        returnString = Game.GetLightModName(cH2D(modIndex))
      else
        if StringUtil.GetLength(hexForm) == 10
          modIndex = StringUtil.SubString(hexForm,2,2)
        elseif StringUtil.GetLength(hexForm) == 8
          modIndex = StringUtil.SubString(hexForm,0,2)
        endif
        returnString = Game.GetModName(cH2D(modIndex))
      endif
    endif
  else
    cErrReqDisabled("cGetTheModName")
  endif
  return returnString
endfunction
String function cGetModNameForm(Form aForm) global
  {Requirements: SKSE}
  ; This function came from Mr Octopus!! Thank you!!!
  if clibUse.cUseSKSE()
    Int intFormID = aForm.GetFormID()
    Int index = Math.RightShift(intFormID, 24)
    ; Light (Comment out and recompile if using Classic Edition)
    if index == 254
        return Game.GetLightModName(Math.RightShift(intFormID, 12) - 0xFE000)
    endif
    ; Normal
    return Game.GetModName(index)
  else
    cErrReqDisabled("cGetFormModName")
    return ""
  endif
endfunction
Bool   function cIsInAnyMenu() global ; In my experience more accurate thatn .IsInMenuMode()
  {Requirements: SKSE}
  if clibUse.cUseSKSE()
    return !UI.IsMenuOpen("Console") && !UI.IsMenuOpen("RaceSex Menu") && \
        !UI.IsMenuOpen("Sleep/Wait Menu") && !UI.IsMenuOpen("ContainerMenu") && !UI.IsMenuOpen("FavoritesMenu") && \
          !UI.IsMenuOpen("Crafting Menu") && !UI.IsMenuOpen("MainMenu") && !UI.IsMenuOpen("JournalMenu") && \
            !UI.IsMenuOpen("InventoryMenu") && !UI.IsMenuOpen("Console Native UI Menu") && \
              !UI.IsMenuOpen("Dialogue Menu")
  else
    cErrReqDisabled("cIsInAnyMenu")
  endif
endfunction
Bool[] function cArePluginsInstalled(String[] listOfPlugins) global
  {Requirements: SKSE}
  Bool[] newArray
  if !listOfPlugins
    cErrInvalidArg("cAreFilesInstalled", "!listOfPlugins")
  elseif clibUse.cUseSKSE()
    newArray = cArrayCreateBool(listOfPlugins.length)
    if newArray.length
      Int numPlugins = listOfPlugins.length
      Int i = 0
      while i < numPlugins
        newArray[i] = Game.IsPluginInstalled(listOfPlugins[i])
        i+= 1
      endwhile
    else
      cErrArrInitFail("cAreFilesInstalled")
    endif
  else
    cErrReqDisabled("cAreFilesInstalled")
  endif
  return newArray
endfunction


;========================= Array/FL Functions

; Query
Int    function cFLFindByName(FormList aFormList, String aName, Bool bySubStr = TRUE) global
  {Requirements: SKSE}
  ; bySubStr == False means exact match
  if !aFormList
    cErrInvalidArg("cFLFindByName", "!aFormList", "")
  elseif !aName
    cErrInvalidArg("cFLFindByName", "!aName", "")
  elseif clibUse.cUseSKSE()
    String[] dudArray
    String curName
    Int numIndices = aFormList.GetSize()
    Int i = 0
    while i < numIndices
      curName = aFormList.GetAt(i).GetName()
      if (!bySubStr && curName == aName) || (bySubStr && cStringFind(curName, aName) != -1)
        return i
      endif
      i += 1
    endwhile
  else
    cErrReqDisabled("cFLFindByName")
  endif
  return -1
endfunction

Int    function cArrayFindByNameAlias(Alias[] aArray, String aName, Bool bySubStr = TRUE) global
  {Requirements: SKSE}
  ; bySubStr == False means exact match
  if !aArray
    cErrInvalidArg("cArrayFindByNameAlias", "!aArray", "")
  elseif !aName
    cErrInvalidArg("cArrayFindByNameAlias", "!aName", "")
  elseif clibUse.cUseSKSE()
    String curName
    Int i = 0
    while i < aArray.length
      curName = aArray[i].GetName()
      if (!bySubStr && curName == aName) || (bySubStr && cStringFind(curName, aName) != -1)
        return i
      endif
      i += 1
    endwhile
  else
    cErrReqDisabled("cArrayFindByNameAlias")
  endif
  return -1
endfunction
Int    function cArrayFindByNameActor(Actor[] aArray, String aName, Bool bySubStr = TRUE) global
  {Requirements: SKSE}
  ; bySubStr == False means exact match
  if !aArray
    cErrInvalidArg("cArrayFindByNameActor", "!aArray", "")
  elseif !aName
    cErrInvalidArg("cArrayFindByNameActor", "!aName", "")
  elseif clibUse.cUseSKSE()
    String curName
    Int i = 0
    while i < aArray.length
      curName = aArray[i].GetActorBase().GetName()
      if (!bySubStr && curName == aName) || (bySubStr && cStringFind(curName, aName) != -1)
        return i
      endif
      i += 1
    endwhile
  else
    cErrReqDisabled("cArrayFindByNameActor")
  endif
  return -1
endfunction
Int    function cArrayFindByNameForm(Form[] aArray, String aName, Bool bySubStr = TRUE) global
  {Requirements: SKSE}
  ; bySubStr == False means exact match
  if !aArray
    cErrInvalidArg("cArrayFindByNameForm", "!aArray", "")
  elseif !aName
    cErrInvalidArg("cArrayFindByNameForm", "!aName", "")
  elseif clibUse.cUseSKSE()
    String curName
    Int i = 0
    while i < aArray.length
      curName = aArray[i].GetName()
      if (!bySubStr && curName == aName) || (bySubStr && cStringFind(curName, aName) != -1)
        return i
      endif
      i += 1
    endwhile
  else
    cErrReqDisabled("cArrayFindByNameForm")
  endif
  return -1
endfunction
Int    function cArrayFindByNameObjRef(ObjectReference[] aArray, String aName, Bool bySubStr = TRUE) global
  {Requirements: SKSE}
  ; bySubStr == False means exact match
  if !aArray
    cErrInvalidArg("cArrayFindByNameObjRef", "!aArray", "")
  elseif !aName
    cErrInvalidArg("cArrayFindByNameObjRef", "!aName", "")
  elseif clibUse.cUseSKSE()
    String curName
    Int i = 0
    while i < aArray.length
      curName = aArray[i].GetBaseObject().GetName()
      if (!bySubStr && curName == aName) || (bySubStr && cStringFind(curName, aName) != -1)
        return i
      endif
      i += 1
    endwhile
  else
    cErrReqDisabled("cArrayFindByNameObjRef")
  endif
  return -1
endfunction

  ;>>> Returns text with MCM menu color formatting
String function cColoredText(String aString, Bool ddInstalled = False, String textColorHex = "", \
    String trimWhere = "") global
  {Requirements: SKSE:Hard, SkyUI:Soft unsure if hard}
  ; Valid options for trimWhere are "left", "right", "both"
  ; Unsure what other applications there are for color formatted text like this
  if !aString && !textColorHex
    cErrInvalidArg("cColoredText", "!aString && !textColorHex", "\"\"")
  else
    if clibUse.cUseSKSE()
      if !ddInstalled ; optional catch for DearDiary which does not play well with colored text
        String trimmedS = aString
        String colorOrange = "FFA600"
        String colorYellow = "ECF01D"
        String colorRed = "D41717"
        String colorBlue = "2D4BB5"
        String colorGray = "A6A6A6"
        String colorGreen = "52AB1F"
        ; if only want the hex code back
        if !aString
          if textColorHex == "orange"
            return colorOrange
          elseif textColorHex == "yellow"
            return colorYellow
          elseif textColorHex == "red"
            return colorRed
          elseif textColorHex == "blue"
            return colorBlue
          elseif textColorHex == "gray"
            return colorGray
          elseif textColorHex == "green"
            return colorGreen
          endif
        else
          ; Trim to get color from contextual command below
          if StringUtil.SubString(trimmedS, 0, 1) == " "
            trimmedS = StringUtil.SubString(trimmedS, 1, StringUtil.GetLength(trimmedS) - 1)
          endif
          if StringUtil.SubString(trimmedS,StringUtil.GetLength(trimmedS) - 1, 1) == " "
            trimmedS = StringUtil.SubString(trimmedS, 0, StringUtil.GetLength(trimmedS) - 1)
          endif
          
          ; For reserved words that must have spaces in front or behind to prevent their case from being changed
          ; Trim whitespace only for response string as directed
          if (trimWhere == "front" || trimWhere == "left") && StringUtil.SubString(aString, 0, 1) == " "
            aString = StringUtil.SubString(aString, 1, StringUtil.GetLength(aString) - 1)
          elseif (trimWhere == "end" || trimWhere == "right") && \
              StringUtil.SubString(aString,StringUtil.GetLength(aString) - 1, 1) == " "
            aString = StringUtil.SubString(aString, 0, StringUtil.GetLength(aString) - 1)
          endif

          ; convert from string color
          if textColorHex == "orange"
            textColorHex = colorOrange
          elseif textColorHex == "yellow"
            textColorHex = colorYellow
          elseif textColorHex == "red"
            textColorHex = colorRed
          elseif textColorHex == "blue"
            textColorHex = colorBlue
          elseif textColorHex == "gray"
            textColorHex = colorGray
          elseif textColorHex == "green"
            textColorHex = colorGreen
          elseif !textColorHex
            ; Choose color by text content
            if trimmedS == "Unassign" || trimmedS == "Restore"
              textColorHex = colorYellow
            elseif trimmedS == "Assign" || trimmedS == "Add" || trimmedS == "Save"
              textColorHex = colorGreen
            elseif trimmedS == "Unassigned" || trimmedS == "Assigned" || trimmedS == "N/A"
              textColorHex = colorGray
            elseif trimmedS == "Reassign"
              textColorHex = colorOrange
            elseif trimmedS == "Clear" || trimmedS == "Remove"
              textColorHex = colorRed
            endif
          endif
          aString = "<font color='#" + textColorHex + "'>" + aString + "</font>"
        endif
      endif
    else
      cErrReqDisabled("cColoredText")
    endif
  endif
  return aString
endfunction

Int    function cStringCountSubstring(String countThis, String inThis) global
  {Requirements: SKSE}
  Int returnInt
  if !countThis || !inThis
    cErrInvalidArg("cStringCountSubstring", "!countThis || !inThis", "-1")
    returnInt = -1
  else
    if clibUse.cUseSKSE()
      Int charIndex = 0
      Int numOccurences = 0
      while StringUtil.Find(inThis, countThis, charIndex) > 0
        charIndex = StringUtil.Find(inThis, countThis, charIndex) + StringUtil.GetLength(countThis)
        numOccurences += 1
      endwhile
      returnInt = numOccurences
    else
      cErrReqDisabled("cStringCountSubstring")
    endif
  endif
  return returnInt
endfunction

Enchantment[]  function cArrayBaseEnchantment(Enchantment[] aArray) global
  {Requirements: SKSE}
  if !aArray
    cErrInvalidArg("cArrayBaseEnchantment", "!aArray")
  else
    if clibUse.cUseSKSE()
      Enchantment aEnchantment
      Int numEnchantments = aArray.length
      Int i = 0
      while i < numEnchantments
        aEnchantment = aArray[i] as Enchantment
        if aEnchantment
          aArray[i] = aEnchantment.GetBaseEnchantment()
        else
          aArray[i] = None
        endif
      endwhile
    else
      cErrReqDisabled("cArrayBaseEnchantment")
    endif
  endif
  return aArray
endfunction

Bool     function cModPerkPoints(Int number = 1) global ; NOT compatible with Vokriinator Black!!
  {Requirements: SKSE}
  Bool returnBool
  if clibUse.cUseSKSE()
    Int beforePerkPoints = Game.GetPerkPoints()
    if number == 0
      cErrInvalidArg("cModPerkPoints", "number == 0")
    elseif number < 0 && beforePerkPoints < number
      cErrInvalidArg("cModPerkPoints", "number < 0 && beforePerkPoints < number")
    else
      Game.ModPerkPoints(number)
      if Game.GetPerkPoints() == beforePerkPoints + number
        returnBool = TRUE
      else
        clibTrace("cModPerkPoints", " Unknown error! Perk point balance unchanged! Returning False", 2)
      endif
    endif
  else
    cErrReqDisabled("cModPerkPoints")
  endif
  return returnBool
endfunction
Int      function cTotalPerkPoints(Actor aActor, String singleSkill = "") global
  {Requirements: SKSE}
  ; This function was found online and adapted. I do not recall where but this is the only solution I've found that
  ;   is moderately accurate without cataloging each and every perk mod.
  Int perks = 0
  if !aActor
    cErrInvalidArg("cTotalPerkPoints", "!aActor")
  elseif clibUse.cUsePO3()
    perks = PO3_SKSEFunctions.GetPerkCount(aActor.GetActorBase())
  elseif clibUse.cUseSKSE()
    String perkArray
    Int perkCount
    Int charIndex
    ActorValueInfo avi
    String[] skillList
    if singleSkill
      skillList = New String[1]
      skillList[0] = singleSkill
    else
      skillList = cArrayListSkillNames()
    endif
    Int i = 0
    while i < skillList.length
      avi = ActorValueInfo.GetActorValueInfobyName(skillList[i])
      perkArray = avi.GetPerks(aActor,false,true)
      charIndex = 0
      perkCount = 0
      while StringUtil.Find(perkArray,"<",charIndex) > 0
        charIndex = StringUtil.Find(perkArray,"<",charIndex) + 1
        perkCount += 1
      endwhile
      perks += perkCount
      i += 1
    endwhile
    perks += Game.GetPerkPoints()
  else
    cErrReqDisabled("cTotalPerkPoints")
  endif
  return perks
endfunction

String[] function cArrayStringFromKeywords(Keyword[] aArray) global
  {Requirements: SKSE}
  String[] newArray
  if !aArray
    cErrInvalidArg("cArrayStringFromKeywords", "!aArray")
  else
    if clibUse.cUseSKSE()
      newArray = cArrayCreateString(aArray.length)
      if newArray.length
        Int i = 0
        while i < aArray.length
          newArray[i] = cTernaryString(aArray[i], aArray[i].GetString(), "") ; ..GetString() requires SKSE
          i += 1
        endwhile
      else
        cErrArrInitFail("cArrayStringFromKeywords")
      endif
    else
      cErrReqDisabled("cArrayStringFromKeywords")
    endif
  endif
  return newArray
endfunction

String   function cGetScriptName() global
  {Requirements: None}
  return "clib"
endfunction  
