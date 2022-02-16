function [ idA, idB ] = idsoma( v, s )
  [lista_ordenada, ids] = ordena( v );
  idA = nan;
  idB = nan;
  for k=1:length(lista_ordenada) - 1
    soma = lista_ordenada(k) + lista_ordenada(k + 1);
    if (soma == s)
        idA = ids(k);
        idB = ids(k + 1);
        break;
    end
  end
end