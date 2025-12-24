module delay4 (
    input  wire clk,
    input  wire reset,   // 同步复位
    input  wire in,
    input  wire data,
    output reg  out
);

    reg [2:0] cnt;        // 计 (in & data) 连续为 1 的 clk 数
    reg [1:0] pulse_cnt;  // out 脉冲宽度计数（2 clk）
    reg fired;             // 是否已经触发过（锁死）

    always @(posedge clk) begin
        if (reset) begin
            cnt       <= 3'd0;
            pulse_cnt <= 2'd0;
            out       <= 1'b0;
            fired     <= 1'b0;
        end else begin
            if (fired) begin
                // 已经触发过，系统锁死，直到 reset
                out <= 1'b0;
            end else begin
                if (out) begin
                    // out 已经为 1，控制脉冲宽度
                    if (pulse_cnt == 2'd1) begin
                        out       <= 1'b0;
                        fired     <= 1'b1;
                        pulse_cnt <= 2'd0;
                    end else begin
                        pulse_cnt <= pulse_cnt + 2'd1;
                        out       <= 1'b1;
                    end
                end else begin
                    // out == 0，尚未触发
                    if (in && data) begin
                        if (cnt == 3'd3) begin
                            out       <= 1'b1;   // 连续 4 clk 后触发
                            pulse_cnt <= 2'd0;
                            cnt       <= cnt;    // 饱和
                        end else begin
                            cnt <= cnt + 3'd1;
                        end
                    end else begin
                        cnt <= 3'd0;  // 任一为 0，重新计数
                    end
                end
            end
        end
    end

endmodule
