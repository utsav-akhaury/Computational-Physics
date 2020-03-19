% Boole's Numerical Integration Rule

f=@(x) 4*(1-x*x)^0.5;
%g=@(x) -4*x/((1-x*x)^0.5);

a = 0;
b = 1;
n = 256;
h = (b-a)/n;
sum = (7*(f(a)+f(b)));
x = a+h;
n = 1;

while(x<b)
    if(mod(n,2)==1)
        sum = sum + 32*f(x);
    elseif(mod(n,4)==0)
        sum = sum + 14*f(x);
    else
        sum = sum + 12*f(x);
    end
    n = n+1;
    x = x+h;
end

sum = (sum*2*h)/45
er = (sum-pi)/pi
             