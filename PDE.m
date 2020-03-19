% Partial Differential Equation

n = 39;
m = 600;
a = 1;
T = 12000;
B = 1.0e-5;
Dx = a/(n+1);
Dt = T/m;
Uf = zeros(n+1,m);
x = 0;
S = (B*Dt)/(Dx*Dx);
Uf(1,:) = 1;
vect = zeros(m, 1);

for i = 1:m
    vect(i) = Dt * (i-1);
end

vecx = zeros(n+1, 1);
for i = 1:n+1
    vecx(i) = Dx * (i-1);
end

for i = 1:n+1
    Uf(i,1) = x+sin(2*pi*x)+1;
    x = x+Dx;
end

A = full(gallery('tridiag',n,S,1-2*S,S));
b = zeros(n,1);
b(1,1) = 1;
b(n,1) = S*(2*Dx+Uf(n+1,n));
Un = A*Uf(2:40,1)+b;

for i = 2:m
    b(1,1) = 1;
    b(n,1) = S*(2*Dx+Un(n,1));
    Uf(2:40,i) = A*Uf(2:40,i-1)+b;
end

mesh(vect,vecx,Uf);