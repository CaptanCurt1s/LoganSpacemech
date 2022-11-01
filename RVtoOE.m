% -------------------------------------------
%RV to OE
% -------------------------------------------


close all
clear
clc

% this is the mu value for Earth, if given diffrent Mu change Accordingly
Mu = 398550;
K = [0;0;1];

r = [-2436.45;-2436.45;6891.0379];
v = [5.088611; -5.088611; 0];
rmag = norm(r);
vmag = norm(v);
rhat = r/rmag;
vhat = v/vmag;


%Angular Momentum 
h = cross(r,v);
hmag = norm(h);
hhat = h/hmag;

nhat = (cross(K,h))/norm((cross(K,h)));


%Eccentricity Vector
evec = ((1/Mu)*cross(v,h))-rhat;
emag = norm(evec);
ehat = evec/emag;

%shape and size of orbit
eps = (0.5*dot(v,v)) - (Mu/rmag);
a=-Mu/(2*eps);

%Orientation of the orbit
i = acos(dot(hhat,K));

%in this case its in quadrent 2 so this value is + but is calculated here
%as -
omeg = atan(nhat(2)/nhat(1));

ek = dot(ehat,K);
if ek >= 0
    w = acos(dot(nhat,ehat));
elseif ek < 0
    w = (2*pi)-acos(dot(nhat,ehat));
end

%location of the orbiting object at time t
rv = dot(r,v);
if rv >= 0 
    f = acos(dot(ehat,rhat));
elseif rv < 0
    f = (2*pi)-acos(dot(ehat,rhat));
end

%Printing it out this way so it is easier to copy into the OEtoRE
fprintf('a = %s\n', join(string(a)));
fprintf('e vector = %.4fI  %.4fJ  %.4fK\n',evec);
fprintf('f = %s\n', join(string(f)));
fprintf( 'in Radians:\n');
fprintf('i = %s\n', join(string(i)));
fprintf('Ω = %s\n', join(string(-omeg)));
fprintf('w = %s\n', join(string(w)));
fprintf( 'These values again but in Degrees:\n');
fprintf('i = %s\n', join(string(i*180/pi)));
fprintf('Ω = %s\n', join(string(-omeg*180/pi)));
fprintf('w = %s\n', join(string(w*180/pi)));
