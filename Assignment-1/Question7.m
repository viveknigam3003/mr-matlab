fibonacci = [0 1];
n=10;
sum=0;
for i = 1:n-2
    fibonacci = [fibonacci fibonacci(end)+fibonacci(end-1)];
end
for i = 1:n
    sum = sum + fibonacci(i);
end
disp(fibonacci);
disp (sum);

% function u = Question7(n)
%     if (n == 1 || n==0)
%         u = n; 
%     elseif n>=2
%         u = Question7(n-2)+Question7(n-1);
%         fprintf('%i, ', u)
%         return;
%     end
% end