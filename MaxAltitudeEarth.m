% -------------------------------------------
% Maximum Altitude with semimajor, and eccentricity
% if e>=1 not closed (hyperboloid), if e <1 then elliptical, this is only
% for ellipticals. 
% -------------------------------------------

close all
clear
clc

%radius of earth, if other planet or value etc, change accordingly
rEarth = 6378.1;

a = input('Input Semimajor Axis: ');
e = input('Input Eccentricity: ');


r = a*(1+e);
alt = r - rEarth;
fprintf('Altitude: %.3f\n', join(string(alt), ','));

