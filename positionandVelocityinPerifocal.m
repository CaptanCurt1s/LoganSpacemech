% -------------------------------------------
% if e>=1 not closed (hyperboloid), if e <1 then elliptical
% this calculator is for elipticals, when given eccentricity and semimajor 
% axis and true anomoly
% -------------------------------------------

close all
clear
clc

% mu value for Earth, if given diffrent Mu change Accordingly
Mu = 398550;
%Radius of earth, if diffrent change accordingly
rE = 6378;

%givens, eccentricity e, and semimajor axis a, and true anomoly f
 e = .14;
 a = 12400;
 f = 200 *pi/180;

 %perigee 
 rP = a*(1-e^2);

 %h calculation
h = sqrt(Mu *rP);

%Radius calculation
r = (rP)/(1+e*cos(f));

%putting radius and velocity into the perifocal coordinate system frame
rPQW = r*[cos(f), sin(f), 0 ];
vPQW = (Mu/h)*[-sin(f), (e+cos(f)),0];

fprintf('Radius in PQW = [%s]\n', join(string(rPQW)));
fprintf('Velocity in PQW = [%s]\n', join(string(vPQW)));
