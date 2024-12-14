// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sat Dec 14 07:17:07 2024
// Host        : Raid-ThinkTank running 64-bit Linux Mint 22
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/cenema/Desktop/Xilinx_Projects/ChipXprt_DSD_pro/DSD_pro/UART_TOP/TOP/TOP.sim/sim_1/synth/func/xsim/sev_seg_sim_func_synth.v
// Design      : sev_seg_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Counter
   (\FSM_sequential_current_state_reg[1] ,
    \q_reg[3]_0 ,
    \q_reg[3]_1 ,
    \q_reg[0]_0 ,
    stop,
    Q,
    out,
    E,
    CLK,
    \q_reg[3]_2 ,
    D);
  output \FSM_sequential_current_state_reg[1] ;
  output \q_reg[3]_0 ;
  output [1:0]\q_reg[3]_1 ;
  output \q_reg[0]_0 ;
  input stop;
  input [1:0]Q;
  input out;
  input [0:0]E;
  input CLK;
  input \q_reg[3]_2 ;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[1] ;
  wire [1:0]Q;
  wire out;
  wire \q[0]_i_1__0_n_0 ;
  wire \q[1]_i_1__0_n_0 ;
  wire \q[3]_i_2__0_n_0 ;
  wire [1:0]q_reg;
  wire \q_reg[0]_0 ;
  wire \q_reg[3]_0 ;
  wire [1:0]\q_reg[3]_1 ;
  wire \q_reg[3]_2 ;
  wire sample_now;
  wire stop;

  LUT6 #(
    .INIT(64'hA0AFC0C0A0AFCFCF)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(stop),
        .I1(sample_now),
        .I2(Q[1]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[0]),
        .I5(out),
        .O(\FSM_sequential_current_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_current_state[0]_i_4 
       (.I0(q_reg[1]),
        .I1(q_reg[0]),
        .I2(\q_reg[3]_1 [0]),
        .I3(\q_reg[3]_1 [1]),
        .O(sample_now));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_sequential_current_state[2]_i_4 
       (.I0(\q_reg[3]_1 [1]),
        .I1(\q_reg[3]_1 [0]),
        .I2(q_reg[1]),
        .I3(q_reg[0]),
        .O(\q_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4544)) 
    \q[0]_i_1__0 
       (.I0(q_reg[0]),
        .I1(Q[1]),
        .I2(\q_reg[3]_0 ),
        .I3(Q[0]),
        .O(\q[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h60666060)) 
    \q[1]_i_1__0 
       (.I0(q_reg[1]),
        .I1(q_reg[0]),
        .I2(Q[1]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[0]),
        .O(\q[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hCF208A20)) 
    \q[3]_i_2__0 
       (.I0(Q[1]),
        .I1(\q_reg[0]_0 ),
        .I2(\q_reg[3]_1 [0]),
        .I3(\q_reg[3]_1 [1]),
        .I4(Q[0]),
        .O(\q[3]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \q[3]_i_3__0 
       (.I0(q_reg[0]),
        .I1(q_reg[1]),
        .O(\q_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\q_reg[3]_2 ),
        .D(\q[0]_i_1__0_n_0 ),
        .Q(q_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\q_reg[3]_2 ),
        .D(\q[1]_i_1__0_n_0 ),
        .Q(q_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\q_reg[3]_2 ),
        .D(D),
        .Q(\q_reg[3]_1 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(\q_reg[3]_2 ),
        .D(\q[3]_i_2__0_n_0 ),
        .Q(\q_reg[3]_1 [1]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_2
   (q1__0,
    Q,
    \FSM_sequential_current_state_reg[1] ,
    stop,
    \q_reg[2]_0 ,
    \q_reg[2]_1 ,
    \q_reg[3]_0 ,
    \q_reg[3]_1 ,
    CLK,
    \q_reg[0]_0 );
  output [0:0]q1__0;
  output [0:0]Q;
  output \FSM_sequential_current_state_reg[1] ;
  output stop;
  input [2:0]\q_reg[2]_0 ;
  input \q_reg[2]_1 ;
  input [0:0]\q_reg[3]_0 ;
  input [1:0]\q_reg[3]_1 ;
  input CLK;
  input \q_reg[0]_0 ;

  wire CLK;
  wire \FSM_sequential_current_state_reg[1] ;
  wire [0:0]Q;
  wire [0:0]q1__0;
  wire \q[1]_i_1_n_0 ;
  wire \q[2]_i_1_n_0 ;
  wire \q[2]_i_2_n_0 ;
  wire [3:1]q_reg;
  wire \q_reg[0]_0 ;
  wire [2:0]\q_reg[2]_0 ;
  wire \q_reg[2]_1 ;
  wire [0:0]\q_reg[3]_0 ;
  wire [1:0]\q_reg[3]_1 ;
  wire stop;

  LUT4 #(
    .INIT(16'h7C4C)) 
    \FSM_sequential_current_state[1]_i_2__0 
       (.I0(stop),
        .I1(\q_reg[2]_0 [1]),
        .I2(\q_reg[2]_0 [0]),
        .I3(\q_reg[2]_1 ),
        .O(\FSM_sequential_current_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_sequential_current_state[2]_i_3 
       (.I0(q_reg[2]),
        .I1(q_reg[1]),
        .I2(q_reg[3]),
        .I3(Q),
        .O(stop));
  LUT6 #(
    .INIT(64'h6660666666606660)) 
    \q[1]_i_1 
       (.I0(q_reg[1]),
        .I1(Q),
        .I2(\q_reg[2]_0 [1]),
        .I3(\q_reg[2]_0 [2]),
        .I4(\q_reg[2]_1 ),
        .I5(\q_reg[2]_0 [0]),
        .O(\q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6660666666606660)) 
    \q[2]_i_1 
       (.I0(q_reg[2]),
        .I1(\q[2]_i_2_n_0 ),
        .I2(\q_reg[2]_0 [1]),
        .I3(\q_reg[2]_0 [2]),
        .I4(\q_reg[2]_1 ),
        .I5(\q_reg[2]_0 [0]),
        .O(\q[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[2]_i_2 
       (.I0(q_reg[1]),
        .I1(Q),
        .O(\q[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q[3]_i_3 
       (.I0(q_reg[1]),
        .I1(Q),
        .I2(q_reg[2]),
        .I3(q_reg[3]),
        .O(q1__0));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(\q_reg[3]_0 ),
        .CLR(\q_reg[0]_0 ),
        .D(\q_reg[3]_1 [0]),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(\q_reg[3]_0 ),
        .CLR(\q_reg[0]_0 ),
        .D(\q[1]_i_1_n_0 ),
        .Q(q_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(\q_reg[3]_0 ),
        .CLR(\q_reg[0]_0 ),
        .D(\q[2]_i_1_n_0 ),
        .Q(q_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(\q_reg[3]_0 ),
        .CLR(\q_reg[0]_0 ),
        .D(\q_reg[3]_1 [1]),
        .Q(q_reg[3]));
endmodule

module FSM_Receiver
   (Q,
    E,
    \FSM_sequential_current_state_reg[2]_0 ,
    \FSM_sequential_current_state_reg[2]_1 ,
    D,
    \FSM_sequential_current_state_reg[1]_0 ,
    \FSM_sequential_current_state_reg[2]_2 ,
    stop,
    delay_done,
    \FSM_sequential_current_state_reg[1]_1 ,
    \FSM_sequential_current_state_reg[1]_2 ,
    \FSM_sequential_current_state_reg[0]_0 ,
    \FSM_sequential_current_state_reg[0]_1 ,
    \q_reg[3] ,
    \q_reg[3]_0 ,
    q1__0,
    \q_reg[0] ,
    CLK,
    \FSM_sequential_current_state_reg[0]_2 );
  output [2:0]Q;
  output [0:0]E;
  output [0:0]\FSM_sequential_current_state_reg[2]_0 ;
  output [0:0]\FSM_sequential_current_state_reg[2]_1 ;
  output [1:0]D;
  output [0:0]\FSM_sequential_current_state_reg[1]_0 ;
  input \FSM_sequential_current_state_reg[2]_2 ;
  input stop;
  input delay_done;
  input \FSM_sequential_current_state_reg[1]_1 ;
  input \FSM_sequential_current_state_reg[1]_2 ;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input \FSM_sequential_current_state_reg[0]_1 ;
  input [1:0]\q_reg[3] ;
  input \q_reg[3]_0 ;
  input [0:0]q1__0;
  input [0:0]\q_reg[0] ;
  input CLK;
  input \FSM_sequential_current_state_reg[0]_2 ;

  wire CLK;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire \FSM_sequential_current_state_reg[0]_2 ;
  wire [0:0]\FSM_sequential_current_state_reg[1]_0 ;
  wire \FSM_sequential_current_state_reg[1]_1 ;
  wire \FSM_sequential_current_state_reg[1]_2 ;
  wire [0:0]\FSM_sequential_current_state_reg[2]_0 ;
  wire [0:0]\FSM_sequential_current_state_reg[2]_1 ;
  wire \FSM_sequential_current_state_reg[2]_2 ;
  wire [2:0]Q;
  wire delay_done;
  wire [2:0]next_state;
  wire [0:0]q1__0;
  wire [0:0]\q_reg[0] ;
  wire [1:0]\q_reg[3] ;
  wire \q_reg[3]_0 ;
  wire stop;

  LUT6 #(
    .INIT(64'h88888888FCCCCCCC)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(\FSM_sequential_current_state_reg[2]_2 ),
        .I1(Q[2]),
        .I2(stop),
        .I3(delay_done),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(next_state[2]));
  (* FSM_ENCODED_STATES = "counter3:011,counter2:010,counter1:001,parity_bit:100,num_error:111,IDLE:000,stop_state:110,pb_error:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[0]_2 ),
        .D(next_state[0]),
        .Q(Q[0]));
  MUXF7 \FSM_sequential_current_state_reg[0]_i_1 
       (.I0(\FSM_sequential_current_state_reg[0]_0 ),
        .I1(\FSM_sequential_current_state_reg[0]_1 ),
        .O(next_state[0]),
        .S(Q[2]));
  (* FSM_ENCODED_STATES = "counter3:011,counter2:010,counter1:001,parity_bit:100,num_error:111,IDLE:000,stop_state:110,pb_error:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[0]_2 ),
        .D(next_state[1]),
        .Q(Q[1]));
  MUXF7 \FSM_sequential_current_state_reg[1]_i_1 
       (.I0(\FSM_sequential_current_state_reg[1]_1 ),
        .I1(\FSM_sequential_current_state_reg[1]_2 ),
        .O(next_state[1]),
        .S(Q[2]));
  (* FSM_ENCODED_STATES = "counter3:011,counter2:010,counter1:001,parity_bit:100,num_error:111,IDLE:000,stop_state:110,pb_error:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[0]_2 ),
        .D(next_state[2]),
        .Q(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h54555454)) 
    \q[0]_i_1 
       (.I0(\q_reg[0] ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(delay_done),
        .I4(Q[0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hC382)) 
    \q[2]_i_1__0 
       (.I0(Q[1]),
        .I1(\q_reg[3]_0 ),
        .I2(\q_reg[3] [0]),
        .I3(Q[0]),
        .O(\FSM_sequential_current_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h01010101FF110101)) 
    \q[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\q_reg[3] [1]),
        .I4(\q_reg[3] [0]),
        .I5(\q_reg[3]_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \q[3]_i_1__0 
       (.I0(Q[2]),
        .O(\FSM_sequential_current_state_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hA8AAA8A8)) 
    \q[3]_i_2 
       (.I0(q1__0),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(delay_done),
        .I4(Q[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \shift_reg[6]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\FSM_sequential_current_state_reg[2]_0 ));
endmodule

module Rx_DP
   (\FSM_sequential_current_state_reg[1] ,
    stop,
    delay_done,
    q1__0,
    \q_reg[0] ,
    \q_reg[3] ,
    \FSM_sequential_current_state_reg[1]_0 ,
    \q_reg[0]_0 ,
    Q,
    out,
    E,
    CLK,
    \q_reg[0]_1 ,
    D,
    \q_reg[3]_0 ,
    \q_reg[3]_1 );
  output \FSM_sequential_current_state_reg[1] ;
  output stop;
  output delay_done;
  output [0:0]q1__0;
  output [0:0]\q_reg[0] ;
  output [1:0]\q_reg[3] ;
  output \FSM_sequential_current_state_reg[1]_0 ;
  output \q_reg[0]_0 ;
  input [2:0]Q;
  input out;
  input [0:0]E;
  input CLK;
  input \q_reg[0]_1 ;
  input [0:0]D;
  input [0:0]\q_reg[3]_0 ;
  input [1:0]\q_reg[3]_1 ;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire [2:0]Q;
  wire delay_done;
  wire out;
  wire [0:0]q1__0;
  wire [0:0]\q_reg[0] ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire [1:0]\q_reg[3] ;
  wire [0:0]\q_reg[3]_0 ;
  wire [1:0]\q_reg[3]_1 ;
  wire stop;

  Counter one
       (.CLK(CLK),
        .D(D),
        .E(E),
        .\FSM_sequential_current_state_reg[1] (\FSM_sequential_current_state_reg[1] ),
        .Q(Q[1:0]),
        .out(out),
        .\q_reg[0]_0 (\q_reg[0]_0 ),
        .\q_reg[3]_0 (delay_done),
        .\q_reg[3]_1 (\q_reg[3] ),
        .\q_reg[3]_2 (\q_reg[0]_1 ),
        .stop(stop));
  Counter_2 two
       (.CLK(CLK),
        .\FSM_sequential_current_state_reg[1] (\FSM_sequential_current_state_reg[1]_0 ),
        .Q(\q_reg[0] ),
        .q1__0(q1__0),
        .\q_reg[0]_0 (\q_reg[0]_1 ),
        .\q_reg[2]_0 (Q),
        .\q_reg[2]_1 (delay_done),
        .\q_reg[3]_0 (\q_reg[3]_0 ),
        .\q_reg[3]_1 (\q_reg[3]_1 ),
        .stop(stop));
endmodule

module Rx_top
   (Q,
    \shift_reg_reg[0] ,
    \shift_reg_reg[1] ,
    \shift_reg_reg[2] ,
    \shift_reg_reg[3] ,
    out,
    CLK,
    \shift_reg_reg[0]_0 ,
    \FSM_sequential_current_state_reg[2] ,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[0] ,
    sel0);
  output [1:0]Q;
  output \shift_reg_reg[0] ;
  output \shift_reg_reg[1] ;
  output \shift_reg_reg[2] ;
  output \shift_reg_reg[3] ;
  input out;
  input CLK;
  input \shift_reg_reg[0]_0 ;
  input \FSM_sequential_current_state_reg[2] ;
  input \FSM_sequential_current_state_reg[1] ;
  input \FSM_sequential_current_state_reg[0] ;
  input [1:0]sel0;

  wire CLK;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[2] ;
  wire [1:0]Q;
  wire Rxreg_en;
  wire [2:2]current_state;
  wire delay_done;
  wire fsm_receiver_inst_n_3;
  wire fsm_receiver_inst_n_5;
  wire fsm_receiver_inst_n_6;
  wire fsm_receiver_inst_n_7;
  wire fsm_receiver_inst_n_8;
  wire [3:2]\one/q_reg ;
  wire out;
  wire [3:3]q1__0;
  wire rx_dp_inst_n_0;
  wire rx_dp_inst_n_7;
  wire rx_dp_inst_n_8;
  wire [1:0]sel0;
  wire \shift_reg_reg[0] ;
  wire \shift_reg_reg[0]_0 ;
  wire \shift_reg_reg[1] ;
  wire \shift_reg_reg[2] ;
  wire \shift_reg_reg[3] ;
  wire stop;
  wire [0:0]\two/q_reg ;

  FSM_Receiver fsm_receiver_inst
       (.CLK(CLK),
        .D({fsm_receiver_inst_n_6,fsm_receiver_inst_n_7}),
        .E(fsm_receiver_inst_n_3),
        .\FSM_sequential_current_state_reg[0]_0 (rx_dp_inst_n_0),
        .\FSM_sequential_current_state_reg[0]_1 (\FSM_sequential_current_state_reg[0] ),
        .\FSM_sequential_current_state_reg[0]_2 (\shift_reg_reg[0]_0 ),
        .\FSM_sequential_current_state_reg[1]_0 (fsm_receiver_inst_n_8),
        .\FSM_sequential_current_state_reg[1]_1 (rx_dp_inst_n_7),
        .\FSM_sequential_current_state_reg[1]_2 (\FSM_sequential_current_state_reg[1] ),
        .\FSM_sequential_current_state_reg[2]_0 (Rxreg_en),
        .\FSM_sequential_current_state_reg[2]_1 (fsm_receiver_inst_n_5),
        .\FSM_sequential_current_state_reg[2]_2 (\FSM_sequential_current_state_reg[2] ),
        .Q({current_state,Q}),
        .delay_done(delay_done),
        .q1__0(q1__0),
        .\q_reg[0] (\two/q_reg ),
        .\q_reg[3] (\one/q_reg ),
        .\q_reg[3]_0 (rx_dp_inst_n_8),
        .stop(stop));
  Rx_DP rx_dp_inst
       (.CLK(CLK),
        .D(fsm_receiver_inst_n_8),
        .E(fsm_receiver_inst_n_5),
        .\FSM_sequential_current_state_reg[1] (rx_dp_inst_n_0),
        .\FSM_sequential_current_state_reg[1]_0 (rx_dp_inst_n_7),
        .Q({current_state,Q}),
        .delay_done(delay_done),
        .out(out),
        .q1__0(q1__0),
        .\q_reg[0] (\two/q_reg ),
        .\q_reg[0]_0 (rx_dp_inst_n_8),
        .\q_reg[0]_1 (\shift_reg_reg[0]_0 ),
        .\q_reg[3] (\one/q_reg ),
        .\q_reg[3]_0 (fsm_receiver_inst_n_3),
        .\q_reg[3]_1 ({fsm_receiver_inst_n_6,fsm_receiver_inst_n_7}),
        .stop(stop));
  shift_register shift_register_inst
       (.CLK(CLK),
        .E(Rxreg_en),
        .out(out),
        .sel0(sel0),
        .\shift_reg_reg[0]_0 (\shift_reg_reg[0] ),
        .\shift_reg_reg[0]_1 (\shift_reg_reg[0]_0 ),
        .\shift_reg_reg[1]_0 (\shift_reg_reg[1] ),
        .\shift_reg_reg[2]_0 (\shift_reg_reg[2] ),
        .\shift_reg_reg[3]_0 (\shift_reg_reg[3] ));
endmodule

module Tx_FSM
   (LED_OBUF,
    Q,
    out,
    \FSM_sequential_current_state_reg[0]_0 ,
    \FSM_sequential_current_state_reg[1]_0 ,
    \FSM_sequential_current_state_reg[1]_1 ,
    E,
    \shift_reg_reg[7] ,
    dff_res,
    D,
    signal,
    CPU_RESETN_IBUF,
    SW_IBUF,
    dividedClock,
    \FSM_sequential_current_state_reg[1]_2 );
  output [2:0]LED_OBUF;
  output [1:0]Q;
  output out;
  output \FSM_sequential_current_state_reg[0]_0 ;
  output \FSM_sequential_current_state_reg[1]_0 ;
  output [0:0]\FSM_sequential_current_state_reg[1]_1 ;
  output [0:0]E;
  input [0:0]\shift_reg_reg[7] ;
  input dff_res;
  input [0:0]D;
  input signal;
  input CPU_RESETN_IBUF;
  input [0:0]SW_IBUF;
  input dividedClock;
  input \FSM_sequential_current_state_reg[1]_2 ;

  wire CPU_RESETN_IBUF;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire [0:0]\FSM_sequential_current_state_reg[1]_1 ;
  wire \FSM_sequential_current_state_reg[1]_2 ;
  wire [2:0]LED_OBUF;
  wire [1:0]Q;
  wire [0:0]SW_IBUF;
  wire dff_res;
  wire dividedClock;
  wire [0:0]next_state;
  wire out;
  wire [0:0]\shift_reg_reg[7] ;
  wire signal;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(Q[1]),
        .I1(signal),
        .I2(Q[0]),
        .O(next_state));
  (* FSM_ENCODED_STATES = "Start:01,Send_data:10,Idle:00,Parity:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(dividedClock),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[1]_2 ),
        .D(next_state),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "Start:01,Send_data:10,Idle:00,Parity:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(dividedClock),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[1]_2 ),
        .D(D),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \LED_OBUF[0]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(LED_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \LED_OBUF[2]_inst_i_1 
       (.I0(Q[0]),
        .O(LED_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \LED_OBUF[3]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(LED_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[2]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\FSM_sequential_current_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \count[2]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(CPU_RESETN_IBUF),
        .O(\FSM_sequential_current_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \register[7]_i_1 
       (.I0(Q[0]),
        .O(E));
  LUT2 #(
    .INIT(4'h2)) 
    \register[7]_i_2 
       (.I0(SW_IBUF),
        .I1(Q[1]),
        .O(\FSM_sequential_current_state_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h39B1)) 
    \shift_reg[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\shift_reg_reg[7] ),
        .I3(dff_res),
        .O(out));
endmodule

module Tx_top
   (LED_OBUF,
    out,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[0] ,
    \FSM_sequential_current_state_reg[1]_0 ,
    SW_IBUF,
    dividedClock,
    \FSM_sequential_current_state_reg[1]_1 ,
    Q,
    CPU_RESETN_IBUF);
  output [2:0]LED_OBUF;
  output out;
  output \FSM_sequential_current_state_reg[1] ;
  output \FSM_sequential_current_state_reg[0] ;
  output \FSM_sequential_current_state_reg[1]_0 ;
  input [11:0]SW_IBUF;
  input dividedClock;
  input \FSM_sequential_current_state_reg[1]_1 ;
  input [1:0]Q;
  input CPU_RESETN_IBUF;

  wire CPU_RESETN_IBUF;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire \FSM_sequential_current_state_reg[1]_1 ;
  wire [2:0]LED_OBUF;
  wire [1:0]Q;
  wire [11:0]SW_IBUF;
  wire [1:0]current_state;
  wire dff_res;
  wire dividedClock;
  wire fsm1_n_6;
  wire fsm1_n_7;
  wire fsm1_n_8;
  wire fsm1_n_9;
  wire [1:1]next_state;
  wire out;
  wire reg_out;
  wire signal;

  nBits_comparator__parameterized1 comp1
       (.SW_IBUF(SW_IBUF[11:8]),
        .dividedClock(dividedClock),
        .signal(signal),
        .signal_reg_0(\FSM_sequential_current_state_reg[1]_1 ));
  n_TX_dataPath dp1
       (.D(next_state),
        .E(fsm1_n_9),
        .\FSM_sequential_current_state_reg[0] (\FSM_sequential_current_state_reg[0] ),
        .\FSM_sequential_current_state_reg[1] (\FSM_sequential_current_state_reg[1] ),
        .\FSM_sequential_current_state_reg[1]_0 (\FSM_sequential_current_state_reg[1]_0 ),
        .\FSM_sequential_current_state_reg[1]_1 (Q),
        .Q(reg_out),
        .SW_IBUF(SW_IBUF[6:0]),
        .\count_reg[0] (fsm1_n_7),
        .\count_reg[2] (fsm1_n_6),
        .dff_res(dff_res),
        .dividedClock(dividedClock),
        .\register_reg[0] (current_state),
        .\register_reg[7] (\FSM_sequential_current_state_reg[1]_1 ),
        .\register_reg[7]_0 (fsm1_n_8));
  Tx_FSM fsm1
       (.CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .D(next_state),
        .E(fsm1_n_9),
        .\FSM_sequential_current_state_reg[0]_0 (fsm1_n_6),
        .\FSM_sequential_current_state_reg[1]_0 (fsm1_n_7),
        .\FSM_sequential_current_state_reg[1]_1 (fsm1_n_8),
        .\FSM_sequential_current_state_reg[1]_2 (\FSM_sequential_current_state_reg[1]_1 ),
        .LED_OBUF(LED_OBUF),
        .Q(current_state),
        .SW_IBUF(SW_IBUF[7]),
        .dff_res(dff_res),
        .dividedClock(dividedClock),
        .out(out),
        .\shift_reg_reg[7] (reg_out),
        .signal(signal));
endmodule

module counter_n_bit
   (CPU_RESETN,
    S,
    CB_OBUF,
    CC_OBUF,
    CG_OBUF,
    CD_OBUF,
    CA_OBUF,
    CE_OBUF,
    CF_OBUF,
    AN_OBUF,
    CLK100MHZ_IBUF_BUFG,
    CPU_RESETN_IBUF,
    CB_OBUF_inst_i_1_0,
    CB_OBUF_inst_i_1_1,
    CB_OBUF_inst_i_1_2,
    CB_OBUF_inst_i_1_3,
    SW_IBUF);
  output CPU_RESETN;
  output [1:0]S;
  output CB_OBUF;
  output CC_OBUF;
  output CG_OBUF;
  output CD_OBUF;
  output CA_OBUF;
  output CE_OBUF;
  output CF_OBUF;
  output [7:0]AN_OBUF;
  input CLK100MHZ_IBUF_BUFG;
  input CPU_RESETN_IBUF;
  input CB_OBUF_inst_i_1_0;
  input CB_OBUF_inst_i_1_1;
  input CB_OBUF_inst_i_1_2;
  input CB_OBUF_inst_i_1_3;
  input [7:0]SW_IBUF;

  wire [7:0]AN_OBUF;
  wire CA_OBUF;
  wire CA_OBUF_inst_i_10_n_0;
  wire CA_OBUF_inst_i_12_n_0;
  wire CA_OBUF_inst_i_6_n_0;
  wire CA_OBUF_inst_i_8_n_0;
  wire CB_OBUF;
  wire CB_OBUF_inst_i_1_0;
  wire CB_OBUF_inst_i_1_1;
  wire CB_OBUF_inst_i_1_2;
  wire CB_OBUF_inst_i_1_3;
  wire CC_OBUF;
  wire CD_OBUF;
  wire CE_OBUF;
  wire CF_OBUF;
  wire CG_OBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN;
  wire CPU_RESETN_IBUF;
  wire [1:0]S;
  wire [7:0]SW_IBUF;
  wire \count[0]_i_2_n_0 ;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_1 ;
  wire \count_reg[0]_i_1_n_2 ;
  wire \count_reg[0]_i_1_n_3 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[4]_i_1__0_n_0 ;
  wire \count_reg[4]_i_1__0_n_1 ;
  wire \count_reg[4]_i_1__0_n_2 ;
  wire \count_reg[4]_i_1__0_n_3 ;
  wire \count_reg[4]_i_1__0_n_4 ;
  wire \count_reg[4]_i_1__0_n_5 ;
  wire \count_reg[4]_i_1__0_n_6 ;
  wire \count_reg[4]_i_1__0_n_7 ;
  wire \count_reg[8]_i_1__0_n_0 ;
  wire \count_reg[8]_i_1__0_n_1 ;
  wire \count_reg[8]_i_1__0_n_2 ;
  wire \count_reg[8]_i_1__0_n_3 ;
  wire \count_reg[8]_i_1__0_n_4 ;
  wire \count_reg[8]_i_1__0_n_5 ;
  wire \count_reg[8]_i_1__0_n_6 ;
  wire \count_reg[8]_i_1__0_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [3:0]digits__19;
  wire [2:2]sel0;
  wire [3:3]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \AN_OBUF[0]_inst_i_1 
       (.I0(sel0),
        .I1(S[0]),
        .I2(S[1]),
        .O(AN_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \AN_OBUF[1]_inst_i_1 
       (.I0(sel0),
        .I1(S[0]),
        .I2(S[1]),
        .O(AN_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \AN_OBUF[2]_inst_i_1 
       (.I0(sel0),
        .I1(S[1]),
        .I2(S[0]),
        .O(AN_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \AN_OBUF[3]_inst_i_1 
       (.I0(sel0),
        .I1(S[0]),
        .I2(S[1]),
        .O(AN_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \AN_OBUF[4]_inst_i_1 
       (.I0(S[0]),
        .I1(S[1]),
        .I2(sel0),
        .O(AN_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \AN_OBUF[5]_inst_i_1 
       (.I0(S[0]),
        .I1(S[1]),
        .I2(sel0),
        .O(AN_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \AN_OBUF[6]_inst_i_1 
       (.I0(S[1]),
        .I1(S[0]),
        .I2(sel0),
        .O(AN_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \AN_OBUF[7]_inst_i_1 
       (.I0(S[0]),
        .I1(S[1]),
        .I2(sel0),
        .O(AN_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    CA_OBUF_inst_i_1
       (.I0(digits__19[1]),
        .I1(digits__19[3]),
        .I2(digits__19[2]),
        .I3(digits__19[0]),
        .O(CA_OBUF));
  LUT4 #(
    .INIT(16'h00E2)) 
    CA_OBUF_inst_i_10
       (.I0(SW_IBUF[2]),
        .I1(S[0]),
        .I2(SW_IBUF[6]),
        .I3(S[1]),
        .O(CA_OBUF_inst_i_10_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    CA_OBUF_inst_i_12
       (.I0(SW_IBUF[0]),
        .I1(S[0]),
        .I2(SW_IBUF[4]),
        .I3(S[1]),
        .O(CA_OBUF_inst_i_12_n_0));
  MUXF7 CA_OBUF_inst_i_2
       (.I0(CA_OBUF_inst_i_6_n_0),
        .I1(CB_OBUF_inst_i_1_1),
        .O(digits__19[1]),
        .S(sel0));
  MUXF7 CA_OBUF_inst_i_3
       (.I0(CA_OBUF_inst_i_8_n_0),
        .I1(CB_OBUF_inst_i_1_3),
        .O(digits__19[3]),
        .S(sel0));
  MUXF7 CA_OBUF_inst_i_4
       (.I0(CA_OBUF_inst_i_10_n_0),
        .I1(CB_OBUF_inst_i_1_2),
        .O(digits__19[2]),
        .S(sel0));
  MUXF7 CA_OBUF_inst_i_5
       (.I0(CA_OBUF_inst_i_12_n_0),
        .I1(CB_OBUF_inst_i_1_0),
        .O(digits__19[0]),
        .S(sel0));
  LUT4 #(
    .INIT(16'h00E2)) 
    CA_OBUF_inst_i_6
       (.I0(SW_IBUF[1]),
        .I1(S[0]),
        .I2(SW_IBUF[5]),
        .I3(S[1]),
        .O(CA_OBUF_inst_i_6_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    CA_OBUF_inst_i_8
       (.I0(SW_IBUF[3]),
        .I1(S[0]),
        .I2(SW_IBUF[7]),
        .I3(S[1]),
        .O(CA_OBUF_inst_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hD060)) 
    CB_OBUF_inst_i_1
       (.I0(digits__19[0]),
        .I1(digits__19[1]),
        .I2(digits__19[2]),
        .I3(digits__19[3]),
        .O(CB_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hB002)) 
    CC_OBUF_inst_i_1
       (.I0(digits__19[1]),
        .I1(digits__19[0]),
        .I2(digits__19[2]),
        .I3(digits__19[3]),
        .O(CC_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8924)) 
    CD_OBUF_inst_i_1
       (.I0(digits__19[1]),
        .I1(digits__19[2]),
        .I2(digits__19[3]),
        .I3(digits__19[0]),
        .O(CD_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h5704)) 
    CE_OBUF_inst_i_1
       (.I0(digits__19[3]),
        .I1(digits__19[2]),
        .I2(digits__19[1]),
        .I3(digits__19[0]),
        .O(CE_OBUF));
  LUT4 #(
    .INIT(16'h4504)) 
    CF_OBUF_inst_i_1
       (.I0(digits__19[3]),
        .I1(digits__19[0]),
        .I2(digits__19[2]),
        .I3(digits__19[1]),
        .O(CF_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h4909)) 
    CG_OBUF_inst_i_1
       (.I0(digits__19[3]),
        .I1(digits__19[2]),
        .I2(digits__19[1]),
        .I3(digits__19[0]),
        .O(CG_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(CPU_RESETN_IBUF),
        .O(CPU_RESETN));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(\count_reg_n_0_[0] ),
        .R(CPU_RESETN));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\count_reg[0]_i_1_n_1 ,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] ,\count[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1__0_n_5 ),
        .Q(\count_reg_n_0_[10] ),
        .R(CPU_RESETN));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1__0_n_4 ),
        .Q(\count_reg_n_0_[11] ),
        .R(CPU_RESETN));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(\count_reg_n_0_[12] ),
        .R(CPU_RESETN));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1__0_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] ,\count_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(\count_reg_n_0_[13] ),
        .R(CPU_RESETN));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(\count_reg_n_0_[14] ),
        .R(CPU_RESETN));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(\count_reg_n_0_[15] ),
        .R(CPU_RESETN));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(\count_reg_n_0_[16] ),
        .R(CPU_RESETN));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\NLW_count_reg[16]_i_1_CO_UNCONNECTED [3],\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({sel0,S,\count_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(S[0]),
        .R(CPU_RESETN));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(S[1]),
        .R(CPU_RESETN));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(sel0),
        .R(CPU_RESETN));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(\count_reg_n_0_[1] ),
        .R(CPU_RESETN));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(\count_reg_n_0_[2] ),
        .R(CPU_RESETN));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(\count_reg_n_0_[3] ),
        .R(CPU_RESETN));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1__0_n_7 ),
        .Q(\count_reg_n_0_[4] ),
        .R(CPU_RESETN));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \count_reg[4]_i_1__0 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1__0_n_0 ,\count_reg[4]_i_1__0_n_1 ,\count_reg[4]_i_1__0_n_2 ,\count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1__0_n_4 ,\count_reg[4]_i_1__0_n_5 ,\count_reg[4]_i_1__0_n_6 ,\count_reg[4]_i_1__0_n_7 }),
        .S({\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] ,\count_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1__0_n_6 ),
        .Q(\count_reg_n_0_[5] ),
        .R(CPU_RESETN));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1__0_n_5 ),
        .Q(\count_reg_n_0_[6] ),
        .R(CPU_RESETN));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1__0_n_4 ),
        .Q(\count_reg_n_0_[7] ),
        .R(CPU_RESETN));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1__0_n_7 ),
        .Q(\count_reg_n_0_[8] ),
        .R(CPU_RESETN));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \count_reg[8]_i_1__0 
       (.CI(\count_reg[4]_i_1__0_n_0 ),
        .CO({\count_reg[8]_i_1__0_n_0 ,\count_reg[8]_i_1__0_n_1 ,\count_reg[8]_i_1__0_n_2 ,\count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__0_n_4 ,\count_reg[8]_i_1__0_n_5 ,\count_reg[8]_i_1__0_n_6 ,\count_reg[8]_i_1__0_n_7 }),
        .S({\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] ,\count_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1__0_n_6 ),
        .Q(\count_reg_n_0_[9] ),
        .R(CPU_RESETN));
endmodule

module dFlipFlop
   (CLK,
    q_reg_0,
    q_reg_1);
  output CLK;
  input q_reg_0;
  input q_reg_1;

  wire CLK;
  wire q_i_1__1_n_0;
  wire q_reg_0;
  wire q_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_i_1__1
       (.I0(CLK),
        .O(q_i_1__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(q_reg_0),
        .CE(1'b1),
        .CLR(q_reg_1),
        .D(q_i_1__1_n_0),
        .Q(CLK));
endmodule

(* ORIG_REF_NAME = "dFlipFlop" *) 
module dFlipFlop_0
   (dividedClock,
    signal,
    q_reg_0);
  output dividedClock;
  input signal;
  input q_reg_0;

  wire dividedClock;
  wire q_reg_0;
  wire qb;
  wire signal;

  LUT1 #(
    .INIT(2'h1)) 
    q_i_1__0
       (.I0(dividedClock),
        .O(qb));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(signal),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(qb),
        .Q(dividedClock));
endmodule

(* ORIG_REF_NAME = "dFlipFlop" *) 
module dFlipFlop_1
   (dff_res,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[0] ,
    \FSM_sequential_current_state_reg[1]_0 ,
    dividedClock,
    q_reg_0,
    Q,
    \FSM_sequential_current_state_reg[1]_1 ,
    \FSM_sequential_current_state_reg[2] );
  output dff_res;
  output \FSM_sequential_current_state_reg[1] ;
  output \FSM_sequential_current_state_reg[0] ;
  output \FSM_sequential_current_state_reg[1]_0 ;
  input dividedClock;
  input q_reg_0;
  input [0:0]Q;
  input [1:0]\FSM_sequential_current_state_reg[1]_1 ;
  input [1:0]\FSM_sequential_current_state_reg[2] ;

  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire [1:0]\FSM_sequential_current_state_reg[1]_1 ;
  wire [1:0]\FSM_sequential_current_state_reg[2] ;
  wire [0:0]Q;
  wire dff_res;
  wire dividedClock;
  wire q_i_1_n_0;
  wire q_reg_0;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(\FSM_sequential_current_state_reg[0] ),
        .I1(\FSM_sequential_current_state_reg[1]_1 [1]),
        .O(\FSM_sequential_current_state_reg[1]_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_current_state[1]_i_3 
       (.I0(\FSM_sequential_current_state_reg[0] ),
        .I1(\FSM_sequential_current_state_reg[1]_1 [1]),
        .O(\FSM_sequential_current_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h41055500)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(\FSM_sequential_current_state_reg[1]_1 [0]),
        .I1(dff_res),
        .I2(Q),
        .I3(\FSM_sequential_current_state_reg[2] [0]),
        .I4(\FSM_sequential_current_state_reg[2] [1]),
        .O(\FSM_sequential_current_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    q_i_1
       (.I0(dff_res),
        .I1(Q),
        .O(q_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(dividedClock),
        .CE(1'b1),
        .CLR(q_reg_0),
        .D(q_i_1_n_0),
        .Q(dff_res));
endmodule

module nBits_comparator
   (signal,
    resetSignal_reg_0,
    signal_0,
    CLK100MHZ_IBUF_BUFG,
    signal_reg_0,
    resetSignal_reg_1,
    CPU_RESETN_IBUF);
  output signal;
  output resetSignal_reg_0;
  input signal_0;
  input CLK100MHZ_IBUF_BUFG;
  input signal_reg_0;
  input resetSignal_reg_1;
  input CPU_RESETN_IBUF;

  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN_IBUF;
  wire resetSignal;
  wire resetSignal_reg_0;
  wire resetSignal_reg_1;
  wire signal;
  wire signal_0;
  wire signal_reg_0;

  LUT2 #(
    .INIT(4'h7)) 
    \count[9]_i_2 
       (.I0(resetSignal),
        .I1(CPU_RESETN_IBUF),
        .O(resetSignal_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    resetSignal_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(signal_reg_0),
        .D(resetSignal_reg_1),
        .Q(resetSignal));
  FDCE #(
    .INIT(1'b0)) 
    signal_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(signal_reg_0),
        .D(signal_0),
        .Q(signal));
endmodule

(* ORIG_REF_NAME = "nBits_comparator" *) 
module nBits_comparator__parameterized0
   (signal_reg_0,
    resetSignal_reg_0,
    resetSignal_reg_1,
    CLK100MHZ_IBUF_BUFG,
    signal_reg_1,
    signal_reg_2,
    CPU_RESETN_IBUF);
  output signal_reg_0;
  output resetSignal_reg_0;
  input resetSignal_reg_1;
  input CLK100MHZ_IBUF_BUFG;
  input signal_reg_1;
  input signal_reg_2;
  input CPU_RESETN_IBUF;

  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN_IBUF;
  wire resetSignal;
  wire resetSignal_reg_0;
  wire resetSignal_reg_1;
  wire signal_reg_0;
  wire signal_reg_1;
  wire signal_reg_2;

  LUT2 #(
    .INIT(4'h7)) 
    \count[5]_i_2 
       (.I0(resetSignal),
        .I1(CPU_RESETN_IBUF),
        .O(resetSignal_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    resetSignal_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(signal_reg_1),
        .D(resetSignal_reg_1),
        .Q(resetSignal));
  FDCE #(
    .INIT(1'b0)) 
    signal_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(signal_reg_1),
        .D(signal_reg_2),
        .Q(signal_reg_0));
endmodule

(* ORIG_REF_NAME = "nBits_comparator" *) 
module nBits_comparator__parameterized1
   (signal,
    SW_IBUF,
    dividedClock,
    signal_reg_0);
  output signal;
  input [3:0]SW_IBUF;
  input dividedClock;
  input signal_reg_0;

  wire [3:0]SW_IBUF;
  wire dividedClock;
  wire signal;
  wire signal__0_n_0;
  wire signal_reg_0;

  LUT4 #(
    .INIT(16'h0010)) 
    signal__0
       (.I0(SW_IBUF[0]),
        .I1(SW_IBUF[2]),
        .I2(SW_IBUF[3]),
        .I3(SW_IBUF[1]),
        .O(signal__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    signal_reg
       (.C(dividedClock),
        .CE(1'b1),
        .CLR(signal_reg_0),
        .D(signal__0_n_0),
        .Q(signal));
endmodule

module nBits_up_down_counter
   (signal,
    \count_reg[7]_0 ,
    CLK100MHZ_IBUF_BUFG,
    \count_reg[0]_0 );
  output signal;
  output \count_reg[7]_0 ;
  input CLK100MHZ_IBUF_BUFG;
  input \count_reg[0]_0 ;

  wire CLK100MHZ_IBUF_BUFG;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[4]_i_3_n_0 ;
  wire \count[4]_i_4_n_0 ;
  wire \count[4]_i_5_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count[8]_i_3_n_0 ;
  wire \count[8]_i_4_n_0 ;
  wire \count[8]_i_5_n_0 ;
  wire \count[9]_i_3_n_0 ;
  wire [9:0]count_reg;
  wire \count_reg[0]_0 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[7]_0 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \count_reg[9]_i_1_n_7 ;
  wire resetSignal_i_2_n_0;
  wire signal;
  wire signal_i_2_n_0;
  wire [3:0]\NLW_count_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_count_reg[9]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[4]_i_2 
       (.I0(count_reg[1]),
        .O(\count[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[4]_i_3 
       (.I0(count_reg[3]),
        .I1(count_reg[4]),
        .O(\count[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[4]_i_4 
       (.I0(count_reg[2]),
        .I1(count_reg[3]),
        .O(\count[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[4]_i_5 
       (.I0(count_reg[1]),
        .I1(count_reg[2]),
        .O(\count[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_2 
       (.I0(count_reg[7]),
        .I1(count_reg[8]),
        .O(\count[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_3 
       (.I0(count_reg[6]),
        .I1(count_reg[7]),
        .O(\count[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_4 
       (.I0(count_reg[5]),
        .I1(count_reg[6]),
        .O(\count[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_5 
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .O(\count[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[9]_i_3 
       (.I0(count_reg[8]),
        .I1(count_reg[9]),
        .O(\count[9]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[0]_0 ),
        .D(\count[0]_i_1__0_n_0 ),
        .Q(count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[0]_0 ),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[0]_0 ),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[0]_0 ),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[0]_0 ),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[4]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(count_reg[0]),
        .DI({count_reg[3:1],\count[4]_i_2_n_0 }),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count[4]_i_3_n_0 ,\count[4]_i_4_n_0 ,\count[4]_i_5_n_0 ,count_reg[1]}));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[0]_0 ),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[0]_0 ),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[0]_0 ),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[0]_0 ),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[8]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(count_reg[7:4]),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count[8]_i_2_n_0 ,\count[8]_i_3_n_0 ,\count[8]_i_4_n_0 ,\count[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[0]_0 ),
        .D(\count_reg[9]_i_1_n_7 ),
        .Q(count_reg[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \count_reg[9]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO(\NLW_count_reg[9]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[9]_i_1_O_UNCONNECTED [3:1],\count_reg[9]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\count[9]_i_3_n_0 }));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    resetSignal_i_1__0
       (.I0(count_reg[7]),
        .I1(count_reg[6]),
        .I2(count_reg[8]),
        .I3(resetSignal_i_2_n_0),
        .I4(count_reg[9]),
        .O(\count_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    resetSignal_i_2
       (.I0(count_reg[5]),
        .I1(count_reg[4]),
        .I2(count_reg[3]),
        .I3(count_reg[2]),
        .I4(count_reg[1]),
        .I5(count_reg[0]),
        .O(resetSignal_i_2_n_0));
  LUT5 #(
    .INIT(32'h00002000)) 
    signal_i_1__0
       (.I0(count_reg[9]),
        .I1(count_reg[7]),
        .I2(count_reg[8]),
        .I3(signal_i_2_n_0),
        .I4(count_reg[6]),
        .O(signal));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    signal_i_2
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .I5(count_reg[5]),
        .O(signal_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "nBits_up_down_counter" *) 
module nBits_up_down_counter__parameterized0
   (\count_reg[5]_0 ,
    \count_reg[0]_0 ,
    CLK100MHZ_IBUF_BUFG,
    \count_reg[0]_1 );
  output \count_reg[5]_0 ;
  output \count_reg[0]_0 ;
  input CLK100MHZ_IBUF_BUFG;
  input \count_reg[0]_1 ;

  wire CLK100MHZ_IBUF_BUFG;
  wire [5:0]count;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[5]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \count[2]_i_1 
       (.I0(count[0]),
        .I1(count[2]),
        .I2(count[1]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h78F0)) 
    \count[3]_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .I2(count[3]),
        .I3(count[2]),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7F80FF00)) 
    \count[4]_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(count[2]),
        .I3(count[4]),
        .I4(count[3]),
        .O(\count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFF0000)) 
    \count[5]_i_1 
       (.I0(count[2]),
        .I1(count[0]),
        .I2(count[1]),
        .I3(count[3]),
        .I4(count[5]),
        .I5(count[4]),
        .O(\count[5]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[0]_1 ),
        .D(\count[0]_i_1_n_0 ),
        .Q(count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[0]_1 ),
        .D(\count[1]_i_1_n_0 ),
        .Q(count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[0]_1 ),
        .D(\count[2]_i_1_n_0 ),
        .Q(count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[0]_1 ),
        .D(\count[3]_i_1_n_0 ),
        .Q(count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[0]_1 ),
        .D(\count[4]_i_1_n_0 ),
        .Q(count[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[0]_1 ),
        .D(\count[5]_i_1_n_0 ),
        .Q(count[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    resetSignal_i_1
       (.I0(count[5]),
        .I1(count[4]),
        .I2(count[1]),
        .I3(count[0]),
        .I4(count[3]),
        .I5(count[2]),
        .O(\count_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    signal_i_1
       (.I0(count[0]),
        .I1(count[1]),
        .I2(count[4]),
        .I3(count[5]),
        .I4(count[3]),
        .I5(count[2]),
        .O(\count_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "nBits_up_down_counter" *) 
module nBits_up_down_counter__parameterized1
   (D,
    \count_reg[0]_0 ,
    dividedClock,
    \count_reg[2]_0 ,
    \FSM_sequential_current_state_reg[1] );
  output [0:0]D;
  input \count_reg[0]_0 ;
  input dividedClock;
  input \count_reg[2]_0 ;
  input [1:0]\FSM_sequential_current_state_reg[1] ;

  wire [0:0]D;
  wire [1:0]\FSM_sequential_current_state_reg[1] ;
  wire \count[0]_i_1__1_n_0 ;
  wire \count[1]_i_1__0_n_0 ;
  wire \count[2]_i_2_n_0 ;
  wire [2:0]count_reg;
  wire \count_reg[0]_0 ;
  wire \count_reg[2]_0 ;
  wire dividedClock;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h26666666)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(\FSM_sequential_current_state_reg[1] [0]),
        .I1(\FSM_sequential_current_state_reg[1] [1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(count_reg[1]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__1 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__0 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(\count[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \count[2]_i_2 
       (.I0(count_reg[0]),
        .I1(count_reg[2]),
        .I2(count_reg[1]),
        .O(\count[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(dividedClock),
        .CE(\count_reg[0]_0 ),
        .CLR(\count_reg[2]_0 ),
        .D(\count[0]_i_1__1_n_0 ),
        .Q(count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(dividedClock),
        .CE(\count_reg[0]_0 ),
        .CLR(\count_reg[2]_0 ),
        .D(\count[1]_i_1__0_n_0 ),
        .Q(count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(dividedClock),
        .CE(\count_reg[0]_0 ),
        .CLR(\count_reg[2]_0 ),
        .D(\count[2]_i_2_n_0 ),
        .Q(count_reg[2]));
endmodule

module n_TX_dataPath
   (dff_res,
    Q,
    D,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[0] ,
    \FSM_sequential_current_state_reg[1]_0 ,
    dividedClock,
    \register_reg[7] ,
    \count_reg[0] ,
    \count_reg[2] ,
    \register_reg[0] ,
    SW_IBUF,
    \FSM_sequential_current_state_reg[1]_1 ,
    E,
    \register_reg[7]_0 );
  output dff_res;
  output [0:0]Q;
  output [0:0]D;
  output \FSM_sequential_current_state_reg[1] ;
  output \FSM_sequential_current_state_reg[0] ;
  output \FSM_sequential_current_state_reg[1]_0 ;
  input dividedClock;
  input \register_reg[7] ;
  input \count_reg[0] ;
  input \count_reg[2] ;
  input [1:0]\register_reg[0] ;
  input [6:0]SW_IBUF;
  input [1:0]\FSM_sequential_current_state_reg[1]_1 ;
  input [0:0]E;
  input [0:0]\register_reg[7]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire [1:0]\FSM_sequential_current_state_reg[1]_1 ;
  wire [0:0]Q;
  wire [6:0]SW_IBUF;
  wire \count_reg[0] ;
  wire \count_reg[2] ;
  wire dff_res;
  wire dividedClock;
  wire [1:0]\register_reg[0] ;
  wire \register_reg[7] ;
  wire [0:0]\register_reg[7]_0 ;

  nBits_up_down_counter__parameterized1 counter1
       (.D(D),
        .\FSM_sequential_current_state_reg[1] (\register_reg[0] ),
        .\count_reg[0]_0 (\count_reg[0] ),
        .\count_reg[2]_0 (\count_reg[2] ),
        .dividedClock(dividedClock));
  dFlipFlop_1 dff2
       (.\FSM_sequential_current_state_reg[0] (\FSM_sequential_current_state_reg[0] ),
        .\FSM_sequential_current_state_reg[1] (\FSM_sequential_current_state_reg[1] ),
        .\FSM_sequential_current_state_reg[1]_0 (\FSM_sequential_current_state_reg[1]_0 ),
        .\FSM_sequential_current_state_reg[1]_1 (\FSM_sequential_current_state_reg[1]_1 ),
        .\FSM_sequential_current_state_reg[2] (\register_reg[0] ),
        .Q(Q),
        .dff_res(dff_res),
        .dividedClock(dividedClock),
        .q_reg_0(\register_reg[7] ));
  n_shiftRegister_oneBit shft1
       (.E(E),
        .Q(Q),
        .SW_IBUF(SW_IBUF),
        .dividedClock(dividedClock),
        .\register_reg[0]_0 (\register_reg[0] [1]),
        .\register_reg[7]_0 (\register_reg[7]_0 ),
        .\register_reg[7]_1 (\register_reg[7] ));
endmodule

module n_clockDivider
   (dividedClock,
    CLK100MHZ_IBUF_BUFG,
    q_reg,
    CPU_RESETN_IBUF);
  output dividedClock;
  input CLK100MHZ_IBUF_BUFG;
  input q_reg;
  input CPU_RESETN_IBUF;

  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN_IBUF;
  wire comp1_n_1;
  wire dividedClock;
  wire nbc1_n_1;
  wire q_reg;
  wire signal;
  wire signal_0;

  nBits_comparator comp1
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .resetSignal_reg_0(comp1_n_1),
        .resetSignal_reg_1(nbc1_n_1),
        .signal(signal),
        .signal_0(signal_0),
        .signal_reg_0(q_reg));
  dFlipFlop_0 dff1
       (.dividedClock(dividedClock),
        .q_reg_0(q_reg),
        .signal(signal));
  nBits_up_down_counter nbc1
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .\count_reg[0]_0 (comp1_n_1),
        .\count_reg[7]_0 (nbc1_n_1),
        .signal(signal_0));
endmodule

(* ORIG_REF_NAME = "n_clockDivider" *) 
module n_clockDivider__parameterized0
   (CLK,
    CLK100MHZ_IBUF_BUFG,
    q_reg,
    CPU_RESETN_IBUF);
  output CLK;
  input CLK100MHZ_IBUF_BUFG;
  input q_reg;
  input CPU_RESETN_IBUF;

  wire CLK;
  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN_IBUF;
  wire comp1_n_0;
  wire comp1_n_1;
  wire nbc1_n_0;
  wire nbc1_n_1;
  wire q_reg;

  nBits_comparator__parameterized0 comp1
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .resetSignal_reg_0(comp1_n_1),
        .resetSignal_reg_1(nbc1_n_0),
        .signal_reg_0(comp1_n_0),
        .signal_reg_1(q_reg),
        .signal_reg_2(nbc1_n_1));
  dFlipFlop dff1
       (.CLK(CLK),
        .q_reg_0(comp1_n_0),
        .q_reg_1(q_reg));
  nBits_up_down_counter__parameterized0 nbc1
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .\count_reg[0]_0 (nbc1_n_1),
        .\count_reg[0]_1 (comp1_n_1),
        .\count_reg[5]_0 (nbc1_n_0));
endmodule

module n_shiftRegister_oneBit
   (Q,
    \register_reg[0]_0 ,
    SW_IBUF,
    E,
    \register_reg[7]_0 ,
    dividedClock,
    \register_reg[7]_1 );
  output [0:0]Q;
  input [0:0]\register_reg[0]_0 ;
  input [6:0]SW_IBUF;
  input [0:0]E;
  input [0:0]\register_reg[7]_0 ;
  input dividedClock;
  input \register_reg[7]_1 ;

  wire [0:0]E;
  wire [0:0]Q;
  wire [6:0]SW_IBUF;
  wire dividedClock;
  wire [6:0]p_2_in;
  wire [0:0]\register_reg[0]_0 ;
  wire [0:0]\register_reg[7]_0 ;
  wire \register_reg[7]_1 ;
  wire \register_reg_n_0_[1] ;
  wire \register_reg_n_0_[2] ;
  wire \register_reg_n_0_[3] ;
  wire \register_reg_n_0_[4] ;
  wire \register_reg_n_0_[5] ;
  wire \register_reg_n_0_[6] ;
  wire \register_reg_n_0_[7] ;

  LUT3 #(
    .INIT(8'hB8)) 
    \register[0]_i_1 
       (.I0(\register_reg_n_0_[1] ),
        .I1(\register_reg[0]_0 ),
        .I2(SW_IBUF[0]),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \register[1]_i_1 
       (.I0(\register_reg_n_0_[2] ),
        .I1(\register_reg[0]_0 ),
        .I2(SW_IBUF[1]),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \register[2]_i_1 
       (.I0(\register_reg_n_0_[3] ),
        .I1(\register_reg[0]_0 ),
        .I2(SW_IBUF[2]),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \register[3]_i_1 
       (.I0(\register_reg_n_0_[4] ),
        .I1(\register_reg[0]_0 ),
        .I2(SW_IBUF[3]),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \register[4]_i_1 
       (.I0(\register_reg_n_0_[5] ),
        .I1(\register_reg[0]_0 ),
        .I2(SW_IBUF[4]),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \register[5]_i_1 
       (.I0(\register_reg_n_0_[6] ),
        .I1(\register_reg[0]_0 ),
        .I2(SW_IBUF[5]),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \register[6]_i_1 
       (.I0(\register_reg_n_0_[7] ),
        .I1(\register_reg[0]_0 ),
        .I2(SW_IBUF[6]),
        .O(p_2_in[6]));
  FDCE #(
    .INIT(1'b0)) 
    \register_reg[0] 
       (.C(dividedClock),
        .CE(E),
        .CLR(\register_reg[7]_1 ),
        .D(p_2_in[0]),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \register_reg[1] 
       (.C(dividedClock),
        .CE(E),
        .CLR(\register_reg[7]_1 ),
        .D(p_2_in[1]),
        .Q(\register_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \register_reg[2] 
       (.C(dividedClock),
        .CE(E),
        .CLR(\register_reg[7]_1 ),
        .D(p_2_in[2]),
        .Q(\register_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \register_reg[3] 
       (.C(dividedClock),
        .CE(E),
        .CLR(\register_reg[7]_1 ),
        .D(p_2_in[3]),
        .Q(\register_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \register_reg[4] 
       (.C(dividedClock),
        .CE(E),
        .CLR(\register_reg[7]_1 ),
        .D(p_2_in[4]),
        .Q(\register_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \register_reg[5] 
       (.C(dividedClock),
        .CE(E),
        .CLR(\register_reg[7]_1 ),
        .D(p_2_in[5]),
        .Q(\register_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \register_reg[6] 
       (.C(dividedClock),
        .CE(E),
        .CLR(\register_reg[7]_1 ),
        .D(p_2_in[6]),
        .Q(\register_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \register_reg[7] 
       (.C(dividedClock),
        .CE(E),
        .CLR(\register_reg[7]_1 ),
        .D(\register_reg[7]_0 ),
        .Q(\register_reg_n_0_[7] ));
endmodule

module sev_seg_controller
   (CPU_RESETN,
    \count_reg[18] ,
    CB_OBUF,
    CC_OBUF,
    CG_OBUF,
    CD_OBUF,
    CA_OBUF,
    CE_OBUF,
    CF_OBUF,
    AN_OBUF,
    CLK100MHZ_IBUF_BUFG,
    CPU_RESETN_IBUF,
    CB_OBUF_inst_i_1,
    CB_OBUF_inst_i_1_0,
    CB_OBUF_inst_i_1_1,
    CB_OBUF_inst_i_1_2,
    SW_IBUF);
  output CPU_RESETN;
  output [1:0]\count_reg[18] ;
  output CB_OBUF;
  output CC_OBUF;
  output CG_OBUF;
  output CD_OBUF;
  output CA_OBUF;
  output CE_OBUF;
  output CF_OBUF;
  output [7:0]AN_OBUF;
  input CLK100MHZ_IBUF_BUFG;
  input CPU_RESETN_IBUF;
  input CB_OBUF_inst_i_1;
  input CB_OBUF_inst_i_1_0;
  input CB_OBUF_inst_i_1_1;
  input CB_OBUF_inst_i_1_2;
  input [7:0]SW_IBUF;

  wire [7:0]AN_OBUF;
  wire CA_OBUF;
  wire CB_OBUF;
  wire CB_OBUF_inst_i_1;
  wire CB_OBUF_inst_i_1_0;
  wire CB_OBUF_inst_i_1_1;
  wire CB_OBUF_inst_i_1_2;
  wire CC_OBUF;
  wire CD_OBUF;
  wire CE_OBUF;
  wire CF_OBUF;
  wire CG_OBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN;
  wire CPU_RESETN_IBUF;
  wire [7:0]SW_IBUF;
  wire [1:0]\count_reg[18] ;

  counter_n_bit counter
       (.AN_OBUF(AN_OBUF),
        .CA_OBUF(CA_OBUF),
        .CB_OBUF(CB_OBUF),
        .CB_OBUF_inst_i_1_0(CB_OBUF_inst_i_1),
        .CB_OBUF_inst_i_1_1(CB_OBUF_inst_i_1_0),
        .CB_OBUF_inst_i_1_2(CB_OBUF_inst_i_1_1),
        .CB_OBUF_inst_i_1_3(CB_OBUF_inst_i_1_2),
        .CC_OBUF(CC_OBUF),
        .CD_OBUF(CD_OBUF),
        .CE_OBUF(CE_OBUF),
        .CF_OBUF(CF_OBUF),
        .CG_OBUF(CG_OBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CPU_RESETN(CPU_RESETN),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .S(\count_reg[18] ),
        .SW_IBUF(SW_IBUF));
endmodule

(* divFactor1 = "799" *) (* divFactor2 = "49" *) 
(* NotValidForBitStream *)
module sev_seg_top
   (CLK100MHZ,
    CPU_RESETN,
    CA,
    CB,
    CC,
    CD,
    CE,
    CF,
    CG,
    DP,
    AN,
    LED,
    SW,
    JA,
    JB);
  input CLK100MHZ;
  input CPU_RESETN;
  output CA;
  output CB;
  output CC;
  output CD;
  output CE;
  output CF;
  output CG;
  output DP;
  output [7:0]AN;
  output [15:0]LED;
  input [15:0]SW;
  output [1:1]JA;
  input [1:1]JB;

  wire [7:0]AN;
  wire [7:0]AN_OBUF;
  wire CA;
  wire CA_OBUF;
  wire CB;
  wire CB_OBUF;
  wire CC;
  wire CC_OBUF;
  wire CD;
  wire CD_OBUF;
  wire CE;
  wire CE_OBUF;
  wire CF;
  wire CF_OBUF;
  wire CG;
  wire CG_OBUF;
  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN;
  wire CPU_RESETN_IBUF;
  wire DP;
  wire [1:1]JA;
  wire [15:0]LED;
  wire [3:0]LED_OBUF;
  wire RX1_n_2;
  wire RX1_n_3;
  wire RX1_n_4;
  wire RX1_n_5;
  wire [15:0]SW;
  wire [11:0]SW_IBUF;
  wire TX1_n_4;
  wire TX1_n_5;
  wire TX1_n_6;
  wire dividedClock;
  wire dividedClock2;
  wire [1:0]\fsm_receiver_inst/current_state ;
  wire out;
  wire [1:0]sel0;
  wire ssc_n_0;

  OBUF \AN_OBUF[0]_inst 
       (.I(AN_OBUF[0]),
        .O(AN[0]));
  OBUF \AN_OBUF[1]_inst 
       (.I(AN_OBUF[1]),
        .O(AN[1]));
  OBUF \AN_OBUF[2]_inst 
       (.I(AN_OBUF[2]),
        .O(AN[2]));
  OBUF \AN_OBUF[3]_inst 
       (.I(AN_OBUF[3]),
        .O(AN[3]));
  OBUF \AN_OBUF[4]_inst 
       (.I(AN_OBUF[4]),
        .O(AN[4]));
  OBUF \AN_OBUF[5]_inst 
       (.I(AN_OBUF[5]),
        .O(AN[5]));
  OBUF \AN_OBUF[6]_inst 
       (.I(AN_OBUF[6]),
        .O(AN[6]));
  OBUF \AN_OBUF[7]_inst 
       (.I(AN_OBUF[7]),
        .O(AN[7]));
  OBUF CA_OBUF_inst
       (.I(CA_OBUF),
        .O(CA));
  OBUF CB_OBUF_inst
       (.I(CB_OBUF),
        .O(CB));
  OBUF CC_OBUF_inst
       (.I(CC_OBUF),
        .O(CC));
  OBUF CD_OBUF_inst
       (.I(CD_OBUF),
        .O(CD));
  OBUF CE_OBUF_inst
       (.I(CE_OBUF),
        .O(CE));
  OBUF CF_OBUF_inst
       (.I(CF_OBUF),
        .O(CF));
  OBUF CG_OBUF_inst
       (.I(CG_OBUF),
        .O(CG));
  BUFG CLK100MHZ_IBUF_BUFG_inst
       (.I(CLK100MHZ_IBUF),
        .O(CLK100MHZ_IBUF_BUFG));
  IBUF CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  IBUF CPU_RESETN_IBUF_inst
       (.I(CPU_RESETN),
        .O(CPU_RESETN_IBUF));
  OBUF DP_OBUF_inst
       (.I(1'b1),
        .O(DP));
  OBUFT \JA_OBUF[1]_inst 
       (.I(1'b0),
        .O(JA),
        .T(1'b1));
  OBUF \LED_OBUF[0]_inst 
       (.I(LED_OBUF[0]),
        .O(LED[0]));
  OBUFT \LED_OBUF[10]_inst 
       (.I(1'b0),
        .O(LED[10]),
        .T(1'b1));
  OBUFT \LED_OBUF[11]_inst 
       (.I(1'b0),
        .O(LED[11]),
        .T(1'b1));
  OBUFT \LED_OBUF[12]_inst 
       (.I(1'b0),
        .O(LED[12]),
        .T(1'b1));
  OBUFT \LED_OBUF[13]_inst 
       (.I(1'b0),
        .O(LED[13]),
        .T(1'b1));
  OBUFT \LED_OBUF[14]_inst 
       (.I(1'b0),
        .O(LED[14]),
        .T(1'b1));
  OBUFT \LED_OBUF[15]_inst 
       (.I(1'b0),
        .O(LED[15]),
        .T(1'b1));
  OBUFT \LED_OBUF[1]_inst 
       (.I(1'b0),
        .O(LED[1]),
        .T(1'b1));
  OBUF \LED_OBUF[2]_inst 
       (.I(LED_OBUF[2]),
        .O(LED[2]));
  OBUF \LED_OBUF[3]_inst 
       (.I(LED_OBUF[3]),
        .O(LED[3]));
  OBUFT \LED_OBUF[4]_inst 
       (.I(1'b0),
        .O(LED[4]),
        .T(1'b1));
  OBUFT \LED_OBUF[5]_inst 
       (.I(1'b0),
        .O(LED[5]),
        .T(1'b1));
  OBUFT \LED_OBUF[6]_inst 
       (.I(1'b0),
        .O(LED[6]),
        .T(1'b1));
  OBUFT \LED_OBUF[7]_inst 
       (.I(1'b0),
        .O(LED[7]),
        .T(1'b1));
  OBUFT \LED_OBUF[8]_inst 
       (.I(1'b0),
        .O(LED[8]),
        .T(1'b1));
  OBUFT \LED_OBUF[9]_inst 
       (.I(1'b0),
        .O(LED[9]),
        .T(1'b1));
  Rx_top RX1
       (.CLK(dividedClock2),
        .\FSM_sequential_current_state_reg[0] (TX1_n_6),
        .\FSM_sequential_current_state_reg[1] (TX1_n_4),
        .\FSM_sequential_current_state_reg[2] (TX1_n_5),
        .Q(\fsm_receiver_inst/current_state ),
        .out(out),
        .sel0(sel0),
        .\shift_reg_reg[0] (RX1_n_2),
        .\shift_reg_reg[0]_0 (ssc_n_0),
        .\shift_reg_reg[1] (RX1_n_3),
        .\shift_reg_reg[2] (RX1_n_4),
        .\shift_reg_reg[3] (RX1_n_5));
  IBUF \SW_IBUF[0]_inst 
       (.I(SW[0]),
        .O(SW_IBUF[0]));
  IBUF \SW_IBUF[10]_inst 
       (.I(SW[10]),
        .O(SW_IBUF[10]));
  IBUF \SW_IBUF[11]_inst 
       (.I(SW[11]),
        .O(SW_IBUF[11]));
  IBUF \SW_IBUF[1]_inst 
       (.I(SW[1]),
        .O(SW_IBUF[1]));
  IBUF \SW_IBUF[2]_inst 
       (.I(SW[2]),
        .O(SW_IBUF[2]));
  IBUF \SW_IBUF[3]_inst 
       (.I(SW[3]),
        .O(SW_IBUF[3]));
  IBUF \SW_IBUF[4]_inst 
       (.I(SW[4]),
        .O(SW_IBUF[4]));
  IBUF \SW_IBUF[5]_inst 
       (.I(SW[5]),
        .O(SW_IBUF[5]));
  IBUF \SW_IBUF[6]_inst 
       (.I(SW[6]),
        .O(SW_IBUF[6]));
  IBUF \SW_IBUF[7]_inst 
       (.I(SW[7]),
        .O(SW_IBUF[7]));
  IBUF \SW_IBUF[8]_inst 
       (.I(SW[8]),
        .O(SW_IBUF[8]));
  IBUF \SW_IBUF[9]_inst 
       (.I(SW[9]),
        .O(SW_IBUF[9]));
  Tx_top TX1
       (.CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .\FSM_sequential_current_state_reg[0] (TX1_n_5),
        .\FSM_sequential_current_state_reg[1] (TX1_n_4),
        .\FSM_sequential_current_state_reg[1]_0 (TX1_n_6),
        .\FSM_sequential_current_state_reg[1]_1 (ssc_n_0),
        .LED_OBUF({LED_OBUF[3:2],LED_OBUF[0]}),
        .Q(\fsm_receiver_inst/current_state ),
        .SW_IBUF(SW_IBUF),
        .dividedClock(dividedClock),
        .out(out));
  n_clockDivider clkDiv1
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .dividedClock(dividedClock),
        .q_reg(ssc_n_0));
  n_clockDivider__parameterized0 clkDiv2
       (.CLK(dividedClock2),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .q_reg(ssc_n_0));
  sev_seg_controller ssc
       (.AN_OBUF(AN_OBUF),
        .CA_OBUF(CA_OBUF),
        .CB_OBUF(CB_OBUF),
        .CB_OBUF_inst_i_1(RX1_n_2),
        .CB_OBUF_inst_i_1_0(RX1_n_3),
        .CB_OBUF_inst_i_1_1(RX1_n_4),
        .CB_OBUF_inst_i_1_2(RX1_n_5),
        .CC_OBUF(CC_OBUF),
        .CD_OBUF(CD_OBUF),
        .CE_OBUF(CE_OBUF),
        .CF_OBUF(CF_OBUF),
        .CG_OBUF(CG_OBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CPU_RESETN(ssc_n_0),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .SW_IBUF(SW_IBUF[7:0]),
        .\count_reg[18] (sel0));
endmodule

module shift_register
   (\shift_reg_reg[0]_0 ,
    \shift_reg_reg[1]_0 ,
    \shift_reg_reg[2]_0 ,
    \shift_reg_reg[3]_0 ,
    E,
    out,
    CLK,
    \shift_reg_reg[0]_1 ,
    sel0);
  output \shift_reg_reg[0]_0 ;
  output \shift_reg_reg[1]_0 ;
  output \shift_reg_reg[2]_0 ;
  output \shift_reg_reg[3]_0 ;
  input [0:0]E;
  input out;
  input CLK;
  input \shift_reg_reg[0]_1 ;
  input [1:0]sel0;

  wire CLK;
  wire [0:0]E;
  wire [3:0]data5;
  wire out;
  wire [1:0]sel0;
  wire \shift_reg_reg[0]_0 ;
  wire \shift_reg_reg[0]_1 ;
  wire \shift_reg_reg[1]_0 ;
  wire \shift_reg_reg[2]_0 ;
  wire \shift_reg_reg[3]_0 ;
  wire \shift_reg_reg_n_0_[0] ;
  wire \shift_reg_reg_n_0_[1] ;
  wire \shift_reg_reg_n_0_[2] ;
  wire \shift_reg_reg_n_0_[3] ;

  LUT4 #(
    .INIT(16'h00E2)) 
    CA_OBUF_inst_i_11
       (.I0(\shift_reg_reg_n_0_[2] ),
        .I1(sel0[0]),
        .I2(data5[2]),
        .I3(sel0[1]),
        .O(\shift_reg_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    CA_OBUF_inst_i_13
       (.I0(\shift_reg_reg_n_0_[0] ),
        .I1(sel0[0]),
        .I2(data5[0]),
        .I3(sel0[1]),
        .O(\shift_reg_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    CA_OBUF_inst_i_7
       (.I0(\shift_reg_reg_n_0_[1] ),
        .I1(sel0[0]),
        .I2(data5[1]),
        .I3(sel0[1]),
        .O(\shift_reg_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    CA_OBUF_inst_i_9
       (.I0(\shift_reg_reg_n_0_[3] ),
        .I1(sel0[0]),
        .I2(data5[3]),
        .I3(sel0[1]),
        .O(\shift_reg_reg[3]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\shift_reg_reg[0]_1 ),
        .D(\shift_reg_reg_n_0_[1] ),
        .Q(\shift_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\shift_reg_reg[0]_1 ),
        .D(\shift_reg_reg_n_0_[2] ),
        .Q(\shift_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\shift_reg_reg[0]_1 ),
        .D(\shift_reg_reg_n_0_[3] ),
        .Q(\shift_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(\shift_reg_reg[0]_1 ),
        .D(data5[0]),
        .Q(\shift_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(\shift_reg_reg[0]_1 ),
        .D(data5[1]),
        .Q(data5[0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(\shift_reg_reg[0]_1 ),
        .D(data5[2]),
        .Q(data5[1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(\shift_reg_reg[0]_1 ),
        .D(data5[3]),
        .Q(data5[2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(\shift_reg_reg[0]_1 ),
        .D(out),
        .Q(data5[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
