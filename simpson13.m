% Simpson's 1/3 Rule

clear all;
f = @(x) 4*(1-x*x)^0.5;
a = 0;
b = pi;
n = 500;
h = (b-a)/n;
sum = ((f(a)+f(b)));
x = a + h;
n = 1;

while(x<b)
    if(mod(n,2)==0)
        sum = sum + 2*f(x);
    else
        sum = sum + 4*f(x);
    end
    n = n + 1;
    x = x + h;
end

sum = (sum*h)/3;
disp(sum);
             