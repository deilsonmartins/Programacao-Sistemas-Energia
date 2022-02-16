function fourier()
  H = input('Digite o valor de H: ');
  while ( H < 0 )
    H = input('H nao pode ser negativo. Digite o valor novamente: ');
  end
  
  somatorio = 0;
  for h=1:H
    if mod(h, 2) == 0
      somatorio = somatorio + a_par( h );
    else
      somatorio = somatorio + a_impar( h );
    end
  end

  disp(["Resultado: " num2str(somatorio)]);  
end

function ret = a_impar( h )
  ret = 4/(pi*h);
end

function ret = a_par( h )
  ret = 0;
end



