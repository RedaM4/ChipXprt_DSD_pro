`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2024 06:39:39 AM
// Design Name: 
// Module Name: UART_Top_sim
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
    
module Tx_top #(parameter PARITY_EN=5)(
    input logic clk,
    input logic reset,
    input logic [3:0]address,
    input logic [7:0]data_in,
    output logic busy,
    output logic out
    );
    */

module UART_Top_sim;

logic clk=0;
logic reset=0;
logic busy;
logic [7:0]data_in=8'b00000000;
logic [3:0]address=4'b0000;


    UART_Top #(.parity_en(0),.odd_even(0)) UART1(.clk(clk),.reset(reset),.address(address),.data_in(data_in),.busy(busy));


always #10 clk = !clk;



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
    data_in=8'b11001100;
    #2000
    address=4'b1000;
    data_in=8'b11001100;
    #1000
    address=4'b0000;
    data_in=8'b00000000;
    #10000
    address=4'b0011;
    data_in=8'b11110000;
    #2000
    address=4'b1000;
    data_in=8'b10000000;
    #2000;
    address=4'b0010;
    data_in=8'b11111111;
    #4000;
    
    end
    
    endmodule
