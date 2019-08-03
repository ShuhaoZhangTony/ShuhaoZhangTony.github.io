function state_out=add_round_key(state_in, round_key)

% Perform a bitwise xor of the state matrix and the round key matrix

state_out=bitxor(state_in,round_key);