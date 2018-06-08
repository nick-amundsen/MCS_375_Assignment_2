function [D] = createDmatrix(n)
%[D] = createDmatrix(n)
% Creates the D matrix specified in problem 3
% Input: n x n size of the matrix
% Output: The matrix d of size n x n
D = ones(n,n);
for k = 1:n
    x = k * ones(1,n);
    for i = 1:n
        x(i) = x(i)^i;
    end
    D(k,:) = x;
end

    
end

