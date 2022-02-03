`ifndef XOR_V
`define XOR_V

`include "And.v"
`include "Or.v"

module Xor (
out,
a,
b
);

input a;
input b;
output out;

wire aNandB;
wire aOrB;

nand(aNandB, a, b);
Or U_Or(aOrB, a, b);
And U_And(out, aNandB, aOrB);

endmodule

`endif