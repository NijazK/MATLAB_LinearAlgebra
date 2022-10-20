% Transform to reduced row matrix
A=[4,2,3,4;1,1,2,3;4,2,2,3];
Aug=[A, eye(3)]
redU=rref(Aug)
E=redU(:,n+1:n+m)  % extract the elementary matrix
Test=E*A  % confirm the elementary matrix transforms A to R