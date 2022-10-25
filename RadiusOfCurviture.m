% -------------------------------------------
%Radius of curviture, Remember to solve for the IJK comp of Velocity and 
% accelleration first, 
% -------------------------------------------


close all
clear
clc

V1i = input('i component of V: ');
V1j = input('j component of V: ');
V1k = input('k component of V: ');
A1i = input('i component of a: ');
A1j = input('j component of a: ');
A1k = input('k component of a: ');


V1 = [V1i,V1j,V1k];
A1 = [A1i,A1j,A1k];
V1norm = norm(V1);
VcrosA = cross(V1,A1);
VcrosAM = norm(VcrosA);
Ut = V1/V1norm;
Ub = VcrosA/VcrosAM;
Un = cross(Ub,Ut);
An = dot(A1,Un);
RoCurv = (V1norm^2)/An;
fprintf('Radius Of Curviture:%.5f\n', join(string(RoCurv), ','));

