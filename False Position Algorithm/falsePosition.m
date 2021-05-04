function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method
if nargin<2
    error('Need more inputs')
end
test = func(xl,varargin{:}) * func(xu,varargin{:});
if test>0
    error('Need a sign change')
end
if nargin<4
    es = 0.0001;
end
if nargin<5
    maxit = 200;
end
iter = 0; 
xr = xl; 
ea = 100;

while (1)
  xrold = xr;
  xr = xu - (func(xu, varargin{:})*(xl-xu))/(func(xl, varargin{:})- func(xu, varargin{:}));
  iter = iter + 1;
  
  if xr ~= 0
      ea = abs((xr - xrold)/xr) * 100;
  end
  
  test = func(xl,varargin{:}) * func(xr,varargin{:});
  
  if test < 0
    xu = xr;
  elseif test > 0
    xl = xr;
  else
    ea = 0;
  end
  
  if ea <= es || iter >= maxit
      break
  end
end
root = xr; 
fx = func(xr, varargin{:});
end
