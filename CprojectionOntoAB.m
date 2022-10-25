% -------------------------------------------
%Vector Projection specifically here it is C onto the AB plane so remember
%if diffrent just change AB &C arround accordingly
% -------------------------------------------


close all
clear
clc

A1i = input('i component of A: ');
A1j = input('j component of A: ');
A1k = input('k component of A: ');
B1i = input('i component of B: ');
B1j = input('j component of B: ');
B1k = input('k component of B: ');
C1i = input('i component of C: ');
C1j = input('j component of C: ');
C1k = input('k component of C: ');


%setting up the matrixees
A1 = [A1i,A1j,A1k];
B1 = [B1i,B1j,B1k];
C1 = [C1i,C1j,C1k];


AcrosB = cross(A1,B1);
AcrosBM = norm(AcrosB);
n = AcrosB/AcrosBM;
nMag = norm(n);
Cn = (dot(C1,n))/nMag;
cMag = norm(C1);
CprojAB = sqrt(cMag^2 + Cn^2);


fprintf('Projection of C onto the Plane of AB:%.5f\n', join(string(CprojAB), ','));

