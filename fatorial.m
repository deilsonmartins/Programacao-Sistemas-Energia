function y = fatorial( x )
  if ( length(x) != 1 )
    error("Apenas um elemento suportado.");
  end
  test = ceil(x);
  if ( test != x )
    error("Apenas numeros inteiros suportados.");
  end
  
  y = 1;
  for k=1:x
    y = y * k;
  end
end
