% Square Matrix for Ax = b
A = [ 1, 5, 2 ; 2, 5, 2 ; -6, -2, -1 ]
b= [ 2 ; 4 ; 6 ]
determinantOfA=det(A)
if (abs(determinantOfA > eps))
    xVec=A\b  % note the use of the backslash operator
else
    disp('Matrix is singular');
end

% Polynomial Fit
xdata = [-1;0;3;4];
A = [xdata.^0, xdata.^1, xdata.^2, xdata.^3]
b = [-4;4;4;16]
determinantOfA = det(A)
coef = A\b