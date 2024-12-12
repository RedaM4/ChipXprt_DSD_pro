`timescale 1ns / 1ps

module shift_register #(
    parameter n = 8          // Width of the shift register
) (
    input logic clk,              // Clock signal
    input logic reset,            // Reset signal
    input logic enable,           // Enable signal
    input logic serial_in,        // Serial input for shifting
    output logic [n-1:0] data_out // Parallel output
);

    logic [n-1:0] shift_reg;

    // Sequential logic for shifting
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            shift_reg <= '0; // Reset all bits to 0
        end else if (enable) begin
            shift_reg <= {serial_in, shift_reg[n-1:1]}; // Shift right
        end
    end

    // Assign the current register value to the output
    assign data_out = shift_reg;

endmodule
