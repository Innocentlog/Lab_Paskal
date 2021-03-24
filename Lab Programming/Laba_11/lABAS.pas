type vec = array of integer; 

var n_min, n_max, n1, n2: integer;
    arr1, arr2: vec;

function vec.avr: real;
begin 
  var cnt := 0;
  foreach var x in self do
    if (x <> n_min) and (x <> n_max) then
    begin
      result += x;
      cnt += 1;
    end;
    
  result := cnt <> 0 ? result / cnt : 0;
end;

procedure min_max(arr: vec);
begin
  n_max := arr[0];
  n_min := arr[0];
  
  for var i := 1 to arr.length-1 do
  begin
    n_min :=  n_min < arr[i] ? n_min : arr[i];
    n_max :=  n_max > arr[i] ? n_max : arr[i];
  end;
end;

procedure input(var arr: vec; n: integer);
begin
  print('Введите массив:');
  for var i := 0 to n-1 do
    arr[i] := readinteger;
end;

begin
  /// First array
  n1 := readinteger('n:');
  arr1 := new integer[n1];
  
  input(arr1, n1);
  min_max(arr1);
  
  /// Second array
  n2 := readinteger('n:');
  arr2 := new integer[n2];
  
  input(arr2, n2);
    println($'arr1 (min, max, avr): ({n_min}, {n_max}, {arr1.avr})');
    
  min_max(arr2);
  
  println($'arr2 (min, max, avr): ({n_min}, {n_max}, {arr2.avr})');
end.