function [y, yp] = horner2(c, x)

y = c(1)*ones(size(x));
yp = zeros(size(x));

for i= 2: length(c)
    yp = yp.*x + y;
    y = y.*x + c(i);
    
end
end
