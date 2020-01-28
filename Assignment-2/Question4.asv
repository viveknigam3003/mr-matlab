clc;
clear all;
A = rand(8);
disp(A);
rm = [];
cm = [];
for i=1:8
    rm(i) = max(A(i,:));
end
disp (rm(:)); %row max
for i=1:8
    cm(i) = max(A(:,i));
end
disp(cm); %column max

if max(cm)>max(rm)
    M = max(cm);
else
    M = max(rm);
end
disp (M);