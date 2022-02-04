`include "Xor.v"

module Xor_tb();

    reg a;
    reg b;
    wire out;

    initial begin

        $dumpfile("Xor_tb.vcd");
        $dumpvars(0, Xor_tb);

        a = 0; b = 0;
        #5 a = 1; b = 0;
        #5 a = 0; b = 1;
        #5 a = 1; b = 1;
        #5 $finish;

    end

    Xor U_Xor(.out(out), .a(a), .b(b));

endmodule
