% -------------------------------------------
%RV to OE
% -------------------------------------------


close all
clear
clc

% this is the mu value for Earth, if given diffrent Mu change Accordingly
Mu = 398550;
K = [0;0;1];


a = 7713.1659;
e = [-0.0003562, -0.0003562, 0.0010075];
f = 0;
i = 1.1071;
omeg = 0.7854;
w = 1.5708;
E1 = 0;
M1 = 0;
t1 = 0;


%
emag = norm(e);
p = a*(1-emag^2);
h = sqrt(p*Mu);

%PQR Frame V and R
rPQW =(p/(1+emag*cos(f)))*[cos(f); sin(f); 0];
vPQW = (Mu/h)*[-sin(f); emag + cos(f); 0];


 %ECI coordinate frame conversion
group1 = [cos(-omeg),-sin(-omeg),0;sin(-omeg),cos(-omeg),0;0,0,1];
group2 =  [1,0,0;0,cos(-i),-sin(-i);0,sin(-i),cos(-i)];
group3 =  [cos(-w),-sin(-w),0;sin(-w),cos(-w),0;0,0,1];
ROT = group1*group2*group3;
rECI = ROT * rPQW;
fprintf('Position [ECI] = %.4fI %.4fJ %.4fK\n',rECI);
vECI = ROT *vPQW;
fprintf('Velocity [ECI] = %.4fI  %.4fJ  %.4fK\n',vECI);





