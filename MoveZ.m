%# To move by 0.25 mm requires 00 03 20 to be input 

function out1=MoveZ(s)

fwrite(s,hex2dec('13'));o=dec2hex(double(fscanf(s,'%c',1)))

fwrite(s,hex2dec('00'));o=dec2hex(double(fscanf(s,'%c',1)))
fwrite(s,hex2dec('00'));o=dec2hex(double(fscanf(s,'%c',1)))
fwrite(s,hex2dec('00'));o=dec2hex(double(fscanf(s,'%c',1)))
fwrite(s,hex2dec('7d'));o=dec2hex(double(fscanf(s,'%c',1)))

fwrite(s,hex2dec('00'));o=dec2hex(double(fscanf(s,'%c',1)))
fwrite(s,hex2dec('00'));o=dec2hex(double(fscanf(s,'%c',1)))
fwrite(s,hex2dec('00'));o=dec2hex(double(fscanf(s,'%c',1)))
fwrite(s,hex2dec('00'));o=dec2hex(double(fscanf(s,'%c',1)))

fwrite(s,hex2dec('00'));o=dec2hex(double(fscanf(s,'%c',1)))
fwrite(s,hex2dec('00'));o=dec2hex(double(fscanf(s,'%c',1)))
fwrite(s,hex2dec('00'));o=dec2hex(double(fscanf(s,'%c',1)))
fwrite(s,hex2dec('7d'));o=dec2hex(double(fscanf(s,'%c',1)))

fwrite(s,hex2dec('00'));o=dec2hex(double(fscanf(s,'%c',1)))
fwrite(s,hex2dec('03'));o=dec2hex(double(fscanf(s,'%c',1)))
fwrite(s,hex2dec('20'));o=dec2hex(double(fscanf(s,'%c',1)))
fwrite(s,hex2dec('7d'));o=dec2hex(double(fscanf(s,'%c',1)))


o=dec2hex(double(fscanf(s,'%c',1)))

if o=='aa'
out1='done'
end

for i=180:1:189
fwrite(s,i);o=dec2hex(double(fscanf(s,'%c',1)))
end


end
