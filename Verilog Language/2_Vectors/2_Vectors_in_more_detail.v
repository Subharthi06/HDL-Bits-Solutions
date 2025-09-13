`default_nettype none     // Disable implicit nets. Reduces some types of bugs.
module top_module( 
    input [15:0] in,
    output wire [7:0] out_hi,out_lo);
	
    assign out_lo = in[7:0];
    assign out_hi = in[15:8];

endmodule
