module control_unit(
    input [7:0] instr,
    output [1:0] alu_op,
    output reg_write
);
    assign alu_op = instr[7:6];
    assign reg_write = 1'b1;  // always write for now
endmodule
