function chuveiro( alpha )
  delta = 0.0001;
  R = 100;
  
  x1 = 0  : delta : alpha;
  x2 = alpha : delta : pi;
  x3 = pi : delta : ( pi + alpha );
  x4 = ( pi + alpha ) : delta : 2*pi;

  v1 = 0 * ones(size(x1));
  v2 = sqrt(2) * 220 * sin(x2);
  v3 = 0 * ones(size(x3));
  v4 = sqrt(2) * 220 * sin(x4);

  x = [x1 x2 x3 x4];
  v = [v1 v2 v3 v4];
  e = sqrt(2) * 220 * sin(x);
  p = (v.^2)/R;
  
  plot(x, v, 'color', 'blue', 'linewidth', 1);
  hold on
  plot(x, p, '--', 'color', 'red', 'linewidth', 1);
  hold on
  plot(x, e, '-', 'color', 'black', 'linewidth', 0.5);
  legend({'resitor voltage', 'resistor power', 'grid voltage'}, 'fontsize', 10);
  hold off
  
  xl = xlabel('t [s]', 'fontsize', 10);
  set(xl, 'fontsize', 10);
  set(gca, 'fontsize', 10);

  ylabel({'v [V]', 'p [W]'}, 'fontsize', 10);
  
end