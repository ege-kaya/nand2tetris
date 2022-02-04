`include "Mux.v"

module Mux_tb();

    reg a;
    reg b;
    reg sel;
    wire out;

    initial begin

        $dumpfile("Mux_tb.vcd");
        $dumpvars(0, Mux_tb);

        a = 0; b = 0; sel = 0;
        #5 a = 0; b = 0; sel = 1;
        #5 a = 0; b = 1; sel = 0;
        #5 a = 0; b = 1; sel = 1;
        #5 a = 1; b = 0; sel = 0;
        #5 a = 1; b = 0; sel = 1;
        #5 a = 1; b = 1; sel = 0;
        #5 a = 1; b = 1; sel = 1;
        #5 $finish;

    end

    Mux U_Mux(.out(out), .a(a), .b(b), .sel(sel));

endmodule
