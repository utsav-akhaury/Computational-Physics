% Fixed Point Iteration Method for Root Finding

f=@(x)x^3-6*x^2+12*x-6;
h=@(x)x;

a = input('Type the value of starting point , a = ');

epsi = 1.0e-10;

i=1

while abs(h(a)-f(a))>=epsi
    a = f(a);
    i = i+1;
end

disp('Root = ');
disp(a);
