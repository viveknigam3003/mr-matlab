clc
M = {'January' 'February' 'March' 'April' 'May' 'June' 'July' 'August' 'September' 'October' 'November' 'December'};
for i=M
    %fprintf('%s, ',i{1});
    switch (i{1})
        case {'January', 'March', 'May', 'July', 'August', 'October', 'December'}
            fprintf('%s - %d\n',i{1},31);
        case {'April' 'June' 'September' 'November'}
            fprintf('%s - %d\n',i{1},30);
        case 'February'
            fprintf('%s - 28/29\n',i{1});
    end
end