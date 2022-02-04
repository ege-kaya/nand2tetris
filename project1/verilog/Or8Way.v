`ifndef OR8WAY_V
`define OR8WAY_V

`include "Or.v"

module Or8Way(out, in);

    input [7:0] in;
    output out;

    wire [3:0] intermediate1;
    wire [1:0] intermediate2;

    genvar i;
    generate
        for (i = 0; i < 8; i = i+2) begin
            Or U_Or(.out(intermediate1[i/2]), .a(in[i]), .b(in[i+1]));
        end
        for (i = 0; i < 4; i = i+2) begin
            Or U_Or(.out(intermediate2[i/2]), .a(intermediate1[i]), .b(intermediate1[i+1]));
        end
    endgenerate

    Or U_Or(.out(out), .a(intermediate2[0]), .b(intermediate2[1]));

endmodule

`endif