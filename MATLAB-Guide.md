## Commands
1. clc - clears the command window

clear all clears variables, but it also clears a lot of other things from memory, such as breakpoints, persistent variables and cached memory - as your new to Matlab this is probably a bit unclear.

In short: You rarely need to use clear all - most of the time a simple clear will be enough.


2. ginput enables you to select points from the figure using the mouse for cursor positioning. The figure must have focus before ginput receives input.

[x,y] = ginput(n) enables you to select n points from the current axes and returns the x- and y-coordinates in the column vectors x and y, respectively. Press the Return key to terminate the input before entering n points.

[x,y] = ginput gathers an unlimited number of points until you press the Return key.

3. 