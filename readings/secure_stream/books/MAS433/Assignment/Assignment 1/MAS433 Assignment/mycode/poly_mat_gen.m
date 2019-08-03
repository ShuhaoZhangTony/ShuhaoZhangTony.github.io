function [poly_mat, inv_poly_mat]=poly_mat_gen
% The polynomial matrices poly_mat and inv_poly_mat are used in the
% mixed_columns function. Both matrices have a size of 4*4

p=[2 3 1 1];
P=repmat(p,4,1);
poly_mat=cycle(P,'right');

inv_p=[14 11 13 9];
inv_P=repmat(inv_p,4,1);
inv_poly_mat=cycle(inv_P,'right');

disp_hex('poly_mat:       ',poly_mat)
disp_hex('inv_poly_mat:   ',inv_poly_mat)
