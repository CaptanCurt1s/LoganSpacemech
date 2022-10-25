% -------------------------------------------
%Eccentricity e, calculator
%Polor Coordinates
% if e>=1 not closed (hyperboloid), if e <1 then elliptical
% this e calculator is for ellipticals. 
% -------------------------------------------

close all
clear
clc

% this is the mu value for Earth, if given diffrent Mu change Accordingly
Mu = 398550;

R1i = input('r component of r: ');
R1j = input('θ  component of r: ');
V1i = input('r component of V: ');
V1j = input('θ component of V: ');

R1 = [R1i,R1j,0];
V1 = [V1i,V1j,0];
R = norm(R1);

%calculating h 
H = cross(R1,V1);
Hmag = norm(H);

%calculating parameter p 
param = (Hmag^2)/Mu;

%Specifci Energy calculation(Seen in SpecificEnergyCalculator.m)
V1mag = norm(V1);
part1eq = (V1mag^2)/2;
part2eq = Mu/R;
SpeEng = part1eq - part2eq;

%Semimajor axis calculator
a = Mu/(-2*SpeEng);

%Eccentricity
e = sqrt(1-(param/a));

fprintf('Eccentricity, e: %.5f\n', join(string(e), ','));





