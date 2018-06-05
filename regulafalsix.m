function [sol,flag] = regulafalsix(a, b, relerr, maxit, func)
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

[yvala] = func(a);
[yvalb] = func(b);
k = 0;
while (k < maxit)
    k = k+1;
    holda = a;
    holdb = b;
    x = a - (yvala/((yvalb-yvala)/(b-a)));
    %x = real(x);
    if (sign(func(x)) == sign(yvala))
        a = x;
    else
        b = x;
    end
    
    if(abs((yvala/((yvalb-yvala)/(holdb-holda)))) < relerr) %% Stops if the change is within the error
        sol = x; flag = 0; return % Success
    end
    
    if(abs(func(x)) < relerr) %% Stops if the value of f(x) is within the error
        sol = x; flag = 0; return % Success
    end
      
    [yvala] = func(a);
    [yvalb] = func(b);
    sol = []; flag = 2;


end