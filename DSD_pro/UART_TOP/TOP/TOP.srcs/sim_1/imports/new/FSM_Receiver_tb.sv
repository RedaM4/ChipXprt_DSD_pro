`timescale 1ns / 1ps

module FSM_Receiver_tb;
    
    // Inputs
    reg clk;
    reg reset;
    reg in_bit;
    reg delay_done;
    reg sample_now;
    reg stop;
    reg parity_en;
    reg valid;
    
    // Outputs
    wire Data_or_parity;
    wire Rx_reg_en;
    
    // Instantiate the FSM_Receiver module
    FSM_Receiver uut (
        .clk(clk),
        .reset(reset),
        .in_bit(in_bit),
        .delay_done(delay_done),
        .sample_now(sample_now),
        .stop(stop),
        .parity_en(parity_en),
        .valid(valid),
        .Data_or_parity(Data_or_parity),
        .Rx_reg_en(Rx_reg_en)
    );
    
    // Clock generation
    always #5 clk = ~clk;
    
    initial begin
        // Initialize inputs
        clk = 0;
        reset = 0;
        in_bit = 0;
        delay_done = 0;
        sample_now = 0;
        stop = 0;
        parity_en = 0;
        valid = 0;
        
        // Apply reset
        #10 reset = 1;
        #10 reset = 0;
        #10 reset = 1;
        
        // Test IDLE to counter1 transition
        #10 in_bit = 0;
        
        // Test counter1 to counter2 transition
        #10 delay_done = 1;
        
        // Test counter2 to counter3 transition
        #10 delay_done = 0;
            sample_now = 1;
        
        // Test counter3 to parity_bit transition
        #10 sample_now = 0;
        stop = 1;
        parity_en = 1;
        
        // Test parity_bit to stop_state transition
        #10 valid = 1;
        
        // Test stop_state to num_error transition
        #10 valid = 0;
        in_bit = 1;
        
        // Test num_error to IDLE transition
        #10 in_bit = 0;
        
        // Test pb_error transition
        #10 parity_en = 1;
        valid = 0;
        
        // Finalize simulation
        #50 $stop;
    end

endmodule
