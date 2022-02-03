`ifndef OR_V
`define OR_V

`include "Not.v"

module Or (
out,
a,
b
);

input a;
input b;
output out;

wire notA;
wire notB;

Not U_Not_1(notA, a);
Not U_Not_2(notB, b);
nand(out, notA, notB);

endmodule

`endif