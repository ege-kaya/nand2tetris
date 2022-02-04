`include "Not.v"

module Not_tb();

    reg in;
    wire out;

    initial begin

        $dumpfile("Not_tb.vcd");
        $dumpvars(0, Not_tb);

        in = 0;
        #5 in = 1;
        #5 $finish;

    end

    Not U_Not (.out(out), .in(in));

endmodule