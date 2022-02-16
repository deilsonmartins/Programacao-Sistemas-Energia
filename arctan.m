function value = arctan( x )
  if ( x > 1 || x < -1 )
    error("Valor deve está entre -1 a 1");  
  end  
  error = 1;
  n = 1;
  value = 0;
  while (error > 0.0001)
    soma = ( x^n/n ) * (-1)^((n+1)/2);
    value = value + soma;
    error = abs(x^n/n);
    n = n + 2;
  end
  value = (-1)*value;
end