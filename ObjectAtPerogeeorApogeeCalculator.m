% -------------------------------------------
% Finding if object is at perigee or apogee
% only for ellipticals, given, altitude, velocity, gama(flight path angle)
% -------------------------------------------

close all
clear
clc

%Radius of earth, if other plannet change accordingly
rEarth = 6378.1;

%Mu of earth, if other plannet change accordingly
Mu = 398550;

%finish this later, looks complicated find out how to do mathmatically
alt = input('Input the Altitude: ');
v = input('Input the velocity: ');
gama = input('input the gamma value(Flight path angle): ');

r = rEarth + alt;
h = v*r;
p = (h^2)/Mu;

%ecosf = (p/r)-1
leftsideeq = (p/r)-1;

%if the left side of the equation is negative then cosf must be negative so
%it is at 0 or 180deg aka apogee, to check if it is at perogee, it is
%either at pi/2 or 3pi/2 wich both of give 0 so if the equation is equal to
%zero, then it is in perogee
if leftsideeq >0
    fprintf('between one of \n');
elseif leftsideeq == 0
     fprintf('Perogee\n');
elseif  leftsideeq <0
    fprintf('Apogee\n');
end

