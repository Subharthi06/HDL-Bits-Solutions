module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,p2a, p2b, p2c, p2d,
    output p1y,p2y );
    
    wire a1,a2,a3,a4;
    and(a1,p2a,p2b);
    and(a2,p2c,p2d);
    or(p2y,a1,a2);
    and(a3,p1a,p1c,p1b);
    and(a4,p1f,p1d,p1e);
    or(p1y,a3,a4);
    


endmodule
