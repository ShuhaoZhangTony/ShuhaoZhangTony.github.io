function [s_box,inv_s_box]=s_box_gen
% This function creates substitution table s_box and inv_s_box
% used by the expanded key schedule and en- and decryption functions cipher
% and inv_cipher to directly sybstitute a byte by another byte of the same
% finite field (GF(2^8))
s_box=zeros(1,256);
mod_pol=283;

for i=1:256
    b_inv=find_inverse(i-1,mod_pol);
    s_box(i)=aff_trans(b_inv);
end

s_box_mat=reshape(s_box,16,16)';
disp_hex('      S-box          ',s_box_mat)

inv_s_box=s_box_inversion(s_box);
inv_s_box_mat=reshape(inv_s_box,16,16)';
disp_hex('      Inverse S-box  ',inv_s_box_mat)

    
    