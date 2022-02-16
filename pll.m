function pll()
  A = dlmread('rede.csv', ',', 1, 0);
  time = A(:,1);
  voltage = A(:,2);
  clear A;
  
  k0 = 0.7;
  k1 = 2.840000000003951e-6;
  k2 = 0.385715277950311;
  k3 = -0.385713293478261;
  w0 = 376.9911184307752;
  
  e = zeros( size(time) );
  a = zeros( size(time) );
  b = zeros( size(time) );
  d = zeros( size(time) );
  q = zeros( size(time) );
  theta = zeros( size(time) );
  delta = zeros( size(time) );
  w = zeros( size(time) );
  
  for t=2:length(time)
    e(t) = k0 * ( voltage(t) - a(t-1)) - b(t-1);
    a(t) = w(t-1) * k1 * ( e(t) + e(t-1)) + a(t-1);
    b(t) = w(t-1) * k1 * ( a(t) + a(t-1)) + b(t-1);
    d(t) = a(t) * sin( theta(t-1) ) - b(t) * cos( theta(t-1) );
    q(t) = a(t) * cos( theta(t-1) ) + b(t) * sin( theta(t-1) );
    delta(t) = k2 * q(t) + k3 * q(t-1) + delta(t-1);
    w(t) = w0 + delta(t);
    theta(t) = mod(k1 * ( w(t) + w(t-1) ) + theta(t-1), 2*pi);
  end
  
  subplot (2, 1, 1)
  plot(time, voltage, 'color', 'red', 'linewidth', 1)
  hold on
  plot(time, a, 'color', 'blue', 'linewidth', 1)
  hold on
  plot(time, d, 'color', 'green', 'linewidth', 1)
  hold on
  #plot(time, 0, 'gd', 'LineWidth', 2, 'MarkerSize', 7, 'MarkerFaceColor', 'g');
  #hold on
  plot(time, q, 'color', 'black', 'linewidth', 1)
  hold off
  legend({'v', 'a', 'd', 'q'}, 'fontsize', 5);
  ylabel('voltage [V]', 'fontsize', 5);
  
  subplot (2, 1, 2)
  plot(time, theta, 'color', [0.3 0.3 0.9], 'linewidth', 1)
  hold on
  plot(time, theta, 'color', [0.7 0.1 0.9], 'linewidth', 1)
  hold off
  legend({'\theta_unlocked', '\theta_locked'}, 'fontsize', 10);
  ylabel('PLL phase [rad]', 'fontsize', 10);
  
  xl = xlabel('time [s]');
  set(xl, 'fontsize', 10);
  set(gca, 'fontsize', 10);
  
  saveas(gcf, 'pll.png');
  
  voltage_csv = voltage;
  time_csv = time;
  theta_csv = theta;
  
  matriz_csv = [time_csv theta_csv voltage_csv];
  dlmwrite("pll.csv", matriz_csv, ",");

   
end