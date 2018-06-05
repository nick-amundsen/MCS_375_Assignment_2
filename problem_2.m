function [yval,yder] = problem_2(x)
%[yval,yder] = problem_1(inputArg1,inputArg2)
%   Input: x - point to be evaluated at
%   Output: yval - value at x
%           yder - derivative at x

yval = x - 0.1*sin(x) - 24.851090;
yder = 1 - 0.1*cos(x);

end

