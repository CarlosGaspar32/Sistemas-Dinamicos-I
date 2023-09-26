syms k s
A = [0 1 0;0 0 1;k -5 -9]

P = det(s*eye(length(A))-A)
