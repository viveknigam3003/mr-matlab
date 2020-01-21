function u = Question7(n)
    if (n == 1 || n==0)
        u = n; 
        return;
    elseif n>=2
        u = Question7(n-2)+Question7(n-1);
        fprintf('%i, ', u)
    end
end