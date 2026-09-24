module maxterm (
    input A, B, C, D,
    output Y
);

    assign Y = (B | C | D) & (~B | C | ~D) & (A | ~D);// Enter your equation here

endmodule
