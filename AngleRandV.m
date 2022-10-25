% -------------------------------------------
%For finding the angle between the radial and velocity vectors,
%probably could be used for any two vectors but not certain of this
% -------------------------------------------

%initialization 

close all
clear
clc

r1 = input('i component of r: ');
r2 = input('j component of r: ');
r3 = input('k component of r: ');
v1 = input('i component of v: ');
v2 = input('j component of v; ');
v3 = input('k component of v: ');

r = [r1,r2,r3];
v = [v1,v2,v3];

rmag = norm(r);
vmag = norm(v);
rdotv = dot(r,v);

inner = rdotv/(vmag*rmag);
anglerad  = acos(inner);
angledeg = acosd(inner);

fprintf('Angle in Radians: %.5f\n ', anglerad)
fprintf('Angle in Degrees: %.5f\n ', angledeg)
