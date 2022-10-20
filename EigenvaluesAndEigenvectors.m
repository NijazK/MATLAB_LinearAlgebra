% Example 11.11.1: Characteristic polynomial, calculation of eigenvalues and eigenvectors
A =[4,1;4,4]
characteristicEq=poly(A)
eigenvalues=roots(characteristicEq)
v1=null([-2,1;4,-2],'r'),  eigenVector1=v1/norm(v1)
v2=null([2,1;4,2],'r'), eigenVector2=v2/norm(v2)
[eigenvectorsCheck, eigenvaluesCheck]=eig(A)

% Example 11.11.2: Markov process
A =[0,0.25, 0.25;
        0.5, 0.5, 0.25;
        0.5, 0.25, 0.5]
[eigenvectors, eigenvalues]=eig(A);
S=eigenvectors
Lambda=eigenvalues

Lambda^4

Tn=eigenvectors*[0,0,0;0,1,0;0,0,0]*inv(eigenvectors)
x1_sunny=[1;0;0]; 
xn_sunny=Tn*x1_sunny

x1_rain=[0;1;0]; xn_rain=Tn*x1_rain
x1_overcast =[0;0;1];  
xn_overcast=Tn*x1_overcast