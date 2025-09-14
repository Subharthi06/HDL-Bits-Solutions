module top_module( 
    input [99:0] a, b,
    input cin,
    output reg [99:0] cout,sum );
    
    integer i;
    wire [100:0]c;
    assign c[0] = cin;
    always @(*)
        begin
            for(i=0; i<100; i=i+1)
                begin
                    sum[i] = a[i]^b[i]^c[i];
                    cout[i] = a[i]&b[i] | b[i]&c[i] | c[i]&a[i];
                    c[i+1] = cout[i];
                end
        end

endmodule
