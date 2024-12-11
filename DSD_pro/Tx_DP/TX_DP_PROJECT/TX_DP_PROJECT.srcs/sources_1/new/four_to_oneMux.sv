`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2024 04:35:28 AM
// Design Name: 
// Module Name: four_to_oneMux
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


module four_to_oneMux(
    input logic a,
    input logic b,
    input logic c,
    input logic d,
    input logic [1:0]s,
    output logic out
    );
    
    
    always@(*)begin
        case(s)
            00: out=a;
            01: out=b;
            10: out=c;
            11: out=d;
        endcase
    end
    
endmodule
