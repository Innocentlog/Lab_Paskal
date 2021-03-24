program n_4;
var
  a, b, c, d, x1, x2: real;
begin
  write('Введите a='); 
  readln(a);
  write('Введите b=');
  readln(b);
  write('Введите c='); 
  readln(c);
  d := b * b - 4 * a * c;
  if d > 0 then 
  begin
    x1 := (-b + sqrt(d)) / (2 * a);
    x2 := (-b - sqrt(d)) / (2 * a);
    writeln('x1=', x1, '; x2=', x2);
  end
    else
  if d = 0 then 
  begin
    x1 := (-b) / (2 * a);
    writeln('x=', x1:5:2);
  end
  else
    writeln('Корней нет');
end.

