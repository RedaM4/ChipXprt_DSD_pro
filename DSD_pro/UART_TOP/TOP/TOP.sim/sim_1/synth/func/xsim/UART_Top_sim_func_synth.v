// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sat Dec 14 03:22:14 2024
// Host        : Raid-ThinkTank running 64-bit Linux Mint 22
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/cenema/Desktop/Xilinx_Projects/ChipXprt_DSD_pro/DSD_pro/UART_TOP/TOP/TOP.sim/sim_1/synth/func/xsim/UART_Top_sim_func_synth.v
// Design      : UART_Top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Counter
   (Q,
    D,
    \q_reg[1]_0 ,
    \q_reg[0]_0 ,
    \FSM_onehot_current_state_reg[1] ,
    E,
    \FSM_onehot_current_state_reg[2] ,
    \FSM_onehot_current_state_reg[2]_0 ,
    \q_reg[0]_1 ,
    \q_reg[0]_2 ,
    clk_IBUF_BUFG,
    AR);
  output [0:0]Q;
  output [1:0]D;
  output \q_reg[1]_0 ;
  output [0:0]\q_reg[0]_0 ;
  output \FSM_onehot_current_state_reg[1] ;
  output [0:0]E;
  input [3:0]\FSM_onehot_current_state_reg[2] ;
  input \FSM_onehot_current_state_reg[2]_0 ;
  input [0:0]\q_reg[0]_1 ;
  input [0:0]\q_reg[0]_2 ;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_current_state_reg[1] ;
  wire [3:0]\FSM_onehot_current_state_reg[2] ;
  wire \FSM_onehot_current_state_reg[2]_0 ;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire [3:1]p_0_in;
  wire \q[0]_i_1__0_n_0 ;
  wire [2:0]q_reg;
  wire [0:0]\q_reg[0]_0 ;
  wire [0:0]\q_reg[0]_1 ;
  wire [0:0]\q_reg[0]_2 ;
  wire \q_reg[1]_0 ;

  LUT6 #(
    .INIT(64'hFFFFDD10DD10DD10)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(Q),
        .I1(\q_reg[1]_0 ),
        .I2(\FSM_onehot_current_state_reg[2] [1]),
        .I3(\FSM_onehot_current_state_reg[2] [2]),
        .I4(\FSM_onehot_current_state_reg[2] [3]),
        .I5(\FSM_onehot_current_state_reg[2]_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_onehot_current_state[2]_i_2 
       (.I0(q_reg[1]),
        .I1(q_reg[0]),
        .I2(q_reg[2]),
        .O(\q_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg[2] [2]),
        .I1(Q),
        .I2(q_reg[1]),
        .I3(q_reg[0]),
        .I4(q_reg[2]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \q[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg[1] ),
        .I1(\q_reg[0]_1 ),
        .O(\q_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q[0]_i_1__0 
       (.I0(q_reg[0]),
        .I1(\FSM_onehot_current_state_reg[2] [0]),
        .O(\q[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \q[1]_i_1__0 
       (.I0(\FSM_onehot_current_state_reg[2] [0]),
        .I1(q_reg[0]),
        .I2(q_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \q[2]_i_1 
       (.I0(q_reg[0]),
        .I1(q_reg[1]),
        .I2(\FSM_onehot_current_state_reg[2] [0]),
        .I3(q_reg[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFCCCCCCCECCCCCCC)) 
    \q[3]_i_1__0 
       (.I0(Q),
        .I1(\FSM_onehot_current_state_reg[2] [0]),
        .I2(q_reg[1]),
        .I3(q_reg[0]),
        .I4(q_reg[2]),
        .I5(\FSM_onehot_current_state_reg[2] [1]),
        .O(E));
  LUT6 #(
    .INIT(64'h00007F0000007F80)) 
    \q[3]_i_2 
       (.I0(q_reg[2]),
        .I1(q_reg[0]),
        .I2(q_reg[1]),
        .I3(Q),
        .I4(\FSM_onehot_current_state_reg[2] [0]),
        .I5(\FSM_onehot_current_state_reg[2] [1]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h00000000FFFF7FFF)) 
    \q[3]_i_3 
       (.I0(\FSM_onehot_current_state_reg[2] [1]),
        .I1(q_reg[2]),
        .I2(q_reg[0]),
        .I3(q_reg[1]),
        .I4(Q),
        .I5(\FSM_onehot_current_state_reg[2] [0]),
        .O(\FSM_onehot_current_state_reg[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\q_reg[0]_2 ),
        .CLR(AR),
        .D(\q[0]_i_1__0_n_0 ),
        .Q(q_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\q_reg[0]_2 ),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(q_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\q_reg[0]_2 ),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(q_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\q_reg[0]_2 ),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_1
   (Q,
    \FSM_onehot_current_state_reg[3] ,
    \q_reg[1]_0 ,
    D,
    \q_reg[1]_1 ,
    \FSM_onehot_current_state_reg[6] ,
    E,
    clk_IBUF_BUFG,
    AR);
  output [0:0]Q;
  output [0:0]\FSM_onehot_current_state_reg[3] ;
  output \q_reg[1]_0 ;
  input [0:0]D;
  input \q_reg[1]_1 ;
  input [0:0]\FSM_onehot_current_state_reg[6] ;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_current_state_reg[3] ;
  wire [0:0]\FSM_onehot_current_state_reg[6] ;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire [3:1]p_0_in__0;
  wire [3:1]q_reg;
  wire \q_reg[1]_0 ;
  wire \q_reg[1]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_onehot_current_state[2]_i_3 
       (.I0(q_reg[1]),
        .I1(Q),
        .I2(q_reg[3]),
        .I3(q_reg[2]),
        .O(\q_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \FSM_onehot_current_state[6]_i_1 
       (.I0(\FSM_onehot_current_state_reg[6] ),
        .I1(q_reg[2]),
        .I2(q_reg[3]),
        .I3(Q),
        .I4(q_reg[1]),
        .O(\FSM_onehot_current_state_reg[3] ));
  LUT3 #(
    .INIT(8'h28)) 
    \q[1]_i_1 
       (.I0(\q_reg[1]_1 ),
        .I1(Q),
        .I2(q_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \q[2]_i_1__0 
       (.I0(\q_reg[1]_1 ),
        .I1(q_reg[1]),
        .I2(Q),
        .I3(q_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h4CCC8000)) 
    \q[3]_i_2__0 
       (.I0(q_reg[2]),
        .I1(\q_reg[1]_1 ),
        .I2(q_reg[1]),
        .I3(Q),
        .I4(q_reg[3]),
        .O(p_0_in__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(p_0_in__0[1]),
        .Q(q_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(p_0_in__0[2]),
        .Q(q_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(p_0_in__0[3]),
        .Q(q_reg[3]));
endmodule

module FSM_Receiver
   (Q,
    E,
    out,
    \FSM_onehot_current_state_reg[1]_0 ,
    \FSM_onehot_current_state_reg[1]_1 ,
    \FSM_onehot_current_state_reg[1]_2 ,
    D,
    clk_IBUF_BUFG,
    AR);
  output [4:0]Q;
  output [0:0]E;
  input out;
  input \FSM_onehot_current_state_reg[1]_0 ;
  input [0:0]\FSM_onehot_current_state_reg[1]_1 ;
  input \FSM_onehot_current_state_reg[1]_2 ;
  input [3:0]D;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state_reg[1]_0 ;
  wire [0:0]\FSM_onehot_current_state_reg[1]_1 ;
  wire \FSM_onehot_current_state_reg[1]_2 ;
  wire \FSM_onehot_current_state_reg_n_0_[7] ;
  wire [4:0]Q;
  wire clk_IBUF_BUFG;
  wire out;

  LUT4 #(
    .INIT(16'hFFE0)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[4]),
        .I2(out),
        .I3(\FSM_onehot_current_state_reg_n_0_[7] ),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_current_state_reg[1]_0 ),
        .I2(\FSM_onehot_current_state_reg[1]_1 ),
        .I3(Q[0]),
        .I4(\FSM_onehot_current_state_reg[1]_2 ),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "counter1:00000010,counter3:00001000,counter2:00000100,parity_bit:00010000,num_error:10000000,IDLE:00000001,stop_state:01000000,pb_error:00100000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .PRE(AR),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "counter1:00000010,counter3:00001000,counter2:00000100,parity_bit:00010000,num_error:10000000,IDLE:00000001,stop_state:01000000,pb_error:00100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "counter1:00000010,counter3:00001000,counter2:00000100,parity_bit:00010000,num_error:10000000,IDLE:00000001,stop_state:01000000,pb_error:00100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[2]));
  (* FSM_ENCODED_STATES = "counter1:00000010,counter3:00001000,counter2:00000100,parity_bit:00010000,num_error:10000000,IDLE:00000001,stop_state:01000000,pb_error:00100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[3]));
  (* FSM_ENCODED_STATES = "counter1:00000010,counter3:00001000,counter2:00000100,parity_bit:00010000,num_error:10000000,IDLE:00000001,stop_state:01000000,pb_error:00100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[4]));
  (* FSM_ENCODED_STATES = "counter1:00000010,counter3:00001000,counter2:00000100,parity_bit:00010000,num_error:10000000,IDLE:00000001,stop_state:01000000,pb_error:00100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(\FSM_onehot_current_state_reg_n_0_[7] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(E));
endmodule

module Rx_DP
   (Q,
    D,
    \q_reg[1] ,
    \FSM_onehot_current_state_reg[6] ,
    E,
    clk_IBUF_BUFG,
    AR);
  output [0:0]Q;
  output [2:0]D;
  output \q_reg[1] ;
  input [3:0]\FSM_onehot_current_state_reg[6] ;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [2:0]D;
  wire [0:0]E;
  wire [3:0]\FSM_onehot_current_state_reg[6] ;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire one_n_5;
  wire one_n_6;
  wire [0:0]p_0_in__0;
  wire [0:0]q_reg;
  wire \q_reg[1] ;
  wire two_n_2;

  Counter one
       (.AR(AR),
        .D(D[1:0]),
        .E(one_n_6),
        .\FSM_onehot_current_state_reg[1] (one_n_5),
        .\FSM_onehot_current_state_reg[2] (\FSM_onehot_current_state_reg[6] ),
        .\FSM_onehot_current_state_reg[2]_0 (two_n_2),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\q_reg[0]_0 (p_0_in__0),
        .\q_reg[0]_1 (q_reg),
        .\q_reg[0]_2 (E),
        .\q_reg[1]_0 (\q_reg[1] ));
  Counter_1 two
       (.AR(AR),
        .D(p_0_in__0),
        .E(one_n_6),
        .\FSM_onehot_current_state_reg[3] (D[2]),
        .\FSM_onehot_current_state_reg[6] (\FSM_onehot_current_state_reg[6] [3]),
        .Q(q_reg),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\q_reg[1]_0 (two_n_2),
        .\q_reg[1]_1 (one_n_5));
endmodule

module Rx_top
   (out_bit_OBUF,
    reset,
    Q,
    out,
    clk_IBUF_BUFG,
    \FSM_onehot_current_state_reg[1] ,
    reset_IBUF,
    D);
  output [7:0]out_bit_OBUF;
  output reset;
  output [0:0]Q;
  input out;
  input clk_IBUF_BUFG;
  input \FSM_onehot_current_state_reg[1] ;
  input reset_IBUF;
  input [0:0]D;

  wire [0:0]D;
  wire \FSM_onehot_current_state_reg[1] ;
  wire [0:0]Q;
  wire Rxreg_en;
  wire clk_IBUF_BUFG;
  wire fsm_receiver_inst_n_2;
  wire fsm_receiver_inst_n_3;
  wire fsm_receiver_inst_n_4;
  wire fsm_receiver_inst_n_5;
  wire [3:3]\one/q_reg ;
  wire out;
  wire [7:0]out_bit_OBUF;
  wire reset;
  wire reset_IBUF;
  wire rx_dp_inst_n_1;
  wire rx_dp_inst_n_2;
  wire rx_dp_inst_n_3;
  wire rx_dp_inst_n_4;

  FSM_Receiver fsm_receiver_inst
       (.AR(reset),
        .D({D,rx_dp_inst_n_1,rx_dp_inst_n_2,rx_dp_inst_n_3}),
        .E(fsm_receiver_inst_n_5),
        .\FSM_onehot_current_state_reg[1]_0 (rx_dp_inst_n_4),
        .\FSM_onehot_current_state_reg[1]_1 (\one/q_reg ),
        .\FSM_onehot_current_state_reg[1]_2 (\FSM_onehot_current_state_reg[1] ),
        .Q({Q,Rxreg_en,fsm_receiver_inst_n_2,fsm_receiver_inst_n_3,fsm_receiver_inst_n_4}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(out));
  Rx_DP rx_dp_inst
       (.AR(reset),
        .D({rx_dp_inst_n_1,rx_dp_inst_n_2,rx_dp_inst_n_3}),
        .E(fsm_receiver_inst_n_5),
        .\FSM_onehot_current_state_reg[6] ({Rxreg_en,fsm_receiver_inst_n_2,fsm_receiver_inst_n_3,fsm_receiver_inst_n_4}),
        .Q(\one/q_reg ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\q_reg[1] (rx_dp_inst_n_4));
  shift_register shift_register_inst
       (.AR(reset),
        .E(Rxreg_en),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(out),
        .out_bit_OBUF(out_bit_OBUF),
        .reset_IBUF(reset_IBUF));
endmodule

module Tx_FSM
   (\FSM_sequential_current_state_reg[1]_0 ,
    Q,
    busy_OBUF,
    E,
    \FSM_sequential_current_state_reg[0]_0 ,
    en,
    \FSM_sequential_current_state_reg[1]_1 ,
    reset_IBUF,
    D,
    signal,
    dff_res,
    \FSM_onehot_current_state_reg[7] ,
    \FSM_onehot_current_state_reg[7]_0 ,
    data_in_IBUF,
    dividedClock,
    \FSM_sequential_current_state_reg[1]_2 );
  output \FSM_sequential_current_state_reg[1]_0 ;
  output [1:0]Q;
  output busy_OBUF;
  output [0:0]E;
  output [0:0]\FSM_sequential_current_state_reg[0]_0 ;
  output en;
  output [0:0]\FSM_sequential_current_state_reg[1]_1 ;
  input reset_IBUF;
  input [0:0]D;
  input signal;
  input dff_res;
  input [0:0]\FSM_onehot_current_state_reg[7] ;
  input [0:0]\FSM_onehot_current_state_reg[7]_0 ;
  input [0:0]data_in_IBUF;
  input dividedClock;
  input \FSM_sequential_current_state_reg[1]_2 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_current_state_reg[7] ;
  wire [0:0]\FSM_onehot_current_state_reg[7]_0 ;
  wire [0:0]\FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire [0:0]\FSM_sequential_current_state_reg[1]_1 ;
  wire \FSM_sequential_current_state_reg[1]_2 ;
  wire [1:0]Q;
  wire busy_OBUF;
  wire [0:0]data_in_IBUF;
  wire dff_res;
  wire dividedClock;
  wire en;
  wire [0:0]next_state;
  wire reset_IBUF;
  wire signal;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h8A7A0000)) 
    \FSM_onehot_current_state[7]_i_1 
       (.I0(Q[0]),
        .I1(dff_res),
        .I2(Q[1]),
        .I3(\FSM_onehot_current_state_reg[7] ),
        .I4(\FSM_onehot_current_state_reg[7]_0 ),
        .O(\FSM_sequential_current_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(signal),
        .I1(Q[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    busy_OBUF_inst_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(busy_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(en));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \count[2]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(reset_IBUF),
        .O(\FSM_sequential_current_state_reg[1]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \register[7]_i_1 
       (.I0(Q[0]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \register[7]_i_2 
       (.I0(data_in_IBUF),
        .I1(Q[1]),
        .O(\FSM_sequential_current_state_reg[1]_1 ));
endmodule

module Tx_top
   (out,
    busy_OBUF,
    D,
    \register_reg[0] ,
    address_IBUF,
    dividedClock,
    \FSM_sequential_current_state_reg[1] ,
    reset_IBUF,
    Q,
    data_in_IBUF);
  output out;
  output busy_OBUF;
  output [0:0]D;
  output \register_reg[0] ;
  input [3:0]address_IBUF;
  input dividedClock;
  input \FSM_sequential_current_state_reg[1] ;
  input reset_IBUF;
  input [0:0]Q;
  input [7:0]data_in_IBUF;

  wire [0:0]D;
  wire \FSM_sequential_current_state_reg[1] ;
  wire [0:0]Q;
  wire [3:0]address_IBUF;
  wire busy_OBUF;
  wire [1:0]current_state;
  wire [7:0]data_in_IBUF;
  wire dff_res;
  wire dividedClock;
  wire en;
  wire fsm1_n_0;
  wire fsm1_n_4;
  wire [1:1]next_state;
  wire out;
  wire [7:7]p_2_in;
  wire reg_out;
  wire \register_reg[0] ;
  wire reset_IBUF;
  wire signal;

  nBits_comparator__parameterized0 comp1
       (.address_IBUF(address_IBUF),
        .dividedClock(dividedClock),
        .signal(signal),
        .signal_reg_0(\FSM_sequential_current_state_reg[1] ));
  n_TX_dataPath dp1
       (.D(next_state),
        .E(fsm1_n_4),
        .Q(reg_out),
        .\count_reg[2] (fsm1_n_0),
        .data_in_IBUF(data_in_IBUF[6:0]),
        .dff_res(dff_res),
        .dividedClock(dividedClock),
        .en(en),
        .out(out),
        .\register_reg[0] (\register_reg[0] ),
        .\register_reg[0]_0 (current_state),
        .\register_reg[7] (\FSM_sequential_current_state_reg[1] ),
        .\register_reg[7]_0 (p_2_in));
  Tx_FSM fsm1
       (.D(next_state),
        .E(fsm1_n_4),
        .\FSM_onehot_current_state_reg[7] (reg_out),
        .\FSM_onehot_current_state_reg[7]_0 (Q),
        .\FSM_sequential_current_state_reg[0]_0 (D),
        .\FSM_sequential_current_state_reg[1]_0 (fsm1_n_0),
        .\FSM_sequential_current_state_reg[1]_1 (p_2_in),
        .\FSM_sequential_current_state_reg[1]_2 (\FSM_sequential_current_state_reg[1] ),
        .Q(current_state),
        .busy_OBUF(busy_OBUF),
        .data_in_IBUF(data_in_IBUF[7]),
        .dff_res(dff_res),
        .dividedClock(dividedClock),
        .en(en),
        .reset_IBUF(reset_IBUF),
        .signal(signal));
endmodule

(* PARITY_EN = "0" *) (* divFactor = "7" *) (* odd_even = "0" *) 
(* NotValidForBitStream *)
module UART_Top
   (clk,
    reset,
    address,
    data_in,
    busy,
    out_bit);
  input clk;
  input reset;
  input [3:0]address;
  input [7:0]data_in;
  output busy;
  output [7:0]out_bit;

  wire RX1_n_8;
  wire RX1_n_9;
  wire TX1_n_2;
  wire TX1_n_3;
  wire [3:0]address;
  wire [3:0]address_IBUF;
  wire busy;
  wire busy_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]data_in;
  wire [7:0]data_in_IBUF;
  wire dividedClock;
  wire out;
  wire [7:0]out_bit;
  wire [7:0]out_bit_OBUF;
  wire reset;
  wire reset_IBUF;

  Rx_top RX1
       (.D(TX1_n_2),
        .\FSM_onehot_current_state_reg[1] (TX1_n_3),
        .Q(RX1_n_9),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(out),
        .out_bit_OBUF(out_bit_OBUF),
        .reset(RX1_n_8),
        .reset_IBUF(reset_IBUF));
  Tx_top TX1
       (.D(TX1_n_2),
        .\FSM_sequential_current_state_reg[1] (RX1_n_8),
        .Q(RX1_n_9),
        .address_IBUF(address_IBUF),
        .busy_OBUF(busy_OBUF),
        .data_in_IBUF(data_in_IBUF),
        .dividedClock(dividedClock),
        .out(out),
        .\register_reg[0] (TX1_n_3),
        .reset_IBUF(reset_IBUF));
  IBUF \address_IBUF[0]_inst 
       (.I(address[0]),
        .O(address_IBUF[0]));
  IBUF \address_IBUF[1]_inst 
       (.I(address[1]),
        .O(address_IBUF[1]));
  IBUF \address_IBUF[2]_inst 
       (.I(address[2]),
        .O(address_IBUF[2]));
  IBUF \address_IBUF[3]_inst 
       (.I(address[3]),
        .O(address_IBUF[3]));
  OBUF busy_OBUF_inst
       (.I(busy_OBUF),
        .O(busy));
  n_clockDivider clkDiv1
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .dividedClock(dividedClock),
        .q_reg(RX1_n_8),
        .reset_IBUF(reset_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \data_in_IBUF[0]_inst 
       (.I(data_in[0]),
        .O(data_in_IBUF[0]));
  IBUF \data_in_IBUF[1]_inst 
       (.I(data_in[1]),
        .O(data_in_IBUF[1]));
  IBUF \data_in_IBUF[2]_inst 
       (.I(data_in[2]),
        .O(data_in_IBUF[2]));
  IBUF \data_in_IBUF[3]_inst 
       (.I(data_in[3]),
        .O(data_in_IBUF[3]));
  IBUF \data_in_IBUF[4]_inst 
       (.I(data_in[4]),
        .O(data_in_IBUF[4]));
  IBUF \data_in_IBUF[5]_inst 
       (.I(data_in[5]),
        .O(data_in_IBUF[5]));
  IBUF \data_in_IBUF[6]_inst 
       (.I(data_in[6]),
        .O(data_in_IBUF[6]));
  IBUF \data_in_IBUF[7]_inst 
       (.I(data_in[7]),
        .O(data_in_IBUF[7]));
  OBUF \out_bit_OBUF[0]_inst 
       (.I(out_bit_OBUF[0]),
        .O(out_bit[0]));
  OBUF \out_bit_OBUF[1]_inst 
       (.I(out_bit_OBUF[1]),
        .O(out_bit[1]));
  OBUF \out_bit_OBUF[2]_inst 
       (.I(out_bit_OBUF[2]),
        .O(out_bit[2]));
  OBUF \out_bit_OBUF[3]_inst 
       (.I(out_bit_OBUF[3]),
        .O(out_bit[3]));
  OBUF \out_bit_OBUF[4]_inst 
       (.I(out_bit_OBUF[4]),
        .O(out_bit[4]));
  OBUF \out_bit_OBUF[5]_inst 
       (.I(out_bit_OBUF[5]),
        .O(out_bit[5]));
  OBUF \out_bit_OBUF[6]_inst 
       (.I(out_bit_OBUF[6]),
        .O(out_bit[6]));
  OBUF \out_bit_OBUF[7]_inst 
       (.I(out_bit_OBUF[7]),
        .O(out_bit[7]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
endmodule

module dFlipFlop
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
module dFlipFlop_0
   (q_reg_0,
    dividedClock,
    q_reg_1,
    Q);
  output q_reg_0;
  input dividedClock;
  input q_reg_1;
  input [0:0]Q;

  wire [0:0]Q;
  wire dividedClock;
  wire q_i_1_n_0;
  wire q_reg_0;
  wire q_reg_1;

  LUT2 #(
    .INIT(4'h6)) 
    q_i_1
       (.I0(q_reg_0),
        .I1(Q),
        .O(q_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(dividedClock),
        .CE(1'b1),
        .CLR(q_reg_1),
        .D(q_i_1_n_0),
        .Q(q_reg_0));
endmodule

module nBits_comparator
   (signal,
    resetSignal_reg_0,
    resetSignal_reg_1,
    clk_IBUF_BUFG,
    resetSignal_reg_2,
    signal_reg_0,
    reset_IBUF);
  output signal;
  output resetSignal_reg_0;
  input resetSignal_reg_1;
  input clk_IBUF_BUFG;
  input resetSignal_reg_2;
  input signal_reg_0;
  input reset_IBUF;

  wire clk_IBUF_BUFG;
  wire resetSignal;
  wire resetSignal_reg_0;
  wire resetSignal_reg_1;
  wire resetSignal_reg_2;
  wire reset_IBUF;
  wire signal;
  wire signal_reg_0;

  LUT2 #(
    .INIT(4'h7)) 
    \count[2]_i_2__0 
       (.I0(resetSignal),
        .I1(reset_IBUF),
        .O(resetSignal_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    resetSignal_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(resetSignal_reg_2),
        .D(resetSignal_reg_1),
        .Q(resetSignal));
  FDCE #(
    .INIT(1'b0)) 
    signal_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(resetSignal_reg_2),
        .D(signal_reg_0),
        .Q(signal));
endmodule

(* ORIG_REF_NAME = "nBits_comparator" *) 
module nBits_comparator__parameterized0
   (signal,
    address_IBUF,
    dividedClock,
    signal_reg_0);
  output signal;
  input [3:0]address_IBUF;
  input dividedClock;
  input signal_reg_0;

  wire [3:0]address_IBUF;
  wire dividedClock;
  wire signal;
  wire signal__0_n_0;
  wire signal_reg_0;

  LUT4 #(
    .INIT(16'h0010)) 
    signal__0
       (.I0(address_IBUF[0]),
        .I1(address_IBUF[2]),
        .I2(address_IBUF[3]),
        .I3(address_IBUF[1]),
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
   (\count_reg[1]_0 ,
    \count_reg[0]_0 ,
    clk_IBUF_BUFG,
    \count_reg[1]_1 );
  output \count_reg[1]_0 ;
  output \count_reg[0]_0 ;
  input clk_IBUF_BUFG;
  input \count_reg[1]_1 ;

  wire clk_IBUF_BUFG;
  wire [2:0]count;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1__0_n_0 ;
  wire \count_reg[0]_0 ;
  wire \count_reg[1]_0 ;
  wire \count_reg[1]_1 ;

  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1__0 
       (.I0(count[0]),
        .I1(count[1]),
        .I2(count[2]),
        .O(\count[2]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[1]_1 ),
        .D(\count[0]_i_1_n_0 ),
        .Q(count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[1]_1 ),
        .D(\count[1]_i_1_n_0 ),
        .Q(count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[1]_1 ),
        .D(\count[2]_i_1__0_n_0 ),
        .Q(count[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    resetSignal_i_1
       (.I0(count[1]),
        .I1(count[2]),
        .I2(count[0]),
        .O(\count_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h40)) 
    signal_i_1
       (.I0(count[0]),
        .I1(count[2]),
        .I2(count[1]),
        .O(\count_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "nBits_up_down_counter" *) 
module nBits_up_down_counter__parameterized0
   (D,
    en,
    dividedClock,
    \count_reg[2]_0 ,
    \FSM_sequential_current_state_reg[1] );
  output [0:0]D;
  input en;
  input dividedClock;
  input \count_reg[2]_0 ;
  input [1:0]\FSM_sequential_current_state_reg[1] ;

  wire [0:0]D;
  wire [1:0]\FSM_sequential_current_state_reg[1] ;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[1]_i_1__0_n_0 ;
  wire \count[2]_i_2_n_0 ;
  wire [2:0]count_reg;
  wire \count_reg[2]_0 ;
  wire dividedClock;
  wire en;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h1C3C3C3C)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(count_reg[2]),
        .I1(\FSM_sequential_current_state_reg[1] [0]),
        .I2(\FSM_sequential_current_state_reg[1] [1]),
        .I3(count_reg[0]),
        .I4(count_reg[1]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__0 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(\count[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_2 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .O(\count[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(dividedClock),
        .CE(en),
        .CLR(\count_reg[2]_0 ),
        .D(\count[0]_i_1__0_n_0 ),
        .Q(count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(dividedClock),
        .CE(en),
        .CLR(\count_reg[2]_0 ),
        .D(\count[1]_i_1__0_n_0 ),
        .Q(count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(dividedClock),
        .CE(en),
        .CLR(\count_reg[2]_0 ),
        .D(\count[2]_i_2_n_0 ),
        .Q(count_reg[2]));
endmodule

module n_TX_dataPath
   (dff_res,
    out,
    Q,
    \register_reg[0] ,
    D,
    dividedClock,
    \register_reg[7] ,
    en,
    \count_reg[2] ,
    \register_reg[0]_0 ,
    \register_reg[7]_0 ,
    data_in_IBUF,
    E);
  output dff_res;
  output out;
  output [0:0]Q;
  output \register_reg[0] ;
  output [0:0]D;
  input dividedClock;
  input \register_reg[7] ;
  input en;
  input \count_reg[2] ;
  input [1:0]\register_reg[0]_0 ;
  input [0:0]\register_reg[7]_0 ;
  input [6:0]data_in_IBUF;
  input [0:0]E;

  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire \count_reg[2] ;
  wire [6:0]data_in_IBUF;
  wire dff_res;
  wire dividedClock;
  wire en;
  wire out;
  wire \register_reg[0] ;
  wire [1:0]\register_reg[0]_0 ;
  wire \register_reg[7] ;
  wire [0:0]\register_reg[7]_0 ;

  nBits_up_down_counter__parameterized0 counter1
       (.D(D),
        .\FSM_sequential_current_state_reg[1] (\register_reg[0]_0 ),
        .\count_reg[2]_0 (\count_reg[2] ),
        .dividedClock(dividedClock),
        .en(en));
  dFlipFlop_0 dff2
       (.Q(Q),
        .dividedClock(dividedClock),
        .q_reg_0(dff_res),
        .q_reg_1(\register_reg[7] ));
  n_shiftRegister_oneBit shft1
       (.E(E),
        .Q(Q),
        .data_in_IBUF(data_in_IBUF),
        .dff_res(dff_res),
        .dividedClock(dividedClock),
        .out(out),
        .\register_reg[0]_0 (\register_reg[0] ),
        .\register_reg[0]_1 (\register_reg[0]_0 ),
        .\register_reg[7]_0 (\register_reg[7]_0 ),
        .\register_reg[7]_1 (\register_reg[7] ));
endmodule

module n_clockDivider
   (dividedClock,
    clk_IBUF_BUFG,
    q_reg,
    reset_IBUF);
  output dividedClock;
  input clk_IBUF_BUFG;
  input q_reg;
  input reset_IBUF;

  wire clk_IBUF_BUFG;
  wire comp1_n_1;
  wire dividedClock;
  wire nbc1_n_0;
  wire nbc1_n_1;
  wire q_reg;
  wire reset_IBUF;
  wire signal;

  nBits_comparator comp1
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .resetSignal_reg_0(comp1_n_1),
        .resetSignal_reg_1(nbc1_n_0),
        .resetSignal_reg_2(q_reg),
        .reset_IBUF(reset_IBUF),
        .signal(signal),
        .signal_reg_0(nbc1_n_1));
  dFlipFlop dff1
       (.dividedClock(dividedClock),
        .q_reg_0(q_reg),
        .signal(signal));
  nBits_up_down_counter nbc1
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\count_reg[0]_0 (nbc1_n_1),
        .\count_reg[1]_0 (nbc1_n_0),
        .\count_reg[1]_1 (comp1_n_1));
endmodule

module n_shiftRegister_oneBit
   (out,
    Q,
    \register_reg[0]_0 ,
    dff_res,
    \register_reg[0]_1 ,
    data_in_IBUF,
    E,
    \register_reg[7]_0 ,
    dividedClock,
    \register_reg[7]_1 );
  output out;
  output [0:0]Q;
  output \register_reg[0]_0 ;
  input dff_res;
  input [1:0]\register_reg[0]_1 ;
  input [6:0]data_in_IBUF;
  input [0:0]E;
  input [0:0]\register_reg[7]_0 ;
  input dividedClock;
  input \register_reg[7]_1 ;

  wire [0:0]E;
  wire [0:0]Q;
  wire [6:0]data_in_IBUF;
  wire dff_res;
  wire dividedClock;
  wire out;
  wire [6:0]p_2_in;
  wire \register_reg[0]_0 ;
  wire [1:0]\register_reg[0]_1 ;
  wire [0:0]\register_reg[7]_0 ;
  wire \register_reg[7]_1 ;
  wire \register_reg_n_0_[1] ;
  wire \register_reg_n_0_[2] ;
  wire \register_reg_n_0_[3] ;
  wire \register_reg_n_0_[4] ;
  wire \register_reg_n_0_[5] ;
  wire \register_reg_n_0_[6] ;
  wire \register_reg_n_0_[7] ;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB744)) 
    \FSM_onehot_current_state[1]_i_2 
       (.I0(Q),
        .I1(\register_reg[0]_1 [1]),
        .I2(dff_res),
        .I3(\register_reg[0]_1 [0]),
        .O(\register_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \register[0]_i_1 
       (.I0(\register_reg_n_0_[1] ),
        .I1(\register_reg[0]_1 [1]),
        .I2(data_in_IBUF[0]),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \register[1]_i_1 
       (.I0(\register_reg_n_0_[2] ),
        .I1(\register_reg[0]_1 [1]),
        .I2(data_in_IBUF[1]),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \register[2]_i_1 
       (.I0(\register_reg_n_0_[3] ),
        .I1(\register_reg[0]_1 [1]),
        .I2(data_in_IBUF[2]),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \register[3]_i_1 
       (.I0(\register_reg_n_0_[4] ),
        .I1(\register_reg[0]_1 [1]),
        .I2(data_in_IBUF[3]),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \register[4]_i_1 
       (.I0(\register_reg_n_0_[5] ),
        .I1(\register_reg[0]_1 [1]),
        .I2(data_in_IBUF[4]),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \register[5]_i_1 
       (.I0(\register_reg_n_0_[6] ),
        .I1(\register_reg[0]_1 [1]),
        .I2(data_in_IBUF[5]),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \register[6]_i_1 
       (.I0(\register_reg_n_0_[7] ),
        .I1(\register_reg[0]_1 [1]),
        .I2(data_in_IBUF[6]),
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h60AF)) 
    \shift_reg[7]_i_1 
       (.I0(Q),
        .I1(dff_res),
        .I2(\register_reg[0]_1 [1]),
        .I3(\register_reg[0]_1 [0]),
        .O(out));
endmodule

module shift_register
   (out_bit_OBUF,
    AR,
    E,
    out,
    clk_IBUF_BUFG,
    reset_IBUF);
  output [7:0]out_bit_OBUF;
  output [0:0]AR;
  input [0:0]E;
  input out;
  input clk_IBUF_BUFG;
  input reset_IBUF;

  wire [0:0]AR;
  wire [0:0]E;
  wire clk_IBUF_BUFG;
  wire out;
  wire [7:0]out_bit_OBUF;
  wire reset_IBUF;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(reset_IBUF),
        .O(AR));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(out_bit_OBUF[1]),
        .Q(out_bit_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(out_bit_OBUF[2]),
        .Q(out_bit_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(out_bit_OBUF[3]),
        .Q(out_bit_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(out_bit_OBUF[4]),
        .Q(out_bit_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(out_bit_OBUF[5]),
        .Q(out_bit_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(out_bit_OBUF[6]),
        .Q(out_bit_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(out_bit_OBUF[7]),
        .Q(out_bit_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(out),
        .Q(out_bit_OBUF[7]));
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
