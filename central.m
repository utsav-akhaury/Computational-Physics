real = 0.5;
a = 1;
i = 1:10;
h = (0.1).^i;
erro = abs(real-(atan(a+h)-atan(a-h))./(2*h)); 

loglog(i,erro,'-rs');
xlabel('X');
ylabel('Error');
hold on

erro