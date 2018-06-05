function [sol,flag] = newtonx(sx,relerr, maxit, func)
%[sol,flag] = newtonx(sx,relerr, maxit, func)
% Solves f(x) = 0 using newton's method
% Input: scalar sx - starting point of the iteration
%        small positive scalar relerr - desired relative error
%        positive integer maxit - maximum number of iteraions permitted
%        func: name of the program that defines f(x);
%        Note: when running newtonx on the problem defined by func, you
%        must enter @func in the input line.
%        The calling sequence for the program func must have the format
%               [yval, yder] = func(x)
%        where x is the point used to compute yval = f(x).
% Output: scalar sol - solution found
%         scalar flag - flag = 0 inditcates solution succesfully found
%                       flag = 1 indicates derivative too small; halt
%                       flag = 2 indicates too many iterations; halt

k = 0;
while (k < maxit)
    k = k+1;
    [yval, yder] = func(sx);
    if (abs(yder) < abs(yval) * sqrt(eps)) %% Stops if derivative too small
        sol = []; flag = 1; return 
    end
    
    sx = sx - yval/yder;
    if(abs(yval/yder) < relerr) %% Stops if the change is within the error
        sol = sx; flag = 0; return % Success
    end
    if (abs(func(sx)) < relerr) %% Stops if the value of f(x) is within the error
    sol = sx; flag = 0; return % Success
    end
    sol = []; flag = 2;


end

