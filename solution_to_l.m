function y = solution_to_l(L,b)
%Solving for the lower triangular matrix(Gauss elimination method)
n=size(b,1);
y=rand(n,1);
for j = 1:n-1
    y(j) = b(j)/L(j,j);
    b(j+1:n) = b(j+1:n) - y(j) * L(j+1:n,j);
end
y(n) = b(n)/L(n,n);
