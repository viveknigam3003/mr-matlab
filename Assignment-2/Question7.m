% Question 7

p = [1 2 3 4 5];
disp((length(p):-1:1).*p);
%(length(p)-1:-1:0) will produce a matrix of (5-1 i.e 4) to 0 with -1 step
% [4 3 2 1 0].*[1 2 3 4 5] = [4 6 6 4 0] i.e element wise multiplication.