% Simpson's 3/8 Rule

clear all;
f = @(x) 2*cos(x*x);
a = 0;
b = 1;
n = 256;
h = (b-a)/n;
sum = ((f(a)+f(b)));
x = a + h;
n = 1 ;

while(x<b)
    if(mod(n,3)==0)
        sum = sum + 2*f(x);simpson 
    else
        sum = sum + 3*f(x);
    end
    n = n + 1;
    x = x + h;
end 

sum = (sum*3*h)/8;
disp(sum);
             