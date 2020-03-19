% Trapezoidal Rule for Numerical Integration

f = @(x) sin(x);
N = input('Enter the value of N: ');
a = 0;
b = pi;
h = (b-a)/N;
x = linspace(a,b,N+1);
sum = 0;

for i = 2:N
     sum = sum + f(x(i));
end

sum = sum + (f(x(N+1))/2)+(f(x(1))/2);
sum = sum*h;
disp(sum);