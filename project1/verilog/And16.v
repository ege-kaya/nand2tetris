`ifndef AND16_V
`define AND16_V

`include "And.v"

module And16(out, a, b);

    input [15:0] a;
    input [15:0] b;
    output [15:0] out;

    genvar i;
    generate
        for (i = 0; i < 16; i = i+1) begin
            And U_And(.out(out[i]), .a(a[i]), .b(b[i]));
        end
    endgenerate

endmodule

`endif