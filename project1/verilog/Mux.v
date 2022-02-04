`ifndef MUX_V
`define MUX_V

`include "And.v"
`include "Or.v"

module Mux(out, a, b, sel);

    input a;
    input b;
    input sel;
    output out;

    wire notSel;
    wire aAndNotSel;
    wire bAndSel;

    Not U_Not(.out(notSel), .in(sel));
    And U_And_1(.out(aAndNotSel), .a(a), .b(notSel));
    And U_And_2(.out(bAndSel), .a(b), .b(sel));
    Or U_Or(.out(out), .a(aAndNotSel), .b(bAndSel));

endmodule

`endif