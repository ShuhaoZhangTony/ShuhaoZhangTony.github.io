function b_out=aff_trans(b_in)
% The affine transformation in the creation of S-box.
b_out=poly_mult(b_in,31,257);
b_out=bitxor(b_out,99);
end