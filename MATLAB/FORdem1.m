figure 
x = [0 : pi / 30 : 2*pi]; 
for a = -0.5 : 0.01 : 0.5 
 y = exp (-a*x) .* sin(x); 
 hold on 
 plot(x, y) 
end
