# JuliaWin32API
Mechanically generated header files for using the WIN32 API from Julia


This is the output of a script that attempts to make a Julia module for the win32 api.

This is very preliminary, and there are some errors, mainly related to not properly parsing #if/#else/#endif blocks, resulting in duplicate definitions.

I have tried some of the simpler functions in here and they work.

I'm looking on feedback particularly on the translations I am doing in terms of the structs and types. I am new to the Julia language and chances are there are better ways to map these defintitions to Julia.

I intend to write some test code to make sure that the structs are the same size in c and Julia. Otherwise, any feedback would be helpful.

The parser mostly only outputs things that it thinks it understands, so if there are any really useful parts of the winapi not coming over, let me know.

