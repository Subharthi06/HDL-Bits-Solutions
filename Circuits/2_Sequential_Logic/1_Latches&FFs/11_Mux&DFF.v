module top_module (
	input clk, L, r_in, q_in,
	output reg Q);

    always @(posedge clk)
        begin
            Q<=L?r_in:q_in;
        end
    
endmodule
