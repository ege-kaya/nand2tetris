module Not (
in,
out
);

input in;
output out;

nand(out, in, in);

endmodule