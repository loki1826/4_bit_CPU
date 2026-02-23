`timescale 1ns / 1ps
module cpu_tb;
    reg clk = 0;
    cpu_4bit uut(clk);

    always #5 clk = ~clk;

    initial begin
    #1000 $finish;   // run for 500 ns
end

endmodule

