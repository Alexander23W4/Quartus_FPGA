module op_sel (
    input  in3,
    input  in2,
    input  in1,
    input  in0,
    output reg A,
    output reg B,
    output reg C
);
    wire [3:0] in = {in3, in2, in1, in0};

    always @(*) begin
        A = 1'b0;
        B = 1'b0;
        C = 1'b0;
        case (in)
            4'b1010: A = 1'b1;
            4'b1011: B = 1'b1;
            4'b1100: C = 1'b1;
            default: ;   
        endcase
    end

endmodule