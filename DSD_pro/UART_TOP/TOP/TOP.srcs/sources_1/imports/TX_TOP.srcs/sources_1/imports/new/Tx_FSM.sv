`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2024 01:53:32 PM
// Design Name: 
// Module Name: Tx_FSM
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


module Tx_FSM(
 input logic clk, reset,signal,Parity_en,Counter_reset,
 output logic en,
 output logic busy,
 output logic [1:0] S, 
 output logic [2:0] pstate
  );
    
   typedef enum logic [2:0] {Parity, Send_data, Start, Idle} state_t;
    state_t current_state, next_state;

    assign pstate = current_state;
    // State Transition Logic
    always_ff @(posedge clk or negedge reset) begin
        if (!reset)
            current_state <= Idle;
        else
            current_state <= next_state;
    end
    
    
        always_comb begin
        case (current_state)
        
         Idle: next_state = signal ? Start :Idle  ;   
          
         Start : next_state =  Send_data ; 
         
        Send_data: if(Counter_reset) 
             next_state = Parity_en ? Parity : Idle ; 
            else next_state = Send_data ; 
        
        Parity: next_state = Idle ; 
        
        default: next_state = Idle ; 
        endcase end
    
        always_comb begin
        case (current_state)

        Idle: begin S=2'b11 ;en=0; busy=0;  end
        Start :  begin S=2'b00 ;en=0; busy=1;  end
        Send_data : begin S=2'b01 ;en=1; busy=1;  end
        Parity: begin S=2'b10 ;en=0; busy=1; end
        default: begin S=2'b11 ;en=0; busy=0; end
 
endcase
        end
    
    

    
    
endmodule
