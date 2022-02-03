`include "And.v"

module And_tb();

reg a;
reg b;
wire out;

initial begin

    $dumpfile("And_tb.vcd");
    $dumpvars(0, And_tb);

    a = 0; b = 0;
    #5 a = 1; b = 0;
    #5 a = 0; b = 1;
    #5 a = 1; b = 1;
    #5 $finish;

end

And U_And(out, a, b);

endmodule
