% fGR = figure;
% gGR = figure;
 x = [0.01:0.05:2*pi];
f = sin(x)./x;
 g = exp(-x).*cos(x);
% figure(fGR)
% plot(x, f)
% title('f(x) = sin(x)/x')
% grid on
% figure(gGR)
% plot(x, g, 'r')
% title('g(x) = exp(-x)*cos(x)')
% grid on
% 
% fgOneWindowOneAxesGr = figure;
% plot(x, f, 'b.', x, g, 'r--')
% title('ќдна ось')
% grid on
% legend('f(x)','g(x)')

fgOneWindowTwoAxesGr = figure;
subplot(1, 2, 1)
plot(x, f, 'b.')
title('f(x) = sin(x)/x')
grid on
subplot(1, 2, 2)
plot(x, g, 'r--')
title('g(x) = exp(-x)*cos(x)')
grid on

