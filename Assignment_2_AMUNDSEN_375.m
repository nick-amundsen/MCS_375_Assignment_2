%%%%%%%%% M/CS 375 Assignment 2 
%%% Nick Amundsen
%%% W01323151


%%%%% Problem 1:
%%% Compute LU facotrs of the n by n matricies A_n with entry pattern
%%% [1  0  0  1
%%% -1  1  0  1
%%% -1 -1  1  1
%%% -1 -1 -1 -1]
%%%
%%% and use your results to find an expression for the largest entry in
%%% U as a function of n.

%% n = 4
A4 = [1 0 0 1; -1 1 0 1; -1 -1 1 1; -1 -1 -1 1];
LUA4 = partialpivotLU(A4);

%% Largest value of n = 8 = 2^3

%% n = 8
A8 = [1 0 0 0 0 0 0 1; -1 1 0 0 0 0 0 1; -1 -1 1 0 0 0 0 1; -1 -1 -1 1 0 0 0 1; -1 -1 -1 -1 1 0 0 1; -1 -1 -1 -1 -1 1 0 1; 
    -1 -1 -1 -1 -1 -1 1 1; -1 -1 -1 -1 -1 -1 -1 1];
LUA8 = partialpivotLU(A8);
%% Largest value of n = 128 = 2^7

%%% Largest entry in U is 2^(n-1)



%%%%% Problem 2:
%%% Find the U matrix in the LU factorization of the n by n matricies B_n
%%% with entry pattern
%%% [1 0 0 0
%%%  1 2 0 0
%%%  1 2 3 0
%%%  1 2 3 4]

%% n = 4
B4 = [1 0 0 0; 1 2 0 0; 1 2 3 0; 1 2 3 4];
LUB4 = partialpivotLU(B4);


%% n = 8
B8 = [1 0 0 0 0 0 0 0; 1 2 0 0 0 0 0 0;  1 2 3 0 0 0 0 0; 1 2 3 4 0 0 0 0; 1 2 3 4 5 0 0 0; 1 2 3 4 5 6 0 0; 
    1 2 3 4 5 6 7 0; 1 2 3 4 5 6 7 8];
LUB8 = partialpivotLU(B8);

%%%%% Problem 3:
%%% Find the U matrix in the LU factorization of the n by n matricies B_n
%%% with entry pattern

D4 = createDmatrix(4);
[LUD4, indsD4] = partialpivotLU(D4);

%% the b matrix is the same as the indicies for D_n
xD4 = solveAxb(LUD4, indsD4);



%%%%% Problem 4:
%%% Verify computationally that A^-1 = A^t = A
%%% solve Ax = v using your LU factorization and verify the result by
%%% computing x = A^-1 * v
A = problem4_A(4);
[ALU, v] = partialpivotLU(A);
AInverse = findInverse(ALU);
Atranspose = A';

x1 = solveAxb(ALU, v);
x2 = AInverse * v;
