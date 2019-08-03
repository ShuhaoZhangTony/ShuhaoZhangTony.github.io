function rcon=rcon_gen

% Round constant generating function used in Key expansion
% It is a 4*4 matix of zeros except the 1st column

mod_pol=283;
rcon=zeros(10,4);
rcon(1,1)=1;
for i=2:10
    rcon(i,1)=poly_mult(rcon(i-1),2,mod_pol);
end

disp_hex('Round constant generation:  ', rcon)