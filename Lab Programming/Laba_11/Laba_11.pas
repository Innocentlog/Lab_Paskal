//Дано три одномерных массива.
//Для каждого из них вычислить кол-во отрицательных эл-ов 
//и минимальный среди отрицательных.
 
type mas = array of integer;

var 
a: mas;
n,i:integer;

procedure input(var a : mas); 
 var i : integer;
 begin
 writeln('Ввод массива');
 for i := 0 to Length(a)-1 do
   
   readln(a[i]);
   end;
 end;


begin
  input(a,n);
end.begin
   write('Элемент ',i,': ');