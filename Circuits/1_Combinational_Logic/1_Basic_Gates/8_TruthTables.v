module top_module( 
    input x3,x2,x1,
    output f
);
    or(f,(~x3&x2),(x3&x1));

endmodule
