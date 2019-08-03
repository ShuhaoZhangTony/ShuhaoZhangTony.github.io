function matrix_out=cycle(matrix_in,direction)
% Perform the permutation in the functions shifting rows and
% inv_shift_rows.
% It cyclically permutes the rows of the input matrix. The first rwo is not
% shifted at all, the elements of the 2nd, 3rd and 4th row are shifted 1, 2
% and 3 positions  respectively to the direction specified.

if strcmp(direction,'left')
   matrix_out(1,:)=matrix_in(1,:);
   matrix_out(2,:)=matrix_in(2,[2 3 4 1]);
   matrix_out(3,:)=matrix_in(3,[3 4 1 2]);
   matrix_out(4,:)=matrix_in(4,[4 1 2 3]);       
else
   matrix_out(1,:)=matrix_in(1,:); 
   matrix_out(2,:)=matrix_in(2,[4 1 2 3]);
   matrix_out(3,:)=matrix_in(3,[3 4 1 2]);
   matrix_out(4,:)=matrix_in(4,[2 3 4 1]);   
end