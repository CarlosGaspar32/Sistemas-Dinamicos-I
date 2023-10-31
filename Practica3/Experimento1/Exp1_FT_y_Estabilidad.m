%% Inciso a

a = tf(1,[1 1]);
b = tf(1,[1 0]);

c=feedback(a,b);
G1 = a*c;
r1 = roots(G1.Denominator{:});
figure(1)
step(G1,10)
%% Inciso b
a = tf(1,[1 1]);
b = tf(1,[1 -1]);
c = tf(1,[1 0]);

d=feedback(b,c,+1);

G2 = a*d
r2 = roots(G2.Denominator{:})
figure(2)
step(G2,10)
%% Inciso c
a = tf(1,[1 1 1]);
b = tf([1 0],[1 1]);
c = tf([1 0 0],[1 1 1]);
d = tf([1],[1 1]);

e = feedback(b*c,d);

G3 = e * a
r3 = roots(G3.Denominator{:})
figure(3)
step(G3,10)
%% Inciso d
a = tf([1 2 0],[1 5 2]);
b = tf([1],[1 1]);
c = feedback(a,b);
d = tf(1,[1 2 1]);
e = tf([1],[1 0]);
f = feedback(d*e,1);

G4 = c * f
r4 = roots(G4.Denominator{:})
figure(4)
step(G4,10)
%% Inciso e
a = tf(1,[1 2 1]);
b = tf(1,[1 0]);
c = a * b;
d = feedback(c,1);
e = tf([1 2 0],[1 5 2]);
f = tf(1,[1 1]);
g = feedback(e,f);

G5 = d + g
r5 = roots(G5.Denominator{:})
figure(5)
step(G5,10)




