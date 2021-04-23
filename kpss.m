function kpss(y)
T = length(y);
e = y-mean(y)
S = cumsum(e)
l = 4;
ZZ = 0;
for j = 1 : l;
   Z = 0;
   for t = j+1 : T;
      Z = Z + e(t)*e(t-j);
   end;
   ZZ = ZZ + (1-(j/(l+1)))*Z;
end;
s2l = 1/T*sum(e.^2)+2/T*ZZ
KPSS = T^(-2)/s2l*sum(S.^2)