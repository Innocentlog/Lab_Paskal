program n_1;
var
max,min1,min2,x,y,z,res3:real;
  
begin
     writeln('Введите X,Y,Z:');
     read(x,y,z);
     
    max:= y;
    if max < x+2*y then max:= x+2*y;
    if max < z then max := z;
     
    min1 := x;
    if y+z < min1 then min1 := y+z;
    if z < min1 then min1 := z;
     
    min2:=x*z+y;
    if min2<z-y*x then min2:=x*z+y else res3:=z-y*x;
    
     writeln('max(X,Y,Z): ',max);
     writeln('min(X,Y,Z): ',min1);
     writeln('min(X+Z,Y+Z): ',min2);
 end.
