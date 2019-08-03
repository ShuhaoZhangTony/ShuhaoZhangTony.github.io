function inv_s_box=s_box_inversion(s_box)
% The inverse S-box is used in the decrypting function inv_cipher to revert
% the substitution in S-box.

inv_s_box=zeros(1,256);
for i=1:256
    m=find(s_box==i-1);
    inv_s_box(i)=m-1;
end
