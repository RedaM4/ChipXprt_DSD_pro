`timescale 1ns / 1ps

module Rx_top_tb;

    // Testbench signals
    logic clk;
    logic reset;
    logic in_bit;
    logic [7:0] out_bit;

    // Parameters
    parameter parity_en = 1;   // Example parity enable
    parameter odd_even = 1;    // Example odd/even parity selection

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk; // 10ns clock period

    // Instantiate the Rx_top module
    Rx_top #(
        .parity_en(parity_en),
        .odd_even(odd_even)
    ) uut (
        .clk(clk),
        .reset(reset),
        .in_bit(in_bit),
        .out_bit(out_bit)
    );

    // Test stimulus
    initial begin
        // Initialize inputs
        reset = 0;
        in_bit = 0;

        // Apply reset
        #10;
        reset = 1;

        // Apply test inputs
        #10 in_bit = 1; // First bit
        #10 in_bit = 0; // Second bit
        #10 in_bit = 1; // Third bit
        #10 in_bit = 1; // Fourth bit
        #10 in_bit = 0; // Fifth bit
        #10 in_bit = 1; // Sixth bit
        #10 in_bit = 0; // Seventh bit
        #10 in_bit = 1; // Eighth bit

        // Observe final output
        #50;

        // End simulation
        $stop;
    end

endmodule
