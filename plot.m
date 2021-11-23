clear
px = [1,3,6,9];
py = [1,4,4.5,0];

syms t
n = 3;

x(t) = 0 * t;
y(t) = 0 * t;

for i =0:n
   b(t) = nchoosek(n, i) * t^i * (1-t)^(n-i);
   x(t) = x(t) + px(i+1) * b(t);
   y(t) = y(t) + py(i+1) * b(t);
end

plot(px,py, '*--');
hold on;
axis equal;
fplot(x,y,[0 1]);
