function [x1, x2] = root2(a, b, c) 
if nargin ~= 3 
 error('������� 3 ������� ���������!') 
end 
if nargout ~= 2 
 error('������� 2 �������� ���������!') 
end 
[na, ma] = size(a); 
[nb, mb] = size(b); 
[nc, mc] = size(c); 
if na ~= 1 || ma ~= 1 || nb ~= 1 || mb ~= 1 || nc ~= 1 || mc ~= 1 
 error('��������� ������ ���� �������, � �� ���������!') 
end 
if real(a) ~= a || real(b) ~= b || real(c) ~= c 
 error('��������� ������ ���� ���������������!'); 
end 
d = b^2 - 4*a*c; 
if d < 0 
 error('��������� �� ����� ������� � ������� �������������� �����!'); 
end 
x1 = (-b - sqrt(d)) / (2*a); 
x2 = (-b + sqrt(d)) / (2*a);
end