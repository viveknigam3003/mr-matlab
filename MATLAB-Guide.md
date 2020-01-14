## Commands
1. __clc__ - clears the command window

2. __clear all__ - clears variables, but it also clears a lot of other things from memory, such as breakpoints, persistent variables and cached memory - as your new to Matlab this is probably a bit unclear.

In short: You rarely need to use clear all - most of the time a simple clear will be enough.

3. __ginput__ - enables you to select points from the figure using the mouse for cursor positioning. The figure must have focus before ginput receives input.

[x,y] = ginput(n) enables you to select n points from the current axes and returns the x- and y-coordinates in the column vectors x and y, respectively. Press the Return key to terminate the input before entering n points.

[x,y] = ginput gathers an unlimited number of points until you press the Return key.

4. __x = input(prompt)__ displays the text in prompt and waits for the user to input a value and press the Return key.

```MATLAB
prompt = 'What is the original value? ';
x = input(prompt)
y = x*10
```
5. __disp(X)__ - displays the value of variable X without printing the variable name. Another way to display a variable is to type its name, which displays a leading “X =” before the value.

```MATLAB
A = [15 150];
S = 'Hello World.';
```
To display Matrix with column names

```MATLAB
X = rand(5,3);
disp('     Corn      Oats      Hay')
```
