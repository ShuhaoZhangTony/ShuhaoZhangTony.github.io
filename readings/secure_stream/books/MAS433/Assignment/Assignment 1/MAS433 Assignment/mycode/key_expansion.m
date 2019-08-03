function w=key_expansion(key,s_box,rcon)

% Generate a 176 byte long key schedule w
w=zeros(44,4);
w(1:4,:)=(reshape(key,4,4))';
for i=5:44
    temp=w(i-1,:);
    if mod(i,4)==1
        temp_rot=rot_word(temp);
        %disp_hex('after rot',temp_rot)
        temp_sub=sub_bytes(temp_rot,s_box);
        %disp_hex('after sub',temp_sub)
        temp=bitxor(temp_sub,rcon((i-1)/4,:));
       % disp_hex('after xor',temp_out)
    end
    w(i,:)=bitxor(w(i-4,:),temp);
end

%disp_hex('word',w)