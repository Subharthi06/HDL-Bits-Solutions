module top_module(
    input a,b,c,d,
    output out ); 
    assign out = ~b&~c | ~a&~d | (b&c&d) | (d&a&~b);
endmodule
