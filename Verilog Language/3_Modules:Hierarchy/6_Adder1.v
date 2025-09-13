module top_module(
    input [31:0] a,b,
    output [31:0] sum
);
    wire cout;
    
    add16 a1(a[15:0],b[15:0],0,sum[15:0],cout);
    add16 a2(a[31:16],b[31:16],cout,sum[31:16]);

endmodule
