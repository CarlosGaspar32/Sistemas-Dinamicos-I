clc;close all;
%% Experimento 3
%save('Exp3.mat','out');
%load('Exp3.mat')

figure(1)
plot(out.EstadosExp3.time,out.EstadosExp3.signals.values,'b','LineWidth',2);
grid on
xlabel('t (seg)','FontSize',12,'FontWeight','bold'),ylabel('Estados','FontSize',12,'FontWeight','bold')
legend('x1','x2','fontWeight','bold')
%
figure(2)
plot(out.SalidaExp3.time,out.SalidaExp3.signals.values,'b','LineWidth',2)
grid on
xlabel('t (seg)','FontSize',12,'FontWeight','bold'),ylabel('Posición','FontSize',12,'FontWeight','bold')
legend('y(t)','fontWeight','bold')
%% Experimento 4
figure(3)
plot(out.SalidaState_Space.time,out.SalidaState_Space.signals.values,'b','LineWidth',2)
grid on
xlabel('t (seg)','FontSize',12,'FontWeight','bold'),ylabel('Posición','FontSize',12,'FontWeight','bold')
legend('y(t)','fontWeight','bold')
%% Experimento 5
figure(1)
plot(out.Estados_Exp5.time,out.Estados_Exp5.signals.values,'Color',[255/255 215/255 0],'LineWidth',2);
grid on
xlabel('t (seg)','FontSize',12,'FontWeight','bold'),ylabel('Estados','FontSize',12,'FontWeight','bold')
legend('x1','x2','fontWeight','bold')
%
figure(2)
plot(out.Salida_Exp5.time,out.Salida_Exp5.signals.values,'Color',[255/255 215/255 0],'LineWidth',2)
grid on
xlabel('t (seg)','FontSize',12,'FontWeight','bold'),ylabel('Posición','FontSize',12,'FontWeight','bold')
legend('y(t)','fontWeight','bold')