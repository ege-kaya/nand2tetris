`ifndef DMUX4WAY_V
`define DMUX4WAY_V

`include "DMux.v"

module DMux4Way(a, b, c, d, in, sel);

    input in;
    input [1:0] sel;

    output a;
    output b;
    output c;
    output d;

    wire [1:0] intermediate;

    DMux U_DMux_1(.a(intermediate[0]), .b(intermediate[1]), .in(in), .sel(sel[1]));
    DMux U_DMux_2(.a(a), .b(b), .in(intermediate[0]), .sel(sel[0]));
    DMux U_DMux_3(.a(c), .b(d), .in(intermediate[1]), .sel(sel[0]));

endmodule

`endif