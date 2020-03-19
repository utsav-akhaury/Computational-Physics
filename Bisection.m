% Bisection Method for Root Finding

f = @(x) x^2-2;
a = 0.5;
b = 3.2;
err = 0.0005;
mid = (a+b)/2;

while(abs(f(mid))>err)
    if((f(a)*f(mid))<0)        
        b = mid;        
    end
    if((f(b)*f(mid))<0)       
        a = mid;        
    end
    mid = (a+b)/2;
end

disp('Root = ');
disp(mid);
