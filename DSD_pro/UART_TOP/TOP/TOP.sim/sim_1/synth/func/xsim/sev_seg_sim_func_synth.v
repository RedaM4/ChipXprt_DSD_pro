// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sat Dec 14 04:45:39 2024
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
   (Q,
    \FSM_onehot_current_state_reg[2] ,
    E,
    D,
    \q_reg[2]_0 ,
    \q_reg[2]_1 ,
    AR,
    \FSM_onehot_current_state_reg[2]_0 ,
    \FSM_onehot_current_state_reg[2]_1 ,
    \q_reg[0]_0 ,
    CPU_RESETN_IBUF,
    \q_reg[3]_0 ,
    CLK100MHZ_IBUF_BUFG,
    \q_reg[0]_1 );
  output [0:0]Q;
  output [1:0]\FSM_onehot_current_state_reg[2] ;
  output [0:0]E;
  output [0:0]D;
  output \q_reg[2]_0 ;
  output \q_reg[2]_1 ;
  output [0:0]AR;
  input [3:0]\FSM_onehot_current_state_reg[2]_0 ;
  input \FSM_onehot_current_state_reg[2]_1 ;
  input [0:0]\q_reg[0]_0 ;
  input CPU_RESETN_IBUF;
  input [0:0]\q_reg[3]_0 ;
  input CLK100MHZ_IBUF_BUFG;
  input [0:0]\q_reg[0]_1 ;

  wire [0:0]AR;
  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN_IBUF;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_current_state[2]_i_3_n_0 ;
  wire [1:0]\FSM_onehot_current_state_reg[2] ;
  wire [3:0]\FSM_onehot_current_state_reg[2]_0 ;
  wire \FSM_onehot_current_state_reg[2]_1 ;
  wire [0:0]Q;
  wire [3:1]p_0_in;
  wire [3:1]q_reg;
  wire [0:0]\q_reg[0]_0 ;
  wire [0:0]\q_reg[0]_1 ;
  wire \q_reg[2]_0 ;
  wire \q_reg[2]_1 ;
  wire [0:0]\q_reg[3]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_onehot_current_state[1]_i_2 
       (.I0(q_reg[2]),
        .I1(Q),
        .I2(q_reg[1]),
        .I3(q_reg[3]),
        .O(\q_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hF888F8FFF888F8F8)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg[2]_1 ),
        .I1(\FSM_onehot_current_state_reg[2]_0 [3]),
        .I2(\FSM_onehot_current_state_reg[2]_0 [2]),
        .I3(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .I4(q_reg[3]),
        .I5(\FSM_onehot_current_state_reg[2]_0 [1]),
        .O(\FSM_onehot_current_state_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_onehot_current_state[2]_i_3 
       (.I0(q_reg[1]),
        .I1(Q),
        .I2(q_reg[2]),
        .O(\FSM_onehot_current_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg[2]_0 [2]),
        .I1(q_reg[3]),
        .I2(q_reg[1]),
        .I3(Q),
        .I4(q_reg[2]),
        .O(\FSM_onehot_current_state_reg[2] [1]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(CPU_RESETN_IBUF),
        .O(AR));
  LUT2 #(
    .INIT(4'h1)) 
    \q[0]_i_1__0 
       (.I0(\q_reg[2]_0 ),
        .I1(\q_reg[0]_0 ),
        .O(D));
  LUT3 #(
    .INIT(8'h06)) 
    \q[1]_i_1__0 
       (.I0(Q),
        .I1(q_reg[1]),
        .I2(\FSM_onehot_current_state_reg[2]_0 [0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \q[2]_i_1__0 
       (.I0(q_reg[2]),
        .I1(Q),
        .I2(q_reg[1]),
        .I3(\FSM_onehot_current_state_reg[2]_0 [0]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFEAAAAAAAAAAAAAA)) 
    \q[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg[2]_0 [0]),
        .I1(\FSM_onehot_current_state_reg[2]_0 [1]),
        .I2(q_reg[3]),
        .I3(q_reg[1]),
        .I4(Q),
        .I5(q_reg[2]),
        .O(E));
  LUT6 #(
    .INIT(64'h000000007F007F80)) 
    \q[3]_i_2 
       (.I0(q_reg[2]),
        .I1(Q),
        .I2(q_reg[1]),
        .I3(q_reg[3]),
        .I4(\FSM_onehot_current_state_reg[2]_0 [1]),
        .I5(\FSM_onehot_current_state_reg[2]_0 [0]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \q[3]_i_3 
       (.I0(q_reg[2]),
        .I1(Q),
        .I2(q_reg[1]),
        .I3(q_reg[3]),
        .I4(\FSM_onehot_current_state_reg[2]_0 [1]),
        .I5(\FSM_onehot_current_state_reg[2]_0 [0]),
        .O(\q_reg[2]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\q_reg[3]_0 ),
        .CLR(AR),
        .D(\q_reg[0]_1 ),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\q_reg[3]_0 ),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(q_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\q_reg[3]_0 ),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(q_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\q_reg[3]_0 ),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(q_reg[3]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_1
   (Q,
    \FSM_onehot_current_state_reg[3] ,
    \q_reg[0]_0 ,
    D,
    \q_reg[3]_0 ,
    \FSM_onehot_current_state_reg[6] ,
    E,
    CLK100MHZ_IBUF_BUFG,
    AR);
  output [0:0]Q;
  output [0:0]\FSM_onehot_current_state_reg[3] ;
  output \q_reg[0]_0 ;
  input [0:0]D;
  input \q_reg[3]_0 ;
  input [0:0]\FSM_onehot_current_state_reg[6] ;
  input [0:0]E;
  input CLK100MHZ_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_current_state_reg[3] ;
  wire [0:0]\FSM_onehot_current_state_reg[6] ;
  wire [0:0]Q;
  wire [3:1]p_0_in__0;
  wire [3:1]q_reg;
  wire \q_reg[0]_0 ;
  wire \q_reg[3]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_onehot_current_state[2]_i_2 
       (.I0(Q),
        .I1(q_reg[1]),
        .I2(q_reg[3]),
        .I3(q_reg[2]),
        .O(\q_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \FSM_onehot_current_state[6]_i_1 
       (.I0(\FSM_onehot_current_state_reg[6] ),
        .I1(q_reg[2]),
        .I2(q_reg[3]),
        .I3(q_reg[1]),
        .I4(Q),
        .O(\FSM_onehot_current_state_reg[3] ));
  LUT3 #(
    .INIT(8'h14)) 
    \q[1]_i_1 
       (.I0(\q_reg[3]_0 ),
        .I1(Q),
        .I2(q_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \q[2]_i_1 
       (.I0(\q_reg[3]_0 ),
        .I1(Q),
        .I2(q_reg[1]),
        .I3(q_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h070F0800)) 
    \q[3]_i_2__0 
       (.I0(q_reg[1]),
        .I1(Q),
        .I2(\q_reg[3]_0 ),
        .I3(q_reg[2]),
        .I4(q_reg[3]),
        .O(p_0_in__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(p_0_in__0[1]),
        .Q(q_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(p_0_in__0[2]),
        .Q(q_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(p_0_in__0[3]),
        .Q(q_reg[3]));
endmodule

module FSM_Receiver
   (Q,
    E,
    D,
    \FSM_onehot_current_state_reg[1]_0 ,
    out,
    reset_counter,
    \q_reg[0] ,
    \FSM_onehot_current_state_reg[7]_0 ,
    CLK100MHZ_IBUF_BUFG,
    AR);
  output [4:0]Q;
  output [0:0]E;
  output [0:0]D;
  input \FSM_onehot_current_state_reg[1]_0 ;
  input out;
  input reset_counter;
  input [0:0]\q_reg[0] ;
  input [3:0]\FSM_onehot_current_state_reg[7]_0 ;
  input CLK100MHZ_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state_reg[1]_0 ;
  wire [3:0]\FSM_onehot_current_state_reg[7]_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[7] ;
  wire [4:0]Q;
  wire out;
  wire [0:0]\q_reg[0] ;
  wire reset_counter;

  LUT4 #(
    .INIT(16'hFAEA)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(Q[4]),
        .I2(out),
        .I3(Q[0]),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_current_state_reg[1]_0 ),
        .I2(out),
        .I3(Q[0]),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "counter1:00000010,counter3:00001000,counter2:00000100,parity_bit:00010000,num_error:10000000,IDLE:00000001,stop_state:01000000,pb_error:00100000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .PRE(AR),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "counter1:00000010,counter3:00001000,counter2:00000100,parity_bit:00010000,num_error:10000000,IDLE:00000001,stop_state:01000000,pb_error:00100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "counter1:00000010,counter3:00001000,counter2:00000100,parity_bit:00010000,num_error:10000000,IDLE:00000001,stop_state:01000000,pb_error:00100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_current_state_reg[7]_0 [0]),
        .Q(Q[2]));
  (* FSM_ENCODED_STATES = "counter1:00000010,counter3:00001000,counter2:00000100,parity_bit:00010000,num_error:10000000,IDLE:00000001,stop_state:01000000,pb_error:00100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_current_state_reg[7]_0 [1]),
        .Q(Q[3]));
  (* FSM_ENCODED_STATES = "counter1:00000010,counter3:00001000,counter2:00000100,parity_bit:00010000,num_error:10000000,IDLE:00000001,stop_state:01000000,pb_error:00100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_current_state_reg[7]_0 [2]),
        .Q(Q[4]));
  (* FSM_ENCODED_STATES = "counter1:00000010,counter3:00001000,counter2:00000100,parity_bit:00010000,num_error:10000000,IDLE:00000001,stop_state:01000000,pb_error:00100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_current_state_reg[7]_0 [3]),
        .Q(\FSM_onehot_current_state_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \q[0]_i_1__1 
       (.I0(Q[0]),
        .I1(\q_reg[0] ),
        .O(D));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[3]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(reset_counter),
        .O(E));
endmodule

module Register
   (D,
    Q,
    out,
    CLK100MHZ_IBUF_BUFG,
    AR);
  output [0:0]D;
  input [0:0]Q;
  input out;
  input CLK100MHZ_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]D;
  wire [0:0]Q;
  wire out;

  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(Q),
        .CLR(AR),
        .D(out),
        .Q(D));
endmodule

module Rx_DP
   (D,
    AR,
    \q_reg[0] ,
    \FSM_onehot_current_state_reg[3] ,
    reset_counter,
    \q_reg[2] ,
    Q,
    out,
    CLK100MHZ_IBUF_BUFG,
    \q_reg[0]_0 ,
    CPU_RESETN_IBUF,
    E);
  output [0:0]D;
  output [0:0]AR;
  output [0:0]\q_reg[0] ;
  output [2:0]\FSM_onehot_current_state_reg[3] ;
  output reset_counter;
  output \q_reg[2] ;
  input [3:0]Q;
  input out;
  input CLK100MHZ_IBUF_BUFG;
  input [0:0]\q_reg[0]_0 ;
  input CPU_RESETN_IBUF;
  input [0:0]E;

  wire [0:0]AR;
  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN_IBUF;
  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]\FSM_onehot_current_state_reg[3] ;
  wire [3:0]Q;
  wire one_n_3;
  wire out;
  wire [0:0]p_0_in__0;
  wire [0:0]q_reg;
  wire [0:0]\q_reg[0] ;
  wire [0:0]\q_reg[0]_0 ;
  wire \q_reg[2] ;
  wire reset_counter;
  wire two_n_2;

  Counter one
       (.AR(AR),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .D(p_0_in__0),
        .E(one_n_3),
        .\FSM_onehot_current_state_reg[2] (\FSM_onehot_current_state_reg[3] [1:0]),
        .\FSM_onehot_current_state_reg[2]_0 (Q),
        .\FSM_onehot_current_state_reg[2]_1 (two_n_2),
        .Q(\q_reg[0] ),
        .\q_reg[0]_0 (q_reg),
        .\q_reg[0]_1 (\q_reg[0]_0 ),
        .\q_reg[2]_0 (reset_counter),
        .\q_reg[2]_1 (\q_reg[2] ),
        .\q_reg[3]_0 (E));
  Register regi
       (.AR(AR),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .D(D),
        .Q(Q[3]),
        .out(out));
  Counter_1 two
       (.AR(AR),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .D(p_0_in__0),
        .E(one_n_3),
        .\FSM_onehot_current_state_reg[3] (\FSM_onehot_current_state_reg[3] [2]),
        .\FSM_onehot_current_state_reg[6] (Q[3]),
        .Q(q_reg),
        .\q_reg[0]_0 (two_n_2),
        .\q_reg[3]_0 (reset_counter));
endmodule

module Rx_top
   (CPU_RESETN,
    Q,
    \shift_reg_reg[0] ,
    out,
    CLK100MHZ_IBUF_BUFG,
    CPU_RESETN_IBUF,
    D);
  output CPU_RESETN;
  output [0:0]Q;
  output [0:0]\shift_reg_reg[0] ;
  input out;
  input CLK100MHZ_IBUF_BUFG;
  input CPU_RESETN_IBUF;
  input [0:0]D;

  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN;
  wire CPU_RESETN_IBUF;
  wire [0:0]D;
  wire [0:0]Q;
  wire Rxreg_en;
  wire fsm_receiver_inst_n_2;
  wire fsm_receiver_inst_n_3;
  wire fsm_receiver_inst_n_4;
  wire fsm_receiver_inst_n_5;
  wire [0:0]\one/q_reg ;
  wire out;
  wire [0:0]p_0_in;
  wire reg_wire;
  wire reset_counter;
  wire rx_dp_inst_n_3;
  wire rx_dp_inst_n_4;
  wire rx_dp_inst_n_5;
  wire rx_dp_inst_n_7;
  wire [0:0]\shift_reg_reg[0] ;

  FSM_Receiver fsm_receiver_inst
       (.AR(CPU_RESETN),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .D(p_0_in),
        .E(fsm_receiver_inst_n_5),
        .\FSM_onehot_current_state_reg[1]_0 (rx_dp_inst_n_7),
        .\FSM_onehot_current_state_reg[7]_0 ({D,rx_dp_inst_n_3,rx_dp_inst_n_4,rx_dp_inst_n_5}),
        .Q({Q,Rxreg_en,fsm_receiver_inst_n_2,fsm_receiver_inst_n_3,fsm_receiver_inst_n_4}),
        .out(out),
        .\q_reg[0] (\one/q_reg ),
        .reset_counter(reset_counter));
  Rx_DP rx_dp_inst
       (.AR(CPU_RESETN),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .D(reg_wire),
        .E(fsm_receiver_inst_n_5),
        .\FSM_onehot_current_state_reg[3] ({rx_dp_inst_n_3,rx_dp_inst_n_4,rx_dp_inst_n_5}),
        .Q({Rxreg_en,fsm_receiver_inst_n_2,fsm_receiver_inst_n_3,fsm_receiver_inst_n_4}),
        .out(out),
        .\q_reg[0] (\one/q_reg ),
        .\q_reg[0]_0 (p_0_in),
        .\q_reg[2] (rx_dp_inst_n_7),
        .reset_counter(reset_counter));
  shift_register shift_register_inst
       (.AR(CPU_RESETN),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .D(reg_wire),
        .E(Rxreg_en),
        .\shift_reg_reg[0]_0 (\shift_reg_reg[0] ));
endmodule

module Tx_FSM
   (\FSM_sequential_current_state_reg[0]_0 ,
    Q,
    LED_OBUF,
    en,
    \FSM_sequential_current_state_reg[1]_0 ,
    E,
    CPU_RESETN_IBUF,
    D,
    signal,
    SW_IBUF,
    dividedClock,
    \FSM_sequential_current_state_reg[1]_1 );
  output \FSM_sequential_current_state_reg[0]_0 ;
  output [1:0]Q;
  output [2:0]LED_OBUF;
  output en;
  output [0:0]\FSM_sequential_current_state_reg[1]_0 ;
  output [0:0]E;
  input CPU_RESETN_IBUF;
  input [0:0]D;
  input signal;
  input [0:0]SW_IBUF;
  input dividedClock;
  input \FSM_sequential_current_state_reg[1]_1 ;

  wire CPU_RESETN_IBUF;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire [0:0]\FSM_sequential_current_state_reg[1]_0 ;
  wire \FSM_sequential_current_state_reg[1]_1 ;
  wire [2:0]LED_OBUF;
  wire [1:0]Q;
  wire [0:0]SW_IBUF;
  wire dividedClock;
  wire en;
  wire [0:0]next_state;
  wire signal;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
        .CLR(\FSM_sequential_current_state_reg[1]_1 ),
        .D(next_state),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "Start:01,Send_data:10,Idle:00,Parity:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(dividedClock),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state_reg[1]_1 ),
        .D(D),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \LED_OBUF[3]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(LED_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \register[7]_i_2 
       (.I0(SW_IBUF),
        .I1(Q[1]),
        .O(\FSM_sequential_current_state_reg[1]_0 ));
endmodule

module Tx_top
   (D,
    out,
    LED_OBUF,
    SW_IBUF,
    dividedClock,
    \FSM_sequential_current_state_reg[1] ,
    Q,
    CPU_RESETN_IBUF);
  output [0:0]D;
  output out;
  output [2:0]LED_OBUF;
  input [11:0]SW_IBUF;
  input dividedClock;
  input \FSM_sequential_current_state_reg[1] ;
  input [0:0]Q;
  input CPU_RESETN_IBUF;

  wire CPU_RESETN_IBUF;
  wire [0:0]D;
  wire \FSM_sequential_current_state_reg[1] ;
  wire [2:0]LED_OBUF;
  wire [0:0]Q;
  wire [11:0]SW_IBUF;
  wire [1:0]current_state;
  wire dividedClock;
  wire en;
  wire fsm1_n_0;
  wire fsm1_n_7;
  wire fsm1_n_8;
  wire [1:1]next_state;
  wire out;
  wire signal;

  nBits_comparator__parameterized0 comp1
       (.SW_IBUF(SW_IBUF[11:8]),
        .dividedClock(dividedClock),
        .signal(signal),
        .signal_reg_0(\FSM_sequential_current_state_reg[1] ));
  n_TX_dataPath dp1
       (.D(D),
        .E(fsm1_n_8),
        .Q(Q),
        .SW_IBUF(SW_IBUF[6:0]),
        .\count_reg[0] (next_state),
        .\count_reg[0]_0 (fsm1_n_0),
        .dividedClock(dividedClock),
        .en(en),
        .out(out),
        .\register_reg[0] (current_state),
        .\register_reg[7] (\FSM_sequential_current_state_reg[1] ),
        .\register_reg[7]_0 (fsm1_n_7));
  Tx_FSM fsm1
       (.CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .D(next_state),
        .E(fsm1_n_8),
        .\FSM_sequential_current_state_reg[0]_0 (fsm1_n_0),
        .\FSM_sequential_current_state_reg[1]_0 (fsm1_n_7),
        .\FSM_sequential_current_state_reg[1]_1 (\FSM_sequential_current_state_reg[1] ),
        .LED_OBUF(LED_OBUF),
        .Q(current_state),
        .SW_IBUF(SW_IBUF[7]),
        .dividedClock(dividedClock),
        .en(en),
        .signal(signal));
endmodule

module counter_n_bit
   (CB_OBUF,
    CC_OBUF,
    CD_OBUF,
    CA_OBUF,
    CE_OBUF,
    CF_OBUF,
    CG_OBUF,
    AN_OBUF,
    \count_reg[19]_0 ,
    CLK100MHZ_IBUF_BUFG,
    CB_OBUF_inst_i_1_0,
    SW_IBUF);
  output CB_OBUF;
  output CC_OBUF;
  output CD_OBUF;
  output CA_OBUF;
  output CE_OBUF;
  output CF_OBUF;
  output CG_OBUF;
  output [7:0]AN_OBUF;
  input \count_reg[19]_0 ;
  input CLK100MHZ_IBUF_BUFG;
  input [0:0]CB_OBUF_inst_i_1_0;
  input [7:0]SW_IBUF;

  wire [7:0]AN_OBUF;
  wire CA_OBUF;
  wire CB_OBUF;
  wire [0:0]CB_OBUF_inst_i_1_0;
  wire CC_OBUF;
  wire CD_OBUF;
  wire CE_OBUF;
  wire CF_OBUF;
  wire CG_OBUF;
  wire CLK100MHZ_IBUF_BUFG;
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
  wire \count_reg[19]_0 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
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
  wire [3:0]digits__12;
  wire [2:0]sel0;
  wire [3:3]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \AN_OBUF[0]_inst_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(AN_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \AN_OBUF[1]_inst_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(AN_OBUF[1]));
  LUT3 #(
    .INIT(8'hFD)) 
    \AN_OBUF[2]_inst_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .O(AN_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \AN_OBUF[3]_inst_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(AN_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \AN_OBUF[4]_inst_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(AN_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \AN_OBUF[5]_inst_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(AN_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \AN_OBUF[6]_inst_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(AN_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \AN_OBUF[7]_inst_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(AN_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    CA_OBUF_inst_i_1
       (.I0(digits__12[0]),
        .I1(digits__12[2]),
        .I2(digits__12[3]),
        .I3(digits__12[1]),
        .O(CA_OBUF));
  LUT6 #(
    .INIT(64'h0303232000002320)) 
    CA_OBUF_inst_i_2
       (.I0(CB_OBUF_inst_i_1_0),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(SW_IBUF[0]),
        .I4(sel0[0]),
        .I5(SW_IBUF[4]),
        .O(digits__12[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h02030200)) 
    CA_OBUF_inst_i_3
       (.I0(SW_IBUF[6]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(SW_IBUF[2]),
        .O(digits__12[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h02030200)) 
    CA_OBUF_inst_i_4
       (.I0(SW_IBUF[7]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(SW_IBUF[3]),
        .O(digits__12[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h02030200)) 
    CA_OBUF_inst_i_5
       (.I0(SW_IBUF[5]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(SW_IBUF[1]),
        .O(digits__12[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hD600)) 
    CB_OBUF_inst_i_1
       (.I0(digits__12[0]),
        .I1(digits__12[3]),
        .I2(digits__12[1]),
        .I3(digits__12[2]),
        .O(CB_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hB002)) 
    CC_OBUF_inst_i_1
       (.I0(digits__12[1]),
        .I1(digits__12[0]),
        .I2(digits__12[2]),
        .I3(digits__12[3]),
        .O(CC_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hC124)) 
    CD_OBUF_inst_i_1
       (.I0(digits__12[3]),
        .I1(digits__12[0]),
        .I2(digits__12[1]),
        .I3(digits__12[2]),
        .O(CD_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0B2A)) 
    CE_OBUF_inst_i_1
       (.I0(digits__12[0]),
        .I1(digits__12[1]),
        .I2(digits__12[3]),
        .I3(digits__12[2]),
        .O(CE_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h080E)) 
    CF_OBUF_inst_i_1
       (.I0(digits__12[1]),
        .I1(digits__12[0]),
        .I2(digits__12[3]),
        .I3(digits__12[2]),
        .O(CF_OBUF));
  LUT4 #(
    .INIT(16'h08C3)) 
    CG_OBUF_inst_i_1
       (.I0(digits__12[0]),
        .I1(digits__12[2]),
        .I2(digits__12[3]),
        .I3(digits__12[1]),
        .O(CG_OBUF));
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
        .R(\count_reg[19]_0 ));
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
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(\count_reg_n_0_[10] ),
        .R(\count_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(\count_reg_n_0_[11] ),
        .R(\count_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(\count_reg_n_0_[12] ),
        .R(\count_reg[19]_0 ));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
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
        .R(\count_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(\count_reg_n_0_[14] ),
        .R(\count_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(\count_reg_n_0_[15] ),
        .R(\count_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(\count_reg_n_0_[16] ),
        .R(\count_reg[19]_0 ));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\NLW_count_reg[16]_i_1_CO_UNCONNECTED [3],\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({sel0,\count_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(sel0[0]),
        .R(\count_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(sel0[1]),
        .R(\count_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(sel0[2]),
        .R(\count_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(\count_reg_n_0_[1] ),
        .R(\count_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(\count_reg_n_0_[2] ),
        .R(\count_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(\count_reg_n_0_[3] ),
        .R(\count_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(\count_reg_n_0_[4] ),
        .R(\count_reg[19]_0 ));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] ,\count_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(\count_reg_n_0_[5] ),
        .R(\count_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(\count_reg_n_0_[6] ),
        .R(\count_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(\count_reg_n_0_[7] ),
        .R(\count_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(\count_reg_n_0_[8] ),
        .R(\count_reg[19]_0 ));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] ,\count_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(\count_reg_n_0_[9] ),
        .R(\count_reg[19]_0 ));
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
   (dff_res,
    out,
    dividedClock,
    q_reg_0,
    \q_reg[0] ,
    Q);
  output dff_res;
  output out;
  input dividedClock;
  input q_reg_0;
  input [1:0]\q_reg[0] ;
  input [0:0]Q;

  wire [0:0]Q;
  wire dff_res;
  wire dividedClock;
  wire out;
  wire q_i_1_n_0;
  wire [1:0]\q_reg[0] ;
  wire q_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4F83)) 
    \q[0]_i_1 
       (.I0(dff_res),
        .I1(\q_reg[0] [1]),
        .I2(\q_reg[0] [0]),
        .I3(Q),
        .O(out));
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
    resetSignal_reg_1,
    CLK100MHZ_IBUF_BUFG,
    signal_reg_0,
    signal_reg_1,
    CPU_RESETN_IBUF);
  output signal;
  output resetSignal_reg_0;
  input resetSignal_reg_1;
  input CLK100MHZ_IBUF_BUFG;
  input signal_reg_0;
  input signal_reg_1;
  input CPU_RESETN_IBUF;

  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN_IBUF;
  wire resetSignal;
  wire resetSignal_reg_0;
  wire resetSignal_reg_1;
  wire signal;
  wire signal_reg_0;
  wire signal_reg_1;

  LUT2 #(
    .INIT(4'h7)) 
    \count[2]_i_2__0 
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
        .D(signal_reg_1),
        .Q(signal));
endmodule

(* ORIG_REF_NAME = "nBits_comparator" *) 
module nBits_comparator__parameterized0
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
   (\count_reg[1]_0 ,
    \count_reg[0]_0 ,
    CLK100MHZ_IBUF_BUFG,
    \count_reg[1]_1 );
  output \count_reg[1]_0 ;
  output \count_reg[0]_0 ;
  input CLK100MHZ_IBUF_BUFG;
  input \count_reg[1]_1 ;

  wire CLK100MHZ_IBUF_BUFG;
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
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
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
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[1]_1 ),
        .D(\count[0]_i_1_n_0 ),
        .Q(count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[1]_1 ),
        .D(\count[1]_i_1_n_0 ),
        .Q(count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\count_reg[1]_1 ),
        .D(\count[2]_i_1__0_n_0 ),
        .Q(count[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    resetSignal_i_1
       (.I0(count[1]),
        .I1(count[2]),
        .I2(count[0]),
        .O(\count_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
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
   (\count_reg[0]_0 ,
    en,
    dividedClock,
    \count_reg[0]_1 ,
    \FSM_sequential_current_state_reg[1] );
  output [0:0]\count_reg[0]_0 ;
  input en;
  input dividedClock;
  input \count_reg[0]_1 ;
  input [1:0]\FSM_sequential_current_state_reg[1] ;

  wire [1:0]\FSM_sequential_current_state_reg[1] ;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[1]_i_1__0_n_0 ;
  wire \count[2]_i_2_n_0 ;
  wire [2:0]count_reg;
  wire [0:0]\count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire dividedClock;
  wire en;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00FF7F00)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .I3(\FSM_sequential_current_state_reg[1] [1]),
        .I4(\FSM_sequential_current_state_reg[1] [0]),
        .O(\count_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__0 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(\count[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
        .CLR(\count_reg[0]_1 ),
        .D(\count[0]_i_1__0_n_0 ),
        .Q(count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(dividedClock),
        .CE(en),
        .CLR(\count_reg[0]_1 ),
        .D(\count[1]_i_1__0_n_0 ),
        .Q(count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(dividedClock),
        .CE(en),
        .CLR(\count_reg[0]_1 ),
        .D(\count[2]_i_2_n_0 ),
        .Q(count_reg[2]));
endmodule

module n_TX_dataPath
   (D,
    out,
    \count_reg[0] ,
    dividedClock,
    \register_reg[7] ,
    en,
    \count_reg[0]_0 ,
    Q,
    \register_reg[0] ,
    SW_IBUF,
    E,
    \register_reg[7]_0 );
  output [0:0]D;
  output out;
  output [0:0]\count_reg[0] ;
  input dividedClock;
  input \register_reg[7] ;
  input en;
  input \count_reg[0]_0 ;
  input [0:0]Q;
  input [1:0]\register_reg[0] ;
  input [6:0]SW_IBUF;
  input [0:0]E;
  input [0:0]\register_reg[7]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [6:0]SW_IBUF;
  wire [0:0]\count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire dff_res;
  wire dividedClock;
  wire en;
  wire out;
  wire reg_out;
  wire [1:0]\register_reg[0] ;
  wire \register_reg[7] ;
  wire [0:0]\register_reg[7]_0 ;

  nBits_up_down_counter__parameterized0 counter1
       (.\FSM_sequential_current_state_reg[1] (\register_reg[0] ),
        .\count_reg[0]_0 (\count_reg[0] ),
        .\count_reg[0]_1 (\count_reg[0]_0 ),
        .dividedClock(dividedClock),
        .en(en));
  dFlipFlop_0 dff2
       (.Q(reg_out),
        .dff_res(dff_res),
        .dividedClock(dividedClock),
        .out(out),
        .\q_reg[0] (\register_reg[0] ),
        .q_reg_0(\register_reg[7] ));
  n_shiftRegister_oneBit shft1
       (.D(D),
        .E(E),
        .Q(Q),
        .SW_IBUF(SW_IBUF),
        .dff_res(dff_res),
        .dividedClock(dividedClock),
        .\register_reg[0]_0 (reg_out),
        .\register_reg[0]_1 (\register_reg[0] ),
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
  wire nbc1_n_0;
  wire nbc1_n_1;
  wire q_reg;
  wire signal;

  nBits_comparator comp1
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .resetSignal_reg_0(comp1_n_1),
        .resetSignal_reg_1(nbc1_n_0),
        .signal(signal),
        .signal_reg_0(q_reg),
        .signal_reg_1(nbc1_n_1));
  dFlipFlop dff1
       (.dividedClock(dividedClock),
        .q_reg_0(q_reg),
        .signal(signal));
  nBits_up_down_counter nbc1
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .\count_reg[0]_0 (nbc1_n_1),
        .\count_reg[1]_0 (nbc1_n_0),
        .\count_reg[1]_1 (comp1_n_1));
endmodule

module n_shiftRegister_oneBit
   (D,
    \register_reg[0]_0 ,
    Q,
    \register_reg[0]_1 ,
    dff_res,
    SW_IBUF,
    E,
    \register_reg[7]_0 ,
    dividedClock,
    \register_reg[7]_1 );
  output [0:0]D;
  output [0:0]\register_reg[0]_0 ;
  input [0:0]Q;
  input [1:0]\register_reg[0]_1 ;
  input dff_res;
  input [6:0]SW_IBUF;
  input [0:0]E;
  input [0:0]\register_reg[7]_0 ;
  input dividedClock;
  input \register_reg[7]_1 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [6:0]SW_IBUF;
  wire dff_res;
  wire dividedClock;
  wire [6:0]p_2_in;
  wire [0:0]\register_reg[0]_0 ;
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

  LUT5 #(
    .INIT(32'h82A022A0)) 
    \FSM_onehot_current_state[7]_i_1 
       (.I0(Q),
        .I1(\register_reg[0]_0 ),
        .I2(\register_reg[0]_1 [0]),
        .I3(\register_reg[0]_1 [1]),
        .I4(dff_res),
        .O(D));
  LUT3 #(
    .INIT(8'hB8)) 
    \register[0]_i_1 
       (.I0(\register_reg_n_0_[1] ),
        .I1(\register_reg[0]_1 [1]),
        .I2(SW_IBUF[0]),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \register[1]_i_1 
       (.I0(\register_reg_n_0_[2] ),
        .I1(\register_reg[0]_1 [1]),
        .I2(SW_IBUF[1]),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \register[2]_i_1 
       (.I0(\register_reg_n_0_[3] ),
        .I1(\register_reg[0]_1 [1]),
        .I2(SW_IBUF[2]),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \register[3]_i_1 
       (.I0(\register_reg_n_0_[4] ),
        .I1(\register_reg[0]_1 [1]),
        .I2(SW_IBUF[3]),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \register[4]_i_1 
       (.I0(\register_reg_n_0_[5] ),
        .I1(\register_reg[0]_1 [1]),
        .I2(SW_IBUF[4]),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \register[5]_i_1 
       (.I0(\register_reg_n_0_[6] ),
        .I1(\register_reg[0]_1 [1]),
        .I2(SW_IBUF[5]),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \register[6]_i_1 
       (.I0(\register_reg_n_0_[7] ),
        .I1(\register_reg[0]_1 [1]),
        .I2(SW_IBUF[6]),
        .O(p_2_in[6]));
  FDCE #(
    .INIT(1'b0)) 
    \register_reg[0] 
       (.C(dividedClock),
        .CE(E),
        .CLR(\register_reg[7]_1 ),
        .D(p_2_in[0]),
        .Q(\register_reg[0]_0 ));
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
   (CB_OBUF,
    CC_OBUF,
    CD_OBUF,
    CA_OBUF,
    CE_OBUF,
    CF_OBUF,
    CG_OBUF,
    AN_OBUF,
    \count_reg[19] ,
    CLK100MHZ_IBUF_BUFG,
    CB_OBUF_inst_i_1,
    SW_IBUF);
  output CB_OBUF;
  output CC_OBUF;
  output CD_OBUF;
  output CA_OBUF;
  output CE_OBUF;
  output CF_OBUF;
  output CG_OBUF;
  output [7:0]AN_OBUF;
  input \count_reg[19] ;
  input CLK100MHZ_IBUF_BUFG;
  input [0:0]CB_OBUF_inst_i_1;
  input [7:0]SW_IBUF;

  wire [7:0]AN_OBUF;
  wire CA_OBUF;
  wire CB_OBUF;
  wire [0:0]CB_OBUF_inst_i_1;
  wire CC_OBUF;
  wire CD_OBUF;
  wire CE_OBUF;
  wire CF_OBUF;
  wire CG_OBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [7:0]SW_IBUF;
  wire \count_reg[19] ;

  counter_n_bit counter
       (.AN_OBUF(AN_OBUF),
        .CA_OBUF(CA_OBUF),
        .CB_OBUF(CB_OBUF),
        .CB_OBUF_inst_i_1_0(CB_OBUF_inst_i_1),
        .CC_OBUF(CC_OBUF),
        .CD_OBUF(CD_OBUF),
        .CE_OBUF(CE_OBUF),
        .CF_OBUF(CF_OBUF),
        .CG_OBUF(CG_OBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .SW_IBUF(SW_IBUF),
        .\count_reg[19]_0 (\count_reg[19] ));
endmodule

(* divFactor1 = "7" *) 
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
    SW);
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
  wire [15:0]LED;
  wire [3:0]LED_OBUF;
  wire RX1_n_0;
  wire RX1_n_1;
  wire [15:0]SW;
  wire [11:0]SW_IBUF;
  wire TX1_n_0;
  wire dividedClock;
  wire out;
  wire [0:0]shift_reg;

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
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CPU_RESETN(RX1_n_0),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .D(TX1_n_0),
        .Q(RX1_n_1),
        .out(out),
        .\shift_reg_reg[0] (shift_reg));
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
        .D(TX1_n_0),
        .\FSM_sequential_current_state_reg[1] (RX1_n_0),
        .LED_OBUF({LED_OBUF[3:2],LED_OBUF[0]}),
        .Q(RX1_n_1),
        .SW_IBUF(SW_IBUF),
        .dividedClock(dividedClock),
        .out(out));
  n_clockDivider clkDiv1
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .dividedClock(dividedClock),
        .q_reg(RX1_n_0));
  sev_seg_controller ssc
       (.AN_OBUF(AN_OBUF),
        .CA_OBUF(CA_OBUF),
        .CB_OBUF(CB_OBUF),
        .CB_OBUF_inst_i_1(shift_reg),
        .CC_OBUF(CC_OBUF),
        .CD_OBUF(CD_OBUF),
        .CE_OBUF(CE_OBUF),
        .CF_OBUF(CF_OBUF),
        .CG_OBUF(CG_OBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .SW_IBUF(SW_IBUF[7:0]),
        .\count_reg[19] (RX1_n_0));
endmodule

module shift_register
   (\shift_reg_reg[0]_0 ,
    E,
    D,
    CLK100MHZ_IBUF_BUFG,
    AR);
  output [0:0]\shift_reg_reg[0]_0 ;
  input [0:0]E;
  input [0:0]D;
  input CLK100MHZ_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]D;
  wire [0:0]E;
  wire [6:1]shift_reg;
  wire [0:0]\shift_reg_reg[0]_0 ;

  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(shift_reg[1]),
        .Q(\shift_reg_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(shift_reg[2]),
        .Q(shift_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(shift_reg[3]),
        .Q(shift_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(shift_reg[4]),
        .Q(shift_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(shift_reg[5]),
        .Q(shift_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(shift_reg[6]),
        .Q(shift_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D),
        .Q(shift_reg[6]));
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
