function [ lista_ordenada, ids ] = ordena( lista )
  lista_ordenada=quicksort( lista );
  ids = getids( lista, lista_ordenada );
end

function lista_ordenada=quicksort( lista ) 
  lista_ordenada = lista;
  if(length( lista ) > 1)                
     pivo  = ( min( lista ) + max( lista ) ) / 2.0;                          
     part_1 = find( lista < pivo ); 
     part_2 = find( lista == pivo ); 
     part_3 = find( lista > pivo );
     lista_ordenada = [ quicksort( lista_ordenada( part_1 ) ); lista_ordenada( part_2 ); quicksort( lista_ordenada( part_3 ) ) ];
  end
end

function ids=getids( lista, lista_ordenada ) 
  ids = [];
  for id=1:length( lista_ordenada )
    id = find(lista == lista_ordenada(id));
    ids = vertcat(ids,[id]);
  end
end
