module instr_mem(
    input [3:0] pc,
    output reg [7:0] instr
);
    always @(*) begin
        case(pc)
            4'd0: instr = 8'b11_00_00_0101;  // LOAD R0 = 5
            4'd1: instr = 8'b11_01_00_0011;  // LOAD R1 = 3
            4'd2: instr = 8'b00_10_00_0000;  // ADD R2 = R0 + R1
            default: instr = 8'b00000000;
        endcase
    end
endmodule
