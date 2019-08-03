function state_out=shift_rows(state_in)
% Shift rows according to the direction, where state_in is a 4*4 matrix

state_out=cycle(state_in,'left');