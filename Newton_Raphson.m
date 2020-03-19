% Newton Raphson Method

f = @(x) x^3-6*x^2+11*x-6;
df = @(x) 3*x^2-12*x+11;
err = 1.0e-8;
x0 = input('Enter initial value');
x = x0;
xmat(1) = x;
i = 2;

while(abs(f(x))>err)
    temp = x;
    x = temp-(f(temp)/df(temp));
    disp(x);
    xmat(i) = x;
    i = i+1;
end

disp(xmat);
plot(xmat);