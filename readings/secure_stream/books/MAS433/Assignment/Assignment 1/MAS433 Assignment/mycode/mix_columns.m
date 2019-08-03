function state_out=mix_columns(state_in,poly_mat)
% Computes the new state matrix state_out by left-multiplying the current
% state matrix state_in.
% When encrypting, use the poly_mat generated in poly_mat_gen function
% When decrypting, use the inv_poly_mat generated in poly_mat_gen

state_out=state_in;
mod_pol=283;
for i=1:4
    for j=1:4
        temp_xor=0;
        row=poly_mat(i,:);
        col=state_in(:,j);
        temp=zeros(1,4);
        for k=1:4
            temp(k)=poly_mult(row(k),col(k),mod_pol);
            temp_xor=bitxor(temp_xor,temp(k));
        end
        state_out(i,j)=temp_xor;
    end
end
        
        
