function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated
if length(x) ~= length(y)
    error('The vectors need to be the same length')
end

for i = 2:length(x)-1
    if x(i-1)-x(i) ~= x(i)-x(i+1)
        error('x needs to be equally spaced')
    end
end

x0 = y(1);
simpO = 0;
simpE = 0;

if length(x) ==2
    warning('The trap rule will be used to calculate the last interval')
elseif length(x) == rem(length(x),2)
    warning('The trap rule will be used to calculate the last interval')
end

if length(x) == 2
    I = (x(2)-x(1))*(y(2)+y(1))/2
elseif length(x) == rem(length(x),2)
    x2 = y(length(x)-1);
    h = x(length(x)-1)-x(1);
    for k = 2:2:length(x)-3
        simpO = simpO + y(k);
    end
    
    for j = 3:2:length(x)-4
        simpE = simpE + y(j);
    end
    I = h/(3*(length(x)-1))*(x0+4*simpO+2*simpE+x2)+(x(length(x))-x(length(x)-1))*(y(length(x))+x2)/2;
else
    for k = 2:2:length(x)-1
        simpO = simpO + y(k);
    end
    
    for j = 3:2:length(x)-1
        simpE = simpE + y(j);
    end
    x2 = y(length(x));
    h = x(length(x))-x(1);
    I = h/(3*(length(x)-1))*(x0+4*simpO+2*simpE+x2);
end
end