// №3 В двумерном массиве у элементов некратных 3 помернять знак, а остальные заменить на 1
program n_2;
const nmax=15;
var a:array[1..nmax,1..nmax] of integer;
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
begin
  for j:=1 to n do
  begin
   read(a[i,j]);
  end;

end;
//двумерный массив

write('Ваша матрица:');
writeln();
for i:=1 to m do 
begin 
 for j:=1 to n do 
 begin
 write('|',a[i,j]:3);
 end;
 writeln('|');
 end;


for i:=1 to m do 
 for j:=1 to n do
 if (a[i,j]mod 3<>0) then a[i,j]:=-a[i,j] else a[i,j]:=1;
 writeln();
 

write('Изменения:');
writeln();
for i:=1 to m do 
begin 
 for J:=1 to n do 
 begin
 write('|',a[i,j]:3);
 end;
 writeln('|');
 end;
end.