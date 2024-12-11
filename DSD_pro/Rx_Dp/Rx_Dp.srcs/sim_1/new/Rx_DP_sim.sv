`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2024 03:56:22 PM
// Design Name: 
// Module Name: Rx_DP_sim
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


module Rx_DP_sim;

    // Testbench signals
    logic clk;
    logic reset;
    logic Data_or_parity;
    logic Data_in;
    logic Rxreg_en;
    logic en;
    logic valid;
    logic Rx_Buffer;
    logic stop;
    logic sample_now;
    logic delay_done;

    // Instantiate the module under test (MUT)
    Rx_DP dut (
        .clk(clk),
        .reset(reset),
        .Data_or_parity(Data_or_parity),
        .Data_in(Data_in),
        .Rxreg_en(Rxreg_en),
        .en(en),
        .valid(valid),
        .Rx_Buffer(Rx_Buffer),
        .stop(stop),
        .sample_now(sample_now),
        .delay_done(delay_done)
    );

    // Clock generation
 initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    // Test sequence
    initial begin
        // Initialize signals
        reset = 0;
        Data_or_parity = 0;
        Data_in = 0;
        Rxreg_en = 0;
        en = 0;

        // Apply reset
        #10 reset = 1;

        // Test case 1: Enable counters and provide data
        #10 en = 1; Data_in = 1; Rxreg_en = 1; Data_or_parity = 0;
        #20 Data_in = 0; // Toggle data input
        #20 Data_or_parity = 1; // Change DMUX selection

        // Test case 2: Reset counters and validate outputs
        #10 reset = 0; // Assert reset
        #10 reset = 1; // Release reset

        // Test case 3: Validate stop and delay_done
        #50 en = 1;
        #50 Rxreg_en = 1;

        // End simulation
        #100; $finish;
    end


endmodule

