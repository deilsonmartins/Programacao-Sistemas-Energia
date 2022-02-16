function [Vrms, f1] = rms_f( filename )
  A = dlmread(filename, ',', 1, 0);
  v = A(:,3);
  time = A(:,1);
  clear A;

  N = length(v);
  somatorio = 0;
  for n=1:N
    somatorio = somatorio + v(n)^2;
  end
  
  Vrms = sqrt(somatorio/N);
  f1 = N / sum(time);
end