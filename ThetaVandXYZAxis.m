% -------------------------------------------
%Angle between a Vector and the XYZ axes
% -------------------------------------------


close all
clear
clc

V1i = input('i component of First Vector: ');
V1j = input('j component of First Vector: ');
V1k = input('k component of First Vector: ');

V1 = [V1i,V1j,V1k];
V1norm = norm(V1);



thetaX  = acosd(V1i/V1norm);
thetaY  = acosd(V1j/V1norm);
thetaZ  = acosd(V1k/V1norm);

fprintf('Angle to X axis:%.5f\n', join(string(thetaX), ','));
fprintf('Angle to Y axis: %.5f\n', join(string(thetaY), ','));
fprintf('Angle to Z axis: %.5f\n', join(string(thetaZ), ','));

