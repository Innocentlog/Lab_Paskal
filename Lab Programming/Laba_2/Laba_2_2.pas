//№2 
//если x<=-1 тогда y=-1
//если -1<x<=0 тогда y=x
//если 0<x<=2 тогда y=0
//если x>2 тогда y=x-2 
program n_2;
var x,y:real;
begin
  write('Введите X: ');
  read(x);
if x<=-1 then y:=-1
else
  if (x<=0) then y:=x
  else
    if (x<=2) then y:=0
    else y:=x-2;
write('Y = ',y);
end. 

//Проверка 
//x=-60 y=-1
//x=-0.5 y=-0.5
//x=1 y=0
//x=60 y=58