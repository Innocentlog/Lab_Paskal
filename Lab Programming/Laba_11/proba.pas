const n = 20;
type mas = array [0..n] of integer; 

var n_a, n_b, n_c: integer;
    a, b, c: mas;
    
procedure input(var arr: mas; n: integer);
begin
  n := readinteger('n:');
  
  print('Input array:');
  for var i := 0 to n-1 do
    arr[i] := readinteger;
end;

procedure nega(var arr: mas; n: integer);
begin
  var k,i,min:integer;
  k:=0;
  min:=arr[1];
  
  for i:=1 to n do 
    if (arr[i] < 0) then 
    begin
      k+=1;
      if arr[i] < min then min := arr[i];
    end;
   write('Количество: ', k);
   write('Минимальный: ', min);
end;

begin
  input(a,n_a);
  input(b,n_b);
  input(c,n_c);
  
  nega(a,n_a);
end.
