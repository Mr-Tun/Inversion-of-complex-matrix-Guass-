function [L,U] = LU(A)
%In numerical analysis and linear algebra, lower–upper (LU) decomposition or factorization factors a matrix as the product of a lower triangular matrix and an upper triangular matrix (see matrix decomposition). 
if det(A)==0 %Determining whether a matrix is LU-decomposable
    disp('The matrix A is irreducible and is a singular matrix')
end
n=size(A,1);
for k = 1:n-1
    A(k+1:n,k) = A(k+1:n,k) / A(k,k);
    A(k+1:n,k+1:n) = A(k+1:n,k+1:n) - A(k+1:n,k)* A(k,k+1:n);
end
L = tril(A,-1) + eye(n);
U = triu(A);
% The function of this subfunction is to output two matrices, L and U
