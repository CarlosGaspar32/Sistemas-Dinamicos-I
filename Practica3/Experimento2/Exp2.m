%% 3.1 
A = [1 2 0;0 0 1;-2 -2 1];
B = [1;0;-2];
C = [1 2 0];
D = 0;

% Función de Transferencia
[n1, d1] = ss2tf(A,B,C,D)

% Estabilidad
v = eig(A)