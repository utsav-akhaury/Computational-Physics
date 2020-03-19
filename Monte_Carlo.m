% Monte Carlo method for integrating f(x)

a = 0;
b = 1;
f = @(x) exp(x);
N = input('Enter the value of N');
x = rand(1,N);
sum=  1:N;
sum(1) = f(x(1));

for i = 2:N
    sum(i)= sum(i-1)+f(x(i));
end 

for i = 1:N
    sum(i) = sum(i)/i;
end

fAv = sum(N)/N;
I = (b-a)*fAv;
plot(sum);