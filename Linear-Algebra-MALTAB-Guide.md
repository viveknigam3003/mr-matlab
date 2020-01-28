# Linear Algebra MALTAB Guide

* `D = diag(v)` returns a square diagonal matrix with the elements of vector v on the main diagonal.
Example:
```MATLAB
v = [2 1 -1 -2 -5];
D = diag(v)
```
This returns a diagonal matrix with elements in `v`
```MATLAB
D = 5×5

     2     0     0     0     0
     0     1     0     0     0
     0     0    -1     0     0
     0     0     0    -2     0
     0     0     0     0    -5
```
If we already have a matrix, then `diag()` returns the diagonal elements of the matrix
```MATLAB
A = [1:4;5:8;9:12];
x = diag(A);
```
Executing above code will lead to the output
```
     1     2     3     4
     5     6     7     8
     9    10    11    12

     1
     6
    11
```

* `y = linspace(x1,x2)` returns a row vector of 100 evenly spaced points between x1 and x2.

  `y = linspace(x1,x2,n)` generates n points. The spacing between the points is (x2-x1)/(n-1).

* `y = logspace(a,b)` generates a row vector y of 50 logarithmically spaced points between decades 10^a and 10^b. The logspace function is especially useful for creating frequency vectors. The function is the logarithmic equivalent of linspace and the ‘:’ operator.

  `y = logspace(a,b,n)` generates n points between decades 10^a and 10^b.
