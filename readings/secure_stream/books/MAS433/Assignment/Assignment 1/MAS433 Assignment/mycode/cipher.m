function ciphertext=cipher(plaintext,w,s_box,poly_mat)

% Encrypt the plaintext

state=reshape(plaintext,4,4);
round_key=w(1:4,:)';
state=add_round_key(state,round_key);
disp_hex('state',state)
for i=1:9
    state=sub_bytes(state,s_box);
    state=shift_rows(state);
    state=mix_columns(state,poly_mat);
    round_key=w(4*i+1:4*i+4,:)';
    state=add_round_key(state,round_key);
    disp_hex('state',state)
end
state=sub_bytes(state,s_box);
state=shift_rows(state);
round_key=w(41:44,:)';
state=add_round_key(state,round_key);
disp_hex('state',state)
ciphertext=reshape(state,1,16);