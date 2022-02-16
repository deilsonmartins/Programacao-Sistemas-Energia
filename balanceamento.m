function id = balanceamento( vetor )
  diffs = [];
  ids = [];
  for index=1:length( vetor )
    soma_1 = sum(vetor(1:index));
    soma_2 = sum(vetor(index + 1:length(vetor)));
    diff = abs(soma_1 - soma_2);
    diffs = [diffs, diff];
    ids = [ids, index + 1];
  end
  
  [diffs_ordenados ids_originais] = ordena( diffs );
  id = ids(ids_originais(1));
end