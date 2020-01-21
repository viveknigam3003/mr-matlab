function f = Question8(x)
    if x<0
        f=0;
    elseif x>=0 && x<=1
        f = x;
    elseif x>=1 && x<=2
        f = 2-x;
    elseif x>2
        f=0;
    end
end
