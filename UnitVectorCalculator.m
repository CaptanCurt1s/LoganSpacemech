% -------------------------------------------
%Unit Vector Calculator
% -------------------------------------------


close all
clear
clc

V1i = input('i component of First Vector: ');
V1j = input('j component of First Vector: ');
V1k = input('k component of First Vector: ');

V1 = [V1i,V1j,V1k];
V1norm = norm(V1);
V2 = V1/V1norm;

fprintf('Normalized Vector: [%s]\n', join(string(V2), ','));