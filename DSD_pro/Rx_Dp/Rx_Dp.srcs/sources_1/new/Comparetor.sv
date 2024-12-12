`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2024 03:08:11 PM
// Design Name: 
// Module Name: Comparetor
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


module Comparetor #( parameter n = 8 // Default width of the comparator
)(
    input logic [n-1:0] a,       // First input
    input logic [n-1:0] b,       // Second input
    output logic equal               // Output: 1 if a == b
);

    // Equality logic
    always_comb begin
        equal = (a == b); // Set 'equal' high if a and b are the same
    end

endmodule

