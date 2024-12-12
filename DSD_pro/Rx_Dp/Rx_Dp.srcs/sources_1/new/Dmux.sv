`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2024 03:33:28 PM
// Design Name: 
// Module Name: Dmux
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


module Dmux(
    input logic in,      // Single input
    input logic sel,     // Switch (select line)
    output logic out0,   // First output
    output logic out1    // Second output
);

    // DMUX logic
    always_comb begin
        // Default both outputs to zero
        out0 = 1'b0;
        out1 = 1'b0;

        // Route input to the selected output
        if (sel)
            out1 = in; // If sel is 1, route input to out1
        else
            out0 = in; // If sel is 0, route input to out0
    end

endmodule

