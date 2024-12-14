`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2024 12:50:26 AM
// Design Name: 
// Module Name: Tx_top_sim
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
module Tx_top #(parameter parity_en=0)(
    input logic clk,
    input logic reset,
    input logic [3:0]address,
    input logic [7:0]data_in,
    output logic busy,
    output logic out
    );
    */
    
module Tx_top_sim;

logic clk=0;
logic reset=0;
logic [3:0]address=4'b0000;
logic [7:0]data_in=8'b00000000;
logic busy;
logic out;



Tx_top #(.PARITY_EN(0)) TX1(.clk(clk),.reset(reset),.address(address),.data_in(data_in),.busy(busy),.out(out));



always #10 clk = !clk;


initial begin
    #25
    reset=1;
    #5
    #100
    address=4'b1111;
    data_in=8'b11111111;
    #20
    address=4'b1100;
    #20
    address=4'b0011;
    data_in=8'b10101011;
    #20
    address=4'b1111;
    data_in=8'b11001100;
    #20
    address=4'b1000;
    data_in=8'b11001100;
    #100
    address=4'b0000;
    data_in=8'b00000000;
    #400
    address=4'b0011;
    data_in=8'b11110000;
    #20
    address=4'b1000;
    data_in=8'b10000000;
    #400
    $finish;
    end
    
    
endmodule
