`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2025 10:56:36 AM
// Design Name: 
// Module Name: FA_tb
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


module FA_tb;

        parameter WIDTH = 8;

    // Testbench signals
    logic [WIDTH-1:0] a, b;   // Inputs
    logic cin;                // Carry-in
    logic [WIDTH-1:0] sum;    // Sum output
    logic cout;               // Carry-out

    // Instantiate the full_adder module
    full_adder #(.WIDTH(WIDTH)) uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Testbench procedure
    initial begin
        // Test case 1: Simple addition without carry-in
        a = 8'd5; b = 8'd10; cin = 1'b0;
        #10
        a=7 ; b=6 ; 
        
        
        
        end
    
    
    
endmodule
