# cLib
An SKSE optional library

The version posted here is the SKSE+ version

What this is:
This is an attempt of a person with just enough knowledge to be dangerous to learn enough to be not dangerous.  An attempt is what this is.  It begame as more of a proof of concept so be nice please

What this is *not*:
A recommendation to operate without SKSE. Heaven knows I won't...
a library intended to be the focal point of a developer's tools,
an attempt to make a statement of best practices,
an attempt to point out shortcomings or
w/e other inferences could be drawn. 

I have no intention for this to be anything apart from what it is.  A proof of concept attempt to learn more that who knows maybe after plenty of input from the community could possibly provide something.

A full list of functions is below.  Some functions were truncated due to space.

The only 'unique' thing about this is the functionality that is now extended to those without SKSE.  I am unaware of anything that does this, especially on this scale.  Credit for much of what is provided here should be given to others and the only truly exclusive credit I take is for the busy work of implementing things and anything that someone who was involved would consider so shameful that 'puppies will cry' as one said.  However, if a user doesn't have access to SKSE...this is what it is, a solution.

The library is released in 3 versions:
All SKSE+ functionality is disabled.  All root functions (base functions that are called by other functions) that have SKSE or mainly SKSE:Soft dependencies have Bool arguments that allow for said functionality to be disabled.  Those arguments are set to False (Bool useSKSE = False).

SKSE base functionality is enabled. All functions including array creation functions that have SKSE:Soft dependencies have their SKSE functionality enabled.  This allows the library to take advantage of the faster SKSE versions as they are called directly.  This version would allow a mod that was written using this library to also take advantage of an environment with SKSE.

All SKSE+ functionality is enabled. SKSE+ == SKSE, PapyrusUtil, powerofthree's Papyrus Extender and ConsoleUtil. 

PapyrusUtil provides a wealth of functionality that goes above and beyond SKSE base functionality. Examples being, removing duplicate values from an array, creation of ObjectReference and Actor arrays and more.

powerofthree's Papyrus Extender provides functionality like retrieving an array of all equipped forms for example

ConsoleUtil has been implemented as a Trace destination in this version so that all Trace output is routed to the console for faster debugging.
