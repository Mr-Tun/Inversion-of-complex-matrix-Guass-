function x = solution_to_u(U,y)
%Solving for the upper triangular matrix(Gauss elimination method)
n=size(y,1);
x=rand(n,1);
for j = n:-1:2
    x(j) = y(j)/U(j,j);
    y(1:j-1) = y(1:j-1) - x(j) * U(1:j-1,j);
end
x(1) = y(1)/U(1,1);


