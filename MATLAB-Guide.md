# MATLAB Guide

## Commands
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

