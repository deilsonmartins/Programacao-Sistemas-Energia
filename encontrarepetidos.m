function rep = encontrarepetidos( v, z )
  rep = [];
  
  len_v = length(v);
  len_z = length(z);
  
  if (len_z > len_v )
    vetor_maior = z;
    vetor_menor = v;
  else
    vetor_maior = v;
    vetor_menor = z;
  end
  
  for k=1:length(vetor_maior)
    index = find(vetor_menor == vetor_maior(k));
    if (length(index) == 1 )
      rep = vertcat(rep, vetor_menor(index));
    end
  end
end