# MATLAB Guide

## Basic Commands
* `clc` - clears the command window

* `clear all` - clears variables, but it also clears a lot of other things from memory, such as breakpoints, persistent variables and cached memory - as your new to Matlab this is probably a bit unclear.

In short: You rarely need to use clear all - most of the time a simple clear will be enough.

* `ginput` - enables you to select points from the figure using the mouse for cursor positioning. The figure must have focus before ginput receives input.

[x,y] = ginput(n) enables you to select n points from the current axes and returns the x- and y-coordinates in the column vectors x and y, respectively. Press the Return key to terminate the input before entering n points.

[x,y] = ginput gathers an unlimited number of points until you press the Return key.

* `x = input(prompt)` displays the text in prompt and waits for the user to input a value and press the Return key.

```MATLAB
prompt = 'What is the original value? ';
x = input(prompt)
y = x*10
```
* `disp(X)` - displays the value of variable X without printing the variable name. Another way to display a variable is to type its name, which displays a leading “X =” before the value.

```MATLAB
A = [15 150];
S = 'Hello World.';
```
To display Matrix with column names

```MATLAB
X = rand(5,3);
disp('     Corn      Oats      Hay')
```
* `fprintf('Sample Statement %d\n',value);` -  is used to print values. Similar to `printf()` in C.
Example:
```MATLAB
fprintf('value of nCm: %d\n',ncm);
```

## Math Commands
* `f = factorial(n)` returns the product of all positive integers less than or equal to n, where n is a nonnegative integer value.
* `abs(z)` returns the absolute value (or complex modulus) of z.
* `Y = exp(X)` returns the exponential ex for each element in array X.

### Limits
* `limit(f,var,a)` returns the Bidirectional Limit of the symbolic expression f when var approaches a.
* `limit(f,a)` uses the default variable found by symvar.
* `limit(f)` returns the limit at 0.
* `limit(f,var,a,'left')` returns the Left Side Limit of f as var approaches a.
* `limit(f,var,a,'right')` returns the Right Side Limit of f as var approaches a.

### Advanced Functions
* `F = symsum(f,k,a,b)` returns the sum of the series f with respect to the summation index k from the lower bound a to the upper bound b. _Note: If you do not specify k, symsum uses the variable determined by symvar as the summation index. If f is a constant, then the default variable is x._


## If-Else
The elseif and else blocks are optional. The statements execute only if previous expressions in the if...end block are false. An if block can include multiple elseif blocks. <br>

An expression is true when its result is nonempty and contains only nonzero elements (logical or real numeric). Otherwise, the expression is false.

Syntax:
```MATLAB
if expression
    statements
elseif expression
    statements
else
    statements
end
```
Example:
```MATLAB
if r == c
    A(r,c) = 2;
elseif abs(r-c) == 1
    A(r,c) = -1;
else
    A(r,c) = 0;
end
```
## Switch-Case Construct
The switch case construct can be used as follows:
```MATLAB
switch <switch_expression>
   case <case_expression>
      <statements>
   case <case_expression>
      <statements>
      ...
      ...
   otherwise
      <statements>
end
```
Example:
```MATLAB
grade = 'B';
   switch(grade)
   case 'A' 
      fprintf('Excellent!\n' );
   case 'B' 
      fprintf('Well done\n' );
   case 'C' 
      fprintf('Well done\n' );
   case 'D'
      fprintf('You passed\n' );
   case 'F' 
      fprintf('Better try again\n' );
   otherwise
      fprintf('Invalid grade\n' );
   end
```
`case <case_expressions>` can take in Scalar input i.e. we can use integers, characters, strings, or even array of strings. See [Assignment1/Question10](https://github.com/viveknigam3003/mr-matlab/blob/master/Assignment-1/Question10.m) for example.
```MATLAB
switch (i{1})
    case {'January', 'March', 'May', 'July', 'August', 'October', 'December'}
        fprintf('%s - %d\n',i{1},31);
```

## Loops

* __While Loop__
```MATLAB
while<expression>
  <statements>
end
```
Example:

```MATLAB
a =10;
% while loop execution
while(a <20)
fprintf('value of a: %d\n',a);
a =a +1;
end
```
* __For Loop__
```MATLAB
for index = values
  <program statements>
        ...
end
```
___values___ can be one of the following forms

1. initval:endval - increments the index variable from init val to end val by 1, and repeats execution of program statements until index is greater than end val.
2. Initval:step:endval - increments index by the value step on each iteration, or decrements when step is negative.
3. valArray - creates a column vector index from subsequent columns of array valArray on each iteration. For example, on the first iteration, index = valArray(:,1). The loop executes for a maximum of n times, where n is the number of columns of valArray, given by numel(valArray, 1, :). The input valArray can be of any MATLAB data type, including a string, cell array, or struct.

Example:
```MATLAB
for a = 10:20
fprintf('value of a: %d\n',a);
end
```
* __Nested Loops__
MATLAB allows nested loops in following fashion:

Nested FOR
```MATLAB
for m =1:j
  for n =1:k
    <statements>;
  end
end
```

Nested WHILE
```MATLAB
while <expression1>
  while <expression2>
    <statements>
  end
end
```
## Functions

Declaration:

```MATLAB
function [y1,...,yN] = myFun(x1,...,xM)
```
This is a function named myFun that accepts inputs x1,...,xM and returns outputs y1,...,yN. 
Example:

```MATLAB
function ave = average(x)
    ave = sum(x(:))/numel(x); 
end
```
Which can be called from command line 
```MATLAB
z = 1:99;
ave = average(z)
```

## Evaluating Polynomials

* `feval`: `[y1,...,yN] = feval(fun,x1,...,xM)` evaluates a function using its name or its handle, and using the input arguments `x1,...,xM`.

```
fun = 'round';
x1 = pi;
y = feval(fun,x1)
```

This gives `y = 3`

* `polyval`: `y = polyval(p,x)` evaluates the polynomial p at each point in x. Takes in two arrays `x` and `p`.

* `roots(p)`:  Outputs an array of roots.

* `vpasolve(eqn,var)` numerically solves the equation eqn for the variable var. 

* `coeffs(p,var)` returns coefficients of the polynomial `p` with respect to the variable `var`.

* `x = fzero(fun,x0)` tries to find a point `x` where `fun(x) = 0`. 

* `subs(s,old,new)` returns a copy of `s`, replacing all occurrences of old with new, and then evaluates `s`.

