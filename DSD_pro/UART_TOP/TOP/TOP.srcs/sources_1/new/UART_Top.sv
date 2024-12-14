`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2024 06:08:41 AM
// Design Name: 
// Module Name: UART_Top
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
    Rx_top #(
        .parity_en(parity_en),
        .odd_even(odd_even)
    ) uut (
        .clk(clk),
        .reset(reset),
        .in_bit(in_bit),
        .out_bit(out_bit)
    );
    module Tx_top #(parameter PARITY_EN=5)(
    input logic clk,
    input logic reset,
    input logic [3:0]address,
    input logic [7:0]data_in,
    output logic busy,
    output logic out
    );
        module n_clockDivider #(parameter n=4)(
    input logic clk,
    input logic reset,
    output logic newClk
    );
    module Rx_top#(parameter parity_en = 0 , parameter odd_even = 0)(
    input logic clk,
    input logic reset,
    input logic in_bit,
//    input logic delay_done,
//    input logic sample_now,
//    input logic active_stop,
//    input logic stop,
//    input logic parity_en,
//    input logic valid,
//    output logic Data_or_parity,
//    output logic Rx_reg_en,
//    output logic en,
//    output logic reset_counter
     // output logic en_buffer,
      output logic [7:0] out_bit
    );
    */

module UART_Top #(parameter parity_en=0,odd_even=0) (
    input logic clk,
    input logic reset,
    input logic [3:0]address,
    input logic [7:0]data_in,
    output logic busy,
    output logic [7:0]out_bit
    );
    
    localparam divFactor=7;
    
    logic dividedClock;
    logic out;
//    logic [7:0]out_bit;
    
    n_clockDivider #(.n(divFactor)) clkDiv1(.clk(clk),.reset(reset),.newClk(dividedClock));
    Tx_top #(.PARITY_EN(0)) TX1(.clk(dividedClock),.reset(reset),.address(address),.data_in(data_in),.busy(busy),.out(out));
    Rx_top #(.parity_en(0),.odd_even(0)) RX1(.clk(clk),.reset(reset),.in_bit(out),.out_bit(out_bit));

endmodule
