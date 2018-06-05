function [yval,yder] = problem_4(x)
%[yval,yder] = problem_1(inputArg1,inputArg2)
%   Input: x - point to be evaluated at
%   Output: yval - value at x
%           yder - derivative at x

yval = cos(x)*cosh(x)-1;
yder = sinh(x)*cos(x)-cosh(x)*sin(x);

end