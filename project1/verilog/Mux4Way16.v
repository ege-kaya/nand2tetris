`ifndef MUX4WAY16_V
`define MUX4WAY16_V

`include "Mux16.v"

module Mux4Way16(out, a, b, c, d, sel);

    input [15:0] a;
    input [15:0] b;
    input [15:0] c;
    input [15:0] d;
    input [1:0] sel;

    output [15:0] out;

    wire [15:0] intermediate [1:0];

    Mux16 U_Mux16_1(.out(intermediate[0]), .a(a), .b(b), .sel(sel[0]));
    Mux16 U_Mux16_2(.out(intermediate[1]), .a(c), .b(d), .sel(sel[0]));
    Mux16 U_Mux16_3(.out(out), .a(intermediate[0]), .b(intermediate[1]), .sel(sel[1]));

endmodule

`endif