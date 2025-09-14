module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    genvar i;
    wire [100:0] carry;
    assign carry[0] = cin;
    
    generate
        for(i=0; i<100; i=i+1)
            begin: digit_adder
                bcd_fadd adder(
                .a    (a[i*4 +: 4]),    
                .b    (b[i*4 +: 4]),  
                .cin  (carry[i]),
                .sum  (sum[i*4 +: 4]),  
                .cout (carry[i+1])
                );
            end
    endgenerate
    
    assign cout = carry[100];

endmodule
