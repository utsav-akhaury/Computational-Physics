% Finding +ve roots of 8th order Legendre Polynomial using Hybrid Method

clear all;
clc;

f = @(x) (6435*x^8-12012*x^6+6930*x^4-1260*x^2+35)/128;
a = 0;
b = 1;
c = a;
eps = 1e-06;
i = 0;
j = 0;

while (abs(f(b))>eps)
    if(abs(f(a))<abs(f(b)))
        temp = a;
        a = b;
        b = temp;
    end
    s = b-((b-c)*f(b))/(f(b)-f(c));
    m = (a+b)/2;
    if((s>m && s<b) || (s<m && s>b))
        c = b;
        b = s;
        i = i+1;
    else
        c = b;
        b = m;
        j = j+1;
    end
    if(sign(f(b))==sign(f(a)))
        a = c;
    end
end

disp(['The Root between 0 and 1 is - ', num2str(b)]);
disp(['No. of Iterations of Bisection - ' num2str(j)]);
disp(['No. of Iterations of Secent - ' num2str(i)]);
disp(['Total No. of Iterations - ' num2str(i+j)]);
