function [yval,yder] = problem_3(x)
%[yval,yder] = problem_1(inputArg1,inputArg2)
%   Input: x - point to be evaluated at
%   Output: yval - value at x
%           yder - derivative at x

yval = sqrt(1-x) + sqrt(1-2*x^2) + sqrt(1-3*x^3)-2;
yder = ((-9*x^2)/(2*sqrt(1-3*x^3)))-((2*x)/(sqrt(1-2*x^2)))-(1/(2*sqrt(1-x)));

end