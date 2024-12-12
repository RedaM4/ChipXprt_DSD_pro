`timescale 1ns / 1ps
module FSM_reciver_top(
    input logic clk,
    input logic reset,
    input logic in_bit,
    input logic delay_done,//c1 finiah
    input logic sample_now, //c2 finish
    input logic active_stop, //not use 
    input logic stop, //c3 finish 
    input logic parity_en,
    input logic valid,
    //out
    output logic Data_or_parity,
    output logic Rx_reg_en,
    output logic en, //for counters
    output logic reset_counter // resting counter    
    
    );
    
    logic comp1,comp2,comp3;   
FSM_Receiver controller(
    .clk(clk),
    .reset(reset),
    .in_bit(in_bit),
    .delay_done(delay_done),//c1 finiah
    .sample_now(sample_now), //c2 finish
    .active_stop(active_stop), //not use 
    .stop(stop), //c3 finish 
    .parity_en(parity_en),
    .valid(valid),
    //out
    .Data_or_parity(),
    .Rx_reg_en(),
    .en(), //for counters
    .reset_counter() // resting counter

    
    );   
n_counter #4(
    .clk(clk),
    .reset(clk),
    //input logic y_reset,
    .en(),
    .count() // Parameterized counter width
);
     
comparator #4 (
     .a(),
     .b,
     .equal 
  );      
endmodule
