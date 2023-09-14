function f = Rfun (x); 
if abs (x) < 1 
 warning ('результат комплексный')
end
f = sqrt (x^2 - 1);