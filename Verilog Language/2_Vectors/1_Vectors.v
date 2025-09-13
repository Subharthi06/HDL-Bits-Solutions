module top_module ( 
    input [2:0] vec,
    output [2:0] outv,o2,o1,o0); // Module body starts after module declaration
    
    assign outv = vec;
    assign o0 = vec[0];
    assign o1 = vec[1];
    assign o2 = vec[2];

endmodule
