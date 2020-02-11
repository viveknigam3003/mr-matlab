% Question-6

A=rand(3);
I=eye(3);
B=A^(-1);
C=I/A;

if B==C
    disp('true');
else
    disp('false');
end

B=A.^(-1);
C=I./A;

if B==C
    disp('True');
else
    disp('False');
end