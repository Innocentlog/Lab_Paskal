type mas = array of integer; 
var 
  a, b, c, min: mas;
  n_a, n_b, n_c: integer;
  
procedure input(var arr: mas; n: integer);
begin
  print('Input array:');
  for var i := 0 to n-1 do
    arr[i] := readinteger;
end;

procedure nega(var arr: mas; n: integer);
begin
  var k,i,min:integer;
  k:=0;
  min:=arr[1];
  
  for i := 0 to n-1 do 
    begin
    
    if (arr[i] < 0) then 
      begin 
      k+=1;
      if (arr[i] < min) then min:=arr[i];  
      end;
    end;    
    write('Num ', k);
    write('Min ', min);
end;

begin
  //первый массив
  n_a := readinteger('n[1]:');
  a := new integer[n_a];
  input(a,n_a);
  
  //второй массив
  n_b := readinteger('n[2]:');
  b := new integer[n_b];
  input(b,n_b);
  
  //третий массив
  n_c := readinteger('n[3]:');
  c := new integer[n_c];
  input(c,n_c);
  
  writeln();
  writeln('First');
  nega(a,n_a);
  writeln();
  writeln();
  
  writeln();
  writeln('Second');
  nega(b,n_b);
  writeln();
  writeln();
  
  writeln();
  writeln('Third');
  nega(c,n_c);
  writeln();
  writeln();
  
end.
