module top_module(
    input a,b,c,d,
    output out,out_n); 
    
    wire w1,w2;
    and(w1,a,b);
    and(w2,c,d);
    or(out,w1,w2);
    assign out_n = ~out;

endmodule
