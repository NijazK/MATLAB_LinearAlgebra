% Example 11.9.1: Overdetermined and inconsistent
A = [ 1,1;      
     1,2;     
     4,6]
b = [3;7;21];
augA= [A,b]
[rowRedA,pivotVariables] = rref(augA)
rankA = rank(A)
rankaugA = rank(augA)

% Example 11.9.2: Constraints on entries of right hand side coefficient vector
A = [ 1,1,1; 1,0,-2; 2,1,-1];
[L,U,P] = lu(A)

A = [1,1,1; 1,0,-2; 2,1,-1];
[L,U,P] = lu(A)

% Example 11.9.3: Finding a particular solution from the bound variables
A = [ 1,1,1;  1,0,  -2;  2,1,-1]
b = [6;4;10];
augA=[A,b]
[rowRedA,pivotVariables] = rref(augA)

A = [1,1,1; 1,0,  -2; 2,1,-1];
nullSpaceA = null(A,'r')