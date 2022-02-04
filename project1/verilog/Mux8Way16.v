`ifndef MUX8WAY16_V
`define MUX8WAY16_V

`include "Mux4Way16.v"
`include "Mux16.v"

module Mux8Way16(out, a, b, c, d, e, f, g, h, sel);

    input [15:0] a;
    input [15:0] b;
    input [15:0] c;
    input [15:0] d;
    input [15:0] e;
    input [15:0] f;
    input [15:0] g;
    input [15:0] h;
    input [2:0] sel;

    output [15:0] out;

    wire [15:0] intermediate [1:0];

    Mux4Way16 U_Mux4Way16_1(.out(intermediate[0]), .a(a), .b(b), .c(c), .d(d), .sel(sel[1:0]));
    Mux4Way16 U_Mux4Way16_2(.out(intermediate[1]), .a(e), .b(f), .c(g), .d(h), .sel(sel[1:0]));
    Mux16 U_Mux16(.out(out), .a(intermediate[0]), .b(intermediate[1]), .sel(sel[2]));

endmodule

`endif