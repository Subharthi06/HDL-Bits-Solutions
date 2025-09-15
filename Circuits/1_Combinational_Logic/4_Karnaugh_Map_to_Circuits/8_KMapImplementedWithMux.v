module top_module (
    input c,d,
    output [3:0] mux_in
); 

    assign mux_in[0] = d?d:c;
    assign mux_in[1] = 0;
    assign mux_in[2] = d?0:1;
    assign mux_in[3] = c?d:0;
    
endmodule
