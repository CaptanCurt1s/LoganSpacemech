% -------------------------------------------
%Calculates r and v, in PQW coordinate frame, then switches them to ECI
%coordinate frame.
%PQW coordinate frame
% -------------------------------------------


close all
clear
clc

% this is the mu value for Earth, if given diffrent Mu change Accordingly
Mu = 398550;

a = input('Input a: ');
e = input('Input e: ');
i = input('input i: ')*(pi/180);
omeg = input('input ohm: ')*(pi/180);
w = input('input w: ')*(pi/180);
f = input('input f: ')*(pi/180);

%calculating the position vector and matrix
p = a*(1-e^2);
r = p/(1+(e*cos(f)));

fprintf('\nr= %.5f\n', join(string(r), ','));

%PQR
rhat =r.* [cos(f); sin(f); 0];

 fprintf('rhat= [%s]\n', join(string(rhat)));

 %Calculating the velocity vector and matrix 
 h = sqrt(Mu/p);

%PQR
 v = (Mu/h).*[-sin(f); e+cos(f); 0];

 fprintf('v= [%s]\n', join(string(v)));

 %ECI coordinate frame NOT COMPLETE NOT COMPLETE NOT COMPLETE
 group1 = [cos(omeg),-sin(omeg),0;sin(omeg),cos(omeg),0;0,0,1];
 group2 =  [1,0,0;0,cos(i),-sin(i);0,sin(i),cos(i)];
 group3 =  [cos(w),-sin(w),0;sin(w),cos(w),0;0,0,1];
 groupcombo = group1*group2*group3;
 rECI = groupcombo * rhat;
  fprintf('rECI= [%s]\n', join(string(rECI)));
  vECI = groupcombo *v;
   fprintf('vECI= [%s]\n', join(string(vECI)));




