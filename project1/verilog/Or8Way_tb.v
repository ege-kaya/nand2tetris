`include "Or8Way.v"

module Or8Way_tb();

    reg [7:0] in;
    wire out;

    initial begin

        $dumpfile("Or8Way_tb.vcd");
        $dumpvars(0, Or8Way_tb);

        in = 8'b00000000;
        #5 in = 8'b11111111;
        #5 in = 8'b00010000;
        #5 in = 8'b00000001;
        #5 in = 8'b00100110;

        #5 $finish;

    end

    Or8Way U_Or8Way(.out(out), .in(in));

endmodule
