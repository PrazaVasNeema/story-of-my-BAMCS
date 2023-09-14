function [x1, x2] = root2(a, b, c) 
if nargin ~= 3 
 error('Введите 3 входных аргумента!') 
end 
if nargout ~= 2 
 error('Введите 2 выходных аргумента!') 
end 
[na, ma] = size(a); 
[nb, mb] = size(b); 
[nc, mc] = size(c); 
if na ~= 1 || ma ~= 1 || nb ~= 1 || mb ~= 1 || nc ~= 1 || mc ~= 1 
 error('Аргументы должны быть числами, а не массивами!') 
end 
if real(a) ~= a || real(b) ~= b || real(c) ~= c 
 error('Аргументы должны быть действительными!'); 
end 
d = b^2 - 4*a*c; 
if d < 0 
 error('Уравнение не имеет решения в области действительных чисел!'); 
end 
x1 = (-b - sqrt(d)) / (2*a); 
x2 = (-b + sqrt(d)) / (2*a);
end