%% Written by Ivan Camponogara 25/02/2018

%% this code simply open and close the arduino channels
% look at the arduino code to see what number you have to wirte in order to
% open or close a specific port

% Create an serial port object where you specify the USB port (look in
% Arduino->tools -> port and the baud rate (9600)
ar = serial('/dev/cu.usbserial-DN01ESPV','BaudRate',9600);

%Open arduino USB port

fopen(ar);

%open port 2
fprintf(ar,'%s',char(3));
pause(0.3);
%close port 2
fprintf(ar,'%s',char(4));

%open port 3
fprintf(ar,'%s',char(5));
pause(0.3);
%close port 3
fprintf(ar,'%s',char(6));

%open port 4
fprintf(ar,'%s',char(7));
pause(0.3);
%close port 4
fprintf(ar,'%s',char(8));

%open port 5
fprintf(ar,'%s',char(9));
pause(0.3);
%close port 5
fprintf(ar,'%s',char(10));

%open port 6
fprintf(ar,'%s',char(11));
pause(0.3);
%close port 6
fprintf(ar,'%s',char(12));


%open port 7
fprintf(ar,'%s',char(13));
pause(0.3);
%open port 7
fprintf(ar,'%s',char(14));

%Close arduino USB port
 fclose(ar);