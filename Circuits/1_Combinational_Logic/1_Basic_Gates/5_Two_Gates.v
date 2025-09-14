module top_module (
    input in1,in2,in3,
    output out);
    
    xor(out,in3,~(in1^in2));

endmodule
