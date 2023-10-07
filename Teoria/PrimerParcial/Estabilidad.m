A = [1 1;-1 -1]
polinomio = poly(A)

coeff = polinomio; % Coeficientes del polinomio en orden descendente de potencias de s
roots_of_polynomial = roots(coeff) % Calcula las raíces del polinomio

% Grafica las raíces en el plano complejo
figure;
plot(real(roots_of_polynomial), imag(roots_of_polynomial), 'x','MarkerSize',20);
xlabel('Parte Real');
ylabel('Parte Imaginaria');
title('Diagrama de Polos en el Plano Complejo');
grid on;

% Verifica la estabilidad
if any(real(roots_of_polynomial) > 0)
    disp('El sistema es inestable.');
else
    disp('El sistema es estable.');
end