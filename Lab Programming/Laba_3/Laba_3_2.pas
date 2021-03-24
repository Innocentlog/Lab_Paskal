//№2 В одномерном массиве у элементов не кратных 3 поменять знак, а остальные заменить на 1.

program m_2;
const
    N = 15;
var
    arr: array[1..N] of integer;
    i: byte;
    sum: integer;
begin 
    randomize;
    write('Массив  :');
    for i:=1 to N do begin // заполнение 
        arr[i] := random(10) - 5;
        write(arr[i]:4);
    end;
    writeln;
    
    for i:=1 to n do 
      if (arr[i] mod 3 <>0) then arr[i]:=arr[i]*-1
      else arr[i]:= 1;
    
    write('Изменения:');
    for i:=1 to n do 
    write(arr[i]:4);
      
end.