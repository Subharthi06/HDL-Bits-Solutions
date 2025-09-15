module top_module (
    input a,b,c,d,
    output out_sop,out_pos
); 
	assign out_sop = ~a&~b&c | c&d;
    assign out_pos = c & (~b|d) & (~a|d);
endmodule
