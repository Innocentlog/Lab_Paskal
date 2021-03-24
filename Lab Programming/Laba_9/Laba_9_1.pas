var 
h,x,y,a,b:real;
  
 function Func(x:real):real;
 begin
   func:=ln(2*power(x,3)+1)-tan(x-1);
 end;
 
 begin
 
 writeln('[a,b,h]');
 read(a,b,h);
 x:=a;
 
 writeln('------+-----------+');
 writeln('  X','   |','      Y    |');
 writeln('------+-----------+');
 

 
 while x<=b+0.0001 do
   begin 
   writeln(x:5:2,' |',Func(x):10:6,' |');
   x:=x+h;
   end;
 writeln('------+-----------+');  
 end.  