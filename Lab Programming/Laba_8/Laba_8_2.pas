type int = integer; 
     nums = set of int;
     
var player, loto: nums;
    i,c,n:integer;
    
begin
  c:=0;
  while c<5 do 
  begin
    n:=random(1,36);
    if not (n in loto) then 
    begin
      loto+=[n];
      c+=1;
    end;
  end;
  
  write('Ваши 5 номеров [1,36]: ');

  for i := 1 to 5 do
    player += [readinteger];
    
  player *= loto;
  
  println('Загаданные номера:', loto);
  println('Угаданные номера:', player);
  println('Не угаданные числа:', loto-player );
  
end.