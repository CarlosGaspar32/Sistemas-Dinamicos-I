A = [0 1 0; 0 0 1;0 -1 -2];
B = [0;0;1]
x0 = [1;0];
C = [1 1 0]
u = 1;

% Funcion de Transferencia
% G(s) = C ((SI - A)^-1) B
syms s
G =  C * (s*eye(length(A))-A)^-1 * B