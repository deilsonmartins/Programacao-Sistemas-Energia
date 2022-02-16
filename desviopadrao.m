function std = desviopadrao( x )
  N = length( x );
  m = median( x );
  
  std = 0;
  for n=1:N
    std += (x(n) - m)^2;
  end
  
  std = sqrt((1/(N-1)) * std );
end