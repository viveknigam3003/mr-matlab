clc
clear all
k = 1000000;
sum = 0;
for n=0:k
    sum=sum+exp(-n);
end

F1 = 1/(1-(1/exp(1)));
fprintf('Calculated Sum = %d\n', sum);
fprintf('Actual Sum = %d\n', F1);