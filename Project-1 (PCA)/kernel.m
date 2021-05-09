% Homework Question 1 

%X=[1,2,3,4,5];
%draws estimate of pdf

function [h,e] = kernel(x)
    %KDE
    j=length(x);
    KDE=0;cross_val=0;
    for i=1:j
        KDE=KDE+(1/j)*Epan_kernel((x-x(i)/h));
    end
    for i=1:j
        cross_val=cross_val(1/j)*KDE(i)*x(i);
    end
    
    h=fminbnd(cross_val,-1,1);
    
    
    %Mean estimate 
    %Variance estimate 
    y = normpdf(x,sd,mn);
    plot(x,y)
    xlabel('gaussmf, P=[sd mn]')
end 





%%%%%%%%%%%%%%%%%%%
% Side notes
% % Kernelpdf draws pdf of x
% sd=std(X);
% mn=mean(X);
% x = 0:0.1:10;
% y = normpdf(x,sd,mn);
% plot(x,y)
% xlabel('gaussmf, P=[sd mn]')
