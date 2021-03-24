//Дан двумерный массив. Сформировать одномерный массив, каждый элемент которого равен сумме элементов соответствующего столбца.
program n_4;
const nmax=15;
var 
a:array[1..nmax,1..nmax] of integer;
b:array[1..nmax] of integer;
m,n,i,j,imx,jmx:byte;
mx,sum:integer;
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
 begin
 write('|',a[i,j]:3);
 end;
 writeln('|');
 end;


for i:=1 to n do
 begin
 sum:=0;
   for j:=1 to m do
     sum:=sum+a[j,i];
     b[i]:=sum;  
  end;

 
writeln;
writeln('Формирование одномерного массива:');
  for i:=1 to n do 
  write ('|',b[i]:2);
write('|'); 
end.