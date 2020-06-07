%1)A)
clear all
clc
syms x;
f=(x^2);
q=int(f,x,0,5);
fprintf('the integral is:%f \n',double(q));

%{
output:
the integral is:41.666667
%}

%%
%Q1)b)
clear all
clc
tspan=[0,1];
x0=0;
[t,x]=ode45(@(t,x) t^2-x , tspan , x0);
fprintf('      t        numerical solution \n\n');
disp([t, x]);

%{
output:
 t        numerical solution 

         0         0
    0.0250    0.0000
    0.0500    0.0000
    0.0750    0.0001
    0.1000    0.0003
    0.1250    0.0006
    0.1500    0.0011
    0.1750    0.0017
    0.2000    0.0025
    0.2250    0.0036
    0.2500    0.0049
    0.2750    0.0065
    0.3000    0.0084
    0.3250    0.0106
    0.3500    0.0131
    0.3750    0.0160
    0.4000    0.0194
    0.4250    0.0231
    0.4500    0.0272
    0.4750    0.0319
    0.5000    0.0369
    0.5250    0.0425
    0.5500    0.0486
    0.5750    0.0552
    0.6000    0.0624
    0.6250    0.0701
    0.6500    0.0784
    0.6750    0.0873
    0.7000    0.0968
    0.7250    0.1070
    0.7500    0.1178
    0.7750    0.1292
    0.8000    0.1413
    0.8250    0.1542
    0.8500    0.1677
    0.8750    0.1819
    0.9000    0.1969
    0.9250    0.2126
    0.9500    0.2290
    0.9750    0.2462
    1.0000    0.2642

%}

%%
clear all
clc
%1 d)
tspan=[0,1];
x0=0;
[t,x]=ode15s(@(t,x) t^2-x , tspan , x0);
fprintf('      t        numerical solution \n \n');
disp([t,x]);

%{  
 t        numerical solution 
 
         0         0
    0.0100    0.0000
    0.0200    0.0000
    0.0269    0.0000
    0.0339    0.0000
    0.0395    0.0000
    0.0451    0.0000
    0.0506    0.0000
    0.0612    0.0001
    0.0717    0.0001
    0.0823    0.0002
    0.0928    0.0003
    0.1130    0.0005
    0.1331    0.0008
    0.1533    0.0012
    0.1735    0.0017
    0.1936    0.0023
    0.2418    0.0044
    0.2899    0.0076
    0.3380    0.0119
    0.3861    0.0175
    0.4343    0.0246
    0.4824    0.0333
    0.5824    0.0573
    0.6824    0.0901
    0.7824    0.1327
    0.8824    0.1863
    0.9824    0.2515
    1.0000    0.2642

%}

%%
% Q2)
clear all
clc
syms x;
% a)
f=sin(x^2);
p=int(f,x,0,1);
fprintf('the integral is:%f \n',double(p));
%{
output:
the integral is:0.310268

%}

% b)
g=exp(-(x^2));
q=int(g,x,0,inf);
fprintf('the integral is:%f \n',double(q));

%{
output:
the integral is:0.886227
%}

%%
% Q3)
clear all
clc
syms x;
g=1/(1+x^2);
integral=int(g,x,0,6); 
res=double(integral);
% range of definite integral
a=0;
b=6;
n=input('enter no. of sub-interval:');
f=matlabFunction(g); % converts symbolic expression to funtion handle
h=abs(b-a)/n; % calculating the value of x

% Trapezoidal Rule
fprintf('\n trapeoidal rule\n');

sum1=f(a)+f(b); % sum of first and last term
for i=1:n-1
    sum1=sum1+2*f(a+(i*h)); % sum of middle terms
    
end
res1=sum1*(h/2); % INTEGRAL USING TRAPEZOIDAL RULE
fprintf(' approximate value of integral is :%f \n',res1);

err1= abs(res-res1); % difference between the actual & approximated value

fprintf('difference between the actual & approximated value:%f \n',err1);

% Simpson’s One third rule
fprintf("\n Simpson's One third rule \n");
sum3=f(a)+f(b);

for i=1:n-1
    if mod(i,2)==0
        sum3=sum3+2*f(a+(i*h)); 
    else
       sum3=sum3+4*f(a+(i*h)); 
    end
    
end
res3=sum3*(h/3);
fprintf(' approximate value of integral is :%f \n',res3);
err3=abs(res-res3);
fprintf('difference between the actual & approximated value:%f \n',err3);

% simpson's three eighth rule
fprintf(" \n simpson's three eighth rule \n ");
sum3=f(a)+f(b);
for i=1:n-1
    if mod(i,3)==0
        sum3=sum3+2*f(a+(i*h)); 
    else
       sum3=sum3+3*f(a+(i*h)); 
    end
    
end
res3=sum3*((3*h)/8);
fprintf(' approximate value of integral is :%f \n',res3);
err3=abs(res-res3);
fprintf('difference between the actual & approximated value:%f \n',err3);


%{
OUTPUT:
question3
enter no. of sub-interval:
6

 trapeoidal rule
 approximate value of integral is :1.410799 
difference between the actual & approximated value:0.005151 

 Simpson's One third rule 
 approximate value of integral is :1.366173 
difference between the actual & approximated value:0.039474 
 
 simpson's three eighth rule 
  approximate value of integral is :1.357081 
difference between the actual & approximated value:0.048567 

question3
enter no. of sub-interval:
12

 trapeoidal rule
 approximate value of integral is :1.405476 
difference between the actual & approximated value:0.000171 

 Simpson's One third rule 
 approximate value of integral is :1.403702 
difference between the actual & approximated value:0.001946 
 
 simpson's three eighth rule 
  approximate value of integral is :1.399611 
difference between the actual & approximated value:0.006037 

question3
enter no. of sub-interval:
24

 trapeoidal rule
 approximate value of integral is :1.405602 
difference between the actual & approximated value:0.000046 

 Simpson's One third rule 
 approximate value of integral is :1.405644 
difference between the actual & approximated value:0.000004 
 
 simpson's three eighth rule 
  approximate value of integral is :1.405557 
difference between the actual & approximated value:0.000090 

%}

%%
% Q4)
clear all
clc
tspan=[0,2];
x0=0;
sol=ode45(@(t,x) t^2-x , tspan , x0);
p=linspace(0,2,10); 
%  x1 gives solution using ode45 at points contained in p
x1=deval(sol,p);
disp('Numerical solution:');
disp('t:');
disp(p);
disp('corrosponding numerical solution:');
disp(x1);


syms x(t);
ode=diff(x,t)==t^2-x;
cond=x(0)==0;
xsol(t)=dsolve(ode,cond);
temp=subs(xsol,p);
% x2 gives exact solution points contained in p
x2=double(temp);
disp('Exact solution:');
disp('t:');
disp(p);
disp('corrosponding  solution:');
disp(x2);

plot(p,x1,'+k',p,x2,'or');
title('comparision of numerical solution and exact solution ');

xlabel('t');
ylabel('solution');
legend('numerical solution','exact solution');
%{
output:

Numerical solution:
t:
         0    0.2222    0.4444    0.6667    0.8889    1.1111    1.3333    1.5556    1.7778    2.0000

corrosponding numerical solution:
         0    0.0035    0.0263    0.0843    0.1901    0.3540    0.5839    0.8865    1.2669    1.7293


Exact solution:
t:
         0    0.2222    0.4444    0.6667    0.8889    1.1111    1.3333    1.5556    1.7778    2.0000

corrosponding  solution:
         0    0.0035    0.0263    0.0843    0.1901    0.3540    0.5839    0.8865    1.2669    1.7293



%}


 

%%
% Q5
% output contains graph 
clear all
clc

alpha=1; beta=0.05; mu=0.02; eta=0.5;
%initial population of both  prey & predator is 10 
y0=[10;10];
% for prey: alpha*x(1)-beta*x(1)*x(2)
% for predator: mu*x(1)*x(2)-eta*x(2)
%  x(1) denotes the number of prey.
% x(2) refer to the number of predators.
f=@(t,x)[alpha*x(1)-beta*x(1)*x(2);mu*x(1)*x(2)-eta*x(2)];
[t,y]=ode45(f,[0 50],y0);
% [t,y] consists of a column of times  (t) and a matrix of populations (y)
% 1st column of y corresponds with x(1)
% and the 2nd column corresponds  with  x(2) 

y1=y(:,1); % prey
y2=y(:,2); % predator 
% solutions as x vs t and y vs t in a single graph.
figure
plot(t,y1,'g',t,y2,'r');
xlabel('time');
ylabel('population ');
legend('prey','predator');
grid on;
title('solutions as x vs t and y vs t in a single graph.');

%%
% Q5) C)

% output contains graph 

alpha=1; beta=0.05;  eta=0.5;
%initial population of both  prey & predator is 10 
y0=[10;10];
% for prey: alpha*x(1)-beta*x(1)*x(2)
% for predator: mu*x(1)*x(2)-eta*x(2)
%  x(1) denotes the number of prey.
% x(2) refer to the number of predators.

i=2;

for mu=0.01:0.005:0.025
f=@(t,x)[alpha*x(1)-beta*x(1)*x(2);mu*x(1)*x(2)-eta*x(2)];

[t,y]=ode45(f,[0 20],y0);
% [t,y] consists of a column of times  (t) and a matrix of populations (y)
% 1st column of y corresponds with x(1)
% and the 2nd column corresponds  with  x(2) 

y1=y(:,1); % prey
y2=y(:,2); % predator 
% solutions as x vs t and y vs t in a single graph.
subplot(3,3,i);
i=i+2;
p=plot(t,y1,'g',t,y2,'r');

xlabel('time')
ylabel('population ');
suptitle('solutions as x vs t and y vs t in a single graph');
title([' mu= ' num2str(mu)]);

end

subplot(3,3,3);
plot(0,0,'g' ,0,0,'r');
axis off;
legend('prey','predator');
