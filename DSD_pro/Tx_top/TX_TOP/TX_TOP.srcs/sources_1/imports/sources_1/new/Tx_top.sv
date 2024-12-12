`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2024 05:01:49 AM
// Design Name: 
// Module Name: Tx_top
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
module n_TX_dataPath #(parameter n=4,parity_en=0,odd_even=0)(
    input logic clk,
    input logic reset,
    input logic en,
    input logic [n-1:0]data_in,
    input logic [1:0]s,
    input logic buff_load_en,
    output logic out,
    output logic counterReset
    );
    module Tx_FSM(
 input logic clk, reset,signal,Parity_en,Counter_reset,
 output logic en,
 output logic [1:0] S 
    );
    module nBits_comparator #(parameter n=4)(
    input logic [$clog2(n)-1:0]count,
    output logic signal,
    output logic resetSignal,
    input logic clk,
    input reset
    );
    module n_shiftRegister_oneBit #(parameter n=4)(
    input logic clk,
    input logic reset,
    input logic clear,
    input logic [n-1:0]load,
    input logic en,
    input logic load_en,
    output logic out
    );
    */
    
    
    
module Tx_top #(parameter PARITY_EN=5)(
    input logic clk,
    input logic reset,
    input logic [3:0]address,
    input logic [7:0]data_in,
    output logic busy,
    output logic out
    );
    
    localparam UART_ADDRESS=4'b1001;
    logic signal;
    logic counter_reset=0;
    logic [1:0]s=0;
    logic en;
    
    nBits_comparator #(.n(UART_ADDRESS)) comp1(.clk(clk),.reset(reset),.in(address),.signal(signal));
    Tx_FSM fsm1(.clk(clk),.reset(reset),.signal(signal),.Parity_en(PARITY_EN),.Counter_reset(counter_reset),.en(en),.S(s),.busy(busy));
    n_TX_dataPath #(.n(8),.parity_en(1'b0),.odd_even(0)) dp1(.clk(clk),.reset(reset),.en(en),.data_in(data_in),.s(s),.buff_load_en(!busy),.out(out),.counterReset(counter_reset));
    
    
endmodule
