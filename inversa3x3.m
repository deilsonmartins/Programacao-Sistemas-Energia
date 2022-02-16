function inversa = inversa3x3( M )
  
  [ls cols] = size( M );
  
  if ( ls != cols )
    error("Matriz não quadrada")
  
  endif

  if ( ls != 3 )
    error("Matriz de ordem diferente de 3 nao suportada")
   
  endif
  
  a = M(1,1);
  b = M(1,2);
  c = M(1,3);
  d = M(2,1);
  e = M(2,2);
  f = M(2,3);
  g = M(3,1);
  h = M(3,2);
  i = M(3,3);
  
  detM = a*e*i + b*f*g + c*d*h - g*e*c - h*f*a - i*d*b;
  
  if ( detM == 0 )
    error("Matriz de determinante zero nao possui inversa")
  endif
  
  inversa = (1/detM) * [
              e*i-h*f h*c-b*i b*f-e*c; 
              g*f-d*i a*i-g*c d*c-a*f
              d*h-g*e g*b-a*h a*e-d*b 
              ];
end