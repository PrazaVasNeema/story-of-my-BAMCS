figure 
x = [0 : pi / 30 : 2*pi]; 
for a = -0.1 : 0.02 : 0.1 
 y = exp (-a*x) .* sin(x); 
 hold on 
 plot(x, y) 
end

% ����-��������� ��� ���������� ����� 
% 1/1! + 1/2! + � + 1/10! 
% ��������� S ��� ���������� ����� 
S = 0; 
% ���������� ����� � ����� 
for k = 1 : 10 
 S = S + 1 / factorial (k); 
end 
% ����� ���������� � ��������� ���� 
S;