function value = sen( angulo )
  if ( angulo > pi || angulo < -pi )
    error("Valor deve está entre -pi a pi");  
  end  
  
  error = 1;
  n = 0;
  value = 0;
  
  while (error > 0.0001)
   k = 2*n+1;
   value = value + (-1)^n*angulo^k/fatorial(k); 
   error = abs(angulo^k/fatorial(k));
   n = n + 1;
 end
end