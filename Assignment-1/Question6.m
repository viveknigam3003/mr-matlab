n = input ('Enter value of n: ');
p = 1;
for i=1:n
    p = p*(1+(2/i));
end
fprintf('Value of product = %d\n',p);