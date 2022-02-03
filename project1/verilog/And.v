`ifndef AND_V
`define AND_V
`include "Not.v"

module And (
out,
a,
b
);

input a;
input b;
output out;

wire aNandB;

nand(aNandB, a, b);
Not U_Not(out, aNandB);

endmodule

`endif