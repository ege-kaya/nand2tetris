`include "And16.v"

module And16_tb();

    reg [15:0] a;
    reg [15:0] b;
    wire [15:0] out;

    initial begin

        $dumpfile("And16_tb.vcd");
        $dumpvars(0, And16_tb);

        a = 16'b0000000000000000; b = 16'b0000000000000000;
        #5 a = 16'b0000000000000000; b = 16'b1111111111111111;
        #5 a = 16'b1111111111111111; b = 16'b1111111111111111;
        #5 a = 16'b1010101010101010; b = 16'b0101010101010101;
        #5 a = 16'b0011110011000011; b = 16'b0000111111110000;
        #5 a = 16'b0001001000110100; b = 16'b1001100001110110;
        #5 $finish;

    end

    And16 U_And16(.out(out), .a(a), .b(b));

endmodule
