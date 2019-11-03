module ALU( 
     output logic [3:0] led_a,     
     input logic  [1:0] sw,     
     input logic [3:0] A,
     input logic [3:0] B
);
    //logic A[3:0];
    //logic B[3:0];
    //logic register [2:0]; // used to store alu reg
    //register tmr(A, B);

always_comb begin 
    case(sw)
        2'b00: led_a = A + B;  
        2'b01: led_a = A - B;
        2'b10: led_a = A | B;
        2'b11: led_a = A & B;
    endcase
end 
endmodule