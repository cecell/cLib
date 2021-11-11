ScriptName clib Hidden

String function cGetScriptName() global
  {Requirements: None}
  return "clib"
endfunction
Int    function cGetVersion() global
  {Requirements: None}
  return 9001
endfunction
;Functions used to output error messages
function clibTrace(String functionName, String msg, Int errorLevel, Bool condition = TRUE, \
    Bool tryConsoleUtil = TRUE) global
  {Requirements: None, ConsoleUtil:Soft}
  condition = TRUE ; change this to false to disable all trace messages
  if condition
    Debug.Trace(cGetScriptName() + "::" + functionName + "():: " + msg, errorLevel)
    if tryConsoleUtil && ConsoleUtil.GetVersion()
      ConsoleUtil.PrintMessage(cTernaryString(errorLevel == 2, "Error! ", \
        cTernaryString(errorLevel == 1, "Warning: ", \
          cTernaryString(errorLevel == 0, "Info: ", ""))) + "clib::" + functionName + "() " + msg)
    endif
  endif
endfunction
function cErrInvalidArg(String functionName, String argName = "", String returnValue = "", \
    Int errorLevel = 2, Bool condition = TRUE, Bool useSKSE = TRUE, Bool tryConsoleUtil = TRUE) global
  {Requirements: None, ConsoleUtil:Soft}
  if useSKSE && StringUtil.Find(functionName, "array") != -1
    returnValue = "arrayNone"
  endif
  clibTrace(functionName, "Argument(s)" + cTernaryString(argName != "", ": " + argName, "") + " invalid!" + \
    cTernaryString(returnValue != "", " Returning " + returnValue, ""), errorLevel, condition, tryConsoleUtil)
endfunction
function cErrArrInitFail(String functionName, String arrayName = "newArray", String returnValue = "ArrayNone", \
    Int errorLevel = 2, Bool condition = TRUE, Bool tryConsoleUtil = TRUE) global
  {Requirements: None, ConsoleUtil:Soft}
  clibTrace(functionName, "Variable: " + arrayName + " failed to initialize! Returning " + returnValue, errorLevel, \
    condition, tryConsoleUtil)
endfunction
function cErrReqDisabled(String functionName, String modName = "SKSE", String returnValue = "", \
    Int errorLevel = 2, Bool condition = TRUE, Bool tryConsoleUtil = TRUE) global
  {Requirements: None, ConsoleUtil:Soft}
  clibTrace(functionName, modName + " functionality is disabled; This function cannot operate without it!" + \
    cTernaryString(returnValue == "", " Returning \"\"", ""), errorLevel, condition, tryConsoleUtil)
endfunction

;--------------------------SKSE:HARD-------------------------------------------

String function cGetModName(String hexForm = "", Int decForm = 0,Form formVar = None, Bool useSKSE = TRUE) global
  {Requirements: SKSE}
  String returnString
  if useSKSE
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
endFunction
String function cGetModNameForm(Form aForm, Bool useSKSE = TRUE) global
  {Requirements: SKSE}
  ; This function came from Mr Octopus!! Thank you!!!
  if useSKSE
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
Bool   function cIsInAnyMenu(Bool useSKSE = TRUE) global ; .IsInMenuMode() returns different sometimes! Use this if incorrect return
  {Requirements: SKSE}
  if useSKSE
    return !UI.IsMenuOpen("Console") && !UI.IsMenuOpen("RaceSex Menu") && \
        !UI.IsMenuOpen("Sleep/Wait Menu") && !UI.IsMenuOpen("ContainerMenu") && !UI.IsMenuOpen("FavoritesMenu") && \
          !UI.IsMenuOpen("Crafting Menu") && !UI.IsMenuOpen("MainMenu") && !UI.IsMenuOpen("JournalMenu") && \
            !UI.IsMenuOpen("InventoryMenu") && !UI.IsMenuOpen("Console Native UI Menu") && \
              !UI.IsMenuOpen("Dialogue Menu")
  else
    cErrReqDisabled("cIsInAnyMenu")
  endif
endfunction
Bool[] function cArePluginsInstalled(String[] listOfPlugins, Bool useSKSE = TRUE) global
  {Requirements: SKSE}
  Bool[] newArray
  if !listOfPlugins
    cErrInvalidArg("cAreFilesInstalled", "!listOfPlugins")
  elseif useSKSE
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
  ;>>> Returns text with MCM menu color formatting
String function cColoredText(String aString, Bool ddInstalled = False, String textColorHex = "", String trimWhere = "", \
    Bool useSKSE = TRUE) global
  {Requirements: SKSE:Hard, SkyUI:Soft unsure if hard}
  ; Valid options for trimWhere are "left", "right", "both"
  ; Unsure what other applications there are for color formatted text like this
  if !aString && !textColorHex
    cErrInvalidArg("cColoredText", "!aString && !textColorHex", "\"\"")
  else
    if useSKSE
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

Int function cStringCountSubstring(String countThis, String inThis, Bool useSKSE = TRUE) global
  {Requirements: SKSE}
  Int returnInt
  if !countThis || !inThis
    cErrInvalidArg("cStringCountSubstring", "!countThis || !inThis", "-1")
    returnInt = -1
  else
    if useSKSE
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

Enchantment[]  function cArrayBaseEnchantment(Enchantment[] aArray, Bool useSKSE = TRUE) global
  {Requirements: SKSE}
  if !aArray
    cErrInvalidArg("cArrayBaseEnchantment", "!aArray")
  else
    if useSKSE
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

Bool     function cModPerkPoints(Int number = 1, Bool useSKSE = TRUE) global ; NOT compatible with Vokriinator Black!!
  {Requirements: SKSE}
  Bool returnBool
  if useSKSE
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
Int      function cTotalPerkPoints(Actor aActor, String singleSkill = "", Bool useSKSE = TRUE, \
    Bool usePO3 = TRUE) global
  {Requirements: SKSE}
  ; This function was found online and adapted. I do not recall where but this is the only solution I've found that
  ;   is moderately accurate without cataloging each and every perk mod.
  Int perks = 0
  if !aActor
    cErrInvalidArg("cTotalPerkPoints", "!aActor")
  elseif usePO3
    perks = PO3_SKSEFunctions.GetPerkCount(aActor.GetActorBase())
  elseif useSKSE
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
Form[]   function cGetAllEquippedForms(Actor aActor, Bool useSKSE = TRUE, Bool usePO3 = TRUE) global
  {Requirements: SKSE}
  ; Got this function online somewhere don't recall where. Credit goes to that coder not me!
  Form[] itemsArray
  if !aActor
    cErrInvalidArg("cGetAllEquippedForms", "!aActor")
  elseif usePO3
    itemsArray = PO3_SKSEFunctions.AddAllEquippedItemsToArray(aActor)
  elseif useSKSE
    Form curForm
    Int i
    Int slotschecked
    slotschecked += 0x00100000
    slotschecked += 0x00200000 ;ignore reserved slots
    slotschecked += 0x80000000
    Int thisSlot = 0x01
    while thisSlot < 0x80000000
      ;only check slots we haven't found anything equipped on already
      if Math.LogicalAnd(slotschecked, thisSlot) != thisSlot
        curForm = aActor.GetWornForm(thisSlot)
        if curForm
          itemsArray = PapyrusUtil.PushForm(itemsArray, curForm)
        else ;no armor was found on this slot
          slotschecked += thisSlot
        endif
      endif
      thisSlot *= 2 ;double the number to move on to the next slot
    endwhile
  else
    cErrReqDisabled("cGetAllEquippedForms")
  endif
  return itemsArray
endfunction

String[] function cArrayStringFromKeywords(Keyword[] aArray, Bool useSKSE = TRUE) global
  {Requirements: SKSE}
  String[] newArray
  if !aArray
    cErrInvalidArg("cArrayStringFromKeywords", "!aArray")
  else
    if useSKSE
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

;------------------------------------------------------------------------------
;---------------------NOTHING AFTER HERE REQUIRES SKSE-------------------------
;------------------------------------------------------------------------------

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
  elseif useSKSE && !Game.IsPluginInstalled(esXName)
    cErrInvalidArg("cArrayHexIDToForms", "useSKSE && !Game.IsPluginInstalled(esXName)")
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
  elseif useSKSE && !Game.IsPluginInstalled(esXName)
    cErrInvalidArg("cArrayIntIDToForms", "useSKSE && !Game.IsPluginInstalled(esXName)")
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
  elseif useSKSE && !Game.IsPluginInstalled(esXName)
    cErrInvalidArg("cArrayIntIDModNamesToForms", "useSKSE && !Game.IsPluginInstalled(esXName)")
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
        if useSKSE && !Game.IsPluginInstalled(esXNames[i])
          clibTrace("cArrayHexIDModNamesToForms", " EXCEPTION: Argument esXName (" + esXNames[i] + ") is not installed!", 2)
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
  elseif useSKSE
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
    if useSKSE
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
    cErrInvalidArg("cArrayNameFromForms", "aArray")
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
    cErrInvalidArg("cArrayNameFromFL", "aFormList")
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
  elseif useSKSE
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
endFunction

;====== Map/Spatial
  ;>>> Map positions
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
  ;>>> Translation (CK to XY, e.g. CK: 33, 8 == x: 135168, y: 32768)
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
  ;>>> get the actual Form of the Cell ObjectReference/Actor is currently in (Tamriel only for now)
Cell    function cGetCellFromCoords(Int ckX, Int ckY, Float xVar = 0.0, Float yVar = 0.0) global
  {Requirements: None}
  ;Grid Map for reference
  ;https://docs.google.com/spreadsheets/d/1yhsNb12btLWpRNRIpZ2DfjVsWR946qEZTmVML_Wi9U8/edit?usp=sharing
  Cell returnCell
  if !cIsBetweenInt(ckX, -57, 60)
    cErrInvalidArg("GetCellFromCoords", "!cIsBetweenInt(ckX, -57, 60)")
  elseif !cIsBetweenInt(ckY, -43, 50)
    cErrInvalidArg("GetCellFromCoords", "!cIsBetweenInt(ckY, -43, 50)")
  else
    returnCell = cGetCell.GetCellFromCoords(ckX, ckY, xVar, yVar) as Cell
  endif
  return returnCell
endfunction
Int     function cGetCellFormIDFromCoords(Int ckX, Int ckY, Float xVar = 0.0, Float yVar = 0.0) global
  {Requirements: None}
  ;https://docs.google.com/spreadsheets/d/1yhsNb12btLWpRNRIpZ2DfjVsWR946qEZTmVML_Wi9U8/edit?usp=sharing
  Int returnInt
  if !cIsBetweenInt(ckX, -57, 60)
    cErrInvalidArg("cGetCellFormIDFromCoords", "!cIsBetweenInt(ckX, -57, 60)", 0)
  elseif !cIsBetweenInt(ckY, -43, 50)
    cErrInvalidArg("cGetCellFormIDFromCoords", "!cIsBetweenInt(ckY, -43, 50)", 0)
  elseif !cIsBetweenFloat(xVar, -235520.0, 247808.0) 
    cErrInvalidArg("cGetCellFormIDFromCoords", "!cIsBetweenFloat(xVar, -235520.0, 247808.0)", 0)
  elseif !cIsBetweenFloat(yVar, 206848.0, -178176.0)
    cErrInvalidArg("cGetCellFormIDFromCoords", "!cIsBetweenFloat(yVar, 206848.0, -178176.0)", 0)
  else
    returnInt = cGetCell.GetCellFormIDFromCoords(ckX, ckY, xVar, yVar)
  endif
  return returnInt
endfunction

  ;>>> get the distance for from array of objects
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

; Spatial ref data https://www.creationkit.com/index.php?title=Unit
;1	   1.428 cm	  0.5625"
;64:   91.41 cm	  3'
;128:  1.82m	    6' (1.0 height character)
;4096: 58.5m	  192' (dimension of a cell)

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

;-----------------------Math/Logic------------------------------------------000
;====== Analysis
; 21-11-09 - Test Success
Bool function cIsEven(Int aInt) global
  {Requirements: None}
  return aInt % 2 == 0
endfunction
; 21-11-09 - Test Success
Bool function cIsOdd(Int aInt) global
  {Requirements: None}
  return aInt % 2 != 0
endfunction
; 21-11-09 - Test Success
Bool function cIsFloat(String aString) global ; may not work with very small/large numbers
  {Requirements: None}
  return !cIsInt(aString)
endfunction
; 21-11-09 - Test Success
Bool function cIsInt(String aString) global
  {Requirements: None}
  return ((aString as Float) as Int) as String == aString
endfunction
; 21-11-09 - Test Success
Bool function cIsBetweenFloat(Float aValue, Float minV, Float maxV) global
  {Requirements: None}
  if minV > maxV
    cErrInvalidArg("cIsBetweenFloat", "minV > maxV", "False")
  else
    return minV <= maxV && aValue >= minV && aValue <= maxV
  endif
  return False
endfunction
; 21-11-09 - Test Success
Bool function cIsBetweenInt(Int aValue, Int minV, Int maxV) global
  {Requirements: None}
  if minV > maxV
    cErrInvalidArg("cIsBetweenInt", "minV > maxV", "False")
  else
    return minV <= maxV && aValue >= minV && aValue <= maxV
  endif
  return False
endfunction

;====== Manipulation
; 21-11-09 - Test Success
Float function cClampFloat(Float aValue, Float minV, Float maxV) global
	{Requirements: None}
  if minV > maxV
    cErrInvalidArg("cClampFloat", "minV > maxV", "False")
  else
    return cTernaryFloat(aValue > maxV, maxV, cTernaryFloat(aValue < minV, minV, aValue))
  endif
  return aValue
EndFunction
; 21-11-09 - Test Success
Int   function cClampInt(Int aValue, Int minV, Int maxV) global
	{Requirements: None}
  if minV > maxV
    cErrInvalidArg("cClampInt", "minV > maxV", "False")
  else
    return cTernaryInt(aValue > maxV, maxV, cTernaryInt(aValue < minV, minV, aValue))
  endif
  return aValue
EndFunction

;====== Rounding
; 21-11-09 - Test Success
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
; 21-11-09 - Test Success
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

;====== Compacted if/then 
; NOTE: These functions can't short circuit like a traditional ternary. Thus, they're most efficient if only
;   one argument is a function. If both are functions they *both* will be run before returning a value;
;   Nesting these functions is perfectly fine with numbers or operator calculations but know this: nesting 
;   with multiple functions as arguments will results in *allllll* of the function being called. Use of
;   traditional if/then is recommended in those cases. Nexting ternary functions *inside* if thens works
;   great though (and will still shave lines off)
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
ObjectReference[] function cTernaryArrayObjRef(Bool ifThis, ObjectReference[] returnThis, ObjectReference[] elseThis) global
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
  ;>>> Perfect if the returns themselves ARE the condition
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
; 21-11-09 - Visual check
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
; 21-11-09 - Visual check
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
; 21-11-09 - Visual check
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
; 21-11-09 - Visual check
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
; 21-11-09 - Visual check
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
; 21-11-09 - Visual check
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
; 21-11-09 - Visual check
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

function cActualSwitchTemplate(Int case) ; global ; <- commented out global on purpose message.Show() results
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

;======= Random Number Generation for numbers > 100 (no limitation aside from VM capability at this point)
Float   function cRandomNumberGenFloat(Float this, Float that) global 
  {Requirements: None}
  Float returnFloat
  if this > that
    cErrInvalidArg("cRandomNumberGenFloat", "this > that")
  else
    returnFloat = this + (that - this) * Utility.RandomFloat(0.0, 1.0)
  endif
  return returnFloat
endfunction
Int     function cRandomNumberGenInt(Int this, Int that) global 
  {Requirements: None}
  Int returnInt
  if this > that
    cErrInvalidArg("cRandomNumberGenInt", "this > that")
  else
    Float difference = (that as Float) - (this as Float)
    difference *= Utility.RandomFloat(0, 1)
    returnInt = this + (difference as Int)
  endif
  return returnInt
endfunction
  ;>>> Create array of random numbers, capped at 128 indices
Float[] function cArrayRandomFloats(Int arraySize = 128, Float this = 0.0, Float that = 100.0, Bool eachDiff = False) global 
  {Requirements: None}
  ; array limited to 128
  ; if eachDiff, each random number must be completely new (the smaller the difference between this and that 
  ;   the longer this process will take!)
  arraySize = cClampInt(arraySize, 0, 128)
  Float[] returnArray = cArrayCreateFloat(arraySize)
  Float curValue
  if this > that
    cErrInvalidArg("cArrayRandomFloats", "this > that")
  elseif this == that && eachDiff
    cErrInvalidArg("cArrayRandomFloats", "this == that")
  elseif (that - this < 1.0) && eachDiff ; need a larger margin to ensure there are enough different values
    cErrInvalidArg("cArrayRandomFloats", "(that - this < 1.0) && eachDiff")
  else
    Int i = 0
    while i < arraySize
      curValue = cRandomNumberGenFloat(this, that)
      while returnArray.Find(curValue) != -1 && eachDiff
        curValue = cRandomNumberGenFloat(this, that)
      endwhile
      returnArray[i] = curValue
      i += 1
    endwhile
  endif
  return returnArray
endfunction
Int[]   function cArrayRandomInts(Int arraySize = 128, Int this = 0, Int that = 100, Bool eachDiff = False) global 
  {Requirements: None}
  ; array limited to 128
  ; if eachDiff, each random number must be completely new (the smaller the difference between this and that 
  ;   the longer this process will take!)
  arraySize = cClampInt(arraySize, 0, 128)
  Int[] returnArray = cArrayCreateInt(arraySize)
  Int curValue
  if this > that
    cErrInvalidArg("cArrayRandomInts", "this > that")
  elseif this == that && eachDiff
    cErrInvalidArg("cArrayRandomInts", "this == that && eachDiff")
  elseif ((that - this) < arraySize) && eachDiff
    cErrInvalidArg("cArrayRandomInts", "((that - this) < arraySize) && eachDiff")
  else
    Int i = 0
    while i < arraySize
      curValue = cRandomNumberGenInt(this, that)
      while returnArray.Find(curValue) != -1 && eachDiff
        curValue = cRandomNumberGenInt(this, that)
      endwhile
      returnArray[i] = curValue
      i += 1
    endwhile
  endif
  return returnArray
endfunction

;====== Hex <-> Decimal conversion
; 21-11-09 - Test Success
String function cD2H(Int aInt, Bool useSKSE = TRUE) global ; non-SKSE option built-in thanks dylbill!!
  {Requirements: None, SKSE:Soft}
  String returnString
  if useSKSE
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
; 21-11-09 - Test Success
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

;====== Math 
; 21-11-09 - Test Success
Float    function cArraySumFloat(Float[] aArray) global
  {Requirements: None}
  Float aFloat
  if !aArray
    cErrInvalidArg("cArraySumFloat", "aArray", "0.0")
  else
    Int i = 0
    while i < aArray.length
      aFloat += aArray[i]
      i += 1
    endwhile
  endif
  return aFloat
endfunction
; 21-11-09 - Test Success
Int      function cArraySumInt(Int[] aArray) global
  {Requirements: None}
  Int aInt
  if !aArray
    cErrInvalidArg("cArraySumInt", "!aArray", "0")
  else
    Int i = 0
    while i < aArray.length
      aInt += aArray[i]
      i += 1
    endwhile
  endif
  return aInt
endfunction
; 21-11-09 - Test Success
Float    function cArrayAverageFloat(Float[] aArray) global
  {Requirements: None}
  Float aFloat
  if !aArray
    cErrInvalidArg("cArrayAverageFloat", "aArray", "0.0")
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
; 21-11-09 - Test Success
Int      function cArrayAverageInt(Int[] aArray) global
  {Requirements: None}
  ; remainder is dropped!
  Int aInt
  if !aArray
    cErrInvalidArg("cArrayAverageInt", "aArray", "0")
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

;====== Bitwise operations (all Non-SKSE)
; All of the 
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
; The non-SKSE functionality for these uses the function above, otherwise uses regular SKSE
Int function cLogicalAND(Int i1, Int i2, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  if useSKSE
    return Math.LogicalAND(i1, i2)
  else
    return cBitwiseOp(i1, i2, 31, 1)
  endif
endfunction
Int function cLogicalNOT(Int i1, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  if useSKSE
    return Math.LogicalNOT(i1)
  else
    return cBitwiseOp(i1, 0, 31, 0)
  endif
endfunction
Int function cLogicalOR(Int i1, Int i2, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  if useSKSE
    return Math.LogicalOR(i1, i2)
  else
    return cBitwiseOp(i1, i2, 31, 2)
  endif
endfunction
Int function cLogicalXOR(Int i1, Int i2, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  if useSKSE
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


;--------------------------STRINGS---------------------------------------------

;====== Analysis/Query
;CONFIRMED WORKING 21-11-02
Bool   function cStringIsLetter(String aLetter, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  ; Like the SKSE version, the non-SKSE version only checks the first char
  ; thank you cadpnq for the suggestion that made the non-SKSE version possible!
  Bool returnBool
  if !aLetter
    cErrInvalidArg("cStringIsLetter", "!aLetter")
  elseif useSKSE
    returnBool = StringUtil.IsLetter(aLetter)
  else
    String aString = cStringASCIICheck(aLetter, "", cArrayASCIIChars())
    returnBool = aString > "`" && aString < "{"
  endif
  return returnBool
endfunction
;CONFIRMED WORKING 21-11-02
Bool   function cStringIsDigit(String aDigit, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  ; thank you cadpnq for the suggestion that made the non-SKSE version possible!
  Bool returnBool
  ; removed all argument checks, should check anything
  if useSKSE
    returnBool = StringUtil.IsDigit(aDigit)
  else
    returnBool = aDigit > "//" && aDigit < ":"
  endif
  return returnBool
endfunction
;CONFIRMED WORKING 21-11-02
Bool   function cStringIsMiscChar(String aChar) global
  {Requirements: None}
  ; This is !cStringIsDigit(aChar) && !cStringIsLetter(aChar)
  ; thank you cadpnq for the suggestion that made the non-SKSE version possible!
  Bool returnBool
  if !aChar
    cErrInvalidArg("cStringIsMiscChar", "!insertThis", "\"\"")
  else
    returnBool = !cStringIsDigit(aChar) && !cStringIsLetter(aChar)
  endif
  return returnBool
endfunction
;CONFIRMED WORKING 21-11-02
Int    function cStringFind(String inThis, String findThis, Int startIndex = 0, String[] inThisArray = None, \ 
    Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
   ; argument inThisArray is only for NON-SKSE version. If an array is not provided Papyrus will output an error 
   ;   to the log! cArrayNoneString() works just fine. This argument is only here to speed up the process if 
   ;   calling function already has the array to provide.
  Int returnInt = -1
  if !inThis
    cErrInvalidArg("cStringFind", "!inThis", "\"\"") ; log message reporting invalid argument
  elseif !findThis
    cErrInvalidArg("cStringFind", "!findThis", "\"\"")  ; log message reporting invalid argument
  elseif useSKSE ; is SKSE available?
    returnInt = StringUtil.Find(inThis, findThis, startIndex) ; with SKSE single command
  else
    String[] findThisArray = cStringToArray(findThis, -1)  ; split the string to find to an array
    if !inThisArray
      inThisArray = cStringToArray(inThis, -1) ; split the main string to an array
    endif
    String workingString = ""                                     ; this is the string used to build the comparison
    Int firstIndex = 0            ; used to start the search
    Int nextIndex = 0           ; next step in the search
    Int charsInARow = 0           ; how many letters in a row have we found that match?
    Int lastPossible = inThisArray.length - findThisArray.length  ; number to control runaway loop
                  ;clibTrace("cStringFind", "000 inThis: " + inThis + ", findThis: " + findThis, 0)
    while firstIndex != -1 && firstIndex < lastPossible
      charsInARow = 0       ; reset for new attempt
      workingString = ""      ; reset for new attempt
      returnInt = -1        ; reset for new attempt
      firstIndex = inThisArray.Find(findThisArray[charsInARow], nextIndex)
      ; find first occurrence of first letter OR first occurrence of first letter *after* last second index
      if firstIndex != -1  ; did it find anything? (firstIndex == -1 breaks the outer loop)
        charsInARow += 1 ; found one character 'in a row'
        workingString += inThisArray[firstIndex] ; building a string with the letters found for final comparison
        nextIndex = inThisArray.Find(findThisArray[charsInARow], firstIndex + 1) ; find first occurrence of next letter 
        if nextIndex != -1 ; did it find anything? (firstIndex == -1 breaks the outer loop)
          if nextIndex == (firstIndex + 1) ; is the second index the 'next' index?
            workingString += inThisArray[nextIndex] ; keep building
            charsInARow += 1 ; that's one more character 'in a row'
            while inThisArray[firstIndex + charsInARow] == findThisArray[charsInARow] && charsInARow < findThisArray.length
              ; now take off, two characters in row move faster to see if the rest matches and break if not
              if inThisArray[firstIndex + charsInARow] == findThisArray[charsInARow] 
                ; does the next letter in the string match the next letter in the findThis array?
                workingString += inThisArray[firstIndex + charsInARow] ; if so...keep building
                if workingString == findThis ; does the built string match what we're looking for?
                  charsInARow = findThisArray.length ; if so, then break inner loop, we're done!!
                  returnInt = firstIndex ; set the return to the value of 'firstIndex' since that's the first letter
                  firstIndex = -1 ; break the outer loop since we're done
                endif
              endif
              charsInARow += 1
            endwhile
          endif
        else
          firstIndex = -1 ; stop everything, the next letter isn't found anywhere so it's a bust
          returnInt = -1  ; make sure we're returning -1 which means not found
        endif
      endif
    endwhile
  endif
  return returnInt
endfunction
;CONFIRMED WORKING 21-11-02
Int    function cStringLength(String aString, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  ; Because the entire string must be parsed to calculate the size it is recommended to combine string handling 
  ;   functions if possible. Non-SKSE max length 128
  ; thank you cadpnq for the suggestion that made the non-SKSE version possible!
  Int returnInt = 0
  if useSKSE
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
;CONFIRMED WORKING 21-11-02
String function cStringGetNthChar(String aString, Int n, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  ; thank you cadpnq for the suggestion that made the non-SKSE version possible!
  String returnString = ""
  if !aString
    cErrInvalidArg("cStringGetNthChar", "!aString")
  elseif n < 0
    cErrInvalidArg("cStringGetNthChar", "n < 0")
  elseif useSKSE
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

;====== Manipulation
String   function cStringReplace(String aString, String toReplace, String withWhat = "", Bool useSKSE = TRUE) global
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
    if useSKSE
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
        startIndex = cStringFind(returnString, toReplace, 0, stringBuild) ;<- already have array so pass it
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
  ;>>> String truncation
;CONFIRMED WORKING
String   function cStringRemove(String aString, String toRemove) global
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
;CONFIRMED WORKING 21-11-02
String   function cStringLeft(String aString, Int numChars, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  ; thank you cadpnq for the suggestion that made the non-SKSE version possible!
  String returnString
  if !aString
    cErrInvalidArg("cStringLeft", "!aString", "\"\"")
  elseif !numChars 
    cErrInvalidArg("cStringLeft", "!numChars", "\"\"")
  elseif numChars < 0
    cErrInvalidArg("cStringLeft", "numChars < 0", "\"\"")
  elseif useSKSE
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
;CONFIRMED WORKING 21-11-02
String   function cStringRight(String aString, Int numChars, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  ; thank you cadpnq for the suggestion that made the non-SKSE version possible!
  String returnString
  if !aString
    cErrInvalidArg("cStringRight", "!aString", "\"\"")
  elseif numChars == 0
    cErrInvalidArg("cStringRight", "numChars == 0", "\"\"")
  elseif useSKSE
    Int stringLength = StringUtil.GetLength(aString)
    returnString = cTernaryString(stringLength < numChars, aString, StringUtil.SubString(aString, \
      stringLength - numChars, 0))
  else
    String[] stringBuild = cStringToArray(aString, -1)
    returnString = cArrayJoinString(stringBuild, "", stringBuild.length - numChars)
  endif
  return returnString
endfunction
;CONFIRMED WORKING 21-11-02
String   function cStringSetLength(String aString, Int stringLength, String filler = " ") global
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
;CONFIRMED WORKING 21-11-02 *--* Modified
String   function cStringTrimLeft(String aString, String charToTrim = " ", Bool useSKSE = TRUE) global
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
    elseif useSKSE
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
;CONFIRMED WORKING 21-11-02
String   function cStringTrimRight(String aString, String charToTrim = " ", Bool useSKSE = TRUE) global
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
    if useSKSE
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
;CONFIRMED WORKING 21-11-02
String   function cStringTrim(String aString, String charToTrim = " ", Bool useSKSE = TRUE) global ; trim both ends
  {Requirements: None, SKSE:Soft}
  ; rewritten to allow charToTrim to be longer than one char in ***SKSE version only!*** One char only in non-SKSE
  ; thank you cadpnq for the suggestion that made the non-SKSE version possible!
  String returnString
  Int len = 0
  Int lengthToTrim = 0
  if useSKSE
    len = StringUtil.GetLength(aString)
    lengthToTrim = StringUtil.GetLength(charToTrim)
  endif
  if !aString
    cErrInvalidArg("cStringTrimRight", "!aString", "\"\"")
  elseif !charToTrim
    cErrInvalidArg("cStringTrimRight", "!charToTrim", "\"\"")
  elseif lengthToTrim > len
    cErrInvalidArg("cStringTrimRight", "lengthToTrim > len", "\"\"")
  else
    returnString = cStringTrimRight(cStringTrimLeft(aString, charToTrim), charToTrim)
  endif
  return returnString
endfunction
;CONFIRMED WORKING 21-11-02
String   function cStringSubString(String aString, Int startChar, Int numChars = 0, Bool useSKSE = TRUE) global
  {Requirements None, SKSE:Soft}
  String returnString
  if !aString
    cErrInvalidArg("cStringSubString", "!aString", "\"\"")
  elseif numChars < 0
    cErrInvalidArg("cStringSubString", "numChars < 0", "\"\"")
  elseif useSKSE
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
; 21-11-09 - Test Success
String   function cStringSetNthChar(String aString, Int a1stCharIndex, String withThis1st = "", Int a2ndCharIndex = 0, \
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
; 21-11-09 - Test Success
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
;CONFIRMED WORKING 21-11-02
String[] function cStringToArray(String aString, Int numChars = -1, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  ; Splits a string into an array of its characters 
  String[] stringBuild
  if !aString
    cErrInvalidArg("cStringToArray", "!aString")
  elseif useSKSE
    Int stringLength = StringUtil.GetLength(aString)
    if stringLength == 1 || numChars == 1
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
;CONFIRMED WORKING 21-11-02
String[] function cStringHexToArray(String aString, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  ; Non-SKSE version only has to look through the *16* hex digits as opposed to all 69 ASCII chars
  String[] stringBuild
  if !aString
    cErrInvalidArg("cStringToArray", "!aString")
  elseif useSKSE
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

;====== Creation
;CONFIRMED WORKING 21-11-02
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

;====== Grammar/Spelling (used for dynamic message generation)
;CONFIRMED WORKING 21-11-02
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
;CONFIRMED WORKING 21-11-02
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

;====== These functions make string manipulation possible w/o SKSE
;***CONFIRMED WORKING 21-11-02
String   function cStringASCIICheck(String aString, String builtString, String[] asciiChars) global
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
;CONFIRMED WORKING 21-11-09
String   function cStringHexCheck(String aString, String builtString, String[] hexDigits) global
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


;--------------------------Array Functions-----------------------------
;====== Math 
  ;>>> see ArraySumFloat && ArraySumInt in "Math" section above
  
;====== to/from Formlist
FormList function cFLAddFormsFromArray(Form[] aArray, FormList aFormList, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  if !aArray
    cErrInvalidArg("cFLAddFormsFromArray", "!aArray", "None")
  elseif !aFormlist
    cErrInvalidArg("cFLAddFormsFromArray", "!aFormList", "None")
  else
    if useSKSE
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
Form[]   function cArrayFromFLForm(FormList aFormList, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  Form[] newArray
  if !aFormList
    cErrInvalidArg("cArrayFromFLForm", "aFormList", "")
  else
    if useSKSE
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

  ;>>> Conversion
Bool[] function cArrayIntToBool(Int[] aArray) global
  {Requirements:None}
  Bool[] newArray = cArrayCreateBool(aArray.length)
  if newArray.length
    Int i = 0
    while i < aArray.length
      newArray[i] = aArray[i] as Bool
      i += 1
    endwhile
  else
    cErrArrInitFail("cArrayIntToBool")
  endif
  return newArray
endfunction
Int[] function cArrayBoolToInt(Int[] aArray) global
  {Requirements:None}
  Int[] newArray = cArrayCreateInt(aArray.length)
  if newArray.length
    Int i = 0
    while i < aArray.length
      newArray[i] = aArray[i] as Int
      i += 1
    endwhile
  else
    cErrArrInitFail("cArrayBoolToInt")
  endif
  return newArray
endfunction
ActorBase[] function cArrayActorToActorBase(Actor[] aArray) global
  {Requirements:None}
  ActorBase[] newArray = cArrayCreateActorBase(aArray.length)
  if newArray.length
    Int i = 0
    while i < aArray.length
      newArray[i] = aArray[i].GetLeveledActorBase()
      i += 1
    endwhile
  else
    cErrArrInitFail("cArrayActorToActorBase")
  endif
  return newArray
endfunction
Form[] function cArrayObjRefToBaseObject(ObjectReference[] aArray) global
  {Requirements:None}
  Form[] newArray = cArrayCreateForm(aArray.length)
  if newArray.length
    Int i = 0
    while i < aArray.length
      newArray[i] = aArray[i].GetBaseObject()
      i += 1
    endwhile
  else
    cErrArrInitFail("cArrayObjRefToBaseObject")
  endif
  return newArray
endfunction

;====== Analysis/Comparison/Query/Tally
  ;>>> Returns what it says
; 21-11-08 - Test Success
Float function cArraySmallestFloat(Float[] aArray) global
  {Requirements: None}
  Float smallestValue = 214748364.0
  if !aArray
    cErrInvalidArg("cArraySmallestFloat", "aArray", "0.0")
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
; 21-11-08 - Test Success
Int   function cArraySmallestInt(Int[] aArray) global
  {Requirements: None}
  Int smallestValue = 214748364
  if !aArray
    cErrInvalidArg("cArraySmallestInt", "aArray", "0")
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
; 21-11-08 - Test Success, Corrections
Float function cArrayLargestFloat(Float[] aArray) global
  {Requirements: None}
  Float largestValue = -214748364.0
  if !aArray
    cErrInvalidArg("cArrayLargestFloat", "aArray", "0.0")
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
; 21-11-08 - Test Success, Corrections
Int   function cArrayLargestInt(Int[] aArray) global
  {Requirements: None}
  Int largestValue = -214748364
  if !aArray
    cErrInvalidArg("cArrayLargestInt", "aArray", "0")
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
 
  ;>>> Returns array of indices == valueToFind, also can provide the inverse
; 21-11-08 - Success-bp, Manual Review, Optimizations
Int[] function cArrayGetValueIndicesActor(Actor[] aArray, Actor valueToFind = None, Bool invertIt = False) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayGetValueIndicesActor", "aArray")
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
; 21-11-08 - Success-bp, Manual Review, Optimizations
Int[] function cArrayGetValueIndicesAlias(Alias[] aArray, Alias valueToFind = None, Bool invertIt = False) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayGetValueIndicesAlias", "aArray")
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
; 21-11-08 - Success-bp, Manual Review, Optimizations
Int[] function cArrayGetValueIndicesBool(Bool[] aArray, Bool valueToFind = False, Bool invertIt = False) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayGetValueIndicesBool", "aArray")
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
; 21-11-08 - Success-bp, Manual Review, Optimizations
Int[] function cArrayGetValueIndicesFloat(Float[] aArray, Float valueToFind = 0.0, Bool invertIt = False) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayGetValueIndicesFloat", "aArray")
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
; 21-11-08 - Success-bp, Manual Review, Optimizations
Int[] function cArrayGetValueIndicesForm(Form[] aArray, Form valueToFind = None, Bool invertIt = False) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayGetValueIndicesForm", "aArray")
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
; 21-11-08 - Success-bp, Manual Review, Optimizations
Int[] function cArrayGetValueIndicesInt(Int[] aArray, Int valueToFind = 0, Bool invertIt = False) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayGetValueIndicesInt", "aArray")
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
; 21-11-08 - Success-bp, Manual Review, Optimizations
Int[] function cArrayGetValueIndicesObjRef(ObjectReference[] aArray, ObjectReference valueToFind = None, \
  Bool invertIt = False) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayGetValueIndicesObjectReference", "aArray")
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
; 21-11-08 - Test Success, Optimizations
Int[] function cArrayGetValueIndicesString(String[] aArray, String valueToFind = "", Bool invertIt = False) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayGetValueIndicesString", "aArray")
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
; 21-11-08 - Success-bp, Manual Review, Optimizations
Int function cArrayFindActor(Actor[] aArray, Actor aValue = None, Int startAt = 0, Bool invertIt = TRUE) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFindActor", "aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayFindActor", "aArray")
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
; 21-11-08 - Success-bp, Manual Review, Optimizations
Int function cArrayFindAlias(Alias[] aArray, Alias aValue = None, Int startAt = 0, Bool invertIt = TRUE) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFindAlias", "aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayFindAlias", "aArray")
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
; 21-11-08 - Success-bp, Manual Review, Optimizations
Int function cArrayFindBool(Bool[] aArray, Bool aValue = False, Int startAt = 0, Bool invertIt = TRUE) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFindBool", "aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayFindBool", "aArray")
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
; 21-11-08 - Success-bp, Manual Review, Optimizations
Int function cArrayFindFloat(Float[] aArray, Float aValue = 0.0, Int startAt = 0, Bool invertIt = TRUE) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFindFloat", "aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayFindFloat", "aArray")
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
; 21-11-08 - Success-bp, Manual Review, Optimizations
Int function cArrayFindForm(Form[] aArray, Form aValue = None, Int startAt = 0, Bool invertIt = TRUE) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFindForm", "aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayFindForm", "aArray")
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
; 21-11-08 - Success-bp, Manual Review, Optimizations
Int function cArrayFindInt(Int[] aArray, Int aValue = 0, Int startAt = 0, Bool invertIt = TRUE) global
  {Requirements: None}
  ; kept for invertIt
  if !aArray
    cErrInvalidArg("cArrayFindInt", "aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayFindInt", "aArray")
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
; 21-11-08 - Test Success, Optimizations
Int function cArrayFindObjRef(ObjectReference[] aArray, ObjectReference aValue = None, Int startAt = 0, Bool invertIt = TRUE) global
  {Requirements: None}
  ; kept for invert
  if !aArray
    cErrInvalidArg("cArrayFindObjRef", "aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayFindObjRef", "aArray")
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
; 21-11-08 - Test Success, Optimizations
Int function cArrayFindString(String[] aArray, String aValue = "", Int startAt = 0, Bool invertIt = TRUE) global
  {Requirements: None}
  ; kept for invert
  if !aArray
    cErrInvalidArg("cArrayFindString", "aArray")
  elseif startAt < 0
    cErrInvalidArg("cArrayFindString", "aArray")
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
; 21-11-08 - Success-bp, Manual Review, Optimizations
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
; 21-11-08 - Success-bp, Manual Review, Optimizations
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
; 21-11-08 - Success-bp && Manual Review - Improvements made
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
; 21-11-08 - Success-bp, Manual Review, Optimizations
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
; 21-11-08 - Success-bp, Manual Review, Optimizations
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
; 21-11-08 - Success-bp, Manual Review, Optimizations
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
; 21-11-08 - Success-bp, Manual Review, Optimizations
Int function cArrayRFindObjRef(ObjectReference[] aArray, ObjectReference aValue = None, Int startAt = 0, Bool invertIt = TRUE) global
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
; 21-11-08 - Test Success, Optimizations
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
  
  ;>>> Returns first value that if cast to Bool == TRUE
; 21-11-08 - Success-bp, Manual Review, Optimizations
Actor  function cArrayFirstActor(Actor[] aArray, Bool invertIt = False) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFirstActor", "!aArray", "")
  else
    Int i = 0
    while i < aArray.length
      if ((aArray[i] as Bool) && !invertIt) || ((!(aArray[i] as Bool)) && invertIt)
        return aArray[i]
      endif
      i += 1
    endwhile
  endif
  return None
endfunction
; 21-11-08 - Success-bp, Manual Review, Optimizations
Alias  function cArrayFirstAlias(Alias[] aArray, Bool invertIt = False) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFirstAlias", "!aArray", "")
  else
    Int i = 0
    while i < aArray.length
      if ((aArray[i] as Bool) && !invertIt) || ((!(aArray[i] as Bool)) && invertIt)
        return aArray[i]
      endif
      i += 1
    endwhile
  endif
  return None
endfunction
; 21-11-08 - Success-bp, Manual Review, Optimizations
Float  function cArrayFirstFloat(Float[] aArray, Bool invertIt = False) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFirstFloat", "!aArray", "")
  else
    Int i = 0
    while i < aArray.length
      if ((aArray[i] as Bool) && !invertIt) || ((!(aArray[i] as Bool)) && invertIt)
        return aArray[i]
      endif
      i += 1
    endwhile
  endif
  return -1.0
endfunction
; 21-11-08 - Success-bp, Manual Review, Optimizations
Form   function cArrayFirstForm(Form[] aArray, Bool invertIt = False) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFirstForm", "!aArray", "")
  else
    Int i = 0
    while i < aArray.length
      if ((aArray[i] as Bool) && !invertIt) || ((!(aArray[i] as Bool)) && invertIt)
        return aArray[i]
      endif
      i += 1
    endwhile
  endif
  return None
endfunction
; 21-11-08 - Success-bp, Manual Review, Optimizations
Int    function cArrayFirstInt(Int[] aArray, Bool invertIt = False) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFirstInt", "!aArray", "")
  else
    Int i = 0
    while i < aArray.length
      if ((aArray[i] as Bool) && !invertIt) || ((!(aArray[i] as Bool)) && invertIt)
        return aArray[i]
      endif
      i += 1
    endwhile
  endif
  return -1
endfunction
; 21-11-08 - Success-bp, Manual Review, Optimizations
ObjectReference function cArrayFirstObjRef(ObjectReference[] aArray, Bool invertIt = False) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFirstObjRef", "!aArray", "")
  else
    Int i = 0
    while i < aArray.length
      if ((aArray[i] as Bool) && !invertIt) || ((!(aArray[i] as Bool)) && invertIt)
        return aArray[i]
      endif
      i += 1
    endwhile
  endif
  return None
endfunction
; 21-11-08 - Test Success, Optimizations
String function cArrayFirstString(String[] aArray, Bool invertIt = False) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFirstString", "!aArray", "")
  else
    Int i = 0
    while i < aArray.length
      if ((aArray[i] as Bool) && !invertIt) || ((!(aArray[i] as Bool)) && invertIt)
        return aArray[i]
      endif
      i += 1
    endwhile
  endif
  return ""
endfunction
  
  ;>>> Returns index of first value that if cast to Bool == TRUE
  ;Preferred method: use cArrayFind.*, search for 0/None/"" && invertIt == TRUE
; 21-11-08 - Success-bp, Manual Review, Optimizations
Int function cArrayFirstIndexBool(Bool[] aArray, Bool invertIt = False) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFirstIndexBool", "!aArray", "")
  else
    Int i = 0
    while i < aArray.length
      if ((aArray[i] as Bool) && !invertIt) || ((!(aArray[i] as Bool)) && invertIt)
        return i
      endif
      i += 1
    endwhile
  endif
  return -1
endfunction
; 21-11-08 - Success-bp, Manual Review, Optimizations
Int function cArrayFirstIndexFloat(Float[] aArray, Bool invertIt = False) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFirstIndexFloat", "!aArray", "")
  else
    Int i = 0
    while i < aArray.length
      if ((aArray[i] as Bool) && !invertIt) || ((!(aArray[i] as Bool)) && invertIt)
        return i
      endif
      i += 1
    endwhile
  endif
  return -1
endfunction
; 21-11-08 - Success-bp, Manual Review, Optimizations
Int function cArrayFirstIndexForm(Form[] aArray, Bool invertIt = False) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFirstIndexForm", "!aArray", "")
  else
    Int i = 0
    while i < aArray.length
      if ((aArray[i] as Bool) && !invertIt) || ((!(aArray[i] as Bool)) && invertIt)
        return i
      endif
      i += 1
    endwhile
  endif
  return -1
endfunction
; 21-11-08 - Success-bp, Manual Review, Optimizations
Int function cArrayFirstIndexInt(Int[] aArray, Bool invertIt = False) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFirstIndexInt", "!aArray", "")
  else
    Int i = 0
    while i < aArray.length
      if ((aArray[i] as Bool) && !invertIt) || ((!(aArray[i] as Bool)) && invertIt)
        return i
      endif
      i += 1
    endwhile
  endif
  return -1
endfunction
; 21-11-08 - Test Success, Optimizations
Int function cArrayFirstIndexString(String[] aArray, Bool invertIt = False) global ; Why is this here?
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayFirstIndexString", "!aArray", "")
  else
    Int i = 0
    while i < aArray.length
      if ((aArray[i] as Bool) && !invertIt) || ((!(aArray[i] as Bool)) && invertIt)
        return i
      endif
      i += 1
    endwhile
  endif
  return -1
endfunction
  
  ;>>> Analyze: returns array [0] == smallest value, [1] == its index, [2] == largest value, 
  ;      [3] == its index, [4] == array length, [5] == array sum (!string), [6] == array average (!string), 
  ;      (Int[] only-> [7] == remainder of average)
; 21-11-08 - Test Success, Improvements
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
; 21-11-08 - Test Success, Improvements
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
; 21-11-08 - Test Success, Improvements
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
  
  ;>>> Tally
; 21-11-08 - Success-bp
Int function cArrayCountValueActor(Actor[] aArray, Actor valueToCount = None, Bool invertIt = False) global
  {Requirements: None}
  Int returnInt
  if !aArray
    cErrInvalidArg("cArrayCountValueActor", "aArray", "")
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
; 21-11-08 - Success-bp
Int function cArrayCountValueAlias(Alias[] aArray, Alias valueToCount = None, Bool invertIt = False) global
  {Requirements: None}
  Int returnInt
  if !aArray
    cErrInvalidArg("cArrayCountValueAlias", "aArray", "")
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
; 21-11-08 - Success-bp && Manual Review
Int function cArrayCountValueBool(Bool[] aArray, Bool valueToCount = TRUE, Bool invertIt = False) global
  {Requirements: None}
  Int returnInt = 0
  if !aArray
    cErrInvalidArg("cArrayCountValueBool", "aArray", "")
  else
    Int i = 0
    while i < aArray.length
      returnInt += (((!invertIt) && (aArray[i] == valueToCount)) || ((invertIt) && (aArray[i] != valueToCount))) as Int
      i += 1
    endwhile
  endif
  return returnInt
endfunction
; 21-11-08 - Success-bp && Manual Review
Int function cArrayCountValueFloat(Float[] aArray, Float valueToCount = 0.0, Bool invertIt = False) global
  {Requirements: None}
  Int returnInt = 0
  if !aArray
    cErrInvalidArg("cArrayCountValueFloat", "aArray", "")
  else
    Int i = 0
    while i < aArray.length
      returnInt += (((!invertIt) && (aArray[i] == valueToCount)) || ((invertIt) && (aArray[i] != valueToCount))) as Int
      i += 1
    endwhile
  endif
  return returnInt
endfunction
; 21-11-08 - Success-bp && Manual Review
Int function cArrayCountValueForm(Form[] aArray, Form valueToCount = None, Bool invertIt = False) global
  {Requirements: None}
  Int returnInt
  if !aArray
    cErrInvalidArg("cArrayCountValueForm", "aArray", "")
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
; 21-11-08 - Success-bp && Manual Review
Int function cArrayCountValueInt(Int[] aArray, Int valueToCount = 0, Bool invertIt = False) global
  {Requirements: None}
  Int returnInt
  if !aArray
    cErrInvalidArg("cArrayCountValueInt", "aArray", "")
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
; 21-11-08 - Success-bp
Int function cArrayCountValueObjRef(ObjectReference[] aArray, ObjectReference valueToCount = None, Bool invertIt = False) global
  {Requirements: None}
  Int returnInt
  if !aArray
    cErrInvalidArg("cArrayCountValueObjRef", "aArray", "")
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
; 21-11-08 - Test Success
Int function cArrayCountValueString(String[] aArray, String valueToCount = "", Bool invertIt = False) global
  {Requirements: None}
  Int returnInt
  if !aArray
    cErrInvalidArg("cArrayCountValueString", "aArray", "")
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
; 21-11-08 - Manual Review
Int function cArrayCountValueFormList(FormList aFormList, Form valueToCount = None, Bool invertIt = False) global
  {Requirements: None}
  Int returnInt
  if !aFormList
    cErrInvalidArg("cArrayCountValueFormList", "aFormList", "")
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

;====== Manipulation
  ;>>>  Housekeeping (returns original)
    ;---@ Three(2 for objects) in one
Actor[]  function cArrayTidyActor(Actor[] aArray, Bool clearNone = False, Bool clearDupes = False) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayTidyActor", "aArray", "")
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
    cErrInvalidArg("cArrayTidyAlias", "aArray", "")
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
    cErrInvalidArg("cArrayTidyFloat", "aArray", "")
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
    cErrInvalidArg("cArrayTidyForm", "aArray", "")
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
    cErrInvalidArg("cArrayTidyInt", "aArray", "")
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
    cErrInvalidArg("cArrayTidyObjRef", "aArray", "")
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
      aArray = cArrayClearEmptyString(aArray)
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
  
  ;>>> Removes the described indices and returns new array
    ;Single purpose versions of RemoveValue (returns new array)
; 21-11-08 - Success-bp
Actor[] function cArrayClearNoneActor(Actor[] aArray) global
  {Requirements: None}
  Actor[] newArray
  if !aArray
    cErrInvalidArg("cArrayClearNoneActor", "aArray")
  else
    newArray = cArrayRemoveValueActor(aArray, None)
  endif
  return newArray
endfunction
; 21-11-08 - Success-bp
Alias[] function cArrayClearNoneAlias(Alias[] aArray) global
  {Requirements: None}
  Alias[] newArray
  if !aArray
    cErrInvalidArg("cArrayClearNoneAlias", "aArray")
  else
    newArray = cArrayRemoveValueAlias(aArray, None)
  endif
  return newArray
endfunction
; 21-11-08 - Test Success
Float[] function cArrayClearZeroFloat(Float[] aArray) global
  {Requirements: None}
  Float[] newArray
  if !aArray
    cErrInvalidArg("cArrayClearZeroFloat", "aArray")
  else
    newArray = cArrayRemoveValueFloat(aArray, 0.0)
  endif
  return newArray
endfunction
; 21-11-08 - Success-bp
Form[]  function cArrayClearNoneForm(Form[] aArray) global
  {Requirements: None}
  Form[] newArray
  if !aArray
    cErrInvalidArg("cArrayClearNoneForm", "aArray")
  else
    newArray = cArrayRemoveValueForm(aArray, None)
  endif
  return newArray
endfunction
; 21-11-08 - Test Success
Int[]   function cArrayClearZeroInt(Int[] aArray) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayClearZeroInt", "aArray")
  else
    newArray = cArrayRemoveValueInt(aArray, 0)
  endif
  return newArray
endfunction
; 21-11-08 - Success-bp
ObjectReference[] function cArrayClearNoneObjRef(ObjectReference[] aArray) global
  {Requirements: None}
  ObjectReference[] newArray
  if !aArray
    cErrInvalidArg("cArrayClearNoneObjRef", "aArray")
  else
    newArray = cArrayRemoveValueObjRef(aArray, None)
  endif
  return newArray
endfunction
; 21-11-08 - Test Success
String[] function cArrayClearEmptyString(String[] aArray) global
  {Requirements: None}
  String[] newArray
  if !aArray
    cErrInvalidArg("cArrayClearEmptyString", "aArray")
  else
    newArray = cArrayRemoveValueString(aArray, "")
  endif
  return newArray
endfunction
  ;--- 'convenience' alternate name for cArrayClearEmptyString
; 21-11-08 - Test Success
String[] function cArrayClearBlank(String[] aArray) global
  {Requirements: None}
  return cArrayClearEmptyString(aArray)
endfunction

  ;>>> Remove duplicate records
  ; no Bool version, remove duplicates would only return 1-2 index array
; 21-11-08 - Success-bp && Manual Review
Actor[]  function cArrayRemoveDuplicatesActor(Actor[] aArray, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Actor[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveDuplicatesActor", "aArray", "")
  elseif usePapUtil
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
; 21-11-08 - Success-bp && Manual Review
Alias[]  function cArrayRemoveDuplicatesAlias(Alias[] aArray, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Alias[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveDuplicatesAlias", "aArray", "")
  elseif usePapUtil
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
; 21-11-09 - Test Success
Float[]  function cArrayRemoveDuplicatesFloat(Float[] aArray, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Float[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveDuplicatesFloat", "aArray", "")
  elseif usePapUtil
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
; 21-11-08 - Success-bp && Manual Review
Form[]   function cArrayRemoveDuplicatesForm(Form[] aArray, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Form[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveDuplicatesForm", "aArray", "")
  elseif usePapUtil
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
; 21-11-09 - Test Success
Int[]    function cArrayRemoveDuplicatesInt(Int[] aArray, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveDuplicatesInt", "aArray")
  elseif usePapUtil
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
; 21-11-08 - Success-bp && Manual Review
ObjectReference[] function cArrayRemoveDuplicatesObjRef(ObjectReference[] aArray, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  ObjectReference[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveDuplicatesObjRef", "aArray", "")
  elseif usePapUtil
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
; 21-11-09 - Test Success
String[] function cArrayRemoveDuplicatesString(String[] aArray, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  String[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveDuplicatesString", "aArray", "")
  elseif usePapUtil
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
; 21-11-08 - Success-bp
function cArraySwapIndexActor(Actor[] aArray, Int index1, Int index2) global
  {Requirements: None}
  Actor tempValue = aArray[index1]
  aArray[index1] = aArray[index2]
  aArray[index2] = tempValue
endfunction
; 21-11-08 - Success-bp
function cArraySwapIndexAlias(Alias[] aArray, Int index1, Int index2) global
  {Requirements: None}
  Alias tempValue = aArray[index1]
  aArray[index1] = aArray[index2]
  aArray[index2] = tempValue
endfunction
; 21-11-08 - Success-bp
function cArraySwapIndexBool(Bool[] aArray, Int index1, Int index2) global
  {Requirements: None}
  Bool tempValue = aArray[index1]
  aArray[index1] = aArray[index2]
  aArray[index2] = tempValue
endfunction
; 21-11-08 - Success-bp
function cArraySwapIndexFloat(Float[] aArray, Int index1, Int index2) global
  {Requirements: None}
  Float tempValue = aArray[index1]
  aArray[index1] = aArray[index2]
  aArray[index2] = tempValue
endfunction
; 21-11-08 - Success-bp
function cArraySwapIndexForm(Form[] aArray, Int index1, Int index2) global
  {Requirements: None}
  Form tempValue = aArray[index1]
  aArray[index1] = aArray[index2]
  aArray[index2] = tempValue
endfunction
; 21-11-08 - Success-bp
function cArraySwapIndexInt(Int[] aArray, Int index1, Int index2) global
  {Requirements: None}
  Int tempValue = aArray[index1]
  aArray[index1] = aArray[index2]
  aArray[index2] = tempValue
endfunction
; 21-11-08 - Success-bp
function cArraySwapIndexObjRef(ObjectReference[] aArray, Int index1, Int index2) global
  {Requirements: None}
  ObjectReference tempValue = aArray[index1]
  aArray[index1] = aArray[index2]
  aArray[index2] = tempValue
endfunction
; 21-11-08 - Success-bp
function cArraySwapIndexString(String[] aArray, Int index1, Int index2) global
  {Requirements: None}
  String tempValue = aArray[index1]
  aArray[index1] = aArray[index2]
  aArray[index2] = tempValue
endfunction

  ;>>> Quick sort assets
; 21-11-08 - Test Success
Int function cArrayPartitionFloat(Float[] aArray, Int low, Int high) global
  {Requirements: None}
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
; 21-11-08 - Test Success
function cArraySortFloat(Float[] aArray, Int low = -1, Int high = -1) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArraySortFloat", "!aArray")
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
; 21-11-08 - Test Success
Int function cArrayPartitionInt(Int[] aArray, Int low, Int high) global
  {Requirements: None}
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
; 21-11-08 - Test Success
function cArraySortInt(Int[] aArray, Int low = -1, Int high = -1) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArraySortInt", "!aArray")
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
; Bugged, will have to sort out
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
  
  ;>>> Remove all trailing indices == trailingValue
; 21-11-09 - Success-bp, manual review
Actor[]   function cArrayRemoveTrailingActor(Actor[] aArray, Actor trailingValue = None) global
  {Requirements: None}
  ; this assumes that the last indices are not *supposed* to be trailingValue
  Actor[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveTrailingActor", "aArray", "")
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
; 21-11-09 - Success-bp, manual review
Alias[]  function cArrayRemoveTrailingAlias(Alias[] aArray, Alias trailingValue = None) global
  {Requirements: None}
  ; this assumes that the last indices are not *supposed* to be trailingValue
  Alias[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveTrailingAlias", "aArray", "")
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
; 21-11-09 - Success-bp, manual review
Bool[]   function cArrayRemoveTrailingBool(Bool[] aArray, Bool trailingValue = False) global
  {Requirements: None}
  ; this assumes that the last indices are not *supposed* to be trailingValue
  Bool[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveTrailingBool", "aArray", "")
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
; 21-11-09 - Test Success
Float[]  function cArrayRemoveTrailingFloat(Float[] aArray, Float trailingValue = 0.0) global
  {Requirements: None}
  ; this assumes that the last indices are not *supposed* to be trailingValue
  Float[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveTrailingFloat", "aArray", "")
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
; 21-11-09 - Success-bp, manual review
Form[]   function cArrayRemoveTrailingForm(Form[] aArray, Form trailingValue = None) global
  {Requirements: None}
  ; this assumes that the last indices are not *supposed* to be trailingValue
  Form[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveTrailingForm", "aArray", "")
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
; 21-11-09 - Test Success
Int[]    function cArrayRemoveTrailingInt(Int[] aArray, Int trailingValue = 0) global     
  {Requirements: None}
  ; this assumes that the last indices are not *supposed* to be trailingValue
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveTrailingInt", "aArray", "")
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
; 21-11-09 - Success-bp, manual review
ObjectReference[] function cArrayRemoveTrailingObjRef(ObjectReference[] aArray, ObjectReference trailingValue = None) global
  {Requirements: None}
  ; this assumes that the last indices are not *supposed* to be trailingValue
  ObjectReference[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveTrailingObjectReference", "aArray", "")
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
; 21-11-09 - Test Success
String[] function cArrayRemoveTrailingString(String[] aArray, String trailingValue = "") global
  {Requirements: None}
  ; this assumes that the last indices are not *supposed* to be trailingValue
  String[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveTrailingString", "aArray", "")
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

  ;>>> Shift all !values to the end
; 21-11-09 - Success-bp
Actor[] function cArrayCompactActor(Actor[] aArray, Actor shiftValue = None) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayCompactActor", "aArray")
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
; 21-11-09 - Success-bp
Alias[] function cArrayCompactAlias(Alias[] aArray, Alias shiftValue = None) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayCompactAlias", "aArray")
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
; 21-11-09 - Success-bp
Float[] function cArrayCompactFloat(Float[] aArray, Float shiftValue = 0.0) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayCompactFloat", "aArray")
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
; 21-11-09 - Success-bp
Form[] function cArrayCompactForm(Form[] aArray, Form shiftValue = None) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayCompactForm", "aArray")
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
; 21-11-09 - Success-bp
Int[] function cArrayCompactInt(Int[] aArray, Int shiftValue = 0) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayCompactInt", "aArray")
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
; 21-11-09 - Success-bp
ObjectReference[] function cArrayCompactObjRef(ObjectReference[] aArray, ObjectReference shiftValue = None) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayCompactObjRef", "aArray")
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
; 21-11-09 - Test Success, Corrections
String[] function cArrayCompactString(String[] aArray, String shiftValue = "") global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayCompactString", "aArray")
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

  ;>>> Sorts arrays
; Float and Int are deprecated! Use cArraySortFloat() and cArraySortInt() They're QuickSort now
; 21-11-08 - Test Success
Float[]  function cArrayBubbleSortFloat(Float[] aArray, Bool invertIt = False) global
  if !aArray
    cErrInvalidArg("cArrayBubbleSortFloat", "aArray")
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
; 21-11-08 - Test Success
Int[]    function cArrayBubbleSortInt(Int[] aArray, Bool invertIt = False) global
  if !aArray
    cErrInvalidArg("cArrayBubbleSortInt", "aArray")
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
; 21-11-08 - Test Success
String[] function cArrayBubbleSortString(String[] aArray, Bool invertIt = False, Bool usePapUtil = TRUE) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayBubbleSortString", "aArray")
  elseif usePapUtil
    PapyrusUtil.SortStringArray(aArray)
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
  
  ;>>> Fill 'empty' values
; 21-11-09 - Success-bp
Actor[]   function cArrayFillActor(Actor[] aArray, Actor filler, Bool forceAll = False) global
  {Requirements: None}
  ; if forceAll == TRUE sets every index to filler value
  if !aArray
    cErrInvalidArg("cArrayFillActor", "aArray", "arrayNone")
  else
    Int i = 0
    while i < aArray.length
      aArray[i] = cTernaryActor(forceAll || !aArray[i], filler, aArray[i])
      i += 1
    endwhile
  endif
  return aArray
endfunction
; 21-11-09 - Success-bp
Alias[]  function cArrayFillAlias(Alias[] aArray, Alias filler, Bool forceAll = False) global
  {Requirements: None}
  ; if forceAll == TRUE sets every index to filler value
  if !aArray
    cErrInvalidArg("cArrayFillAlias", "aArray", "")
  else
    Int i = 0
    while i < aArray.length
      aArray[i] = cTernaryAlias(forceAll || !aArray[i], filler, aArray[i])
      i += 1
    endwhile
  endif
  return aArray
endfunction
; 21-11-09 - Success-bp
Bool[]   function cArrayFillBool(Bool[] aArray, Bool filler) global
  {Requirements: None}
  ; This is one of the dumbest functions I've ever seen. No 'forceAll' argument for obvious reasons
  if !aArray
    cErrInvalidArg("cArrayFillBool", "aArray", "")
  else
    Int i = 0
    while i < aArray.length
      aArray[i] = filler
      i += 1
    endwhile
  endif
  return aArray
endfunction
; 21-11-09 - Test Success
Float[]  function cArrayFillFloat(Float[] aArray, Float filler, Bool forceAll = False) global
  {Requirements: None}
  ; if forceAll == TRUE sets every index to filler value
  if !aArray
    cErrInvalidArg("cArrayFillFloat", "aArray", "arrayNone")
  else
    Int i = 0
    while i < aArray.length
      aArray[i] = cTernaryFloat(forceAll || !aArray[i], filler, aArray[i])
      i += 1
    endwhile
  endif
  return aArray
endfunction
; 21-11-09 - Success-bp
Form[]   function cArrayFillForm(Form[] aArray, Form filler, Bool forceAll = False) global
  {Requirements: None}
  ; if forceAll == TRUE sets every index to filler value
  if !aArray
    cErrInvalidArg("cArrayFillForm", "aArray", "arrayNone")
  else
    Int i = 0
    while i < aArray.length
      aArray[i] = cTernaryForm(forceAll || !aArray[i], filler, aArray[i])
      i += 1
    endwhile
  endif
  return aArray
endfunction
; 21-11-09 - Test Success
Int[]    function cArrayFillInt(Int[] aArray, Int filler, Bool forceAll = False) global
  {Requirements: None}
  ; if forceAll == TRUE sets every index to filler value
  if !aArray
    cErrInvalidArg("cArrayFillInt", "aArray", "arrayNone")
  else
    Int i = 0
    while i < aArray.length
      aArray[i] = cTernaryInt(forceAll || !aArray[i], filler, aArray[i])
      i += 1
    endwhile
  endif
  return aArray
endfunction
; 21-11-09 - Success-bp
ObjectReference[] function cArrayFillObjRef(ObjectReference[] aArray, ObjectReference filler, Bool forceAll = False) global
  {Requirements: None}
  ; if forceAll == TRUE sets every index to filler value
  if !aArray
    cErrInvalidArg("cArrayFillObjRef", "aArray", "arrayNone")
  else
    Int i = 0
    while i < aArray.length
      aArray[i] = cTernaryObjRef(forceAll || !aArray[i], filler, aArray[i])
      i += 1
    endwhile
  endif
  return aArray
endfunction
; 21-11-09 - Test Success
String[] function cArrayFillString(String[] aArray, String filler, Bool forceAll = False) global
  {Requirements: None}
  ; if forceAll == TRUE sets every index to filler value
  if !aArray
    cErrInvalidArg("cArrayFillString", "aArray", "arrayNone")
  else
    Int i = 0
    while i < aArray.length
      aArray[i] = cTernaryString(forceAll || !aArray[i], filler, aArray[i])
      i += 1
    endwhile
  endif
  return aArray
endfunction

  ;>>> Sets all indices to None, False, 0.0, 0 or ""
; 21-11-09 - Success-bp, correction
Actor[]   function cArrayClearActor(Actor[] aArray) global
  {Requirements: None}
  if!aArray
    cErrInvalidArg("cArrayClearActor", "!aArray")
  else
    Int i = 0
    while i < aArray.length
      aArray[i] = None
      i += 1
    endwhile
  endif
  return aArray
endfunction
; 21-11-09 - Success-bp, correction
Alias[]  function cArrayClearAlias(Alias[] aArray) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayClearAlias", "!aArray")
  else
    Int i = 0
    while i < aArray.length
      aArray[i] = None
      i += 1
    endwhile
  endif
  return aArray
endfunction
; 21-11-09 - Success-bp, correction
Bool[]   function cArrayClearBool(Bool[] aArray) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayClearBool", "!aArray")
  else
    Int i = 0
    while i < aArray.length
      aArray[i] = False
      i += 1
    endwhile
  endif
  return aArray
endfunction
; 21-11-09 - Test Success, correction
Float[]  function cArrayClearFloat(Float[] aArray) global
  {Requirements: None}
  if!aArray
    cErrInvalidArg("cArrayClearFloat", "!aArray")
  else
    Int i = 0
    while i < aArray.length
      aArray[i] = 0.0
      i += 1
    endwhile
  endif
  return aArray
endfunction
; 21-11-09 - Success-bp, correction
Form[]   function cArrayClearForm(Form[] aArray) global
  {Requirements: None}
  if!aArray
    cErrInvalidArg("cArrayClearForm", "!aArray")
  else
    Int i = 0
    while i < aArray.length
      aArray[i] = None
      i += 1
    endwhile
  endif
  return aArray
endfunction
; 21-11-09 - Test Success, correction
Int[]    function cArrayClearInt(Int[] aArray) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayClearInt", "!aArray")
  else
    Int i = 0
    while i < aArray.length
      aArray[i] = 0
      i += 1
    endwhile
  endif
  return aArray
endfunction
; 21-11-09 - Success-bp, correction
ObjectReference[] function cArrayClearObjRef(ObjectReference[] aArray) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayClearObjRef", "!aArray")
  else
    Int i = 0
    while i < aArray.length
      aArray[i] = None
      i += 1
    endwhile
  endif
  return aArray
endfunction
; 21-11-09 - Test Success, correction
String[] function cArrayClearString(String[] aArray) global
  {Requirements: None}
  if !aArray
    cErrInvalidArg("cArrayClearString", "!aArray")
  else
    Int i = 0
    while i < aArray.length
      aArray[i] = ""
      i += 1
    endwhile
  endif
  return aArray
endfunction

  ;>>> Appends values to end
; 21-11-09 - Success-bp
Actor[]  function cArrayPushActor(Actor[] aArray, Actor aActor = None, Int numTimes = 1) global
  {Requirements: None}
  Actor[] newArray
  if !aArray
    cErrInvalidArg("cArrayPushActor", "!aArray")
  elseif numTimes < 1
    cErrInvalidArg("cArrayPushActor", "numTimes < 1")
  else
    newArray = cArrayResizeActor(aArray, aArray.length + numtimes, aActor)
    if newArray.length
      Int newLength = newArray.length
      newArray[newLength - 1] = aActor
      Int i = 0
      while i < aArray.length
        newArray[i] = aArray[i]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayPushActor")
    endif
  endif
  return newArray
endfunction
; 21-11-09 - Success-bp
Alias[]  function cArrayPushAlias(Alias[] aArray, Alias aAlias = None, Int numTimes = 1) global
  {Requirements: None}
  Alias[] newArray
  if !aArray
    cErrInvalidArg("cArrayPushAlias", "!aArray")
  elseif numTimes < 1
    cErrInvalidArg("cArrayPushAlias", "numTimes < 1")
  else
    newArray = cArrayResizeAlias(aArray, aArray.length + numtimes, aAlias)
    if newArray.length
      Int newLength = newArray.length
      newArray[newLength - 1] = aAlias
      Int i = 0
      while i < aArray.length
        newArray[i] = aArray[i]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayPushAlias")
    endif
  endif
  return newArray
endfunction
; 21-11-09 - Success-bp
Bool[]   function cArrayPushBool(Bool[] aArray, Bool aBool = False, Int numTimes = 1) global
  {Requirements: None}
  Bool[] newArray
  if !aArray
    cErrInvalidArg("cArrayPushBool", "!aArray")
  elseif numTimes < 1
    cErrInvalidArg("cArrayPushBool", "numTimes < 1")
  else
    newArray = cArrayResizeBool(aArray, aArray.length + numtimes, aBool)
    if newArray.length
      Int newLength = newArray.length
      newArray[newLength - 1] = aBool
      Int i = 0
      while i < aArray.length
        newArray[i] = aArray[i]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayPushBool")
    endif
  endif
  return newArray
endfunction
; 21-11-09 - Test Success
Float[]  function cArrayPushFloat(Float[] aArray, Float aFloat = 0.0, Int numTimes = 1) global
  {Requirements: None}
  Float[] newArray
  if !aArray
    cErrInvalidArg("cArrayPushFloat", "!aArray")
  elseif numTimes < 1
    cErrInvalidArg("cArrayPushFloat", "numTimes < 1")
  else
    newArray = cArrayResizeFloat(aArray, aArray.length + numtimes, aFloat)
    if newArray.length
      Int newLength = newArray.length
      newArray[newLength - 1] = aFloat
      Int i = 0
      while i < aArray.length
        newArray[i] = aArray[i]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayPushFloat")
    endif
  endif
  return newArray
endfunction
; 21-11-09 - Success-bp
Form[]   function cArrayPushForm(Form[] aArray, Form aForm = None, Int numTimes = 1) global
  {Requirements: None}
  Form[] newArray
  if !aArray
    cErrInvalidArg("cArrayPushForm", "!aArray")
  elseif numTimes < 1
    cErrInvalidArg("cArrayPushForm", "numTimes < 1")
  else
    newArray = cArrayResizeForm(aArray, aArray.length + numtimes, aForm)
    if newArray.length
      Int newLength = newArray.length
      newArray[newLength - 1] = aForm
      Int i = 0
      while i < aArray.length
        newArray[i] = aArray[i]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayPushForm")
    endif
  endif
  return newArray
endfunction
; 21-11-09 - Test Success
Int[]    function cArrayPushInt(Int[] aArray, Int aInt = 0, Int numTimes = 1) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayPushInt", "!aArray")
  elseif numTimes < 1
    cErrInvalidArg("cArrayPushInt", "numTimes < 1")
  else
    newArray = cArrayResizeInt(aArray, aArray.length + numtimes, aInt)
    if newArray.length
      Int newLength = newArray.length
      newArray[newLength - 1] = aInt
      Int i = 0
      while i < aArray.length
        newArray[i] = aArray[i]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayPushInt")
    endif
  endif
  return newArray
endfunction
; 21-11-09 - Success-bp
ObjectReference[] function cArrayPushObjRef(ObjectReference[] aArray, ObjectReference aObjectReference = None, \
    Int numTimes = 1) global
  {Requirements: None}
  ObjectReference[] newArray
  if !aArray
    cErrInvalidArg("cArrayPushObjRef", "!aArray")
  elseif numTimes < 1
    cErrInvalidArg("cArrayPushObjRef", "numTimes < 1")
  else
    newArray = cArrayResizeObjRef(aArray, aArray.length + numtimes, aObjectReference)
    if newArray.length
      Int newLength = newArray.length
      newArray[newLength - 1] = aObjectReference
      Int i = 0
      while i < aArray.length
        newArray[i] = aArray[i]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayPushObjRef")
    endif
  endif
  return newArray
endfunction
; 21-11-09 - Test Success
String[] function cArrayPushString(String[] aArray, String aString = "", Int numTimes = 1) global
  {Requirements: None}
  String[] newArray
  if !aArray
    cErrInvalidArg("cArrayPushString", "!aArray")
  elseif numTimes < 1
    cErrInvalidArg("cArrayPushString", "numTimes < 1")
  else
    newArray = cArrayResizeString(aArray, aArray.length + numtimes, aString)
    if newArray.length
      Int newLength = newArray.length
      newArray[newLength - 1] = aString
      Int i = 0
      while i < aArray.length
        newArray[i] = aArray[i]
        i += 1
      endwhile
    else
      cErrArrInitFail("cArrayPushString")
    endif
  endif
  return newArray
endfunction
  
  ;>>> *Removes* all indices of said value (returns new array)
; 21-11-09 - Success-bp
Actor[]  function cArrayRemoveValueActor(Actor[] aArray, Actor toRemove = None, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Actor[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveValueActor", "!aArray")
  else
    if usePapUtil
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
; 21-11-09 - Success-bp
Alias[]  function cArrayRemoveValueAlias(Alias[] aArray, Alias toRemove = None, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Alias[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveValueAlias", "!aArray")
  else
    if usePapUtil
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
; 21-11-09 - Success-bp
Bool[]   function cArrayRemoveValueBool(Bool[] aArray, Bool toRemove = False, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Bool[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveValueBool", "!aArray")
  else
    if usePapUtil
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
; 21-11-09 - Test Success
Float[]  function cArrayRemoveValueFloat(Float[] aArray, Float toRemove = 0.0, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Float[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveValueFloat", "!aArray")
  else
    if usePapUtil
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
; 21-11-09 - Success-bp
Form[]   function cArrayRemoveValueForm(Form[] aArray, Form toRemove = None, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Form[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveValueForm", "aArray", "")
  else
    if usePapUtil
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
; 21-11-09 - Test Success
Int[]    function cArrayRemoveValueInt(Int[] aArray, Int toRemove = 0, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveValueInt", "aArray", "")
  else
    if usePapUtil
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
; 21-11-09 - Success-bp
ObjectReference[]  function cArrayRemoveValueObjRef(ObjectReference[] aArray, ObjectReference toRemove = None, \
  Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  ObjectReference[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveValueObjRef", "!aArray")
  else
    if usePapUtil
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
; 21-11-09 - Test Success
String[] function cArrayRemoveValueString(String[] aArray, String toRemove = "", Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  String[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveValueString", "aArray", "")
  else
    if usePapUtil
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
  
  ;>>> Copies from supplied aArray1 to supplied aArray2 then returns aArray2
  ;      See also cArrayCopy.* which creates a new array
Actor[]  function cArrayCopyToActor(Actor[] aArray1, Actor[] aArray2, Actor filler = None) global
  {Requirements: None}
  ; just copies one array to another, can be used for arrays of any size whether SKSE is installed or not
  if !aArray1
    cErrInvalidArg("cArrayCopyToActor", "aArray1")
  elseif !aArray2
    cErrInvalidArg("cArrayCopyToActor", "aArray2")
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
    cErrInvalidArg("cArrayCopyToAlias", "aArray1")
  elseif !aArray2
    cErrInvalidArg("cArrayCopyToAlias", "aArray2")
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
    cErrInvalidArg("cArrayCopyToBool", "aArray1")
  elseif !aArray2
    cErrInvalidArg("cArrayCopyToBool", "aArray2")
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
    cErrInvalidArg("cArrayCopyToFloat", "aArray1")
  elseif !aArray2
    cErrInvalidArg("cArrayCopyToFloat", "aArray2")
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
    cErrInvalidArg("cArrayCopyToForm", "aArray1")
  elseif !aArray2
    cErrInvalidArg("cArrayCopyToForm", "aArray2")
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
    cErrInvalidArg("cArrayCopyToInt", "aArray1")
  elseif !aArray2
    cErrInvalidArg("cArrayCopyToInt", "aArray2")
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
ObjectReference[] function cArrayCopyToObjRef(ObjectReference[] aArray1, ObjectReference[] aArray2, ObjectReference filler = None) global
  {Requirements: None}
  ; just copies one array to another, can be used for arrays of any size whether SKSE is installed or not
  if !aArray1
    cErrInvalidArg("cArrayCopyToObjRef", "aArray1")
  elseif !aArray2
    cErrInvalidArg("cArrayCopyToObjRef", "aArray2")
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
    cErrInvalidArg("cArrayCopyToString", "aArray1")
  elseif !aArray2
    cErrInvalidArg("cArrayCopyToString", "aArray2")
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
  
  ;>>> Remove Index [way to do Pop & Shift also] (returns new array)
; 21-11-09 - Success-bp
Actor[]   function cArrayRemoveIndexActor(Actor[] aArray, Int indexToRemove = 0, Bool usePapUtil = TRUE) global 
  ; indexToRemove == -1 means the last index
  {Requirements: None, PapyrusUtil:Soft}
  Actor[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveIndexActor", "aArray", "")
  else
    if indexToRemove == -1 ; indexToRemove == -1 means remove the last index
      indexToRemove = aArray.length - 1
    elseif !cIsBetweenInt(indexToRemove, 0, aArray.length - 1)
      cErrInvalidArg("cArrayRemoveIndexActor", "indexToRemove")
    else
      if usePapUtil
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
; 21-11-09 - Success-bp
Alias[]   function cArrayRemoveIndexAlias(Alias[] aArray, Int indexToRemove = 0, Bool usePapUtil = TRUE) global 
  ; indexToRemove == -1 means the last index
  {Requirements: None, PapyrusUtil:Soft}
  Alias[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveIndexAlias", "aArray", "")
  else
    if indexToRemove == -1 ; indexToRemove == -1 means remove the last index
      indexToRemove = aArray.length - 1
    elseif !cIsBetweenInt(indexToRemove, 0, aArray.length - 1)
      cErrInvalidArg("cArrayRemoveIndexAlias", "indexToRemove")
    else
      if usePapUtil
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
; 21-11-09 - Success-bp
Bool[]   function cArrayRemoveIndexBool(Bool[] aArray, Int indexToRemove = 0, Bool usePapUtil = TRUE) global 
  ; indexToRemove == -1 means the last index
  {Requirements: None, PapyrusUtil:Soft}
  Bool[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveIndexBool", "aArray", "")
  else
    if indexToRemove == -1 ; indexToRemove == -1 means remove the last index
      indexToRemove = aArray.length - 1
    elseif !cIsBetweenInt(indexToRemove, 0, aArray.length - 1)
      cErrInvalidArg("cArrayRemoveIndexBool", "indexToRemove")
    else
      if usePapUtil
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
; 21-11-09 - Test Success
Float[]  function cArrayRemoveIndexFloat(Float[] aArray, Int indexToRemove = 0, Bool usePapUtil = TRUE) global 
  ; indexToRemove == -1 means the last index
  {Requirements: None, PapyrusUtil:Soft}
  Float[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveIndexFloat", "aArray", "")
  else
    if indexToRemove == -1 ; indexToRemove == -1 means remove the last index
      indexToRemove = aArray.length - 1
    elseif !cIsBetweenInt(indexToRemove, 0, aArray.length - 1)
      cErrInvalidArg("cArrayRemoveIndexFloat", "indexToRemove")
    else
      if usePapUtil
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
; 21-11-09 - Success-bp
Form[]   function cArrayRemoveIndexForm(Form[] aArray, Int indexToRemove = 0, Bool usePapUtil = TRUE) global 
  ; indexToRemove == -1 means the last index
  {Requirements: None, PapyrusUtil:Soft}
  Form[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveIndexForm", "aArray", "")
  else
    if indexToRemove == -1 ; indexToRemove == -1 means remove the last index
      indexToRemove = aArray.length - 1
    elseif !cIsBetweenInt(indexToRemove, 0, aArray.length - 1)
      cErrInvalidArg("cArrayRemoveIndexForm", "indexToRemove")
    else
      if usePapUtil
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
; 21-11-09 - Test Success
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
      if usePapUtil
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
; 21-11-09 - Success-bp
ObjectReference[] function cArrayRemoveIndexObjRef(ObjectReference[] aArray, Int indexToRemove = 0, Bool usePapUtil = TRUE) global 
  ; indexToRemove == -1 means the last index
  {Requirements: None, PapyrusUtil:Soft}
  ObjectReference[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveIndexObjRef", "aArray", "")
  else
    if indexToRemove == -1 ; indexToRemove == -1 means remove the last index
      indexToRemove = aArray.length - 1
    elseif !cIsBetweenInt(indexToRemove, 0, aArray.length - 1)
      cErrInvalidArg("cArrayRemoveIndexObjRef", "indexToRemove")
    else
      if usePapUtil
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
; 21-11-09 - Test Success
String[] function cArrayRemoveIndexString(String[] aArray, Int indexToRemove = 0, Bool usePapUtil = TRUE) global 
  ; indexToRemove == -1 means the last index
  {Requirements: None, PapyrusUtil:Soft}
  String[] newArray
  if !aArray
    cErrInvalidArg("cArrayRemoveIndexString", "aArray")
  else
    if indexToRemove == -1 ; indexToRemove == -1 means remove the last index
      indexToRemove = aArray.length - 1
    elseif !cIsBetweenInt(indexToRemove, 0, aArray.length - 1)
      cErrInvalidArg("cArrayRemoveIndexString", "indexToRemove")
    else
      if usePapUtil
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
    
  ;>>> Single purpose convenience functions (in normal context shift removes and then returns the first index, 
      ;  this simply removes it then returns a new array)
; 21-11-09 - Success-bp
Actor[]  function cArrayShiftActor(Actor[] aArray) global
  {Requirements: None}
  Actor[] newArray
  if !aArray
    cErrInvalidArg("cArrayShiftActor", "aArray")
  else
    newArray = cArrayRemoveIndexActor(aArray, 0)
  endif
  return newArray
endfunction
; 21-11-09 - Success-bp
Alias[]  function cArrayShiftAlias(Alias[] aArray) global
  {Requirements: None}
  Alias[] newArray
  if !aArray
    cErrInvalidArg("cArrayShiftAlias", "aArray")
  else
    newArray = cArrayRemoveIndexAlias(aArray, 0)
  endif
  return newArray
endfunction
; 21-11-09 - Success-bp
Bool[]   function cArrayShiftBool(Bool[] aArray) global
  {Requirements: None}
  Bool[] newArray
  if !aArray
    cErrInvalidArg("cArrayShiftBool", "aArray")
  else
    newArray = cArrayRemoveIndexBool(aArray, 0)
  endif
  return newArray
endfunction
; 21-11-09 - Test Success
Float[]  function cArrayShiftFloat(Float[] aArray) global
  {Requirements: None}
  Float[] newArray
  if !aArray
    cErrInvalidArg("cArrayShiftFloat", "aArray")
  else
    newArray = cArrayRemoveIndexFloat(aArray, 0)
  endif
  return newArray
endfunction
; 21-11-09 - Success-bp
Form[]   function cArrayShiftForm(Form[] aArray) global
  {Requirements: None}
  Form[] newArray
  if !aArray
    cErrInvalidArg("cArrayShiftForm", "aArray")
  else
    newArray = cArrayRemoveIndexForm(aArray, 0)
  endif
  return newArray
endfunction
; 21-11-09 - Test Success
Int[]    function cArrayShiftInt(Int[] aArray) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayShiftInt", "aArray")
  else
    newArray = cArrayRemoveIndexInt(aArray, 0)
  endif
  return newArray
endfunction
; 21-11-09 - Success-bp
ObjectReference[]  function cArrayShiftObjRef(ObjectReference[] aArray) global
  {Requirements: None}
  ObjectReference[] newArray
  if !aArray
    cErrInvalidArg("cArrayShiftObjRef", "aArray")
  else
    newArray = cArrayRemoveIndexObjRef(aArray, 0)
  endif
  return newArray
endfunction
; 21-11-09 - Test Success
String[] function cArrayShiftString(String[] aArray) global
  {Requirements: None}
  String[] newArray
  if !aArray
    cErrInvalidArg("cArrayShiftString", "aArray")
  else
    newArray = cArrayRemoveIndexString(aArray, 0)
  endif
  return newArray
endfunction
  
  ;>>> Supply with array of ints and this removes those IndICES then returns new array
; 21-11-08 - Success-bp, correction
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
; 21-11-08 - Success-bp, correction
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
; 21-11-08 - Success-bp, correction
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
; 21-11-08 - Success-bp, correction
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
; 21-11-08 - Success-bp, correction
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
; 21-11-08 - Success-bp, correction
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
; 21-11-08 - Success-bp, correction
ObjectReference[] function cArrayRemoveIndicesObjRef(ObjectReference[] aArray, Int[] indicesToRemove, Int stopLength = 0) global
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
; 21-11-08 - Success-bp, correction
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
; 21-11-09 - Success-bp
  
  ;>>> Resizing (mix return, SKSE = resize original, vanilla = new copy)
Actor[]  function cArrayResizeActor(Actor[] aArray, Int newSize, Actor filler = None, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Actor[] newArray
  if !aArray
    cErrInvalidArg("cArrayResizeActor", "!aArray", "")
  elseif newSize < 1
    cErrInvalidArg("cArrayResizeActor", "newSize < 1", "")
  elseif usePapUtil
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
  return newArray
endfunction
; 21-11-09 - Success-bp
Alias[]  function cArrayResizeAlias(Alias[] aArray, Int newSize, Alias filler = None, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  Alias[] newArray
  if !aArray || newSize < 1
    cErrInvalidArg("cArrayResizeAlias", "!aArray")
  elseif newsize < 1
    cErrInvalidArg("cArrayResizeAlias", "newSize < 1")
  elseif useSKSE
    return Utility.ResizeAliasArray(aArray, newSize, filler)
  else
    newArray = cArrayCreateAlias(newSize, filler)
    if newArray.length
      newArray = cArrayCopyToAlias(aArray, newArray, filler)
    else
      cErrArrInitFail("cArrayResizeAlias")
    endif
  endif
  return newArray
endfunction
; 21-11-09 - Success-bp
Bool[]   function cArrayResizeBool(Bool[] aArray, Int newSize, Bool filler = False, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  Bool[] newArray
  if !aArray || newSize < 1
    cErrInvalidArg("cArrayResizeBool", "!aArray")
  elseif newsize < 1
    cErrInvalidArg("cArrayResizeBool", "newSize < 1")
  elseif useSKSE
    return Utility.ResizeBoolArray(aArray, newSize, filler)
  else
    newArray = cArrayCreateBool(newSize, filler)
    if newArray.length
      newArray = cArrayCopyToBool(aArray, newArray, filler)
    else
      cErrArrInitFail("cArrayResizeBool")
    endif
  endif
  return newArray
endfunction
; 21-11-09 - Test Success
Float[]  function cArrayResizeFloat(Float[] aArray, Int newSize, Float filler = 0.0, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  Float[] newArray
  if !aArray || newSize < 1
    cErrInvalidArg("cArrayResizeFloat", "!aArray")
  elseif newsize < 1
    cErrInvalidArg("cArrayResizeFloat", "newSize < 1")
  elseif useSKSE
    return Utility.ResizeFloatArray(aArray, newSize, filler)
  else
    newArray = cArrayCreateFloat(newSize, filler)
    if newArray.length
      newArray = cArrayCopyToFloat(aArray, newArray, filler)
    else
      cErrArrInitFail("cArrayResizeFloat")
    endif
  endif
  return newArray
endfunction
; 21-11-09 - Success-bp
Form[]   function cArrayResizeForm(Form[] aArray, Int newSize, Form filler = None, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  Form[] newArray
  if !aArray || newSize < 1
    cErrInvalidArg("cArrayResizeForm", "!aArray")
  elseif newsize < 1
    cErrInvalidArg("cArrayResizeForm", "newSize < 1")
  elseif useSKSE
    return Utility.ResizeFormArray(aArray, newSize, filler)
  else
    newArray = cArrayCreateForm(newSize, filler)
    if newArray.length
      newArray = cArrayCopyToForm(aArray, newArray, filler)
    else
      cErrArrInitFail("cArrayResizeForm")
    endif
  endif
  return newArray
endfunction
; 21-11-09 - Test Success
Int[]    function cArrayResizeInt(Int[] aArray, Int newSize, Int filler = 0, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  Int[] newArray
  if !aArray || newSize < 1
    cErrInvalidArg("cArrayResizeInt", "!aArray")
  elseif newsize < 1
    cErrInvalidArg("cArrayResizeInt", "newSize < 1")
  elseif useSKSE
    return Utility.ResizeIntArray(aArray, newSize, filler)
  else
    newArray = cArrayCreateInt(newSize, filler)
    if newArray.length
      newArray = cArrayCopyToInt(aArray, newArray, filler)
    else
      cErrArrInitFail("cArrayResizeInt")
    endif
  endif
  return newArray
endfunction
; 21-11-09 - Success-bp
ObjectReference[] function cArrayResizeObjRef(ObjectReference[] aArray, Int newSize, \
    ObjectReference filler = None, Bool useSKSE = TRUE, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  ObjectReference[] newArray
  if !aArray
    cErrInvalidArg("cArrayResizeObjectReference", "!aArray", "")
  elseif newSize < 1
    cErrInvalidArg("cArrayResizeObjectReference", "newSize < 1", "")
  elseif usePapUtil
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
      cErrArrInitFail("cArrayResizeObjectReference")
    endif
  endif
  return newArray
endfunction
; 21-11-09 - Test Success
String[] function cArrayResizeString(String[] aArray, Int newSize, String filler = "", Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  String[] newArray
  if !aArray || newSize < 1
    cErrInvalidArg("cArrayResizeString", "!aArray")
  elseif newsize < 1
    cErrInvalidArg("cArrayResizeString", "newSize < 1")
  elseif useSKSE
    return Utility.ResizeStringArray(aArray, newSize, filler)
  else
    newArray = cArrayCreateString(newSize, filler)
    if newArray.length
      newArray = cArrayCopyToString(aArray, newArray, filler)
    else
      cErrArrInitFail("cArrayResizeString")
    endif
  endif
  return newArray
endfunction
  
  ;>>> Slice copies a portion of aArray to new array and returns it
; 21-11-09 - Success-bp
Actor[]  function cArraySliceActor(Actor[] aArray, Int fromIndex, Int toIndex = 0, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Actor[] newArray
  if !aArray
    cErrInvalidArg("cArraySliceActor", "aArray")
  elseif fromIndex < 0
    cErrInvalidArg("cArraySliceActor", "fromIndex < 0")
  elseif toIndex < fromIndex
    cErrInvalidArg("cArraySliceActor", "toIndex < fromIndex")
  elseif !cIsBetweenInt(fromIndex, 1, aArray.length - 1)
    cErrInvalidArg("cArraySliceActor", "!cIsBetweenInt(fromIndex, 1, aArray.length - 1)")
  elseif !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)
    cErrInvalidArg("cArraySliceActor", "!orNumIndices && !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)")
  elseif usePapUtil
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
; 21-11-09 - Success-bp
Alias[]  function cArraySliceAlias(Alias[] aArray, Int fromIndex, Int toIndex = 0, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Alias[] newArray
  if !aArray
    cErrInvalidArg("cArraySliceAlias", "aArray")
  elseif fromIndex < 0
    cErrInvalidArg("cArraySliceAlias", "fromIndex < 0")
  elseif toIndex < fromIndex
    cErrInvalidArg("cArraySliceAlias", "toIndex < fromIndex")
  elseif !cIsBetweenInt(fromIndex, 1, aArray.length - 1)
    cErrInvalidArg("cArraySliceAlias", "!cIsBetweenInt(fromIndex, 1, aArray.length - 1)")
  elseif !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)
    cErrInvalidArg("cArraySliceAlias", "!orNumIndices && !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)")
  elseif usePapUtil
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
; 21-11-09 - Success-bp
Bool[]  function cArraySliceBool(Bool[] aArray, Int fromIndex, Int toIndex = 0, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Bool[] newArray
  if !aArray
    cErrInvalidArg("cArraySliceBool", "aArray")
  elseif fromIndex < 0
    cErrInvalidArg("cArraySliceBool", "fromIndex < 0")
  elseif toIndex < fromIndex
    cErrInvalidArg("cArraySliceBool", "toIndex < fromIndex")
  elseif !cIsBetweenInt(fromIndex, 1, aArray.length - 1)
    cErrInvalidArg("cArraySliceBool", "!cIsBetweenInt(fromIndex, 1, aArray.length - 1)")
  elseif !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)
    cErrInvalidArg("cArraySliceBool", "!orNumIndices && !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)")
  elseif usePapUtil
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
; 21-11-09 - Test Success
Float[]  function cArraySliceFloat(Float[] aArray, Int fromIndex, Int toIndex = 0, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Float[] newArray
  if !aArray
    cErrInvalidArg("cArraySliceFloat", "aArray")
  elseif fromIndex < 0
    cErrInvalidArg("cArraySliceFloat", "fromIndex < 0")
  elseif toIndex < fromIndex
    cErrInvalidArg("cArraySliceFloat", "toIndex < fromIndex")
  elseif !cIsBetweenInt(fromIndex, 1, aArray.length - 1)
    cErrInvalidArg("cArraySliceFloat", "!cIsBetweenInt(fromIndex, 1, aArray.length - 1)")
  elseif !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)
    cErrInvalidArg("cArraySliceFloat", "!orNumIndices && !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)")
  elseif usePapUtil
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
; 21-11-09 - Success-bp
Form[]  function cArraySliceForm(Form[] aArray, Int fromIndex, Int toIndex = 0, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Form[] newArray
  if !aArray
    cErrInvalidArg("cArraySliceForm", "aArray")
  elseif fromIndex < 0
    cErrInvalidArg("cArraySliceForm", "fromIndex < 0")
  elseif toIndex < fromIndex
    cErrInvalidArg("cArraySliceForm", "toIndex < fromIndex")
  elseif !cIsBetweenInt(fromIndex, 1, aArray.length - 1)
    cErrInvalidArg("cArraySliceForm", "!cIsBetweenInt(fromIndex, 1, aArray.length - 1)")
  elseif !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)
    cErrInvalidArg("cArraySliceForm", "!orNumIndices && !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)")
  elseif usePapUtil
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
; 21-11-09 - Test Success
Int[]  function cArraySliceInt(Int[] aArray, Int fromIndex, Int toIndex = 0, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArraySliceInt", "aArray")
  elseif fromIndex < 0
    cErrInvalidArg("cArraySliceInt", "fromIndex < 0")
  elseif toIndex < fromIndex
    cErrInvalidArg("cArraySliceInt", "toIndex < fromIndex")
  elseif !cIsBetweenInt(fromIndex, 1, aArray.length - 1)
    cErrInvalidArg("cArraySliceInt", "!cIsBetweenInt(fromIndex, 1, aArray.length - 1)")
  elseif !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)
    cErrInvalidArg("cArraySliceInt", "!orNumIndices && !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)")
  elseif usePapUtil
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
; 21-11-09 - Success-bp
ObjectReference[]  function cArraySliceObjRef(ObjectReference[] aArray, Int fromIndex, Int toIndex = 0, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  ObjectReference[] newArray
  if !aArray
    cErrInvalidArg("cArraySliceObjectReference", "aArray")
  elseif fromIndex < 0
    cErrInvalidArg("cArraySliceObjectReference", "fromIndex < 0")
  elseif toIndex < fromIndex
    cErrInvalidArg("cArraySliceObjectReference", "toIndex < fromIndex")
  elseif !cIsBetweenInt(fromIndex, 1, aArray.length - 1)
    cErrInvalidArg("cArraySliceObjectReference", "!cIsBetweenInt(fromIndex, 1, aArray.length - 1)")
  elseif !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)
    cErrInvalidArg("cArraySliceObjectReference", "!orNumIndices && !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)")
  elseif usePapUtil
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
; 21-11-09 - Test Success
String[]  function cArraySliceString(String[] aArray, Int fromIndex, Int toIndex = 0, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  String[] newArray
  if !aArray
    cErrInvalidArg("cArraySliceString", "aArray")
  elseif fromIndex < 0
    cErrInvalidArg("cArraySliceString", "fromIndex < 0")
  elseif toIndex < fromIndex
    cErrInvalidArg("cArraySliceString", "toIndex < fromIndex")
  elseif !cIsBetweenInt(fromIndex, 1, aArray.length - 1)
    cErrInvalidArg("cArraySliceString", "!cIsBetweenInt(fromIndex, 1, aArray.length - 1)")
  elseif !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)
    cErrInvalidArg("cArraySliceString", "!orNumIndices && !cIsBetweenInt(toIndex, fromIndex, aArray.length - 1)")
  elseif usePapUtil
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
; 21-11-09 - Success-bp
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
; 21-11-09 - Success-bp
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
; 21-11-09 - Success-bp
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
; 21-11-09 - Test Success
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
; 21-11-09 - Success-bp
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
; 21-11-09 - Success-bp
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
; 21-11-09 - Success-bp
ObjectReference[]  function cArraySpliceObjRef(ObjectReference[] aArray, ObjectReference[] toInsert, Int insertAtIndex = 0) global
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
; 21-11-09 - Success-bp
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
  
  ;>>> Reverse order (returns new array)
; 21-11-09 - Success-bp
Actor[]   function cArrayReverseActor(Actor[] aArray) global
  {Requirements: None}
  Actor[] newArray
  if !aArray
    cErrInvalidArg("cArrayReverseActor", "aArray", "")
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
; 21-11-09 - Success-bp
Alias[]   function cArrayReverseAlias(Alias[] aArray) global
  {Requirements: None}
  Alias[] newArray
  if !aArray
    cErrInvalidArg("cArrayReverseAlias", "aArray", "")
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
; 21-11-09 - Success-bp
Bool[]   function cArrayReverseBool(Bool[] aArray) global
  {Requirements: None}
  Bool[] newArray
  if !aArray
    cErrInvalidArg("cArrayReverseBool", "aArray", "")
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
; 21-11-09 - Test Success
Float[]  function cArrayReverseFloat(Float[] aArray) global
  {Requirements: None}
  Float[] newArray
  if !aArray
    cErrInvalidArg("cArrayReverseFloat", "aArray", "")
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
; 21-11-09 - Success-bp
Form[]   function cArrayReverseForm(Form[] aArray) global
  {Requirements: None}
  Form[] newArray
  if !aArray
    cErrInvalidArg("cArrayReverseForm", "aArray", "")
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
; 21-11-09 - Test Success
Int[]    function cArrayReverseInt(Int[] aArray) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayReverseInt", "aArray", "")
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
; 21-11-09 - Success-bp
ObjectReference[]   function cArrayReverseObjRef(ObjectReference[] aArray) global
  {Requirements: None}
  ObjectReference[] newArray
  if !aArray
    cErrInvalidArg("cArrayReverseObjectReference", "aArray", "")
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
; 21-11-09 - Test Success
String[] function cArrayReverseString(String[] aArray) global
  {Requirements: None}
  String[] newArray
  if !aArray
    cErrInvalidArg("cArrayReverseString", "aArray", "")
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

;====== CREATION
  ;>>> See cStringToArray() in "String" section above
  ;>>> Array from separated values (10 each)
; 21-11-09 - Test Success
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
; 21-11-09 - Test Success
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
; 21-11-09 - Success-bp
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
; 21-11-09 - Test Success
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
  
  ;>>> Copying to newly created array which is then returned
; 21-11-09 - Success-bp
Actor[]   function cArrayCopyActor(Actor[] aArray) global
  {Requirements: None}
  Actor[] newArray
  if !aArray
    cErrInvalidArg("cArrayCopyActor", "aArray", "")
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
; 21-11-09 - Success-bp
Alias[]   function cArrayCopyAlias(Alias[] aArray) global
  {Requirements: None}
  Alias[] newArray
  if !aArray
    cErrInvalidArg("cArrayCopyAlias", "aArray", "")
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
; 21-11-09 - Success-bp
Bool[]   function cArrayCopyBool(Bool[] aArray) global
  {Requirements: None}
  Bool[] newArray
  if !aArray
    cErrInvalidArg("cArrayCopyBool", "aArray", "")
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
; 21-11-09 - Test Success
Float[]  function cArrayCopyFloat(Float[] aArray) global
  {Requirements: None}
  Float[] newArray
  if !aArray
    cErrInvalidArg("cArrayCopyFloat", "aArray", "")
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
; 21-11-09 - Success-bp
Form[]   function cArrayCopyForm(Form[] aArray) global
  {Requirements: None}
  Form[] newArray
  if !aArray
    cErrInvalidArg("cArrayCopyForm", "aArray", "")
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
; 21-11-09 - Test Success
Int[]    function cArrayCopyInt(Int[] aArray) global
  {Requirements: None}
  Int[] newArray
  if !aArray
    cErrInvalidArg("cArrayCopyInt", "aArray", "")
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
; 21-11-09 - Success-bp
ObjectReference[]   function cArrayCopyObjRef(ObjectReference[] aArray) global
  {Requirements: None}
  ObjectReference[] newArray
  if !aArray
    cErrInvalidArg("cArrayCopyObjRef", "aArray", "")
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
; 21-11-09 - Test Success
String[] function cArrayCopyString(String[] aArray) global
  {Requirements: None}
  String[] newArray
  if !aArray
    cErrInvalidArg("cArrayCopyString", "aArray", "")
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
  
  ;>>> Merging (returns new array)
Bool[]   function cArrayMergeBool(Bool[] aArray1, Bool[] aArray2, Bool useSKSE = TRUE, Bool usePapUtil = TRUE) global
  {Requirements: None, SKSE:Soft, PapyrusUtil:Soft}
  Bool[] newArray
  ;if !aArray1 && !aArray2
  ;  cErrInvalidArg("cArrayMergeBool", "aArray1 && aArray2", "")
  ;else
  ; NO ARGUMENT CHECK FOR MERGE, COULD BE INTENTIONAL
    if usePapUtil
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
    if usePapUtil
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
    if usePapUtil
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
    if usePapUtil
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
String[] function cArrayMergeString(String[] aArray1, String[] aArray2, Bool useSKSE = TRUE, Bool usePapUtil = TRUE) global
  {Requirements: None, SKSE:Soft, PapyrusUtil:Soft}
  String[] newArray
  ;if !aArray1 && !aArray2
  ;  cErrInvalidArg("cArrayMergeString", "aArray1 && aArray2", "")
  ;else
  ; NO ARGUMENT CHECK FOR MERGE COULD BE INTENTIONAL
    if usePapUtil
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
  
  ;>>> Specific data types (4 capitalized letters == xEdit abbreviations)
Actor[]       function cArrayCreateACHR(Int indices, Actor filler = None, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  if usePapUtil
    return PapyrusUtil.ActorArray(indices, filler)
  endif
  return cArrayActor.cArrayCreateActor(indices, filler)
endfunction
Actor[]       function cArrayCreateActor(Int indices, Actor filler = None, Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  if usePapUtil
    return PapyrusUtil.ActorArray(indices, filler)
  endif
  return cArrayActor.cArrayCreateActor(indices, filler)
endfunction
ActorBase[]   function cArrayCreateNPC_(Int indices, ActorBase filler = None) global
  {Requirements: None}
  return cArrayActorBase.cArrayCreateActorBase(indices, filler)
endfunction
ActorBase[]   function cArrayCreateActorBase(Int indices, ActorBase filler = None) global
  {Requirements: None}
  return cArrayActorBase.cArrayCreateActorBase(indices, filler)
endfunction
Alias[]       function cArrayCreateAlias(Int indices, Alias filler = None, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  return cArrayAlias.cArrayCreateAlias(indices, filler, useSKSE)
endfunction
Armor[]       function cArrayCreateARMO(Int indices, Armor filler = None) global
  {Requirements: None}
  return cArrayArmor.cArrayCreateArmor(indices, filler)
endfunction
Armor[]       function cArrayCreateArmor(Int indices, Armor filler = None) global
  {Requirements: None}
  return cArrayArmor.cArrayCreateArmor(indices, filler)
endfunction
Book[]        function cArrayCreateBOOK(Int indices, Book filler = None) global
  {Requirements: None}
  return cArrayBook.cArrayCreateBook(indices, filler)
endfunction
Bool[]        function cArrayCreateBool(Int indices, Bool filler = False, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  return cArrayBool.cArrayCreateBool(indices, filler, useSKSE)
endfunction
Cell[]        function cArrayCreateCELL(Int indices, Cell filler = None) global
  {Requirements: None}
  return cArrayCell.cArrayCreateCell(indices, filler)
endfunction
ConstructibleObject[] function cArrayCreateCOBJ(Int indices, ConstructibleObject filler = None) global
  {Requirements: None}
  return cArrayConstructibleObject.cArrayCreateConstructibleObject(indices, filler)
endfunction
ConstructibleObject[] function cArrayCreateConstructibleObject(Int indices, ConstructibleObject filler = None) global
  {Requirements: None}
  return cArrayConstructibleObject.cArrayCreateConstructibleObject(indices, filler)
endfunction
Container[]   function cArrayCreateCONT(Int indices, Container filler = None) global
  {Requirements: None}
  return cArrayContainer.cArrayCreateContainer(indices, filler)
endfunction
Enchantment[] function cArrayCreateENCH(Int indices, Enchantment filler = None) global
  {Requirements: None}
  return cArrayEnchantment.cArrayCreateEnchantment(indices, filler)
endfunction
Enchantment[] function cArrayCreateEnchantment(Int indices, Enchantment filler = None) global
  {Requirements: None}
  return cArrayEnchantment.cArrayCreateEnchantment(indices, filler)
endfunction
Faction[]   function cArrayCreateFACT(Int indices, Faction filler = None) global
  {Requirements: None}
  return cArrayFaction.cArrayCreateFaction(indices, filler)
endfunction
Faction[]   function cArrayCreateFaction(Int indices, Faction filler = None) global
  {Requirements: None}
  return cArrayFaction.cArrayCreateFaction(indices, filler)
endfunction
Float[]     function cArrayCreateFloat(Int indices, Float filler = 0.0, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  return cArrayFloat.cArrayCreateFloat(indices, filler, useSKSE)
endfunction
Flora[]     function cArrayCreateFLOR(Int indices, Flora filler = None) global
  {Requirements: None}
  return cArrayFlora.cArrayCreateFlora(indices, filler)
endfunction
Flora[]     function cArrayCreateFlora(Int indices, Flora filler = None) global
  {Requirements: None}
  return cArrayFlora.cArrayCreateFlora(indices, filler)
endfunction
Form[]      function cArrayCreateForm(Int indices, Form filler = None, Bool useSKSE = TRUE) global
  {Requirements: None}
  return cArrayForm.cArrayCreateForm(indices, filler, useSKSE)
endfunction
Formlist[]  function cArrayCreateFLST(Int indices, Formlist filler = None) global
  {Requirements: None}
  return cArrayFormlist.cArrayCreateFormlist(indices, filler)
endfunction
Formlist[]  function cArrayCreateFormList(Int indices, Formlist filler = None) global
  {Requirements: None}
  return cArrayFormList.cArrayCreateFormList(indices, filler)
endfunction
GlobalVariable[] function cArrayCreateGLOB(Int indices, GlobalVariable filler = None) global
  {Requirements: None}
  return cArrayGlobalVariable.cArrayCreateGlobalVariable(indices, filler)
endfunction
GlobalVariable[] function cArrayCreateGlobalVariable(Int indices, GlobalVariable filler = None) global
  {Requirements: None}
  return cArrayGlobalVariable.cArrayCreateGlobalVariable(indices, filler)
endfunction
Ingredient[]     function cArrayCreateINGR(Int indices, Ingredient filler = None) global
  {Requirements: None}
  return cArrayIngredient.cArrayCreateIngredient(indices, filler)
endfunction
Ingredient[]     function cArrayCreateIngredient(Int indices, Ingredient filler = None) global
  {Requirements: None}
  return cArrayIngredient.cArrayCreateIngredient(indices, filler)
endfunction
Int[]     function cArrayCreateInt(Int indices, Int filler = 0, Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  return cArrayInt.cArrayCreateInt(indices, filler, useSKSE)
endfunction
Keyword[] function cArrayCreateKYWD(Int indices, KeyWord filler = None) global
  {Requirements: None}
  return cArrayKeyWord.cArrayCreateKeyWord(indices, filler)
endfunction
KeyWord[] function cArrayCreateKeyword(Int indices, KeyWord filler = None) global
  {Requirements: None}
  return cArrayKeyWord.cArrayCreateKeyWord(indices, filler)
endfunction
LeveledActor[] function cArrayCreateLVLN(Int indices, LeveledActor filler = None) global
  {Requirements: None}
  return cArrayLeveledActor.cArrayCreateLeveledActor(indices, filler)
endfunction
LeveledActor[] function cArrayCreateLeveledActor(Int indices, LeveledActor filler = None) global
  {Requirements: None}
  return cArrayLeveledActor.cArrayCreateLeveledActor(indices, filler)
endfunction
LeveledItem[]  function cArrayCreateLVLI(Int indices, LeveledItem filler = None) global
  {Requirements: None}
  return cArrayLeveledItem.cArrayCreateLeveledItem(indices, filler)
endfunction
LeveledItem[]  function cArrayCreateLeveledItem(Int indices, LeveledItem filler = None) global
  {Requirements: None}
  return cArrayLeveledItem.cArrayCreateLeveledItem(indices, filler)
endfunction
LeveledSpell[] function cArrayCreateLVSP(Int indices, LeveledSpell filler = None) global
  {Requirements: None}
  return cArrayLeveledSpell.cArrayCreateLeveledSpell(indices, filler)
endfunction
LeveledSpell[] function cArrayCreateLeveledSpell(Int indices, LeveledSpell filler = None) global
  {Requirements: None}
  return cArrayLeveledSpell.cArrayCreateLeveledSpell(indices, filler)
endfunction
Location[]     function cArrayCreateLCTN(Int indices, Location filler = None) global
  {Requirements: None}
  return cArrayLocation.cArrayCreateLocation(indices, filler)
endfunction
MagicEffect[]  function cArrayCreateMagicEffect(Int indices, MagicEffect filler = None) global
  {Requirements: None}
  return cArrayMagicEffect.cArrayCreateMagicEffect(indices, filler)
endfunction
MagicEffect[]  function cArrayCreateMGEF(Int indices, MagicEffect filler = None) global
  {Requirements: None}
  return cArrayMagicEffect.cArrayCreateMagicEffect(indices, filler)
endfunction
Message[]      function cArrayCreateMESG(Int indices, Message filler = None) global
  {Requirements: None}
  return cArrayMessage.cArrayCreateMessage(indices, filler)
endfunction
Message[]      function cArrayCreateMessage(Int indices, Message filler = None) global
  {Requirements: None}
  return cArrayMessage.cArrayCreateMessage(indices, filler)
endfunction
MiscObject[]   function cArrayCreateMISC(Int indices, MiscObject filler = None) global
  {Requirements: None}
  return cArrayMiscObject.cArrayCreateMiscObject(indices, filler)
endfunction
MiscObject[]   function cArrayCreateMiscObject(Int indices, MiscObject filler = None) global
  {Requirements: None}
  return cArrayMiscObject.cArrayCreateMiscObject(indices, filler)
endfunction
ObjectReference[] function cArrayCreateREFR(Int indices, ObjectReference filler = None, Bool usePapUtil = TRUE) global
  {Requirements: None}
  if usePapUtil
    return PapyrusUtil.ObjRefArray(indices, filler)
  endif
  return cArrayObjectReference.cArrayCreateObjectReference(indices, filler)
endfunction
ObjectReference[] function cArrayCreateObjectReference(Int indices, ObjectReference filler = None, \
    Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  if usePapUtil
    return PapyrusUtil.ObjRefArray(indices, filler)
  endif
  return cArrayObjectReference.cArrayCreateObjectReference(indices, filler)
endfunction
ObjectReference[] function cArrayCreateObjRef(Int indices, ObjectReference filler = None, \
    Bool usePapUtil = TRUE) global
  {Requirements: None, PapyrusUtil:Soft}
  if usePapUtil
    return PapyrusUtil.ObjRefArray(indices, filler)
  endif
  return cArrayObjectReference.cArrayCreateObjectReference(indices, filler)
endfunction
Outfit[]  function cArrayCreateOTFT(Int indices, Outfit filler = None) global
  {Requirements: None}
  return cArrayOutfit.cArrayCreateOutfit(indices, filler)
endfunction
Package[] function cArrayCreatePACK(Int indices, Package filler = None) global
  {Requirements: None}
  return cArrayPackage.cArrayCreatePackage(indices, filler)
endfunction
Package[] function cArrayCreatePackage(Int indices, Package filler = None) global
  {Requirements: None}
  return cArrayPackage.cArrayCreatePackage(indices, filler)
endfunction
Perk[]    function cArrayCreatePERK(Int indices, Perk filler = None) global
  {Requirements: None}
  return cArrayPerk.cArrayCreatePerk(indices, filler)
endfunction
Potion[]  function cArrayCreateALCH(Int indices, Potion filler = None) global
  {Requirements: None}
  return cArrayPotion.cArrayCreatePotion(indices, filler)
endfunction
Potion[]  function cArrayCreatePotion(Int indices, Potion filler = None) global
  {Requirements: None}
  return cArrayPotion.cArrayCreatePotion(indices, filler)
endfunction
Quest[]   function cArrayCreateQUST(Int indices, Quest filler = None) global
  {Requirements: None}
  return cArrayQuest.cArrayCreateQuest(indices, filler)
endfunction
Quest[]   function cArrayCreateQuest(Int indices, Quest filler = None) global
  {Requirements: None}
  return cArrayQuest.cArrayCreateQuest(indices, filler)
endfunction
Race[]    function cArrayCreateRACE(Int indices, Race filler = None) global
  {Requirements: None}
  return cArrayRace.cArrayCreateRace(indices, filler)
endfunction
ReferenceAlias[] function cArrayCreateReferenceAlias(Int indices, ReferenceAlias filler = None) global
  {Requirements: None}
  return cArrayReferenceAlias.cArrayCreateReferenceAlias(indices, filler)
endfunction
Scroll[]  function cArrayCreateSCRL(Int indices, Scroll filler = None) global
  {Requirements: None}
  return cArrayScroll.cArrayCreateScroll(indices, filler)
endfunction
Scroll[]  function cArrayCreateScroll(Int indices, Scroll filler = None) global
  {Requirements: None}
  return cArrayScroll.cArrayCreateScroll(indices, filler)
endfunction
Shout[]   function cArrayCreateSHOU(Int indices, Shout filler = None) global
  {Requirements: None}
  return cArrayShout.cArrayCreateShout(indices, filler)
endfunction
Shout[]   function cArrayCreateShout(Int indices, Shout filler = None) global
  {Requirements: None}
  return cArrayShout.cArrayCreateShout(indices, filler)
endfunction
SoulGem[] function cArrayCreateSLGM(Int indices, SoulGem filler = None) global
  {Requirements: None}
  return cArraySoulGem.cArrayCreateSoulGem(indices, filler)
endfunction
Spell[]   function cArrayCreateSPEL(Int indices, Spell filler = None) global
  {Requirements: None}
  return cArraySpell.cArrayCreateSpell(indices, filler)
endfunction
Spell[]   function cArrayCreateSpell(Int indices, Spell filler = None) global
  {Requirements: None}
  return cArraySpell.cArrayCreateSpell(indices, filler)
endfunction
Static[]  function cArrayCreateSTAT(Int indices, Static filler = None) global
  {Requirements: None}
  return cArrayStatic.cArrayCreateStatic(indices, filler)
endfunction
String[]  function cArrayCreateString(Int indices, String filler = "", Bool useSKSE = TRUE) global
  {Requirements: None, SKSE:Soft}
  return cArrayString.cArrayCreateString(indices, filler, useSKSE)
endfunction
TextureSet[]  function cArrayCreateTXST(Int indices, TextureSet filler = None) global
  {Requirements: None}
  return cArrayTextureSet.cArrayCreateTextureSet(indices, filler)
endfunction
Topic[]       function cArrayCreateDIAL(Int indices, Topic filler = None) global
  {Requirements: None}
  return cArrayTopic.cArrayCreateTopic(indices, filler)
endfunction
TopicInfo[]   function cArrayCreateDLBR(Int indices, TopicInfo filler = None) global
  {Requirements: None}
  return cArrayTopicInfo.cArrayCreateTopicInfo(indices, filler)
endfunction
Weapon[]      function cArrayCreateWEAP(Int indices, Weapon filler = None) global
  {Requirements: None}
  return cArrayWeapon.cArrayCreateWeapon(indices, filler)
endfunction
Weapon[]      function cArrayCreateWeapon(Int indices, Weapon filler = None) global
  {Requirements: None}
  return cArrayWeapon.cArrayCreateWeapon(indices, filler)
endfunction
Weather[]     function cArrayCreateWTHR(Int indices, Weather filler = None) global
  {Requirements: None}
  return cArrayWeather.cArrayCreateWeather(indices, filler)
endfunction
WordOfPower[] function cArrayCreateWOOP(Int indices, WordOfPower filler = None) global
  {Requirements: None}
  return cArrayWordOfPower.cArrayCreateWordOfPower(indices, filler)
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
FormList[]    function cArrayNoneFormList() global
  {Requirements: None}
  FormList[] arr
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
ReferenceAlias[]  function cArrayNoneReferenceAlias() global
  {Requirements: None}
  ReferenceAlias[] arr
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
  elseif numKeyPairs > 64 && !useSKSE
    cErrInvalidArg("cMapCreate", "numKeyPairs > 64 && !useSKSE")
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
  digits[16] = "G" ; makes nabbing F easier
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

  ;Int i = 1
  ;while i < 69
  ;  cLibTrace("cArrayASCIIChars", "ascii[" + (i - 1) + "] < ascii[" + i + "]: " + ascii[i - 1] + " < " + ascii[i] + ": " + (ascii[i - 1] < ascii[i]), 0)
  ;  i += 1
  ;endwhile
  return ascii
  
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
