`timescale 1ns/1ps
module reg_file(
    input clk,
    input we,
    input [1:0] rd, rs,
    input [3:0] wd,
    output [3:0] rd_data, rs_data
);
    reg [3:0] regs [0:3];

    assign rd_data = regs[rd];
    assign rs_data = regs[rs];

    initial begin
        regs[0] = 4'd0;
        regs[1] = 4'd0;
        regs[2] = 4'd0;
        regs[3] = 4'd0;
    end

    always @(posedge clk) begin
        if (we)
            regs[rd] <= wd;
    end
endmodule
