% -------------------------------------------
%Parameter P calculator
%Polor Coordinates
%Assuming Elliptical
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

%calculating h 
H = cross(R1,V1);
Hmag = norm(H);

param = (Hmag^2)/Mu;


fprintf('Parameter p: %.3f\n', join(string(param), ','));

