`include "DMux.v"

module DMux_tb();

    reg in;
    reg sel;
    wire a;
    wire b;

    initial begin

        $dumpfile("DMux_tb.vcd");
        $dumpvars(0, DMux_tb);

        in = 0; sel = 0;
        #5 in = 0; sel = 1;
        #5 in = 1; sel = 0;
        #5 in = 1; sel = 1;
        #5 $finish;

    end

    DMux U_DMux(.a(a), .b(b), .in(in), .sel(sel));

endmodule
