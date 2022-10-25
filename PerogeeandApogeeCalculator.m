% -------------------------------------------
%Flight Path angle, and True Anomoly Calculator. 
%Polor Coordinates
% if e>=1 not closed (hyperboloid), if e <1 then elliptical
% this e calculator is for ellipticals. 
% -------------------------------------------

close all
clear
clc

V1i = input('r component of V: ');
V1j = input('θ component of V: ');

%Flight Path angle calculation
gamma = atand(V1i/V1j);

%True Anomoly calculation
f = 2*gamma;

fprintf('Flight Path Angle,  (gamma)γ,: %.5f\n', join(string(gamma), ','));
fprintf('True Anomoly, f: %.5f\n', join(string(f), ','));




