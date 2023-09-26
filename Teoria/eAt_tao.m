% clc;clear
% %%SIN TAO
% % Define las matrices A y B (asegúrate de tenerlas definidas previamente)
% A = [-3 0;0 -3];
% B = [0;1];
% 
% % Define la función de entrada u(t) (por ejemplo, u(t) = 1)
% syms t;
% u = sin(t);
% 
% % Define las condiciones iniciales x(0)
% x0 = [-1;1]; % Por ejemplo, x(0) = [1; 0]
% 
% % Calcula e^(At) en forma simbólica
% eAt = expm(A * t);
% 
% % Calcula la integral simbólica
% integrand = eAt * B * u; % e^(At) * B * u(t)
% integral = int(integrand, t);
% 
% % Calcula x(t) en forma simbólica
% x_t1 = eAt * x0 + integral 

%% 

%%CON TAO

% Define las matrices A y B (asegúrate de tenerlas definidas previamente)
A = [0 1 0; 0 0 1;0 -1 -2];
B = [0;1];

% Define la función de entrada u(t) (por ejemplo, u(t) = 1)
syms t tau;
u = cos(t);

% Define las condiciones iniciales x(0)
x0 = [1;-1]; % Por ejemplo, x(0) = [1; 0]

expp = expm(A*t);


% Calcula la integral simbólica
integrand = expm(A * (t - tau)) * B * u; % e^(A(t-tau)) * B * u(tau)
integral = int(integrand, tau, 0, t);

% Calcula x(t) en forma simbólica
x_t2 = expm(A * t) * x0 + integral
x_t3 = rewrite(x_t2,'sincos')


