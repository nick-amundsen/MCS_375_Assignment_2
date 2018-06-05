function [yval,yder] = problem_test(x)
%[yval,yder] = problem_test(inputArg1,inputArg2)
%   Input: x - point to be evaluated at
%   Output: yval - value at x
%           yder - derivative at x

yval = (x-.0001)*(x+.0001);
yder = 2*x;

end