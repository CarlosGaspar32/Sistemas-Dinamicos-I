%% Respuesta Transitoria
c = 0.2;
p = 1;
for i=c:0.2:1.2
    G = tf([0 1 1],[1 2*i 1])
    subplot(3,2,p)
    %figure(p)
    p = p+1;
    titulo = sprintf('\\zeta = %.1f',i);
    step(G),title(titulo)
    stepinfo(G)
end