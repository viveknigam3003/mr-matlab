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

*
