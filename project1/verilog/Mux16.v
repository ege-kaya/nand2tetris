`ifndef MUX16_V
`define MUX16_V

`include "Mux.v"

module Mux16(out, a, b, sel);

    input [15:0] a;
    input [15:0] b;
    input sel;
    output [15:0] out;

    genvar i;
    generate
        for (i = 0; i < 16; i = i+1) begin
            Mux U_Mux(.out(out[i]), .a(a[i]), .b(b[i]), .sel(sel));
        end
    endgenerate

endmodule

`endif