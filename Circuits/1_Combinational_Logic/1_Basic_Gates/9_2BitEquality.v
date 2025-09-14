module top_module ( 
    input [1:0] A,B, 
    output z ); 

    assign z = (A==B)?1:0;
endmodule
