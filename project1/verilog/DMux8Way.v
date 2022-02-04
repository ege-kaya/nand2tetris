`ifndef DMUX8WAY_V
`define DMUX8WAY_V

`include "DMux.v"
`include "DMux4Way.v"

module DMux8Way(a, b, c, d, e, f, g, h, in, sel);

    input in;
    input [2:0] sel;

    output a;
    output b;
    output c;
    output d;
    output e;
    output f;
    output g;
    output h;

    wire [1:0] intermediate;

    DMux U_DMux_1(.a(intermediate[0]), .b(intermediate[1]), .in(in), .sel(sel[2]));
    DMux4Way U_DMux4Way_1(.a(a), .b(b), .c(c), .d(d), .in(intermediate[0]), .sel(sel[1:0]));
    DMux4Way U_DMux4Way_2(.a(e), .b(f), .c(g), .d(h), .in(intermediate[1]), .sel(sel[1:0]));

endmodule

`endif