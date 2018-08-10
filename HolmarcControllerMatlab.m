% clear all
s = serial('COM1');
set(s,'BaudRate',19200);
set(s,'Terminator',9);
fopen(s);

SetSpeed(s)

%# Move either of these by a value of 0.25 mm
%# Put them in a loop and move multiple steps

MoveX(s)

MoveY(s)

MoveZ(s)


fclose(s)
