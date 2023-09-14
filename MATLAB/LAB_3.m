%x = 0.01:0.1:2*pi;
%f = sin(x)./x;
%g = exp(-x).*cos(x);
%figure
%plot(x,f,'gs-.');
%grid on
%title('В отдельные графические окна для f функции')
%xlabel('Axis х')
%ylabel('Axis у')
%legend('function f')
%figure
%plot(x,g,'cd-');
%grid on
%title('В отдельные графические окна для g функции')
%xlabel('Axis х')
%ylabel('Axis у')
%legend('function g')
%x = 0.01:0.1:2*pi;
%f = sin(x)./x;
%g = exp(-x).*cos(x);
%plot(x,f,'b.-',x,g,'m*:');
%grid on
%title('В одно графическое окно на одни оси')
%xlabel('Axis х')
%ylabel('Axis у')
%legend('function g')
x = 0.01:0.1:2*pi;
f = sin(x)./x;
g = exp(-x).*cos(x);
subplot(1,2,1);
plot(x,f,'gs-.');
grid on
title(' одно графическое окно на разные оси для f функции')
xlabel('Axis х')
ylabel('Axis у')
legend('function f')
subplot(1,2,2);
plot(x,g,'cd-');
grid on
title(' одно графическое окно на разные оси для g функции')
xlabel('Axis х')
ylabel('Axis у')
legend('function g')
x = 0.01:0.1:pi;
f = sin(x)./x;
g = exp(-x).*cos(x);
x2=pi:0.01:2*pi;
y2=sin(x2)./x2;
plot(x,f,'r+:',x2,y2,'b.--')
grid on
title('Red(+) Blue(-)')
xlabel('Axis х')
ylabel('Axis у')
legend('function g')
[X,Y]=meshgrid(-1:0.05:1,-1:0.05:1);
Z=((sin(X))^2+(cos(Y))^2).^(X*Y);
mesh(X,Y,Z);
xlabel('Axis X')
ylabel('Axis Y')
zlabel('Axis Z')

[X,Y]=meshgrid(-1:0.05:1,-1:0.05:1);
Z=((sin(X))^2+(cos(Y))^2).^(X*Y);
surf(X,Y,Z);
colorbar
xlabel('Axis X')
ylabel('Axis Y')
zlabel('Axis Z')
[X,Y]=meshgrid(-1:0.05:1,-1:0.05:1);
levels = 0:0.01:1;
Z=((sin(X))^2+(cos(Y))^2).^(X*Y);
contour3(X,Z,Y,levels);
shading interp
colorbar
xlabel('Axis X')
ylabel('Axis Y')
zlabel('Axis Z')
[X,Y]=meshgrid(-1:0.05:1,-1:0.05:1);
Z=((sin(X))^2+(cos(Y))^2).^(X*Y);
surfl(X,Y,Z);
shading interp
xlabel('Axis X')
ylabel('Axis Y')
zlabel('Axis Z')
[X,Y]=meshgrid(-1:0.05:1,-1:0.05:1);
levels = 0:0.01:1;
Z=((sin(X))^2+(cos(Y))^2).^(X*Y);
subplot(2,2,1);
contour3(X,Z,Y,levels);
shading interp
colorbar
xlabel('Axis X')
ylabel('Axis Y')
zlabel('Axis Z')
title('Промаркированная линиями уровня')
subplot(2,2,2);
mesh(X,Y,Z);
xlabel('Axis X')
ylabel('Axis Y')
zlabel('Axis Z')
title('Каркасная поверхность')
subplot(2,2,3);
surf(X,Y,Z);
colorbar
xlabel('Axis X')
ylabel('Axis Y')
zlabel('Axis Z')
title('Залитая цветом каркасная поверхность')
subplot(2,2,4);
surfl(X,Y,Z);
shading interp
xlabel('Axis X')
ylabel('Axis Y')
zlabel('Axis Z')
title('Освещенная поверхность')
[X,Y]=meshgrid(-1:0.05:1,-1:0.05:1);
levels = 0:0.01:1;
Z=((sin(X))^2+(cos(Y))^2).^(X*Y);
figure
contour3(X,Z,Y,levels);
shading interp
colorbar
xlabel('Axis X')
ylabel('Axis Y')
zlabel('Axis Z')
title('Промаркированная линиями уровня')
figure
mesh(X,Y,Z);
xlabel('Axis X')
ylabel('Axis Y')
zlabel('Axis Z')
title('Каркасная поверхность')
figure
surf(X,Y,Z);
colorbar
xlabel('Axis X')
ylabel('Axis Y')
zlabel('Axis Z')
title('Залитая цветом каркасная поверхность')
figure
surfl(X,Y,Z);
shading interp
xlabel('Axis X')
ylabel('Axis Y')
zlabel('Axis Z')
title('Освещенная поверхность')
[X,Y]=meshgrid(-1:0.05:1,-1:0.05:1);
Z=((sin(X))^2+(cos(Y))^2).^(X*Y);
subplot(2,3,1);
surf(X,Y,Z);
colorbar
xlabel('Axis X')
ylabel('Axis Y')
zlabel('Axis Z')
view(-37.5 , 30)
subplot(2,3,2);
surf(X,Y,Z);
colorbar
xlabel('Axis X')
ylabel('Axis Y')
zlabel('Axis Z')
view(-50 , 60)
subplot(2,3,3);
surf(X,Y,Z);
colorbar
xlabel('Axis X')
ylabel('Axis Y')
zlabel('Axis Z')
view(37.5 , 180)
subplot(2,3,4);
surf(X,Y,Z);
colorbar
xlabel('Axis X')
ylabel('Axis Y')
zlabel('Axis Z')
view(72 , 150)
subplot(2,3,5);
surf(X,Y,Z);
colorbar
xlabel('Axis X')
ylabel('Axis Y')
zlabel('Axis Z')
view(35 , 45)
subplot(2,3,6);
surf(X,Y,Z);
colorbar
xlabel('Axis X')
ylabel('Axis Y')
zlabel('Axis Z')
view(25 , 80)