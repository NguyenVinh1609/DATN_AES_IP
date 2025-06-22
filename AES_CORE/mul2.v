// cong thuc de tinh mul2, dich qua trai 1 bit va XOR voi gia trị 0x1b 
module mul2(
  input wire [7:0] inv_mixColumns_in,
  output wire [7:0] mul2_out
);
  assign mul2_out = (inv_mixColumns_in[7]==1'b1)? {inv_mixColumns_in[6:0], 1'b0} ^ 8'b0001_1011 : {inv_mixColumns_in[6:0], 1'b0};
endmodule