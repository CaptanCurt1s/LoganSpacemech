% -------------------------------------------
%Cross product calculator because lazyness
% -------------------------------------------

%initialization 

close all
clear
clc

V1i = input('i component of First Vector: ');
V1j = input('j component of First Vector: ');
V1k = input('k component of First Vector: ');
V2i = input('i component of Second Vector: ');
V2j = input('j component of Second Vector: ');
V2k = input('k component of Second Vector: ');

V1 = [V1i,V1j,V1k];
V2 = [V2i,V2j,V2k];

V3 = cross(V1,V2);

fprintf('Resultant Vector: [%s]\n', join(string(V3), ','));
