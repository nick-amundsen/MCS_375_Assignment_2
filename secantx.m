function [sol,flag] = secantx(x0, x1, relerr, maxit, func)
%[sol,flag] = secantx(sx, relerr, maxit, func)
% Solves f(x) = 0 using the secant method
% Input: scalar sx - starting point of the iteration
%        small positive scalar relerr - desired relative error
%        positive integer maxit - maximum number of iteraions permitted
%        func: name of the program that defines f(x);
%        Note: when running newtonx on the problem defined by func, you
%        must enter @func in the input line.
%        The calling sequence for the program func must have the format
%               [yval] = func(x)
%        where x is the point used to compute yval = f(x).
% Output: scalar sol - solution found
%         scalar flag - flag = 0 inditcates solution succesfully found
%                       flag = 1 indicates derivative too small; halt
%                       flag = 2 indicates too many iterations; halt

k = 0;
[yval0] = func(x0);
[yval1] = func(x1);
while (k < maxit)
    k = k+1;
    if(abs(yval1/((yval1-yval0)/(x1-x0))) >= 10000000000) %% Stops if change is too large (was causing problems)
        sol = x1; flag = 0; return % Success
    end
    
    hold = x1;
    x1 = x1 - yval1/((yval1-yval0)/(x1-x0));
    x0 = hold;
    
    if(abs(yval1/((yval1-yval0)/(x1-x0))) < relerr) %% Stops if the change is within the error
        sol = x1; flag = 0; return % Success
    end
    
    
    [yval0] = yval1; 
    [yval1] = func(x1);
    
    sol = []; flag = 2;


end

