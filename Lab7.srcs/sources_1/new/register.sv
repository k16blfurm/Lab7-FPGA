module register(     
    input logic [3:0] sw_r,
    input logic btnL_r,// button 0 
    input logic btnC_r,
    input logic clk_r,
    output logic [3:0]led_r
); 

//ALU tmr(O, A, B)

always_ff @ (posedge clk_r) begin
// For a sequential logic block      
    if (btnC_r == 1)      
         led_r <= 0;     
    // set the state equal to 0 as if to start over         
    else if (btnL_r == 1)
        led_r <= sw_r;
end  

endmodule
