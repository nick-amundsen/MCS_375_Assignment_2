function [M,x] = partialpivotLU(A,b)
%[U] =  partialpivotLU(A)
% Computes LU facotrs of a matrix A
% using partial pivoting and assuming
% that A is invertible.
% Input: square matrix A
% Output: square matrix U containing the LU factors of A.

M = A;
x = b;
[r,c] = size(M);

for k = 1:(c-1)
    ind = (k+1) : r;
    M(ind,k) = M(ind,k)/M(k,k);                % compute multipliers
    for i = ind
        M(i,ind) = M(i,ind) - M(i,k)*M(k,ind); % row reduction
    end
end

%x(1) = x(1)/M(1,1);
for i = 2 : r
    x(i) = x(i) - M(i, 1:(i-1))*x(1:(i-1)); % forward-substitution
end

x(r) = x(r)/M(r,r);
for i = (r-1): -1: 1
    x(i) = (x(i) - M(i,i+1:c)*x(i+1:c)) / M(i,i); % back-substitution
end

end

