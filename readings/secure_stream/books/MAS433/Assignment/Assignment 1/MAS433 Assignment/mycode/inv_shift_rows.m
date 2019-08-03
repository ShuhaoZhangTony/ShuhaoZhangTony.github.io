function state_out=inv_shift_rows(state_in)

% Reverse the effect of the corresponding function shift_rows in the
% encryption process

state_out=cycle(state_in,'right');