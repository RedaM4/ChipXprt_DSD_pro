`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2024 04:05:17 AM
// Design Name: 
// Module Name: sev_seg_sim
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
/*
module sev_seg_top(
    input wire CLK100MHZ,    // using the same name as pin names
    input wire CPU_RESETN,   
    output wire CA, CB, CC, CD, CE, CF, CG, DP,
    output wire [7:0] AN,
    output wire [15:0]LED,    
    input wire [15:0]SW
);
*/

module sev_seg_sim;
    
    logic CLK100MHZ; 
    logic CPU_RESETN;
    
    logic [15:0] SW;
    logic [15:0] LED;
    
    
    sev_seg_top DUT(
        .CLK100MHZ,
        .CPU_RESETN,
        .SW,
        .LED
    );
    
    
    
    logic clk=0;
logic reset=0;
logic busy;
logic [7:0]data_in=8'b00000000;
logic [3:0]address=4'b0000;

always #10 clk = !clk;

assign CPU_RESETN = reset;
assign CLK100MHZ = clk;
assign SW[11:8] = address;
assign SW[7:0] = data_in;

initial begin
    #300
    reset=1;
    #300
    address=4'b1111;
    data_in=8'b11111111;
    #2000
    address=4'b1100;
    #2000
    address=4'b0011;
    data_in=8'b10101011;
    #2000
    address=4'b1111;
    data_in=8'b01001100;
    #2000
    address=4'b1000;
    data_in=8'b00001111;
    #1000
    address = 4'b0000;
    data_in=8'b00000000;
    #10000
    address=4'b0011;
    data_in=8'b11110000;
    #2000
    address=4'b1000;
    data_in=8'b11001100;
    #2000;
    address=4'b0010;
    data_in=8'b11111111;
    #4000;
    
    end
endmodule
