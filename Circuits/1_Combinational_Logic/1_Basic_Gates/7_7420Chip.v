module top_module ( 
    input p1a, p1b, p1c, p1d, p2a, p2b, p2c, p2d,
    output p1y,p2y );

	wire w1,w2;
    nand(p1y,p1a, p1b, p1c, p1d);
    nand(p2y,p2a, p2b, p2c, p2d);
    
endmodule
