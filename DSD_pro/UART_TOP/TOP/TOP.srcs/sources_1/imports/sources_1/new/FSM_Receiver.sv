`timescale 1ns / 1ps

module FSM_Receiver(
    input logic clk,
    input logic reset,
    input logic in_bit,
    input logic delay_done,//c1 finiah
    input logic sample_now, //c2 finish
   // input logic active_stop, //not use 
    input logic stop, //c3 finish 
    input logic parity_en,
    input logic Error_pb,
    //out
    output logic Data_or_parity,
    output logic Rx_reg_en,
    output logic en, //for counters
    output logic reset_counter // resting counter

    
    );
    
typedef enum logic [3:0] {
    IDLE, 
    counter1, // count to 0 - 7
    counter2, // count 0 - 15
    counter3, // count how many bits assigned
    parity_bit,
    stop_state,
    num_error, //error in data
    pb_error    //error in parity
    
    } state_t;
    state_t current_state, next_state; 
    
//reset    
always_ff@(posedge clk or negedge reset)begin 
    if(~reset)
      current_state <= IDLE ;
    else
         current_state <= next_state ;
    end
         
//next_state logic         
always_comb begin 
    case(current_state)
    IDLE : next_state = in_bit ? IDLE : counter1 ;
    
    counter1 : if(stop)
                next_state = delay_done ? stop_state : counter1;
                else
                next_state =  delay_done ? counter2 : counter1 ;

    counter2 : next_state =  sample_now ? counter3 : counter2 ;
    
    counter3 :if(stop) 
             next_state =  parity_en ? parity_bit : counter1 ;
               else 
             next_state = counter2 ;
    
    stop_state : next_state =  in_bit ?  IDLE   : num_error ;
    
    num_error  : next_state = IDLE;
    
    parity_bit : next_state =  Error_pb ? pb_error : stop_state ;
    
    pb_error   : next_state = stop_state ;
    
    
    default: next_state = IDLE;
    endcase;

    end     
  // output logic   
always_comb begin 
    case(current_state)
    IDLE : begin
           en = 0 ;
           Data_or_parity =0 ;
           Rx_reg_en =0;
           reset_counter = 1;
           end
   counter1 : begin
           en = 1 ; // add it to all states 
           Data_or_parity =0 ;
           Rx_reg_en =0;
           reset_counter = delay_done ? 1 : 0 ; // check later
           end
           
   counter2: begin
          en = 1 ; 
          Data_or_parity = 0 ;
          Rx_reg_en = 0;
          reset_counter = 0 ;
           end
  counter3 : begin
          en = 1 ;    
          Data_or_parity = 1 ;
          Rx_reg_en = 1;
          reset_counter = 0 ;
           end 
           
 stop_state : begin
          en = 0 ; 
          Data_or_parity = 0 ;
          Rx_reg_en = 0;
          reset_counter = 0 ;
           end     
                            
 num_error : begin
          en = 0 ; 
          Data_or_parity = 0 ;
          Rx_reg_en = 0;
          reset_counter = 0 ;
            end  
           
parity_bit : begin
            en = 0 ; 
            Data_or_parity = 0 ;
            Rx_reg_en = 0;
            reset_counter = 0 ;
            end 
                                
pb_error : begin
          en = 0 ; 
          Data_or_parity = 0 ;
          Rx_reg_en = 0;
          reset_counter = 0 ;
            end  
default : begin
          en = 0 ; 
          Data_or_parity = 0 ;
          Rx_reg_en = 0;
          reset_counter = 1 ;
            end    
    endcase
    end        
endmodule
