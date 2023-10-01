t = linspace(0, 10, 10000); % Crea un vector de valores de t desde 0 hasta 40
x = exp(-t/20).*(2.*cos(sqrt(299).*t/20) + 2/sqrt(299).*sin(sqrt(299).*t/20));

dx = diff(x) ./ diff(t); % Calcula la derivada
t_derivada = t(1:end-1); % Ajusta el vector de tiempo para que tenga un valor menos

figure;
plot(t_derivada, dx);
xlabel('t');
ylabel('Derivada de x');
title('Gráfico de la Derivada de x');
grid on;
