% Example 11.7.1: Ax = 0: Square system and A is nonsingular
A= [8,1,6;3,5,7;4,9,2];
reducedMatrixA=rref(A)
nullspaceA=null(A)

% Example 11.7.2: Ax=0: Square system and A is singular
A=[1,2,3;4,5,6;7,8,9]; 
reducedMatrixA=rref(A)

% Example 11.7.3: Ax = 0: Underdetermined system.
A=[2,4,0,8;1,2,1,10];
reducedMatrixA=rref(A)
A=[2,4,0,8;1,2,1,10];
NullspaceMatrix = null(A,'r')

% Example 11.7.4: Ax = 0: Overdetermined system.
A=[4,6,4,4;1,3,4,3;2,3,2,2];
reducedMatrixA=rref(A)
A=[4,6,4,4;1,3,4,3;2,3,2,2];
NullspaceMatrix = null(A,'r')