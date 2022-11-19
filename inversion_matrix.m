function [inversion_A,error] = inversion_matrix(A)
[m,n]=size(A);
if m~=n %Determining whether a matrix is a square matrix
    disp('This input matrix is not a square matrix and cannot be inverted')
end
inversion_A=rand(m,n);%Initialising the matrix inversion_A
for i=1:1:n
I=zeros(m,1);
I(i,1)=1;
[L,U] = LU(A);
y =solution_to_l(L,I);
x =solution_to_u(U,y);
inversion_A(:,i)=x;
end

error=eye(m,n)-inversion_A*A;



