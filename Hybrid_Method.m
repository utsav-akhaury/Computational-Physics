% Hybrid Method (Newton Raphson + Bisection) for finding root

f = @(x)(x^3-6*x^2+11*x-6);
df = @(x)(3*x^2-12*x+11);
a = 0.5;
b = 1.4;
c = (a+b)/2;
eps = 1.0e-08;
d=c;

while(f(d)>eps)
    if(d>a && d<b)
        d = d-(f(d)/df(d));
        disp(d);
    else
        if(f(a)*f(c)<0)
            b = c;
            c = (a+b)/2;
            d = c;
        else
            a = c;
            c = (a+b)/2;
            d = c;
        end
    end
    
end

disp('Root = ');
disp(d);    