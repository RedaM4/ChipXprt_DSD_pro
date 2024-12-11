`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2024 03:36:32 AM
// Design Name: 
// Module Name: TX_dataPath
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
module four_to_oneMux(
    input logic a,
    input logic b,
    input logic c,
    input logic d,
    input logic [1:0]s,
    output logic out
    );
    */
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
  
    logic [n-1:0]count;
    logic xor_res=reg_out^dff_res;
    logic reg_out;
    logic dff_res;
    logic muxOut;
    
    n_shiftRegister_oneBit #(.n(n)) shft1(.clk(clk),.reset(reset),.en(en),.load(data_in),.load_en(buff_load_en),.out(reg_out));
    nBits_up_down_counter #(.n(8)) counter1(.clk(en),.reset(reset),.up_down(1),.count(count));
    nBits_comparator #(.n(8)) comp1(.clk(clk),.reset(reset),.signal(counterReset),.count(count));
    dFlipFop dff1(.clk(clk),.reset(reset),.d(xor_res),.q(dff_res));
    n_2x1mux #(.n(1)) (.a(xor_res),.b(!xor_res),.s(odd_even),.res(muxOut));
    four_to_oneMux ftom1(.a(1'b0),.b(reg_out),.c(muxOut),.d(1'b1),.s(s),.out(out));
    
    
    
endmodule
