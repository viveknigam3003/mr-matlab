clear all;

%%
clc
A1 = ones(6,4); %populate with ones A1 = 6x4
disp (A1);
A2 = ones(5); %populate with ones A2 = 5x5
disp (A2);

%%
clc
B = zeros(4,4); %populate with zeros B = 4x4
disp (B);

%%
clc
C = eye(5); %eye-dentity matrix C=5x5
disp (C);

%%
clc
D = rand(8); %random 2x2 Matrix
disp (D);
disp(D(:,3));
disp(D(2,:));
disp(D(2,3));
D(3:6,3:6)=zeros(4,4);
disp(D);