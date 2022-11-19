clc;clear;%Clear Screen
A=input('Please enter the matrix requiring the inverse');
[inversion_A,error] = inversion_matrix(A);
disp('The inverse of the matrix A is');disp(inversion_A);
disp('The error matrix is');disp(error);

