`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 11:51:36 AM
// Design Name: 
// Module Name: Register1
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


module Register #(
    parameter n = 8 // Default width of the register
)(
    input logic clk,          // Clock signal
    input logic reset_n,      // Active-low reset
    input logic [n-1:0] d, // Data input
    input logic en,
    output logic [n-1:0] q // Data output
);

    // Register logic with behavioral modeling
    always_ff @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            q <= 0; // Reset output to 0
        end else if(en)begin
            q <= d; // Update output with input data on the clock edge
        end
    end

endmodule
