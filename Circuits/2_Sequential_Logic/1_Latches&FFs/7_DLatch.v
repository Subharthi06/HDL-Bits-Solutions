module top_module (
    input d,ena,
    output q);
    
    always @(*)
        begin
            if(ena)
        		q<=d;
        end

endmodule
