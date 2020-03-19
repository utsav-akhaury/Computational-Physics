N = input('Enter the value of N: ');
Cv = @(w) cos(pi*(w^2)/2);
Sv = @(w) sin(pi*(w^2)/2);
sumc = 0;
sums = 0;
j = 1;
fnI = 1:0.1:10

for v=1:0.1:10;
    w = linspace(0,v,N);
    for i = 2:N-1
       sumc = sumc + (Cv(w(i)));
    end
    for i=2:N-1
       sums = sums+(Sv(w(i)));
    end
    sumc = sumc+(Cv(w(1))+Cv(w(N)))/2;
    sums = sums+(Sv(w(1))+Sv(w(N)))/2;
    h = w(2)-w(1);
    sumc = sumc*h;
    sums = sums*h;
    fnI(j) = 0.5*((sumc+0.5)^2+(sums+0.5)^2);
    j = j+1;
end

a = 1:0.1:10;
plot(fnI);