module sev_seg_top(
    input wire CLK100MHZ,    // using the same name as pin names
    input wire CPU_RESETN,   
    output wire CA, CB, CC, CD, CE, CF, CG, DP,
    output wire [7:0] AN,
    output wire [15:0]LED,    
    input wire [15:0]SW
);
logic reset_n;
logic clk;
assign reset_n = CPU_RESETN;
assign clk = CLK100MHZ;

wire [6:0] Seg;
wire [3:0] digits[0:7];
wire [3:0] signals;

//localparam divFactor1=31250000;
//localparam divFactor2=100000000;

localparam divFactor1=799_00000;
localparam divFactor2=49_00000;


logic out;
logic [7:0] out_bit;
logic busy;
logic dividedClock;
logic dividedClock2;


logic [3:0]address;
assign address=SW[11:8];
logic [7:0]data_in;
assign data_in=SW[7:0];

logic [7:0]data_out;
assign data_out=out_bit;

//assign LED[0]=busy;
    n_clockDivider #(.n(divFactor1)) clkDiv1(.clk(clk),.reset(reset_n),.newClk(dividedClock));
    n_clockDivider #(.n(divFactor2)) clkDiv2(.clk(clk),.reset(reset_n),.newClk(dividedClock2));
    Tx_top #(.PARITY_EN(0)) TX1(.clk(dividedClock),.reset(reset_n),.address(address),.data_in(data_in),.busy(LED[0]),.out(out),.s(LED[3:2]));
    Rx_top #(.parity_en(0),.odd_even(0)) RX1(.clk(dividedClock2),.reset(reset_n),.in_bit(out),.out_bit(out_bit));



assign digits[0] = data_in[3:0];
assign digits[1] = data_in[7:4];
assign digits[2] = 4'b0000;
assign digits[3] = 4'b0000;
assign digits[4] = data_out[3:0];
assign digits[5] = data_out[7:4];
assign digits[6] = 4'b0000;
assign digits[7] = 4'b0000;



sev_seg_controller ssc(
    .clk(clk),
    .resetn(reset_n),
    .digits(digits),
    .Seg(Seg),
    .AN(AN)
);


assign CA = Seg[0];
assign CB = Seg[1];
assign CC = Seg[2];
assign CD = Seg[3];
assign CE = Seg[4];
assign CF = Seg[5];
assign CG = Seg[6];
assign DP = 1'b1; // turn off the dot point on seven segs


endmodule : sev_seg_top