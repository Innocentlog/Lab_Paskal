// |Брусов Иннокентий|Лабалаторная №6|Записи| Вариант 5|
program Personal_data;
type data=record
  name: string ;
  fam : string ;
  year: integer ;
end;

var 
 a: array [1..25] of data;
 i, n, yng, vozrast: integer;
 s, s1, YngNam, YngFam: string;
 
begin
n := readinteger($'Введите количество N = ');
  
 //Ввод данных
writeln('------ Введите информацию -----') ;
for i:=1 to n do 
  begin
    if i=1 then
      readln(); 
    a[i].name := readlnstring($'№{i}: Имя');
    a[i].fam := readlnstring($'№{i}: Фамилия');
    a[i].year := readlninteger($'№{i}: Год рождения:');
    writeln('--------------------------------'); 
  end;
   
// Поиск человека по имени и фамилии, вывод его возраста
writeln('--[Поиск по имени и фамилиии]-- ');
s1 := readlnstring($'Введите Имя:');
s := readlnstring($'Введите Фамилию:');
for i:=1 to n do 
    if (a[i].name=s1) or (a[i].fam=s) then 
      writeln('№',i,'.','Он(а) ',a[i].year,' ','года рождения');
 
writeln('--------------------------------');
   
   // Поиск людей по году рождения, вывод имени и фамилии
writeln('--[Поиск по году рождения]--');
vozrast := readinteger($'Введите год:');
writeln('----------Люди такого возраста----------');
for i:=1 to n do 
  begin
  if a[i].year=vozrast then writeln('Имя Фамилия: ',a[i].name,' ',a[i].fam);
  end;
writeln('--------------------------------');
      
// Поиск самого молодого 
yng:=a[1].year;
for i:=2 to n do
  if a[i].year>yng then
    begin
    yng:=a[i].year ;
    YngNam:=a[i].name ; 
    YngFam:=a[i].fam ;
    end ;
writeln('Самый молодой(ая) из всех это № ',i,' ',YngNam,' ',YngFam,' он(а) ',yng,' года рождения');
writeln('--------------------------------'); 
end.