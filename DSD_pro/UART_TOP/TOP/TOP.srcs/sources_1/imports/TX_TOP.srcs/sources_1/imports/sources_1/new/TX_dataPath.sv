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
  
    logic [2:0]count;
    logic xor_res=reg_out^dff_res;
    logic reg_out;
    logic dff_res;
    logic muxOut;
    
    n_shiftRegister_oneBit #(.n(n)) shft1(.clk(clk),.reset(reset),.en(en),.load(data_in),.load_en(buff_load_en),.out(reg_out),.clear(1'b0));
    nBits_up_down_counter #(.n(9)) counter1(.clk(clk),.reset(reset&!(s==2'b11)),.en(en),.up_down(1),.count(count));
    //nBits_comparator #(.n(8)) comp1(.clk(clk),.reset(reset),.signal(counterReset),.in(count));
    Comparetor #(.n(3)) comp1(.a(count),.b(3'd7),.equal(counterReset));
    dFlipFlop dff2(.clk(clk),.reset(reset),.d(xor_res),.q(dff_res));
    n_2x1mux #(.n(1)) mux1(.a(xor_res),.b(!xor_res),.s(odd_even),.res(muxOut));
    four_to_oneMux ftom1(.a(0),.b(reg_out),.c(muxOut),.d(1),.s(s),.out(out));
    
    
    
endmodule
