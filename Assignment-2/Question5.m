% Question 5

n = input('Enter value of n:');
M = magic(n);
rsum = M(1,:);
csum = M(:,1);
diagsum = 0;
adiagsum = 0;
flag = 0;
for i=1:n-1
    rsum = sum(M(i,:));
    rsum1 = sum(M(i+1,:));
    if rsum == rsum1
       flag = 0;
    else
       flag = flag + 1;
    end
end
for i=1:n-1
    csum = sum(M(:,i));
    csum1 = sum(M(:,i+1));
    if csum == csum1
       flag = 0;
    else
       flag = flag + 1;
    end
end
for i=1:n
    for j=1:n
        if i == j
            diagsum = diagsum + M(i,j);
        end
    end
end
for i=1:n
    for j=1:n
        if i+j == n+1
            adiagsum = adiagsum + M(i,j);
        end
    end
end
if diagsum == adiagsum
   flag = 0;
else
   flag = flag + 1;
end

disp(M);
disp(rsum);
disp(csum);
disp(diagsum);
disp(adiagsum);
if flag ~= 0
    disp('It is not a Magic Matrix');
else
    disp('Magic Matrix Verified!');
end