a = input('Enter value of a = ');
r = input('Enter value of r = ');
n = input('Enter value of n = ');
sum = 0;
if n>100000
    if abs(r)>=1
        fprintf('Series is Divergent.\n');
    else
        sum = a/(1-r);
        fprintf('Series is Convergent.\n');
        fprintf('Sum = %d\n',sum);
    end
else
    for i=1:n
        sum = sum + power(a,i);
    end
    fprintf('Sum of Series = %d\n', sum);
end