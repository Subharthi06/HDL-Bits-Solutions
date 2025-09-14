module top_module( 
    input a, b,
    output out_and,out_or,out_xor,out_nand,out_nor,out_xnor,out_anotb
);
    and(out_and,a,b);
    or(out_or,a,b);
    xor(out_xor,a,b);
    nand(out_nand,a,b);
    nor(out_nor,a,b);
    xnor(out_xnor,a,b);
    and(out_anotb,a,~b);

endmodule
