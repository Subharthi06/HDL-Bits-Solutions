module top_module( 
    input [99:0] in,
    output [98:0] out_both,
    output [99:1] out_any,
    output [99:0] out_different );
    
    genvar i;
    generate
        for(i=0; i<99; i=i+1)
            begin: circuit_1
                assign out_both[i] = in[i]&in[i+1];
            end
        
        for(i=99; i>0; i=i-1)
            begin: circuit_2
                assign out_any[i] = in[i]|in[i-1];
            end
        
        for(i=0; i<99; i=i+1)
            begin: circuit_3
                assign out_different[i] = in[i]^in[i+1];
            end
        assign out_different[99] = in[99]^in[0];
        
    endgenerate
    

endmodule
