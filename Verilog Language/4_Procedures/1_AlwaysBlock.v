// synthesis verilog_input_version verilog_2001
module top_module(
    input a,b,
    output wire out_assign,
    output reg out_alwaysblock
);
    
    and(out_assign,a,b);
    always @(*)
        out_alwaysblock <= a&b;

endmodule
