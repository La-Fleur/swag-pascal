(*
  Category: SWAG Title: FILE HANDLING ROUTINES
  Original name: 0004.PAS
  Description: FILENAME.PAS
  Author: SWAG SUPPORT TEAM
  Date: 05-28-93  13:46
*)
VAR
    FileName, NewName: string;

BEGIN

{if you want to remove the period, and all Characters after it in
a valid Dos Filename, do the following...}

FileName := 'MYFile.TXT';
NewName := Copy(FileName, 1, Pos('.', FileName) - 1);

{That will do it.  or you can use FSplit to break out all the
different parts of a Filename/path and get it that way.}

writeln(FileName , ' -> ', NewName);
END.
