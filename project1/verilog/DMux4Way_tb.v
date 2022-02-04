`include "DMux4Way.v"

module DMux4Way_tb();

    reg in;
    reg [1:0] sel;

    wire a;
    wire b;
    wire c;
    wire d;

    initial begin

        $dumpfile("DMux4Way_tb.vcd");
        $dumpvars(0, DMux4Way_tb);

        in = 1'b0; sel = 2'b00;
        #5 in = 1'b0; sel = 2'b01;
        #5 in = 1'b0; sel = 2'b10;
        #5 in = 1'b0; sel = 2'b11;
        #5 in = 1'b1; sel = 2'b00;
        #5 in = 1'b1; sel = 2'b01;
        #5 in = 1'b1; sel = 2'b10;
        #5 in = 1'b1; sel = 2'b11;

        #5 $finish;

    end

    DMux4Way U_DMux4Way(.a(a), .b(b), .c(c), .d(d), .in(in), .sel(sel));

endmodule
