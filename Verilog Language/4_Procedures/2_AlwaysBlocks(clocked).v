// synthesis verilog_input_version verilog_2001
module top_module(
    input clk,a,b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff);
    
    reg r1;
    
    xor(out_assign,a,b);
    
    always @(*)
        out_always_comb = a^b;
    
    always @(posedge clk)
        begin
           r1 = a^b;
           out_always_ff = r1;
        end

endmodule
