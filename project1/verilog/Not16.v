`ifndef NOT16_V
`define NOT16_V

`include "Not.v"

module Not16(out, in);

    input [15:0] in;
    output [15:0] out;

    genvar i;
    generate
        for (i = 0; i < 16; i = i+1) begin
            Not U_Not(.out(out[i]), .in(in[i]));
        end
    endgenerate

endmodule

`endif