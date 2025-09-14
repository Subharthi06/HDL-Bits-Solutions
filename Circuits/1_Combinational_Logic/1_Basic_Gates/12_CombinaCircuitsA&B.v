module top_module (input x, input y, output z);
	
    wire w1,w2,w3,w4;
    circuitA c1(x,y,w1);
    circuitB c2(x,y,w2);
    circuitA c3(x,y,w3);
    circuitB c4(x,y,w4);
    
    xor(z,(w1|w2),(w3&w4));
    
endmodule

module circuitA (input x,y, output z);
    assign z = (x^y) & x;
endmodule

module circuitB ( input x, y, output z );
    xnor(z,x,y);
endmodule
