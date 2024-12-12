`timescale 1ns / 1ps

module Rx_top#(parameter parity_en = 0 , parameter odd_even = 0)(
    input logic clk,
    input logic reset,
    input logic in_bit,
//    input logic delay_done,
//    input logic sample_now,
//    input logic active_stop,
//    input logic stop,
//    input logic parity_en,
//    input logic valid,
//    output logic Data_or_parity,
//    output logic Rx_reg_en,
//    output logic en,
//    output logic reset_counter
     // output logic en_buffer,
      output logic [7:0] out_bit
    );
    wire en_counter1, Rxreg_en,sample_now,stop,error_pb,Data_or_parity,reset_counter;  
    wire delay_done,rxd_buffer ;
FSM_Receiver fsm_receiver_inst (
        .clk(clk),                        // Connect clk
        .reset(reset),                    // Connect reset
        .in_bit(in_bit),                  // Connect in_bit
        .delay_done(delay_done),          // Connect delay_done
        .sample_now(sample_now),          // Connect sample_now
       // .active_stop(active_stop),        // Connect active_stop       
        .stop(stop),                      // Connect stop
        .parity_en(parity_en),            // Connect parity_en
        .Error_pb(error_pb),                    // Connect valid
        .Data_or_parity(Data_or_parity),  // Connect Data_or_parity
        .Rx_reg_en(Rxreg_en),            // Connect Rx_reg_en
        .en(en_counter1),                          // Connect en
        .reset_counter(reset_counter)     // Connect reset_counter
    );  
    
  Rx_DP #(odd_even)rx_dp_inst (
        .clk(clk),                        // Connect clk
        .reset(reset),                    // Connect reset
        .Data_or_parity(Data_or_parity),  // Connect Data_or_parity
        .Data_in(in_bit),                // Connect Data_in
        .Rxreg_en(Rxreg_en),              // Connect Rxreg_en
        .en(en_counter1),                          // Connect en
        .pb_error(error_pb),                    // Connect valid
        .Rx_Buffer(rxd_buffer),            // Connect Rx_Buffer
        .stop(stop),                      // Connect stop
        .sample_now(sample_now),          // Connect sample_now
        .delay_done(delay_done),           // Connect delay_done
        .reset_counter(reset_counter)    //reset first counter after second state
    );  

    // Instantiate the shift_register module
    shift_register #(
        .n(parity_en ? 9:8) // Set the width of the shift register
    ) shift_register_inst (
        .clk(clk),             // Connect clock signal
        .reset(reset),         // Connect reset signal
        .enable(Rxreg_en),       // Connect enable signal
        .serial_in(rxd_buffer), // Connect serial input
        .data_out(out_bit)    // Connect parallel output
    );        
endmodule
