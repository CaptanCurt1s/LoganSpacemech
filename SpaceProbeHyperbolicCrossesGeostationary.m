% -------------------------------------------
% if e>=1 not closed (hyperboloid), if e <1 then elliptical
% Hyperbolic calculator, for finding the time it takes for the object to
% cross geostationary point. 
% -------------------------------------------

close all
clear
clc

% mu value for Earth, if given diffrent Mu change Accordingly
Mu = 398550;

%Radius of earth, if diffrent change accordingly
rE = 6378;

%Hyperbolic excess speed of the departure asymptote
depAsy = 2.51;

%perogee ALT
Palt = 350;

%geostationary orbit
r = 42164;

%perogee radius
rP = Palt +rE;

%finding a
spefEng = ((depAsy ^2)/2);
a = -Mu/(2*spefEng);

%rearange rp = a(1-e) to solve for e
e = 1-(rP/a);
p = a*(1-e^2);

%True Anomoly f
f = acos((p-r)/(r*e));

%Eccentric anomoly
F = 2*atanh(sqrt((e-1)/(e+1))*tan(f/2) );

%mh mean anomoly hyperbolic
mh  = (e*sinh(F)) - F;
n = sqrt(-Mu/(a^3));
t = mh/n;
tmin = t/60;


fprintf(' %s Seconds\n', join(string(t)));
fprintf(' %s minutes\n', join(string(tmin)));