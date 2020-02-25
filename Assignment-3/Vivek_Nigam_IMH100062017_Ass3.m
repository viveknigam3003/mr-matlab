%Assignment 3 MATLAB
%Vivek_Nigam_IMH/10006/17
%%
%Question1.a
fn= @round;
x=pi;
y=5;
y=feval(fn, x, y)

%{ 
Output: 
y =

    3.1416 
%}

%Question1.b
p = [4 3 1];
x = [2 4 6];
y = polyval(p,x)

%{
Output:
y =

    23    77   163
%}

%Question1.c
p = [2 3 -6];
r = roots(p)
poly(r)

%{
Output:
r =

   -2.6375
    1.1375


ans =

    1.0000    1.5000   -3.0000
%}

%Question1.d
syms a b c x
eqn = 3*x^2 + 2*x + 6 == 0
S = solve(eqn,x)
Sv =vpasolve(eqn,x)

%{
Output:
eqn =
 
3*x^2 + 2*x + 6 == 0
 
 
S =
 
 - (17^(1/2)*1i)/3 - 1/3
   (17^(1/2)*1i)/3 - 1/3
 
 
Sv =
 
 - 0.33333333333333333333333333333333 + 1.374368541872553516607136618658i
 - 0.33333333333333333333333333333333 - 1.374368541872553516607136618658i
%}

%Question1.e
p= 3*x^4 + 4*x^2 + 6;
coeffs(p)

%{
Output:
 
ans =
 
[ 6, 4, 3]
%}

%Question1.f
syms x
M = [x x^3; x^2 x^4];
f(x) = M

%{
Output:
f(x) =
 
[   x, x^3]
[ x^2, x^4]
%}

%Question1.g
fun = @sin;
x0 = 1;
x = fzero(fun,x0)

%{
Output:
x =

   1.5485e-24
%}

%%

%Question2
p=[6 -25 31 0 -31 25 6];
r= roots(p)

%{
Output:
r =

   1.8763 + 0.3342i
   1.8763 - 0.3342i
   0.7680 + 0.9662i
   0.7680 - 0.9662i
  -0.9270 + 0.0000i
  -0.1950 + 0.0000i
%}

%%

%Question3.
syms x;

% Input Section
y = input('Enter non-linear equations: ');
a = input('Enter first guess: ');
b = input('Enter second guess: ');
fprintf('Tolerable error');
e = 10^(-4)

a1=a;
b1=b;

a2=a;
b2=b;

n=0;
n1=0;

% Finding Functional Value
fa = eval(subs(y,x,a));
fb = eval(subs(y,x,b));

% Implementing Bisection Method
fprintf('\n Criteria using value of the function: ');
if fa*fb > 0 
    disp('Given initial values do not bracket the root.');
else
    c = (a+b)/2;
    fc = eval(subs(y,x,c));
    fprintf('\n\n\tn\t\ta\t\t\tb\t\t\tc\t\t\tf(c)\n');
    while abs(fc)>e
        fprintf('%f\t%f\t%f\t%f\t%f\n',n,a,b,c,fc);
        if fa*fc< 0
            b =c;
            n=n+1;
        else
            a =c;
            n=n+1;
        end
        c = (a+b)/2;
        fc = eval(subs(y,x,c));
    end
    fprintf('\nRoot is: %f\n', c);
end

% Finding Functional Value
fa1 = eval(subs(y,x,a1));
fb1 = eval(subs(y,x,b1));


fprintf('\n Criteria using difference of roots: ');
if fa1*fb1 > 0 
    disp('Given initial values do not bracket the root.');
else
    c1 = (a1+b1)/2;
    fc1 = eval(subs(y,x,c1));
    fprintf('\n\n\tn1\t\ta1\t\t\tb1\t\t\tc1\t\t\tf(c1)\n');
    while abs(b1-a1)>e
        fprintf('%f\t%f\t%f\t%f\t%f\n',n1,a1,b1,c1,fc1);
        if fa1*fc1< 0
            b1 =c1;
            n1=n1+1;
        else
            a1 =c1;
            n1=n1+1;
        end
        c1 = (a1+b1)/2;
        fc1 = eval(subs(y,x,c1));
    end
    fprintf('\nRoot is: %f\n', c1);
end

fprintf('\nThe root of the equation calculated using inbuilt func: ');
p=vpasolve(y,x,[a2 b2]);
p1=double(p)

err= abs(((c-p1)/p1) *100);
fprintf('\nRelative error using Function value as termination criteria: %f ', err);

err1= abs(((c1- p1)/p1) *100);
fprintf('\nRelative error using difference of roots: %f ', err1);


%{
Output:
Enter non-linear equations: x^3 -3*x + 4
Enter first guess: 4
Enter second guess: -4
Tolerable error
e =

   1.0000e-04


 Criteria using value of the function: 

	n		a			b			c			f(c)
0.000000	4.000000	-4.000000	0.000000	4.000000
1.000000	0.000000	-4.000000	-2.000000	2.000000
2.000000	-2.000000	-4.000000	-3.000000	-14.000000
3.000000	-2.000000	-3.000000	-2.500000	-4.125000
4.000000	-2.000000	-2.500000	-2.250000	-0.640625
5.000000	-2.000000	-2.250000	-2.125000	0.779297
6.000000	-2.125000	-2.250000	-2.187500	0.094971
7.000000	-2.187500	-2.250000	-2.218750	-0.266327
8.000000	-2.187500	-2.218750	-2.203125	-0.084064
9.000000	-2.187500	-2.203125	-2.195313	0.005855
10.000000	-2.195313	-2.203125	-2.199219	-0.039004
11.000000	-2.195313	-2.199219	-2.197266	-0.016549
12.000000	-2.195313	-2.197266	-2.196289	-0.005341
13.000000	-2.195313	-2.196289	-2.195801	0.000259
14.000000	-2.195801	-2.196289	-2.196045	-0.002541
15.000000	-2.195801	-2.196045	-2.195923	-0.001141
16.000000	-2.195801	-2.195923	-2.195862	-0.000441

Root is: -2.195831

 Criteria using difference of roots: 

	n1		a1			b1			c1			f(c1)
0.000000	4.000000	-4.000000	0.000000	4.000000
1.000000	0.000000	-4.000000	-2.000000	2.000000
2.000000	-2.000000	-4.000000	-3.000000	-14.000000
3.000000	-2.000000	-3.000000	-2.500000	-4.125000
4.000000	-2.000000	-2.500000	-2.250000	-0.640625
5.000000	-2.000000	-2.250000	-2.125000	0.779297
6.000000	-2.125000	-2.250000	-2.187500	0.094971
7.000000	-2.187500	-2.250000	-2.218750	-0.266327
8.000000	-2.187500	-2.218750	-2.203125	-0.084064
9.000000	-2.187500	-2.203125	-2.195313	0.005855
10.000000	-2.195313	-2.203125	-2.199219	-0.039004
11.000000	-2.195313	-2.199219	-2.197266	-0.016549
12.000000	-2.195313	-2.197266	-2.196289	-0.005341
13.000000	-2.195313	-2.196289	-2.195801	0.000259
14.000000	-2.195801	-2.196289	-2.196045	-0.002541
15.000000	-2.195801	-2.196045	-2.195923	-0.001141
16.000000	-2.195801	-2.195923	-2.195862	-0.000441

Root is: -2.195831

The root of the equation calculated using inbuilt func: 
p1 =

   -2.1958


Relative error using Function value as termination criteria: 0.000362 
Relative error using difference of roots: 0.000362 
%}

%%

%Question4

% Setting x as symbolic variable
syms x;

% Input Section
y = input('Enter non-linear equations: ');
a = input('Enter first guess: ');
b = input('Enter second guess: ');

% Finding Functional Value
fa = eval(subs(y,x,a));
fb = eval(subs(y,x,b));

a1=a;
b1=b;

a2=a;
b2=b

n=0;
n1=0;

fprintf('\nImplementing Bisection Method');
if fa*fb > 0 
    disp('Given initial values do not bracket the root.');
else
    c = (a+b)/2;
    fc = eval(subs(y,x,c));
    fprintf('\n\n\tn\t\ta\t\t\tb\t\t\tc\t\t\tf(c)\n');
    for j=0:10
        fprintf('%f\t%f\t%f\t%f\t%f\n',n,a,b,c,fc);
        if fa*fc< 0
            b =c;
            n=n+1;
        else
            a =c;
            n=n+1;
        end
        c = (a+b)/2;
        fc = eval(subs(y,x,c));
    end
    fprintf('\nRoot(bisection) is: %f\n', c);
end



% Finding Functional Value
fa1 = eval(subs(y,x,a1));
fb1 = eval(subs(y,x,b1));

fprintf('\nImplementing Regula Falsi Method');
if fa1*fb1 > 0 
    disp('Given initial values do not bracket the root.');
else
    c1 = a1 - (a1-b1) * fa1/(fa1-fb1);
    fc1 = eval(subs(y,x,c1));
    fprintf('\n\n\tn1\t\ta1\t\t\tb1\t\t\tc1\t\t\tf(c1)\n');
    for i=0:10
        fprintf('%f\t%f\t%f\t%f\t%f\n',n1,a1,b1,c1,fc1);
        if fa1*fc1< 0
            b1 =c1;
            fb1 = eval(subs(y,x,b1));
        else
            a1=c1;
            fa1 = eval(subs(y,x,a1));
        end
        n1=n1+1;
        c1 = a1 - (a1-b1) * fa1/(fa1-fb1);
        fc1 = eval(subs(y,x,c1));
    end
    fprintf('\nRoot (Regula Falsi) is: %f\n', c1);
end

fprintf('\nThe root of the equation calculated using inbuilt func: ');
p=vpasolve(y,x,[a2 b2]);
p1=double(p)

err= abs(((c-p1)/p1) *100);
fprintf('\nRelative error using Bisection method: %f ', err);

err1= abs(((c1- p1)/p1) *100);
fprintf('\nRelative error using Regula Falsi method: %f ', err1);


%{
Output:
Enter non-linear equations: x^3 -x - 11
Enter first guess: 4
Enter second guess: -4

b2 =

    -4


Implementing Bisection Method

	n		a			b			c			f(c)
0.000000	4.000000	-4.000000	0.000000	-11.000000
1.000000	4.000000	0.000000	2.000000	-5.000000
2.000000	4.000000	2.000000	3.000000	13.000000
3.000000	3.000000	2.000000	2.500000	2.125000
4.000000	2.500000	2.000000	2.250000	-1.859375
5.000000	2.500000	2.250000	2.375000	0.021484
6.000000	2.375000	2.250000	2.312500	-0.946045
7.000000	2.375000	2.312500	2.343750	-0.469147
8.000000	2.375000	2.343750	2.359375	-0.225559
9.000000	2.375000	2.359375	2.367188	-0.102471
10.000000	2.375000	2.367188	2.371094	-0.040602

Root(bisection) is: 2.373047

Implementing Regula Falsi Method

	n1		a1			b1			c1			f(c1)
0.000000	4.000000	-4.000000	0.733333	-11.338963
1.000000	4.000000	0.733333	1.347209	-9.902063
2.000000	4.000000	1.347209	1.793171	-7.027295
3.000000	4.000000	1.793171	2.069966	-4.200665
4.000000	4.000000	2.069966	2.222359	-2.246397
5.000000	4.000000	2.222359	2.300282	-1.128803
6.000000	4.000000	2.300282	2.338557	-0.549349
7.000000	4.000000	2.338557	2.356977	-0.263170
8.000000	4.000000	2.356977	2.365754	-0.125120
9.000000	4.000000	2.365754	2.369916	-0.059272
10.000000	4.000000	2.369916	2.371886	-0.028030

Root (Regula Falsi) is: 2.372817

The root of the equation calculated using inbuilt func: 
p1 =

    2.3736


Relative error using Bisection method: 0.025402 
Relative error using Regula Falsi method: 0.035101
%}

%%

%Question5
syms x;

% Input Section
y = input('Enter non-linear equations: ');
a=0;
b=0;
fprintf('Tolerable error');
e = 10^(-3)


%Finding suitable interval
for k=-100:100
    fk= eval(subs(y,x,k));
    fk1= eval(subs(y,x,k+1));
    if fk*fk1<0
        fprintf('\nThe values are %f and %f', k, k+1);
        a=k;
        b=k+1;
        break
    end
end

% Finding Functional Value
fa = eval(subs(y,x,a));
fb = eval(subs(y,x,b));
 
a1=a;
b1=b;

a2=a;
b2=b

n=0;
n1=0;

fprintf('\nImplementing Bisection Method');
if fa*fb > 0 
    disp('Given initial values do not bracket the root.');
else
    c = (a+b)/2;
    fc = eval(subs(y,x,c));
    fprintf('\n\n\tn\t\ta\t\t\tb\t\t\tc\t\t\tf(c)\n');
    while abs(a-b)>e
        fprintf('%f\t%f\t%f\t%f\t%f\n',n,a,b,c,fc);
        if fa*fc< 0
            b =c;
            n=n+1;
        else
            a =c;
            n=n+1;
        end
        c = (a+b)/2;
        fc = eval(subs(y,x,c));
    end
    fprintf('\nRoot(bisection) is: %f\n', c);
end



% Finding Functional Value
fa1 = eval(subs(y,x,a1));
fb1 = eval(subs(y,x,b1));

fprintf('\nImplementing Regula Falsi Method');
if fa1*fb1 > 0 
    disp('Given initial values do not bracket the root.');
else
    c1 = a1 - (a1-b1) * fa1/(fa1-fb1);
    fc1 = eval(subs(y,x,c1));
    fprintf('\n\n\tn1\t\ta1\t\t\tb1\t\t\tc1\t\t\tf(c1)\n');
    while abs(fc1)>e
        fprintf('%f\t%f\t%f\t%f\t%f\n',n1,a1,b1,c1,fc1);
        if fa1*fc1< 0
            b1 =c1;
            fb1 = eval(subs(y,x,b1));
        else
            a1=c1;
            fa1 = eval(subs(y,x,a1));
        end
        n1=n1+1;
        c1 = a1 - (a1-b1) * fa1/(fa1-fb1);
        fc1 = eval(subs(y,x,c1));
    end
    fprintf('\nRoot (Regula Falsi) is: %f\n', c1);
end

fprintf('\nThe root of the equation calculated using inbuilt func: ');
p=vpasolve(y,x,[a2 b2]);
p1=double(p)

err= abs(((c-p1)/p1) *100);
fprintf('\nRelative error using Bisection method: %f ', err);

err1= abs(((c1- p1)/p1) *100);
fprintf('\nRelative error using Regula Falsi method: %f ', err1);

%{
Output:
Enter non-linear equations: x*exp(x) - 3
Tolerable error
e =

   1.0000e-03


The values are 1.000000 and 2.000000
b2 =

     2


Implementing Bisection Method

	n		a			b			c			f(c)
0.000000	1.000000	2.000000	1.500000	3.722534
1.000000	1.000000	1.500000	1.250000	1.362929
2.000000	1.000000	1.250000	1.125000	0.465244
3.000000	1.000000	1.125000	1.062500	0.074446
4.000000	1.000000	1.062500	1.031250	-0.107788
5.000000	1.031250	1.062500	1.046875	-0.017731
6.000000	1.046875	1.062500	1.054688	0.028090
7.000000	1.046875	1.054688	1.050781	0.005113
8.000000	1.046875	1.050781	1.048828	-0.006325
9.000000	1.048828	1.050781	1.049805	-0.000610

Root(bisection) is: 1.050293

Implementing Regula Falsi Method

	n1		a1			b1			c1			f(c1)
0.000000	1.000000	2.000000	1.023360	-0.152472
1.000000	1.023360	2.000000	1.035841	-0.081542
2.000000	1.035841	2.000000	1.042471	-0.043329
3.000000	1.042471	2.000000	1.045980	-0.022945
4.000000	1.045980	2.000000	1.047835	-0.012128
5.000000	1.047835	2.000000	1.048815	-0.006405
6.000000	1.048815	2.000000	1.049332	-0.003380
7.000000	1.049332	2.000000	1.049604	-0.001784

Root (Regula Falsi) is: 1.049748

The root of the equation calculated using inbuilt func: 
p1 =

    1.0499


Relative error using Bisection method: 0.036582 
Relative error using Regula Falsi method: 0.015305

%}