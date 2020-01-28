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
## Generating Vector Spaces

* `y = linspace(x1,x2)` returns a row vector of 100 evenly spaced points between x1 and x2.

  `y = linspace(x1,x2,n)` generates n points. The spacing between the points is (x2-x1)/(n-1).

* `y = logspace(a,b)` generates a row vector y of 50 logarithmically spaced points between decades 10^a and 10^b. The logspace function is especially useful for creating frequency vectors. The function is the logarithmic equivalent of linspace and the ‘:’ operator.

  `y = logspace(a,b,n)` generates n points between decades 10^a and 10^b.

* `x = j:k` creates a unit-spaced vector x with elements [j,j+1,j+2,...,j+m] where m = fix(k-j). If j and k are both integers, then this is simply [j,j+1,...,k].

  `x = j:i:k` creates a regularly-spaced vector x using i as the increment between elements.
  
## Slice, Shape, and Selection

Common indexing expressions that contain a colon are:

* `A(:,n)` is the nth column of matrix A.

* `A(m,:)` is the mth row of matrix A.

* `A(:,:,p)` is the pth page of three-dimensional array A.

* `A(:)` reshapes all elements of A into a single column vector. This has no effect if A is already a column vector.

* `A(:,:)` reshapes all elements of A into a two-dimensional matrix. This has no effect if A is already a matrix or vector.

* `A(j:k)` uses the vector j:k to index into A and is therefore equivalent to the vector [A(j), A(j+1), ..., A(k)].

* `A(:,j:k)` includes all subscripts in the first dimension but uses the vector j:k to index in the second dimension. This returns a matrix with columns [A(:,j), A(:,j+1), ..., A(:,k)].
