function b_inv=find_inverse(b,mod_pol)
%Find the inverse of b by brute force
%i.e., b*b_inv=1 mod mod_pol
%It loops through all possible byte values 
%and stop once find the remainder is 1

if b==0
    b_inv=0;
end
for b_i=1:255
    r=poly_mult(b,b_i,mod_pol);
    if r==1
       b_inv=b_i;
       break;
    end
end