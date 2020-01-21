clc
M = input ('Enter Month: ','s');
Y = input ('Enter Year: ');
%M = {'January' 'February' 'March' 'April' 'May' 'June' 'July' 'August' 'September' 'October' 'November' 'December'};
switch (M)
    case {'January', 'March', 'May', 'July', 'August', 'October', 'December'}
        fprintf('%s - %d\n',M,31);
    case {'April' 'June' 'September' 'November'}
        fprintf('%s - %d\n',M,30);
    case 'February'
        if (mod(Y,400)==0)
            fprintf('%s - 29\n',M);
        elseif (mod(Y,100)==0)
            fprintf('%s - 28\n',M);
        elseif (mod(Y,4)==0)
            fprintf('%s - 29\n',M);
        else
            fprintf('%s - 28\n',M);
        end
end
