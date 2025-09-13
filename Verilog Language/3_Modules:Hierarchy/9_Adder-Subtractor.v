module top_module(
    input [31:0] a,b,
    input sub,
    output [31:0] sum
);
    wire [31:0] w1=b^{32{sub}};
    wire cout;
    
    add16 a1(a[15:0],w1[15:0],sub,sum[15:0],cout);
    add16 a2(a[31:16],w1[31:16],cout,sum[31:16]);

endmodule
