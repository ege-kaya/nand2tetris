`ifndef NOT_V
`define NOT_V

module Not(out, in);

    input in;
    output out;

    nand(out, in, in);

endmodule

`endif