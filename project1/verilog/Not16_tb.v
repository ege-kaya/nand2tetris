`include "Not16.v"

module Not16_tb();

    reg [15:0] in;
    wire [15:0] out;

    initial begin

        $dumpfile("Not16_tb.vcd");
        $dumpvars(0, Not16_tb);

        in = 16'b0000000000000000;
        #5 in = 16'b1111111111111111;
        #5 in = 16'b1010101010101010;
        #5 in = 16'b0011110011000011;
        #5 in = 16'b0001001000110100;
        #5 $finish;

    end

    Not16 U_Not16(.out(out), .in(in));

endmodule
