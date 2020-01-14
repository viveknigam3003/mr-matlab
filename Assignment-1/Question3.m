n = input('Enter value of n = ');
m = input('Enter value of m = ');
ncm = factorial(n)/(factorial(m)*(factorial(n-m)));
f=1; 
g=1;
k=1;
%Finding n factorial, f = n!
for i=1:n
    f=f*i;
end
%g = m!
for i=1:m
    g=g*i;
end
%k = (n-m)!
for i=1:(n-m)
    k=k*i;
end
ans = f/(g*k);
fprintf('value of nCm (using function): %d\n',ncm);
fprintf('value of nCm: (using loops) %d\n',ans);