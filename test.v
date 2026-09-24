module test();
    reg [3:0] sw;
    wire [2:0] led;
    integer i;
    
    reg fail = 1'b0;
    
    top uut(
        .sw(sw),
        .led(led)
    );

    pulldown(led[0]);
    pulldown(led[1]);
    pulldown(led[2]);
    
    initial begin
    $dumpvars(0, test);
    for (i = 0; i < 16; i = i + 1) begin
        sw = i;
        #20;
        if (led[0] ^ led[1] != 0) begin
            $display("Minterm output does not match");
            fail = 1'b1;
            $finish;
        end
        if (led[0] ^ led[2] != 0) begin
            $display("Maxterm output does not match");
            fail = 1'b1;
            $finish;
        end
    end
    if (!fail) begin
        $display("All Testcases Passed!");
    end
    $finish;
    end
endmodule
