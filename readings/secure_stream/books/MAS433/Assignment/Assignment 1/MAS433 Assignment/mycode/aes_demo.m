% aes_demo demonstrate the use of the AES_128 package.
% The call to aes_init supplies the actual en- and decryption function 
% (cipher and inv_cipher) with expanded key schedule w, the substitution
% tables s_box and inv_s_box, and the polynomial matrices poly_mat and 
% inv_poly_mat.

% These quantities have to be generated only once and can used by any 
% subsequent en- or decipher.

[s_box,inv_s_box,w,poly_mat,inv_poly_mat]=aes_init;
plaintext_hex={'00','11','22','33','44','55','66','77',...
    '88','99','aa','bb','cc','dd','ee','ff'};
plaintext=hex2dec(plaintext_hex);
ciphertext=cipher(plaintext,w,s_box,poly_mat);
re_plaintext=inv_cipher(ciphertext,w,inv_s_box,inv_poly_mat);

disp_hex('ciphertext     ',ciphertext)
disp_hex('re_plaintext   ',re_plaintext)