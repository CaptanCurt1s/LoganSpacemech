% -------------------------------------------
%Anglular Momentum 
%Polor Coordinates
%Assuming Elliptical
% -------------------------------------------


close all
clear
clc

R1i = input('r component of r: ');
R1j = input('θ  component of r: ');
V1i = input('r component of V: ');
V1j = input('θ component of V: ');

R1 = [R1i,R1j,0];
V1 = [V1i,V1j,0];
H = cross(R1,V1);
Hmag = norm(H);
fprintf('Angular Momentum Magnitude |h|: %.5f\n', join(string(Hmag), ','));

