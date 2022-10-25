% -------------------------------------------
%Semimajor axis, a
%Polor Coordinates
%assuming elliptical
% -------------------------------------------


close all
clear
clc

% this is the mu value for Earth, if given diffrent Mu change Accordingly
Mu = 398550;

R = input('Input Radius, r: ');
V1i = input('r component of V: ');
V1j = input('θ component of V: ');

V1 = [V1i,V1j,0];
%Specifci Energy calculation(Seen in SpecificEnergyCalculator.m)
V1mag = norm(V1);
part1eq = (V1mag^2)/2;
part2eq = Mu/R;
SpeEng = part1eq - part2eq;

%Semimajor axis calculator
a = Mu/(-2*SpeEng);

fprintf('Semimajor Axis, a: %.5f\n', join(string(a), ','));

