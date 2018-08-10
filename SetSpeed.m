function out1=SetSpeed(s)
% Set a speed of 4000 steps per second

fwrite(s,hex2dec('64'));o=dec2hex(double(fscanf(s,'%c',1)))
fwrite(s,hex2dec('22'));o=dec2hex(double(fscanf(s,'%c',1)))
fwrite(s,hex2dec('ff'));o=dec2hex(double(fscanf(s,'%c',1)))
fwrite(s,hex2dec('19'));o=dec2hex(double(fscanf(s,'%c',1)))

fwrite(s,hex2dec('00'));o=dec2hex(double(fscanf(s,'%c',1)))

out1='done';

end
