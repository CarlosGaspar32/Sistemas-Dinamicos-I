A = [-3 0;0 -3];
B=[0;1]
x0=[-1;1]
poly(A);
[D,V]=eig(A);
syms t 
ut=sin(t);
syms T
syms s
uT=subs(ut,t,T);
Ae=expm(A*t) % Matriz de transición de estado
Ax0=Ae*x0;
Aee=rewrite(Ae,'sincos') % Matriz de transición de estado en senos y cosenos 
Arx0=Aee*x0;
AeuBuT=subs(Aee,t,(t-T))*B*uT;
IntABU=int(AeuBuT,T); %integral
IntABUe=subs(IntABU,T,t)-subs(IntABU,T,0); %integral evaluada
SOL=Ax0+IntABUe; %Solucion
SOLr=Arx0+IntABUe; %Solución en senos y cosenos


% PARA EL PRIMER EJERCICIO xd
MT=(s*eye(length(A))-A)^(-1)
Mt=ilaplace(MT)
Arx0=Mt*x0;
AeuBuT=subs(Mt,t,(t-T))*B*uT
IntABU=int(AeuBuT,T); %integral
IntABUe=subs(IntABU,T,t)-subs(IntABU,T,0); %integral evaluada
SOLr=Arx0+IntABUe %Solución en senos y cosenos
simplify(SOLr)