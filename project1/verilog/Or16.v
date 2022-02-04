`ifndef OR16_V
`define OR16_V

`include "Or.v"

module Or16(out, a, b);

    input [15:0] a;
    input [15:0] b;
    output [15:0] out;

    genvar i;
    generate
        for (i = 0; i < 16; i = i+1) begin
            Or U_Or(.out(out[i]), .a(a[i]), .b(b[i]));
        end
    endgenerate

endmodule

`endif