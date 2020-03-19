% Ising Model

close all;
clear all;

n = rand(20,20);
N = 20;
w = 1;
x = 1;
J = 1;
K = 1;
T_av = 2.5;
rand_scale = exp(-4*J/(K*T_av)) ;

% Initializing the State

for i=1:N
    for j=1:N
        if n(i,j)>0.5
            n(i,j)=1;
        else 
            n(i,j)=-1;
        end
    end
end


for T=1:0.1:3
    for itr = 1:50
        for i=1:N
            for j=1:N
                delE=2*n(i,j)*(circshift(n,[0,1])+circshift(n,[0,-1])+circshift(n,[-1,0])+circshift(n,[1,0]));  
                if delE(i,j)<0
                    n(i,j)=-1*n(i,j);
                else
                    p=exp(-1*delE(i,j)/T);
                    q=rand()*rand_scale;
                    if p>q
                        n(i,j)=-1*n(i,j);
                    else
                        n(i,j)=n(i,j);
                    end
                end
            end 
        end
        
    avgm1(w) = sum(sum(n))/400;
    w = w + 1;
    
    figure(1);
    colormap(gray)
    imagesc(n)
    drawnow
    
    end

    figure(2);
    colormap(gray)
    imagesc(n)
    drawnow
    
    clc;
    T
    avgm2(x) = sum(sum(avgm1))/(w-1);
    x = x + 1;
    w = 1;
end

figure(3);
t = 1:0.1:3;
plot(t,abs(avgm2));
xlabel('Temperature');

