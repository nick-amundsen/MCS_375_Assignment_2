function [A] = swapRow(A, row1, row2)
%[A] =  swapRow(A, row1, row2)
% Swaps the row 1 for row 2 in a matrix
  A([row2, row1], :) = A([row1, row2], :);

