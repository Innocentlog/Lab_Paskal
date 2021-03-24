//Дан двумерный массив.
//Сформировать одномерный массив элементы которого равны 1 если в соответсвующей строке двумерного массива есть нулевые элементы 
//и 0 если нет нулевых элеметов
program n_6;
const nmax=15;
var 
a:array[1..nmax,1..nmax] of integer;
b:array[1..nmax] of integer;
m,n,i,j,imx,jmx:byte;
mx:integer;
begin
//двумерный массив

repeat
  write('Количество строк до ',nmax,' m =');
  read(m);
until m in [1..nmax];

repeat
  write('Количество столбцов до ',nmax,' n =');
  read(n);
until n in [1..nmax];

writeln('Элементы:');
for i:=1 to m do  
  for j:=1 to n do
   read(a[i,j]);

//двумерный массив

write('Ваша матрица:');
writeln();
for i:=1 to m do 
begin 
 for j:=1 to n do   
   write('|',a[i,j]:3); 
 writeln('|');
 end;


for i:=1 to m do 
begin 
 b[i]:=0;
 for j:=1 to n do 
  if a[i,j] = 0 then 
     b[i]:=1
end;

writeln;
writeln('Формирование одномерного массива:');
 for i:=1 to m do 
 write ('|',b[i]:2);
write('|'); 
end.     