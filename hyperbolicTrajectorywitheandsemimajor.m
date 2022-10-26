% -------------------------------------------
% if e>=1 not closed (hyperboloid), if e <1 then elliptical
% this calculator is for hyperboloids, when given eccentricity and semimajor 
% axis 
% -------------------------------------------

close all
clear
clc

% mu value for Earth, if given diffrent Mu change Accordingly
Mu = 398550;

%Radius of earth, if diffrent change accordingly
rE = 6378;

%givens, eccentricity e, and semimajor axis a
 e = 1.4;
 a = -16900;

 %perigee Altitude
 rP = a*(1-e);
 rPalt = rP - rE;

 %radial and transverse components of velocity
 f = 100;
 f = f*(pi/180); %radian conversion

 %angular momenum h
 h = sqrt(Mu *a*(1-e^2));
 
 %radial and tangential (theta) velocities
 vrad = (Mu/h)*e*sin(f);
vtheta = (Mu/h)*(1+(e*cos(f)));

%True anomaly
Truean0 = acos(-1/e);

%hyperbolic turning angle
hta = 2*asin(1/e);

fprintf('Perigee altitude = %s\n', join(string(rPalt)));
fprintf('V radial, Vr = %s\n', join(string(vrad)));
fprintf('V transverse, Vθ = %s\n', join(string(vtheta)));
fprintf('True anomoly, f∞ = %s\n', join(string(Truean0 *180/pi)));
fprintf(' Hyperbolic turning angle, δ= %s\n', join(string(hta *180/pi)));
