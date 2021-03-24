//Брусов Иннокентий| Одномерные массивы|Вариант 5|
// №1 Найти сумму положительных элементов  одномерного массива.
program m_1;
const
    N = 15;
var
    arr: array[1..N] of integer;
    i: byte;
    sum: integer;
begin 
    randomize;
    write('Массив:');
    for i:=1 to N do begin // заполнение 
        arr[i] := random(10) - 5;
        write(arr[i]:4);
    end;
    writeln;
 
    sum := 0; // подсчет суммы
    for i:=1 to N do
        if arr[i] > 0 then
            sum := sum + arr[i];
    writeln('Cумма положительных эл-ов ',sum:5);
    
end.