function [Aprime] = findInverse(M)
%[Aprime] = findInverse(M)
% Finds the inverse of a matrix A using the LU
% factorization of A.
% Input: LU matrix M
% Output: Inverse of LU = A

[r,~] = size(M);
Aprime = M;
I = eye(r);

for k = 1: r
    Aprime(:,k) = solveAxb(M, I(:, k));
end

end

