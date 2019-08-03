function ab=poly_mult(a,b,mod_pol)
% performs the multiplication of two polynomials (a and b)
% in GF(2^8) using a third polynomial (mod_pol) for the 
% modular reduction
a_bin=bitget(a,8:-1:1);
ab=0;
for i=1:8
    b_shift=bitshift(b,i-1); 
    ab=bitxor(ab,a_bin(9-i)*b_shift);
end

while ab>=256
      ab_bin=bitget(ab,16:-1:1);
      for j=1:16
          if ab_bin(j)==1
              break;
          end
      end
      mod_pol_shift=bitshift(mod_pol,8-j);
      ab=bitxor(ab,mod_pol_shift);
end
