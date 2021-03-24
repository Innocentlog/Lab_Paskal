 //Брусов Иннокентий |Строки|Вариант 5| 
//№1 Дана строка. Найти номер последнй по порядку запятой. 
program n_1;
var s:string;
    i,inn,ik:byte;
begin
    write('Введите строку: ');
    readln(s);
    for i:=1 to length(s) do
    if (s[i]=',') then ik:=i;
    
    writeln('Последняя по порядку запятая ',ik);
    readln;
end.