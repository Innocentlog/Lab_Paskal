label aut;

type c = set of char; 

var s_1, s_2, dog, otv: string; 
    mut: c;
    i:integer;

begin
  s_1 := readlnstring('Строка 1:');
  s_2 := readlnstring('Строка 2:');
  
  mut := ['a'..'z', '_'];
  dog := s_1 + s_2;
  otv:='Является';
  
  if not (dog[1].ToLower in mut) then
    begin
    otv:='Не является';
    goto aut;
    end;
  
  mut += ['0'..'9'];
  
  for i := 2 to dog.Length do
    if not (dog[i].ToLower in mut) then
      begin
      otv:='Не является';
      goto aut;
      end;
      
  aut:
  print('Ответ   :',otv);
end.