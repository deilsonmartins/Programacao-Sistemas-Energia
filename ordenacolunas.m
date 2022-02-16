function matriz_ordenada = ordenacolunas( matriz )
  [l, c] = size( matriz );
  matriz_ordenada = zeros(l,c);
  index_cols = [];
  
  for index=1:c
    coluna = matriz(:,index);
    soma = sum( coluna );
    index_cols = vertcat(index_cols, [soma]);  
  end
  
  [ lista_ordenada, colunas_originais ] = ordena( index_cols );
  for k=1:length(colunas_originais)
    coluna_original = colunas_originais(k);
    matriz_ordenada(:,k) = matriz(:,coluna_original);
  end
end