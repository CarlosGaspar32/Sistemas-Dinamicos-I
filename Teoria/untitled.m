clc;clear
% Define la matriz A
A = [0 2;-2 0];
B = [0;1]
% Define la variable simbólica s y t
syms s t tau;

% Define la función de entrada u(t) (por ejemplo, u(t) = 1
u = cos(t);

% Define las condiciones iniciales x(0)
x0 = [1;-1]; % Por ejemplo, x(0) = [1; 0]

% Calcula la matriz inversa (sI - A)^(-1)
sI = s * eye(size(A));
inv_sI_minus_A = inv(sI - A);

% Calcula e^(At) utilizando la transformada inversa de Laplace
eAt = ilaplace(inv_sI_minus_A, s, t)

integrand = exp(-A*tau) * B * u;
integral = int(integrand,tau,0,t);


x = eAt*x0 + eAt*integral