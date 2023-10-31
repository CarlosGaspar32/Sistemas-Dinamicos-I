%% Respuesta Transitoria
c = 0.2;
p = 1;
for i=c:0.2:1.2
    G = tf([0 1 1],[1 2*i 1])
    %subplot(3,2,p)
    figure(p)
    if i < 1 
        coef_amort = 'subamortiguado';
    elseif i == 1
        coef_amort = 'criticamente amortiguado';
    else
        coef_amort = 'sobreamortiguado';
    end
    p = p+1;
    titulo = sprintf('\\zeta = %.1f\n %s',i,coef_amort);
    %step(G),title(titulo)
    stepinfo(G)
end

%% Por separado

