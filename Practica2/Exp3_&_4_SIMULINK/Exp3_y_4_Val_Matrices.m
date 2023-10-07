%% EXPERIMENTO 3 Y 4
clc;clear

m = 2;
k = 1.5;
b = 0.2;
y0 = [2;0];
%u = 0;

A = [0 1;-k/m -b/m];
B = [0;0];
C = [1 0];

%% EXPERIMENTO 5
m = 2;
k = 1.5;
b = 0.2;
y0 = [0;0];
%u = sin(2t);

A = [0 1;-k/m -b/m];
B = [0;1/m];
C = [1 0];