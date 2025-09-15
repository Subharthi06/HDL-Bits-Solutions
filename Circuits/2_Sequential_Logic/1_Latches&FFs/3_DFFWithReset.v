module top_module (
    input clk,reset,            
    input [7:0] d,
    output [7:0] q
);
	integer i;
    always @(posedge clk)
        begin
            if(reset==0)
                begin
                    for(i=0; i<8; i=i+1)
                        q <= d;
                end
            else
            	q <= 0;
        end
endmodule
