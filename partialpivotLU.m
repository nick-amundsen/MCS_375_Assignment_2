function [M, inds] = partialpivotLU(A)
%[U] =  partialpivotLU(A)
% Computes LU facotrs of a matrix A
% using partial pivoting and assuming
% that A is invertible.
% Input: square matrix A
% Output: square matrix U containing the LU factors of A.

M = A;
[r,c] = size(M);
inds = (1:r);
inds = [inds' inds'];

for k = 1:(c-1)
    ind = [k+1 : r];
    for j = k+1:(r) 
        if abs(M(k,k)) < abs(M(j,k))         % partial pivoting        
            M = swapRow(M, k, j);            % keeping track of index
            inds = swapRow(inds, k, j);            
        end
    end
    M(ind,k) = M(ind,k)/M(k,k);                % compute multipliers
    for i = ind
        M(i,ind) = M(i,ind) - M(i,k)*M(k,ind); % row reduction
    end
end
inds = inds(:,1);
end