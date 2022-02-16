delta = 1e-1;
x1 = -5 : delta : -1;
x2 = 0: delta : 8;
x3 = 9: delta : 30;

y1 = 10 * ones(size(x1));
y2 = 10 * x2 + 10;
y3 = 15 * sqrt(4*x3) + 10;

x = [x1 x2 x3];
y = [y1 y2 y3];

plot(x, y, 'color', [0.9 0.3 0.4], 'linewidth', 1);
xl = xlabel('X');
set(xl, 'fontsize', 10);
set(gca, 'fontsize', 6);

ylabel('Y', 'fontsize', 10);

