program m_4;
var
a:array[1..100]of integer;
i,j,x,n:integer;

begin
  writeln('Введите кол-во эл-ов');
  readln(n);
  randomize;
  writeln('Исходный массив ');
  
   for i:=1 to n do
   begin
    a[i]:=random(20);
    write(a[i]:4);
   end;
   writeln;
   
   for i:=1 to n-1 do
   for j:=i+1 to n do
   if a[i]>a[j] then
    begin
    x:=a[i];
    a[i]:=a[j];
    a[j]:=x;
    end;
   
   writeln('Новый массив ');
   for i:=1 to n do
   write(a[i]:4);
   readln;
end.