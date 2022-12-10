var a: shortstring;
var input, output: file of shortstring;
    maxlen, i: integer;
begin
  assign(input, 'input.txt');
  rewrite(input);
  write('Введите строки исходного файла: ');
  for i:= 1 to 5 do
    begin
      readln(a);
      write(input, a);
    end;
  reset(input);
  assign(output, 'output.txt');
  rewrite(output);
  maxlen:= -1;
  while (not eof(input)) do
    begin
      read(input, a);
      if (length(a) > maxlen) or (maxlen= -1) then
      maxlen:= length(a);
    end;
  close(input);
  reset(input);
  while (not eof(input)) do
    begin
      read(input, a);
      if length(s) = maxlen then
      write(output, a);
    end;
close(input);
close(output);
end.