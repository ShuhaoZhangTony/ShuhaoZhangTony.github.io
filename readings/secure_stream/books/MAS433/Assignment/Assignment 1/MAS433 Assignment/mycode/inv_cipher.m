function plaintext=inv_cipher(ciphertext,w,inv_s_box,inv_poly_mat)

% Decrypt the plaintext

state=reshape(ciphertext,4,4);
round_key=w(41:44,:)';
state=add_round_key(state,round_key);
for i=9:-1:1
    state=inv_shift_rows(state);
    state=sub_bytes(state,inv_s_box);
    round_key=w(4*i+1:4*i+4,:)';
    state=add_round_key(state,round_key);
    state=mix_columns(state,inv_poly_mat);
end
state=inv_shift_rows(state);
state=sub_bytes(state,inv_s_box);
round_key=w(1:4,:)';
state=add_round_key(state,round_key);

plaintext=reshape(state,1,16);