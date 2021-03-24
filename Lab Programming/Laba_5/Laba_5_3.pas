var
    s, s_old, s_new: string;
    i, l_old: byte;
begin
    write('Введите строку: ');
    readln(s);
    
    write('Введите подстроку, которую требуется заменить: ');
    readln(s_old);
    
    l_old := length(s_old);
    write('Введите новую подстроку: ');
    readln(s_new);
    
    while pos(s_old, s) > 0 do 
    begin
      insert(s_new, s, pos(s_old, s));
      delete(s, pos(s_old, s), l_old);  
    end;
    
    writeln('Итог: ',s);
end.
//Проверка
//Введите строку: Hello Children! How are Children Children Children Child
//Введите подстроку, которую требуется заменить: Children
//Введите новую подстроку: Child