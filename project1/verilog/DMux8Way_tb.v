`include "DMux8Way.v"

module DMux8Way_tb();

    reg in;
    reg [2:0] sel;

    wire a;
    wire b;
    wire c;
    wire d;
    wire e;
    wire f;
    wire g;
    wire h;

    initial begin

        $dumpfile("DMux8Way_tb.vcd");
        $dumpvars(0, DMux8Way_tb);

        in = 1'b0; sel = 3'b000;
        #5 in = 1'b0; sel = 3'b001;
        #5 in = 1'b0; sel = 3'b010;
        #5 in = 1'b0; sel = 3'b011;
        #5 in = 1'b0; sel = 3'b100;
        #5 in = 1'b0; sel = 3'b101;
        #5 in = 1'b0; sel = 3'b110;
        #5 in = 1'b0; sel = 3'b111;
        #5 in = 1'b1; sel = 3'b000;
        #5 in = 1'b1; sel = 3'b001;
        #5 in = 1'b1; sel = 3'b010;
        #5 in = 1'b1; sel = 3'b011;
        #5 in = 1'b1; sel = 3'b100;
        #5 in = 1'b1; sel = 3'b101;
        #5 in = 1'b1; sel = 3'b110;
        #5 in = 1'b1; sel = 3'b111;

        #5 $finish;

    end

    DMux8Way U_DMux8Way(.a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .h(h), .in(in), .sel(sel));

endmodule
