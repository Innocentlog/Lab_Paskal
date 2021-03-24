type Hit = set of char;

var s_1, s_2: string;
    hit_1, hit_2: Hit;
    i:integer;

begin
  s_1 := readlnstring('Строка 1:');
  s_2 := readlnstring('Строка 2:');
  
  hit_1 := [];  
  for  i := 1 to s_1.Length do
    hit_1 += [s_1[i]];
  
  hit_2 := [];
  for  i := 1 to s_2.Length do
    hit_2 += [s_2[i]];
  
  hit_1 *= hit_2;
  print('Совпадения:', hit_1);
end.