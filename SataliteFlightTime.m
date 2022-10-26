% -------------------------------------------
% if e>=1 not closed (hyperboloid), if e <1 then elliptical
% this calculator is for elipticals, find the time it takes for an object
% to go from one position to another. 
% -------------------------------------------

close all
clear
clc

% mu value for Earth, if given diffrent Mu change Accordingly
Mu = 398550;
%Radius of earth, if diffrent change accordingly
rE = 6378;

%Given perogee and apogee 
Palt = 350;
Aalt = 1206;

%given true anomoly one
f1 = 270 *pi/180;

%given true anomoly two
f2 = 90 * pi/180;

%changing the perogee adn apogee to radiuses rather than altitudes
rP = Palt + rE;
rA = Aalt + rE;

%eccentricity calculation
e = (rA-rP)/(rA+rP);

%Eccentric Anomoly
E2 = 2*atan(sqrt((1-e)/(1+e))*tan(f2/2));

%mean anomoly
m2 = E2 - e*sin(E2);

%semimajor axis
a = ((rP+rA)/2);

%mean motion also is 2pi/T where T is period
n = sqrt(Mu/a^3);

%time diffrence between t2 and t0 where t0 is perogee
delT20 = m2/n;

%time difference between t2 and t1 where t1 is the starting point
delT21 = 2*delT20;

%just stuff here to convert seconds to min. 
timeS = delT21;
timemin = timeS/60;

fprintf('a = %s Seconds\n', join(string(timeS)));
fprintf('a = %s Minutes \n', join(string(timemin)));