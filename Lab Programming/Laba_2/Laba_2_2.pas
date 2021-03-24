//№2 
//Если x<=-1 то  y=-1
//Если -1<x<=0 то y=x
//Если 0<x<=2 то y=0
//Если x>2 то y=x-2 
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