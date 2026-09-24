module minterm (
    input A, B, C, D,
    output Y
);

    assign Y = ~D & (~A | C); // Enter your equation here

endmodule
