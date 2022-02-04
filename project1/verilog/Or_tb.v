`include "Or.v"

module Or_tb();

    reg a;
    reg b;
    wire out;

    initial begin

        $dumpfile("Or_tb.vcd");
        $dumpvars(0, Or_tb);

        a = 0; b = 0;
        #5 a = 1; b = 0;
        #5 a = 0; b = 1;
        #5 a = 1; b = 1;
        #5 $finish;

    end

    Or U_Or(.out(out), .a(a), .b(b));

endmodule
