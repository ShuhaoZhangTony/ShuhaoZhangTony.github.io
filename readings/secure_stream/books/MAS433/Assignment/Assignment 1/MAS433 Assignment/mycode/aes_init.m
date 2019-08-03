function [s_box,inv_s_box,w,poly_mat,inv_poly_mat,rcon]=aes_init

% aes_init generates the two sybstitution tables s_box and inv_s_box by a
% call to s_box_gen

% defines the round constant vector rcon
% defines a examplary key and computes the expanded key schedule w 
% the two polynomial matrices used in mix_columns are also generated:
% poly_mat and inv_poly_mat

[s_box,inv_s_box]=s_box_gen;
rcon=rcon_gen;
key_hex={'00','01','02','03','04','05','06','07',...
         '08','09','0a','0b','0c','0d','0e','0f',};
key=hex2dec(key_hex);
w=key_expansion(key,s_box,rcon);
[poly_mat,inv_poly_mat]=poly_mat_gen;