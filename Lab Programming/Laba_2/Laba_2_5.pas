program n_5;
var m:integer;
begin
 write('Ќомер мес€ца: ');
 readln (m);
 case m of
  1:write('€нварь');
  2:write('февраль');
  3:write('март');
  4:write('апрель');
  5:write('май');
  6:write('июнь');
  7:write('июль');
  8:write('август');
  9:write('сент€брь');
  10:write('окт€брь');
  11:write('но€брь');
  12:write('декабрь');
  else writeln ('ќшибка. Ќомер мес€ца введен некорректно');
 end;
 writeln;
 readln
end.