(*
  Category: SWAG Title: MATH ROUTINES
  Original name: 0056.PAS
  Description: Super Fast Pi
  Author: GARETH BRAID
  Date: 01-27-94  12:17
*)

{
This is a small program which is faster than any of the writings on the echo
on calculating Pi.  It uses some Calculus (In an exam I did 2/3 weeks ago).
}

Program CalcPi;

Var
  Result : Extended;
  A      : Byte;

begin
  Result := 3; {Needs a approximation of Pi}
  For A := 1 to 3 do {Only needs three goes to get as accurate as possible
                      with TP variables.}
  begin
    RESULT := RESULT - Sin(result) * Cos(result);
    {this is a simplified version of Newton Raphson Elimation using Tan(Pi)=0}
    Writeln(RESULT : 0 : 18);
    {18 decimal places - as good as TP gets }
  end;
end.
