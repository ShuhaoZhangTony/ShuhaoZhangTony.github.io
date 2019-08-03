function bytes_out=sub_bytes(bytes_in,s_box)

% Apply the S-box to one or more input bytes bytes_in
bytes_out=s_box(bytes_in+1);