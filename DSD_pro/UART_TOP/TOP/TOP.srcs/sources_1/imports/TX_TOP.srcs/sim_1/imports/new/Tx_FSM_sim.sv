`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2024 02:15:08 PM
// Design Name: 
// Module Name: Tx_FSM_sim
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


module Tx_FSM_sim;
   
    // Testbench signals
    logic clk=0;
    logic reset;
    logic signal;
    logic Parity_en;
    logic Counter_reset;
    logic en;
    logic [1:0] S;

    // Instantiate the module under test (MUT)
  
  Tx_FSM dut (
        .clk(clk),
        .reset(reset),
        .signal(signal),
        .Parity_en(Parity_en),
        .Counter_reset(Counter_reset),
        .en(en),
        .S(S)
    );
    
    
    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end





    // Test sequence
    initial begin
        // Initialize inputs
        reset = 0;
        signal = 0;
        Parity_en = 0;
        Counter_reset = 0;

        // Apply reset
        #10 reset = 1;

        // Test Idle to Start transition
        #10 signal = 1; // Trigger transition to Start
        #10 signal = 0;

        // Test Start to Send_data transition
        #20 Counter_reset = 1; // Transition to Send_data

        // Test Send_data to Parity transition
        #30 Counter_reset = 0; Parity_en = 1;

        // Test Parity to Idle transition
        #40 Parity_en = 0;

        // Hold in Idle state
        #50 signal = 0; Counter_reset = 1; Parity_en = 0;

        // End simulation
        #60 $stop;
        
        
    end
   

endmodule