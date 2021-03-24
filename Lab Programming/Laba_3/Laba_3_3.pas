//Найти количество минимальных элементов одномерного массива
program m_3;
var
  arr:array [1..100] of integer;
  n,k,min,i:integer;
begin
  write('Размер массива = '); 
  readln(n);
  for i:=1 to n do begin
    write('A[',i,'] = '); 
    readln(arr[i]);
  end;
  
  write('Массив: ','|');
  for i:=1 to n do 
  write(arr[i],'|');
  
  
  min:=arr[1];
    for i:=1 to n do 
    if arr[i]<min then min:=arr[i];
    write('Минимальный элемент: ',min);

    k:=0;
    for i:=1 to n do 
    if min=arr[i] then k:=k+1;
    writeln(' Таких элементов: ',k);
end.