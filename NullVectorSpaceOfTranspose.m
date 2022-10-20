% Example 11.8.1: Linear basis of the left nullspace of A.
format rat;
A = [1,2,3;4,5,6;7,8,9]; 
[m,n] = size(A);
Aug = A;  Aug(:,n+1:n+m) = eye(m);
redU = rref(Aug);
R = redU(:,1:n)   % extract R
E = redU(:,n+1:n+m)  % extract the elementary matrix
% answer
A = [1,2,3;4,5,6;7,8,9]; leftNullSpace = null(A','r')

