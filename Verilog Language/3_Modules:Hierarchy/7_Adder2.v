module top_module (
    input [31:0] a,b,
    output [31:0] sum
);
 	wire cout;
    add16 lower(a[15:0],b[15:0],0,sum[15:0],cout);
    add16 higher(a[31:16],b[31:16],cout,sum[31:16]);

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

    assign sum = a^b^cin;
    assign cout = (a&b) | (b&cin) | (cin&a);

endmodule
