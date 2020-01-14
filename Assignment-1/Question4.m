a = input('Enter value of a = ');
r = input('Enter value of r = ');
if abs(r)>=1
    fprintf('Series is Divergent.\n');
else
    sum = a/(1-r);
    fprintf('Series is Convergent.\n');
    fprintf('Sum = %d\n',sum);
end
