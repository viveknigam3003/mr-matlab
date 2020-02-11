% Question 8

n = input('Enter value of n: ');
A = eye(n);
for i=1:n
    for j=1:n
        if i==j || j==n
           A(i,j) = 1;
        elseif i>j
            A(i,j) = -1;
        else
            A(i,j) = 0;
        end
    end
end
disp(A)