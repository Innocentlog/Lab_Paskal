program n_3;
 const s = 4;
 var
   k,sum,i,b:integer;
   arr:array[1..s] of integer;
   
begin
     writeln('Введите 4 натуральных числа');
     for i:= 1 to 4 do
     read(arr[i]);
     
     //Под буквой а 
     sum:=0;
     b:=arr[4]*4;
     for i:= 1 to 4 do
       if (arr[i]<=arr[4]) or (arr[i]>=b) then sum:=sum+arr[i];
     writeln('Сумма чисел: ',sum);
    
     //Под буквой б
     k:=0;
     for i:= 1 to 4 do
       if (arr[i] mod 7=1) or (arr[i] mod 7=4)  then k:=k+1;
     writeln('Чисела, которые при делении на 7 дают в остатке 1 или 4: ',k);
end.