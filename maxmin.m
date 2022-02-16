function [ max, min ] = maxmin( v )
  max = nan;
  min = nan;
  
  linhas = size(v)(1);
  if ( linhas == 1)
    [ max, min ] = maxmin_vector( v );
  end
  
  if ( linhas > 1)
    max_a = []; 
    min_a = [];
    for l=1:linhas
      [ max, min ] = maxmin_vector( v(l, :) );
      max_a = vertcat(max_a,[max]);
      min_a = vertcat(min_a,[min]);
    end
    max_a = ordena( max_a );
    min_a = ordena( min_a );
    max = max_a(length(max_a));
    min = min_a(1);
  end
  
end

function [ max, min ] = maxmin_vector( v )
     lista_ordenada = ordena( v );
     max = lista_ordenada(length(lista_ordenada));
     min = lista_ordenada(1);
end