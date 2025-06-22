module addWord(
  input wire [127:0] key_in,
  input wire [31:0] after_addRcon,
  output wire [127:0] round_key
  
);
  assign round_key[127:96] = key_in[127:96] ^ after_addRcon; //w[4] = w[0]^trans(w[3])
  assign round_key[95:64] = key_in[95:64] ^ round_key[127:96];//w[5] = w[1] ^ w[4]
  assign round_key[63:32] = key_in[63:32] ^  round_key[95:64];// w[6] = w[2] ^ w[5]
  assign round_key[31:0] =  round_key[63:32] ^  key_in[31:0];//w[7] = w[3] ^ w[6]
endmodule