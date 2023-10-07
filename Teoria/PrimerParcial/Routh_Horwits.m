% Definir el polinomio característico del sistema en términos de 's' (variable compleja)
s = sym('s');
polinomio_caracteristico = s^4 + 3*s^3 + 2*s^2 + s + 1;

% Obtener los coeficientes del polinomio característico
coeficientes = fliplr(coeffs(polinomio_caracteristico, s));

% Determinar el número de filas necesarias en la matriz de Routh-Hurwitz
n = length(coeficientes);
num_filas = ceil(n/2)*2;

% Rellenar la matriz de Routh-Hurwitz con ceros
routh_matrix = zeros(num_filas, n);

% Llenar las primeras filas de la matriz con los coeficientes del polinomio característico
routh_matrix(1, 1:n) = coeficientes;

% Aplicar el criterio de Routh-Hurwitz
for i = 3:num_filas
    for j = 1:n-1
        % Calcular los elementos de la matriz de Routh-Hurwitz usando las fórmulas del criterio
        routh_matrix(i, j) = -sum(routh_matrix(max(1, i-2):i-1, 1) .* routh_matrix(max(1, i-2):i-1, j+1)) / routh_matrix(i-1, 1);
    end
end

% Comprobar el signo de los elementos en la primera columna
estable = all(sign(routh_matrix(:, 1)) > 0);

% Mostrar la matriz de Routh-Hurwitz y la estabilidad del sistema
disp('Matriz de Routh-Hurwitz:');
disp(routh_matrix);
if estable
    disp('El sistema es estable.');
else
    disp('El sistema es inestable.');
end
