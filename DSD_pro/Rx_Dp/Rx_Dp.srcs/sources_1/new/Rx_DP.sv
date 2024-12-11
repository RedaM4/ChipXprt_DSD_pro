`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2024 02:46:13 PM
// Design Name: 
// Module Name: Rx_DP
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


module Rx_DP(
input logic clk,reset,Data_or_parity,Data_in,Rxreg_en,en, 
 output logic valid, Rx_Buffer,stop,sample_now,delay_done  );
 
 logic [3:0]C1 ;  
 logic [2:0]C2 ; 
  Counter #(.n(4)) one(
        .clk(clk),
        .reset_n(reset),
        .enable(en),
        .q(C1)
    );
    
     Counter #(3) two(
        .clk(clk),
        .reset_n(reset),
        .enable(sample_now),
        .q(C2)
    );
     
    
     
  Comparetor #(4) second (
        .a(C1),
        .b(4'd15),
        .equal(sample_now)
    );
  
    Comparetor #(4) first (
        .a(C1),
        .b(4'd7),
        .equal(delay_done)
    );  
    
     Comparetor #(3) third (
        .a(C2),
        .b(3'd7),
        .equal(stop)
    );  
    
    wire reg_wire ; 
    Register #(.n(1)) regi (
        .clk(clk),
        .reset_n(reset),
        .d(Data_in),
        .en(Rxreg_en),
        .q(reg_wire)
    );
    wire dmux_out1,dmux_out2;
    
    Dmux  dd(
       .in(reg_wire),
        .sel(Data_or_parity),
        .out0(dmux_out1),
        .out1(dmux_out2)
    );
    wire Pb_check ; 
     Register #(.n(1)) regiparity (
        .clk(clk),
        .reset_n(reset),
        .d(dmux_out1 | Pb_check),
        .en(Rxreg_en),
        .q(Pb_check)
    );
    assign valid = dmux_out2 ^ Pb_check; 
    assign Rx_Buffer = dmux_out2 ; 
endmodule
