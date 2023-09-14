function y = pwfun (x)
if x < -pi 
 y = sin (x) - 1; 
elseif x < pi
 y = x / pi; 
else 
 y = -cos (x); 
end