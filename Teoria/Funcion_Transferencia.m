A = [1 1;-1 -1];
B = [0;1]
x0 = [];
C = [1 1]
u = 1;

% Funcion de Transferencia
% G(s) = C ((SI - A)^-1) B
syms s
G =  C * (s*eye(length(A))-A)^-1 * B