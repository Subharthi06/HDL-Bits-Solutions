module top_module(
    input a,b,c,d,
    output out ); 
	assign out = a | c&~b;
endmodule
