(*
  Category: SWAG Title: FILE HANDLING ROUTINES
  Original name: 0035.PAS
  Description: Hiding/Unhiding Files
  Author: HERBERT ZARB
  Date: 11-02-93  05:54
*)

{
Herbert Zarb <panther!jaguar!hzarb@relay.iunet.it>

  This simple Program changes the attribute of the File or directory from
   hidden to archive or vice-versa...
}

Program hide_unhide;
{ Accepts two command line parameters :
        1st parameter can be either +h (hide) or -h(unhide).
        2nd parameter must be the full path }
Uses
  Dos;

Const
  bell    = #07;
  hidden  = $02;
  archive = $20;

Var
  f : File;

begin
  if paramcount >= 2 then
  begin
    Assign(f, paramstr(2));
    if paramstr(1) = '+h' then
      SetFAttr(f, hidden)
    else
    if paramstr(1) = '-h' then
      SetFAttr(f, Archive)
    else
      Write(bell);
  end
  else
  begin
    WriteLn('Usage: +h/-h filename');
    Write(bell);
  end
end.
