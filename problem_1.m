function [yval,yder] = problem_1(x)
%[yval,yder] = problem_1(inputArg1,inputArg2)
%   Input: x - point to be evaluated at
%   Output: yval - value at x
%           yder - derivative at x

c = [1 0 -2 -5];

[yval, yder] = horner2(c,x); %% Uses horner's method to find values and derivative

end

