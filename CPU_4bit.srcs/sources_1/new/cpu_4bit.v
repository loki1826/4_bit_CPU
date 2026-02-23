`timescale 1ns / 1ps
module cpu_4bit(
    input clk
);
    reg [3:0] pc = 0;
    wire [7:0] instr;
    wire [1:0] alu_op;
    wire reg_write;
    wire [3:0] rd_data, rs_data, alu_out;

    instr_mem im(pc, instr);
    control_unit cu(instr, alu_op, reg_write);
    reg_file rf(clk, reg_write, instr[5:4], instr[3:2], alu_out, rd_data, rs_data);
    alu a1(rd_data, rs_data, alu_op, alu_out);

    always @(posedge clk)
        pc <= pc + 1;
endmodule

