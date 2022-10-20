Example 11.10.1: Overdetermined system 1
A=[0.3,0.1;0.4,0.2;0.3,0.7];
b=[5;3;4];
nullSpaceA= null(A,'r')

 [m,n]=size(A);
 augA(1:m,1:n)=A;
 augA(:,n+1)=b;
 [rowRedA,jb] = rref(augA);
rankA=rank(A)
rankaugA=rank(augA)

ATA=A'*A;
ATb=A'*b;
[m,n]=size(ATA);
augATA(1:m,1:n)=ATA;
augATA(:,n+1)=ATb;
[rowRedATA,jb] = rref(augATA); 
rowRedATA
solutionCheck=A\b
howcloseisAnswer=A*solutionCheck

Example 11.10.2: Overdetermined system 2
A=[1,1;3,1;6,1;7,1];
b=[4;13;24;26];
 [m,n]=size(A);
 augA(1:m,1:n)=A;
 augA(:,n+1)=b;
 [rowRedA,jb] = rref(augA);
rankA=rank(A)
rankaugA=rank(augA)
leastSquareSolution=A\b

xp=[1,3,6,7];yp=[4,13,24,26]; 
linfit=polyfit(xp,yp,1)

% Example 11.10.3: Solutions for an under-determined linear system of equations
A=[1,3,2;2,1,-1];
b=[-1;3];
[m,n]=size(A);
augA(1:m,1:n)=A;
augA(:,n+1)=b;
[rowRedA,jb] = rref(augA)
rankofA=rank(A)
nullspace=null(A,'r')

syms s
y=sqrt((2+s)^2+(-1-s)^2+s^2)
differentiate=diff(y,s)
zeros = solve( differentiate == 0 )

xminlength1=A'*inv(A*A')*b   % explicit calculation of the right pseudoinverse
xminlength2=pinv(A)*b  % calculation of the right pseudoinverse 
           % with the Moore-Penrose pseudoinverse function

