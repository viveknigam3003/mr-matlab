% Question 9

clc
clear all
%%
n = input('Enter n: ');
v1 = zeros(n,1)-2;
v2 = zeros(n-1,1)+1;
v3 = zeros(1,1)+1;
D1 = diag(v1);
D2 = diag(v2,1);
D3 = diag(v2,-1);
D4 = diag(v3, n-1);
D5 = diag(v3, 1-n);
D = D1+D2+D3+D4+D5;
disp(D);
%%
a = [-2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1];
D = toeplitz(a);
disp(D);
%%
format rat
a = [1 2 3 4 5 6 7 8];
X = toeplitz(a);
for i=1:8
    for j=1:8
        if i>j
            X(i,j) = 0;
        end
    end
end
disp(X);
%%
format rat
a = [1 1/2 1/3 1/4 1/5 1/6 1/7 1/8];
X = toeplitz(a);
disp(X);