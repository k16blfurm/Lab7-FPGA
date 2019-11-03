module MUX(  
     output logic [3:0] answer, 
     input logic [3:0] Ar,
     input logic [3:0] Br,
     input logic [3:0] aluOUTr,
     input logic [1:0] swr 
);

always_comb begin 

    case(swr)
        2'b00: answer = Ar;  
        2'b01: answer = Br;
        2'b10: answer = aluOUTr;
        2'b11: answer = 0;
    endcase
end 
 
endmodule