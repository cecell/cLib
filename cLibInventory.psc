Scriptname cLibInventory extends ObjectReference

FormList Property cLib_FLST_Working01 auto
FormList Property cLib_FLST_Working02 auto

GlobalVariable Property cLib_GLOB_isRunningContainer auto

Actor Property playerAct auto
ObjectReference Property playerRef auto

ObjectReference Property cLib_REFR_WorkingChest01 auto
ObjectReference Property cLib_REFR_WorkingChest02 auto
ObjectReference Property cLib_REFR_WorkingChest03 auto

Int[]  Property qtyWorkingChest01 auto
Int[]  Property qtyWorkingChest02 auto
Int[]  Property qtyWorkingChest03 auto
Form[] Property formsWorkingChest01 auto
Form[] Property formsWorkingChest02 auto
Form[] Property formsWorkingChest03 auto

event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)

  cLib_FLST_Working01.AddForm(akBaseItem)
  RegisterForSingleUpdate(0.2)

endevent

event OnUpdate()

  

endevent
