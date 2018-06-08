function [x] = solveAxb(M,b)
%[x] = solveAxb(U,b)
% Solves Ax = b using the LU factorization of a matrix A
% Input: LU matrix M, and vector b
% Output: column vector x, the solution of Ax = b

x = b;
[r,c] = size(M);

for i = 2 : r
    x(i) = x(i) - M(i, 1:(i-1))*x(1:(i-1)); % forward-substitution
end

x(r) = x(r)/M(r,r);
for i = (r-1): -1: 1
    x(i) = (x(i) - M(i,i+1:c)*x(i+1:c)) / M(i,i);
end


end

