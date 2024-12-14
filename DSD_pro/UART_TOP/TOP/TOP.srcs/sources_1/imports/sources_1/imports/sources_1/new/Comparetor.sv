`timescale 1ns / 1ps



module Comparetor #( parameter n = 8 // Default width of the comparator
)(
    input logic reset,
    input logic clk,
    input logic [n-1:0] a,       // First input
    input logic [n-1:0] b,       // Second input
    output logic equal               // Output: 1 if a == b
);

    // Equality logic
    always_comb begin
        equal = (a == b); // Set 'equal' high if a and b are the same
    end

endmodule

