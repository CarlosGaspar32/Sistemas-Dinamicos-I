clc;clear;close

b = 0.2;
m = 2;
k = 1.5;

t = 0:0.001:10;

x =exp(-t/20).*(2.*cos(sqrt(299).*t/20)+2/sqrt(299).*sin(sqrt(299).*t/20));
plot(t,x)
xlabel('t');
ylabel('y(t)');
title('Gráfico y(t)');
grid on;

figure(2)
dx = diff(x) ./ diff(t); % Calcula la derivada
t_derivada = t(1:end-1); % Ajusta el vector de tiempo para que tenga un valor menos


plot(t_derivada, dx);
xlabel('t');
ylabel('Derivada de y');
title('Gráfico de la Derivada de y');
grid on;