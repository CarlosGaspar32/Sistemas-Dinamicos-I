clc;close all;
%Si exportan de simulink con el nombre Grafica y tipo array ya les grafica solo cambien titulos y legendas xd
%% Experimento 3
%save('Exp3.mat','out');
%load('Exp3.mat')

figure(1)
plot(out.Grafica(:,1),out.Grafica(:,2),'color',[1 0 0],'LineWidth',1.5);
grid on
% Si solo es una grafica comenten lo de abajo xd
hold on
plot(out.Grafica(:,1),out.Grafica(:,3),'b','LineWidth',1.5);
xlabel('t (seg)','FontSize',12,'FontWeight','bold'),ylabel('Estados','FontSize',12,'FontWeight','bold')
legend('x1','x2','fontWeight','bold')
% Si son más de 2 agrega otro xd