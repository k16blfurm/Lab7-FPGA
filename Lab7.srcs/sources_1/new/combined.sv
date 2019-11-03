`timescale 1 ns/ 1ps

module combined(  
     output logic [3:0] led,     
     input logic [7:0] sw,     
     input logic btnL,// button 0 
     input logic btnC,
     input logic clk,
     input logic btnR
);

    wire [3:0] A;
    wire [3:0] B;
    wire [3:0] aluOUT;

    register rega(sw[7:4], btnL, btnC, clk, A);
    register regb(sw[7:4], btnR, btnC, clk, B);
    ALU alu(aluOUT, sw[3:2], A, B);
    MUX mux(led, A, B, aluOUT, sw[1:0]);

//    assign led = aluOUT;
 
endmodule