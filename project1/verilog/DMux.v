`ifndef DMUX_V
`define DMUX_V

`include "Not.v"
`include "And.v"

module DMux(a, b, in, sel);

    input in;
    input sel;
    output a;
    output b;

    wire notSel;

    Not U_Not(.out(notSel), .in(sel));
    And U_And_1(.out(a), .a(in), .b(notSel));
    And U_And_2(.out(b), .a(in), .b(sel));

endmodule

`endif