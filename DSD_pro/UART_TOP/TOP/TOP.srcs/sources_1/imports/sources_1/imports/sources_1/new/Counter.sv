`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2024 02:56:51 PM
// Design Name: 
// Module Name: Counter
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


module Counter #(
    parameter n = 8 // Default width of the counter
)(
    input logic clk,           // Clock signal
    input logic reset_n,       // Active-low reset
    input logic enable,        // Enable signal
    input logic clear ,
    output logic [n-1:0] q // Counter output
);
    // Counter logic
    always_ff @(posedge clk ,negedge reset_n) begin
        if (!reset_n | clear) begin
            q <= 0; // Reset counter to 0
        end else if (enable) begin
            q <= q + 1; // Increment counter on clock edge if enabled
        end
    end

endmodule

