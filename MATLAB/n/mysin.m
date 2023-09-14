function s = mysin (x) 
% Вычисление синуса разложением в ряд 
% Использование: y = mysin (x), –pi<x<pi 
s = 0; 
k = 0; 
while abs (x .^ (2*k+1) / factorial (2*k+1)) > 1.0e-10 
 s = s + (-1) ^k*x.^(2*k+1) / factorial (2*k+1); 
 k = k + 1; 
end