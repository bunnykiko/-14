var a: file of char;
    b: char;
    i: integer;
begin
  assign(a, 'zadPram.txt');
  reset(a);
  b:= '!';
  for i:= 0 to filesize(a)-1 do
    begin
      if i mod 2 = 1 then
        begin
          seek(a, i);
          write(a, b);
        end;
     end;
close(a);
end.