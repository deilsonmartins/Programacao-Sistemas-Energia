function bussola( angulo )
  if ( !isnumeric( angulo ) )
    error("ANGULO DEVE SER UM NUMERO");
  endif
  
  LESTE = 0;
  NORDESTE = 45;
  NORTE = 90;
  NOROESTE = 120;
  OESTE = 180;
  SUDOESTE = 225;
  SUL = 270;
  SUDESTE = 315;
  MAX_ANGULO = 360;
  
  NAMES_PONTOS_CARDEAIS = { 'LESTE';'NORDESTE';'NORTE';'NOROESTE';'OESTE';'SUDOESTE';'SUL';'SUDESTE'};
  PONTOS_CARDEAIS = [ LESTE, NORDESTE, NORTE, NOROESTE, OESTE, SUDOESTE, SUL, SUDESTE ];
  
  ANGULO = mod( angulo, MAX_ANGULO );
  for index=1:max( size( PONTOS_CARDEAIS ) )
    
    if ( index < 8 && ANGULO >= PONTOS_CARDEAIS( index ) && ANGULO <= PONTOS_CARDEAIS( index + 1 ) )
      direcao = determina_direcao( ANGULO, PONTOS_CARDEAIS, NAMES_PONTOS_CARDEAIS, index );
    endif
    
    if ( index == 8 && ANGULO >= SUDESTE && ANGULO <= MAX_ANGULO )
      direcao = NAMES_PONTOS_CARDEAIS(index);
    endif
    
  endfor
  
  mostrar_resultado_na_tela( direcao );
end

function mostrar_resultado_na_tela( direcao )
  if strcmp( direcao, "")
    disp(["Erro ao determinar a direcao"]);
  else
    disp(["O ANGULO indicado aponta para o ", direcao]);
  end
end

function direcao = determina_direcao( ANGULO, PONTOS_CARDEAIS, NAMES_PONTOS_CARDEAIS, index )
    direcao = "";
    diff_one = ANGULO - PONTOS_CARDEAIS( index );
    diff_two = PONTOS_CARDEAIS( index + 1 ) - ANGULO;
    
    if ( diff_one > diff_two )
      direcao = NAMES_PONTOS_CARDEAIS( index + 1 );
    endif
    
    if ( diff_one < diff_two )
      direcao = NAMES_PONTOS_CARDEAIS( index );
    endif
end
