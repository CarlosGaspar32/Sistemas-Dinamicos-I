%
% Define la matriz A
A = [0, 1; -2, -1];

% Define la variable simbólica s y t
syms s t;

% Calcula la matriz inversa (sI - A)^(-1)
sI = s * eye(size(A));
inv_sI_minus_A = inv(sI - A);

% Calcula e^(At) utilizando la transformada inversa de Laplace
eAt = ilaplace(inv_sI_minus_A, s, t)