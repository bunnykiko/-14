var a, b, c: file of real;
    m, i: integer;
    n: real;
begin
  randomize;
  assign(a, 'file1');
  rewrite(a);
  write('Введите количество чисел исходного файла: ');
  readln(m);
  for i:= 1 to m do
    begin
      m:= 10*random;
      write(a, m);
    end;
  randomize;
  reset(a);
  assign(b, 'file2');
  rewrite(b);
  assign(c, 'file3');
  rewrite(c);
  writeln('Содержание исходного файла: ');
  for i:= 0 to filesize(a)-1 do
    begin
      read(a, n);
      write(a:0:2,' ');
      if odd(i)then 
        write(b, n)
      else 
        write(c, n)
    end;
  writeln;
  writeln;
  seek(b, 0);
  writeln('Содержание файла чисел с четными номерами: ');
  while not eof(b) do
    begin
      read(b, n);
      write(a:0:2,' ');
    end;
  close(b);
  writeln;
  writeln;
  seek(c, 0);
  writeln('Содержание файла чисел с нечетными номерами: ');
  while not eof(c) do
    begin
      read(c, n);
      write(a:0:2,' ');
    end;
close(c);
end.