% Runge Kutta Method - Ordinary Differential Equation

f = @(x,y,z) z;
g = @(x,y,z) -z+6*y;
h = 0.05;
x(1) = 0;
y(1) = 2;
z(1) = -1;

for i = 1:100
    f0 = f(x(i),y(i),z(i));
    g0 = g(x(i),y(i),z(i));
    f1 = f(x(i)+0.5*h,y(i)+0.5*h*g0,z(i)+0.5*h*f0);
    g1 = g(x(i)+0.5*h,y(i)+0.5*h*g0,z(i)+0.5*h*f0);
    f2 = f(x(i)+0.5*h,y(i)+0.5*h*g1,z(i)+0.5*h*f1);
    g2 = g(x(i)+0.5*h,y(i)+0.5*h*g1,z(i)+0.5*h*f1);
    f3 = f(x(i)+h,y(i)+h*g2,z(i)+h*f2);
    g3 = g(x(i)+h,y(i)+h*g2,z(i)+h*f2);
    
    x(i+1) = x(i)+h;
    z(i+1) = z(i)+h*(g0+2*g1+2*g2+g3)/6;
    y(i+1) = y(i)+h*(f0+2*f1+2*f2+f3)/6;
end

plot(x,y,x,z,'r');


