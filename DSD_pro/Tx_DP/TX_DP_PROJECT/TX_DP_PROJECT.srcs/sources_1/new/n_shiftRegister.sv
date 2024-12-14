`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2024 03:06:17 AM
// Design Name: 
// Module Name: n_shiftRegister
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module n_shiftRegister_oneBit #(parameter n=4)(
    input logic clk,
    input logic reset,
    input logic clear,
    input logic [n-1:0]load,
    input logic en,
    input logic load_en,
    output logic out
    );
    
    logic [n-1:0]register={n{1'b0}};
    
    
    
    always@(posedge clk, negedge reset)begin
        if(!reset | clear)
            register<=0;
        else if(load_en)
            register<=load;
        else if(en)begin
            out<=register[0];
            register<=register>>1;
        end
    end
    
endmodule
