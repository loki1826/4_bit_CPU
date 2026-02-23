module alu(
    input [3:0] a, b,
    input [1:0] op,
    output reg [3:0] y
);
    always @(*) begin
        case(op)
            2'b00: y = a + b;  // ADD
            2'b01: y = a - b;  // SUB
            2'b10: y = a & b;  // AND
            2'b11: y = b;      // LOAD IMM
        endcase
    end
endmodule
