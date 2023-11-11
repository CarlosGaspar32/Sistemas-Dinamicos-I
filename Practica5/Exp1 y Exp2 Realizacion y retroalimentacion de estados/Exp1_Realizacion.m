%% Realización
G1 = tf([10],[1 -5]);
G2 = tf([1],[1 0]);
H = tf([1],[1 1]);

Gf = feedback(G1*G2,H);

% Función Transferencia a forma canonica controlable

[A B C D] = tf2ss(Gf.Numerator{:},Gf.Denominator{:})

% A = [0 1 0;0 1 -1;1 2 3];
% B = [0 0 1]';
% C = [1 0 -1];
%% Retroalimentacion de estados

cc = ctrb(A,B)
%cc = [A A*B A*A*B]
rangoCC = rank(cc)

if rangoCC == length(A)
    disp('Es controlable');
else
    disp('No es controlable');
end
pcc = [-5 -3+i -3-i];   
%pcc = [-9 -2+0.01i -2-0.01i];
K = place(A,B,pcc)

%% observabilidad
oo = obsv(A,C);
%oo = [C;C*A;C*A*A]
rangoOO = rank(oo);

if rangoOO == length(A)
    disp('Es observable');
else
    disp('No es observable');
end

%Calculo de Ke
poo = 3*pcc;
Ke = acker(A',C',poo);
Ke = Ke'

