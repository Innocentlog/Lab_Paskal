var a,b:integer;
  
  function sum(a,b:integer):real :=power(a+b,3);
  function raz(a,b:integer):real :=power(a-b,3);
  
  begin
  (a,b):=readinteger2('[a,b]');
  writeln('Куб Суммы:',sum(a,b));
  writeln('Куб Разности:',raz(a,b));
  end.