// Copyright (C) 1991-2010 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus II"
// VERSION "Version 10.0 Build 262 08/18/2010 Service Pack 1 SJ Web Edition"

// DATE "11/24/2010 17:34:07"

// 
// Device: Altera EP1S10F780C6 Package FBGA780
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module ycbcr_rgb (
	clk,
	reset,
	in_data,
	R,
	G,
	B);
input 	clk;
input 	reset;
input 	[7:0] in_data;
output 	[15:0] R;
output 	[15:0] G;
output 	[15:0] B;

// Design Ports Information
// R[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// R[1]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// R[2]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// R[3]	=>  Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// R[4]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// R[5]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// R[6]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// R[7]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// R[8]	=>  Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// R[9]	=>  Location: PIN_AH9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// R[10]	=>  Location: PIN_AG9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// R[11]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// R[12]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// R[13]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// R[14]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// R[15]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// G[0]	=>  Location: PIN_M27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// G[1]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// G[2]	=>  Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// G[3]	=>  Location: PIN_A25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// G[4]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// G[5]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// G[6]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// G[7]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// G[8]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// G[9]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// G[10]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// G[11]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// G[12]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// G[13]	=>  Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// G[14]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// G[15]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// B[0]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// B[1]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// B[2]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// B[3]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// B[4]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// B[5]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// B[6]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// B[7]	=>  Location: PIN_AH10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// B[8]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// B[9]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// B[10]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// B[11]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// B[12]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// B[13]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// B[14]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// B[15]	=>  Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// clk	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// reset	=>  Location: PIN_R27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// in_data[0]	=>  Location: PIN_R26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// in_data[1]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// in_data[2]	=>  Location: PIN_U27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// in_data[3]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// in_data[4]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// in_data[5]	=>  Location: PIN_T27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// in_data[6]	=>  Location: PIN_N27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// in_data[7]	=>  Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("ycbcr_rgb_v.sdo");
// synopsys translate_on

wire \Mult0|auto_generated|mac_out1~DATAOUT16 ;
wire \Mult0|auto_generated|mac_out1~0 ;
wire \Mult1|auto_generated|mac_out1~DATAOUT16 ;
wire \Mult1|auto_generated|mac_out1~DATAOUT17 ;
wire \Mult1|auto_generated|mac_out1~DATAOUT18 ;
wire \Mult1|auto_generated|mac_out1~DATAOUT19 ;
wire \Mult1|auto_generated|mac_out1~DATAOUT20 ;
wire \Mult1|auto_generated|mac_out1~DATAOUT21 ;
wire \Mult1|auto_generated|mac_out1~DATAOUT22 ;
wire \Mult1|auto_generated|mac_out1~DATAOUT23 ;
wire \Mult1|auto_generated|mac_out1~0 ;
wire \Mult1|auto_generated|mac_out1~1 ;
wire \Mult1|auto_generated|mac_out1~2 ;
wire \Mult1|auto_generated|mac_out1~3 ;
wire \Mult1|auto_generated|mac_out1~4 ;
wire \Mult1|auto_generated|mac_out1~5 ;
wire \Mult1|auto_generated|mac_out1~6 ;
wire \Mult1|auto_generated|mac_out1~7 ;
wire \Mult1|auto_generated|mac_out1~8 ;
wire \Mult1|auto_generated|mac_out1~9 ;
wire \Mult1|auto_generated|mac_out1~10 ;
wire \Mult1|auto_generated|mac_out1~11 ;
wire \Mult2|auto_generated|mac_out1~DATAOUT16 ;
wire \Mult2|auto_generated|mac_out1~0 ;
wire \clk~combout ;
wire \reset~combout ;
wire \present_state.S0~regout ;
wire \present_state.S2~regout ;
wire \present_state.S3~regout ;
wire \present_state.S1~regout ;
wire WideNor0;
wire \Mult0|auto_generated|mac_mult2~dataout ;
wire \Mult0|auto_generated|mac_mult2~DATAOUT1 ;
wire \Mult0|auto_generated|mac_mult2~DATAOUT2 ;
wire \Mult0|auto_generated|mac_mult2~DATAOUT3 ;
wire \Mult0|auto_generated|mac_mult2~DATAOUT4 ;
wire \Mult0|auto_generated|mac_mult2~DATAOUT5 ;
wire \Mult0|auto_generated|mac_mult2~DATAOUT6 ;
wire \Mult0|auto_generated|mac_mult2~DATAOUT7 ;
wire \Mult0|auto_generated|mac_mult2~DATAOUT8 ;
wire \Mult0|auto_generated|mac_mult2~DATAOUT9 ;
wire \Mult0|auto_generated|mac_mult2~DATAOUT10 ;
wire \Mult0|auto_generated|mac_mult2~DATAOUT11 ;
wire \Mult0|auto_generated|mac_mult2~DATAOUT12 ;
wire \Mult0|auto_generated|mac_mult2~DATAOUT13 ;
wire \Mult0|auto_generated|mac_mult2~DATAOUT14 ;
wire \Mult0|auto_generated|mac_mult2~DATAOUT15 ;
wire \Mult0|auto_generated|mac_mult2~DATAOUT16 ;
wire \Mult0|auto_generated|mac_mult2~1 ;
wire \Mult0|auto_generated|mac_out1~dataout ;
wire \Add0~0 ;
wire \Radd[0]~0 ;
wire \R[0]~reg0_regout ;
wire \Mult0|auto_generated|mac_out1~DATAOUT1 ;
wire \Add0~2 ;
wire \Add0~2COUT1_94 ;
wire \Add0~5 ;
wire \Radd[1]~1 ;
wire \R[1]~reg0_regout ;
wire \Mult0|auto_generated|mac_out1~DATAOUT2 ;
wire \Add0~7 ;
wire \Add0~7COUT1_96 ;
wire \Add0~10 ;
wire \Radd[2]~2 ;
wire \R[2]~reg0_regout ;
wire \Mult0|auto_generated|mac_out1~DATAOUT3 ;
wire \Add0~12 ;
wire \Add0~15 ;
wire \Radd[3]~3 ;
wire \R[3]~reg0_regout ;
wire \Mult0|auto_generated|mac_out1~DATAOUT4 ;
wire \Add0~17 ;
wire \Add0~17COUT1_98 ;
wire \Add0~20 ;
wire \Radd[4]~4 ;
wire \R[4]~reg0_regout ;
wire \Mult0|auto_generated|mac_out1~DATAOUT5 ;
wire \Add0~22 ;
wire \Add0~22COUT1_100 ;
wire \Add0~25 ;
wire \Radd[5]~5 ;
wire \R[5]~reg0_regout ;
wire \Mult0|auto_generated|mac_out1~DATAOUT6 ;
wire \Add0~27 ;
wire \Add0~27COUT1_102 ;
wire \Add0~30 ;
wire \Radd[6]~6 ;
wire \R[6]~reg0_regout ;
wire \Mult0|auto_generated|mac_out1~DATAOUT7 ;
wire \Add0~32 ;
wire \Add0~32COUT1_104 ;
wire \Add0~35 ;
wire \Radd[7]~7 ;
wire \R[7]~reg0_regout ;
wire \Mult0|auto_generated|mac_out1~DATAOUT8 ;
wire \Add0~37 ;
wire \Add0~40 ;
wire \Radd[8]~8 ;
wire \R[8]~reg0_regout ;
wire \Mult0|auto_generated|mac_out1~DATAOUT9 ;
wire \Add0~42 ;
wire \Add0~42COUT1_106 ;
wire \Add0~45 ;
wire \Radd[9]~9 ;
wire \R[9]~reg0_regout ;
wire \Mult0|auto_generated|mac_out1~DATAOUT10 ;
wire \Add0~47 ;
wire \Add0~47COUT1_108 ;
wire \Add0~50 ;
wire \Radd[10]~10 ;
wire \R[10]~reg0_regout ;
wire \Mult0|auto_generated|mac_out1~DATAOUT11 ;
wire \Add0~52 ;
wire \Add0~52COUT1_110 ;
wire \Add0~55 ;
wire \Radd[11]~11 ;
wire \R[11]~reg0_regout ;
wire \Mult0|auto_generated|mac_out1~DATAOUT12 ;
wire \Add0~57 ;
wire \Add0~57COUT1_112 ;
wire \Add0~60 ;
wire \Radd[12]~12 ;
wire \R[12]~reg0_regout ;
wire \Mult0|auto_generated|mac_out1~DATAOUT13 ;
wire \Add0~62 ;
wire \Add0~65 ;
wire \Radd[13]~13 ;
wire \R[13]~reg0_regout ;
wire \Mult0|auto_generated|mac_out1~DATAOUT14 ;
wire \Add0~67 ;
wire \Add0~67COUT1_114 ;
wire \Add0~70 ;
wire \Radd[14]~14 ;
wire \R[14]~reg0_regout ;
wire \Mult0|auto_generated|mac_out1~DATAOUT15 ;
wire \Add0~72 ;
wire \Add0~72COUT1_116 ;
wire \Add0~75 ;
wire \Radd[15]~15 ;
wire \R[15]~reg0_regout ;
wire \sel~0_combout ;
wire \Mult1|auto_generated|mac_mult2~dataout ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT1 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT2 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT3 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT4 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT5 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT6 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT7 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT8 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT9 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT10 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT11 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT12 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT13 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT14 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT15 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT16 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT17 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT18 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT19 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT20 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT21 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT22 ;
wire \Mult1|auto_generated|mac_mult2~DATAOUT23 ;
wire \Mult1|auto_generated|mac_mult2~12 ;
wire \Mult1|auto_generated|mac_mult2~13 ;
wire \Mult1|auto_generated|mac_mult2~14 ;
wire \Mult1|auto_generated|mac_mult2~15 ;
wire \Mult1|auto_generated|mac_mult2~16 ;
wire \Mult1|auto_generated|mac_mult2~17 ;
wire \Mult1|auto_generated|mac_mult2~18 ;
wire \Mult1|auto_generated|mac_mult2~19 ;
wire \Mult1|auto_generated|mac_mult2~20 ;
wire \Mult1|auto_generated|mac_mult2~21 ;
wire \Mult1|auto_generated|mac_mult2~22 ;
wire \Mult1|auto_generated|mac_mult2~23 ;
wire \Mult1|auto_generated|mac_out1~dataout ;
wire \Add1~0 ;
wire \Gadd[0]~0 ;
wire \G[0]~reg0_regout ;
wire \Mult1|auto_generated|mac_out1~DATAOUT1 ;
wire \Add1~2 ;
wire \Add1~2COUT1_94 ;
wire \Add1~5 ;
wire \Gadd[1]~1 ;
wire \G[1]~reg0_regout ;
wire \Mult1|auto_generated|mac_out1~DATAOUT2 ;
wire \Add1~7 ;
wire \Add1~7COUT1_96 ;
wire \Add1~10 ;
wire \Gadd[2]~2 ;
wire \G[2]~reg0_regout ;
wire \Mult1|auto_generated|mac_out1~DATAOUT3 ;
wire \Add1~12 ;
wire \Add1~15 ;
wire \Gadd[3]~3 ;
wire \G[3]~reg0_regout ;
wire \Mult1|auto_generated|mac_out1~DATAOUT4 ;
wire \Add1~17 ;
wire \Add1~17COUT1_98 ;
wire \Add1~20 ;
wire \Gadd[4]~4 ;
wire \G[4]~reg0_regout ;
wire \Mult1|auto_generated|mac_out1~DATAOUT5 ;
wire \Add1~22 ;
wire \Add1~22COUT1_100 ;
wire \Add1~25 ;
wire \Gadd[5]~5 ;
wire \G[5]~reg0_regout ;
wire \Mult1|auto_generated|mac_out1~DATAOUT6 ;
wire \Add1~27 ;
wire \Add1~27COUT1_102 ;
wire \Add1~30 ;
wire \Gadd[6]~6 ;
wire \G[6]~reg0_regout ;
wire \Mult1|auto_generated|mac_out1~DATAOUT7 ;
wire \Add1~32 ;
wire \Add1~32COUT1_104 ;
wire \Add1~35 ;
wire \Gadd[7]~7 ;
wire \G[7]~reg0_regout ;
wire \Mult1|auto_generated|mac_out1~DATAOUT8 ;
wire \Add1~37 ;
wire \Add1~40 ;
wire \Gadd[8]~8 ;
wire \G[8]~reg0_regout ;
wire \Mult1|auto_generated|mac_out1~DATAOUT9 ;
wire \Add1~42 ;
wire \Add1~42COUT1_106 ;
wire \Add1~45 ;
wire \Gadd[9]~9 ;
wire \G[9]~reg0_regout ;
wire \Mult1|auto_generated|mac_out1~DATAOUT10 ;
wire \Add1~47 ;
wire \Add1~47COUT1_108 ;
wire \Add1~50 ;
wire \Gadd[10]~10 ;
wire \G[10]~reg0_regout ;
wire \Mult1|auto_generated|mac_out1~DATAOUT11 ;
wire \Add1~52 ;
wire \Add1~52COUT1_110 ;
wire \Add1~55 ;
wire \Gadd[11]~11 ;
wire \G[11]~reg0_regout ;
wire \Mult1|auto_generated|mac_out1~DATAOUT12 ;
wire \Add1~57 ;
wire \Add1~57COUT1_112 ;
wire \Add1~60 ;
wire \Gadd[12]~12 ;
wire \G[12]~reg0_regout ;
wire \Mult1|auto_generated|mac_out1~DATAOUT13 ;
wire \Add1~62 ;
wire \Add1~65 ;
wire \Gadd[13]~13 ;
wire \G[13]~reg0_regout ;
wire \Mult1|auto_generated|mac_out1~DATAOUT14 ;
wire \Add1~67 ;
wire \Add1~67COUT1_114 ;
wire \Add1~70 ;
wire \Gadd[14]~14 ;
wire \G[14]~reg0_regout ;
wire \Mult1|auto_generated|mac_out1~DATAOUT15 ;
wire \Add1~72 ;
wire \Add1~72COUT1_116 ;
wire \Add1~75 ;
wire \Gadd[15]~15 ;
wire \G[15]~reg0_regout ;
wire \Mult2|auto_generated|mac_mult2~dataout ;
wire \Mult2|auto_generated|mac_mult2~DATAOUT1 ;
wire \Mult2|auto_generated|mac_mult2~DATAOUT2 ;
wire \Mult2|auto_generated|mac_mult2~DATAOUT3 ;
wire \Mult2|auto_generated|mac_mult2~DATAOUT4 ;
wire \Mult2|auto_generated|mac_mult2~DATAOUT5 ;
wire \Mult2|auto_generated|mac_mult2~DATAOUT6 ;
wire \Mult2|auto_generated|mac_mult2~DATAOUT7 ;
wire \Mult2|auto_generated|mac_mult2~DATAOUT8 ;
wire \Mult2|auto_generated|mac_mult2~DATAOUT9 ;
wire \Mult2|auto_generated|mac_mult2~DATAOUT10 ;
wire \Mult2|auto_generated|mac_mult2~DATAOUT11 ;
wire \Mult2|auto_generated|mac_mult2~DATAOUT12 ;
wire \Mult2|auto_generated|mac_mult2~DATAOUT13 ;
wire \Mult2|auto_generated|mac_mult2~DATAOUT14 ;
wire \Mult2|auto_generated|mac_mult2~DATAOUT15 ;
wire \Mult2|auto_generated|mac_mult2~DATAOUT16 ;
wire \Mult2|auto_generated|mac_mult2~1 ;
wire \Mult2|auto_generated|mac_out1~dataout ;
wire \Add2~0 ;
wire \Badd[0]~0 ;
wire \B[0]~reg0_regout ;
wire \Mult2|auto_generated|mac_out1~DATAOUT1 ;
wire \Add2~2 ;
wire \Add2~2COUT1_94 ;
wire \Add2~5 ;
wire \Badd[1]~1 ;
wire \B[1]~reg0_regout ;
wire \Mult2|auto_generated|mac_out1~DATAOUT2 ;
wire \Add2~7 ;
wire \Add2~7COUT1_96 ;
wire \Add2~10 ;
wire \Badd[2]~2 ;
wire \B[2]~reg0_regout ;
wire \Mult2|auto_generated|mac_out1~DATAOUT3 ;
wire \Add2~12 ;
wire \Add2~15 ;
wire \Badd[3]~3 ;
wire \B[3]~reg0_regout ;
wire \Mult2|auto_generated|mac_out1~DATAOUT4 ;
wire \Add2~17 ;
wire \Add2~17COUT1_98 ;
wire \Add2~20 ;
wire \Badd[4]~4 ;
wire \B[4]~reg0_regout ;
wire \Mult2|auto_generated|mac_out1~DATAOUT5 ;
wire \Add2~22 ;
wire \Add2~22COUT1_100 ;
wire \Add2~25 ;
wire \Badd[5]~5 ;
wire \B[5]~reg0_regout ;
wire \Mult2|auto_generated|mac_out1~DATAOUT6 ;
wire \Add2~27 ;
wire \Add2~27COUT1_102 ;
wire \Add2~30 ;
wire \Badd[6]~6 ;
wire \B[6]~reg0_regout ;
wire \Mult2|auto_generated|mac_out1~DATAOUT7 ;
wire \Add2~32 ;
wire \Add2~32COUT1_104 ;
wire \Add2~35 ;
wire \Badd[7]~7 ;
wire \B[7]~reg0_regout ;
wire \Mult2|auto_generated|mac_out1~DATAOUT8 ;
wire \Add2~37 ;
wire \Add2~40 ;
wire \Badd[8]~8 ;
wire \B[8]~reg0_regout ;
wire \Mult2|auto_generated|mac_out1~DATAOUT9 ;
wire \Add2~42 ;
wire \Add2~42COUT1_106 ;
wire \Add2~45 ;
wire \Badd[9]~9 ;
wire \B[9]~reg0_regout ;
wire \Mult2|auto_generated|mac_out1~DATAOUT10 ;
wire \Add2~47 ;
wire \Add2~47COUT1_108 ;
wire \Add2~50 ;
wire \Badd[10]~10 ;
wire \B[10]~reg0_regout ;
wire \Mult2|auto_generated|mac_out1~DATAOUT11 ;
wire \Add2~52 ;
wire \Add2~52COUT1_110 ;
wire \Add2~55 ;
wire \Badd[11]~11 ;
wire \B[11]~reg0_regout ;
wire \Mult2|auto_generated|mac_out1~DATAOUT12 ;
wire \Add2~57 ;
wire \Add2~57COUT1_112 ;
wire \Add2~60 ;
wire \Badd[12]~12 ;
wire \B[12]~reg0_regout ;
wire \Mult2|auto_generated|mac_out1~DATAOUT13 ;
wire \Add2~62 ;
wire \Add2~65 ;
wire \Badd[13]~13 ;
wire \B[13]~reg0_regout ;
wire \Mult2|auto_generated|mac_out1~DATAOUT14 ;
wire \Add2~67 ;
wire \Add2~67COUT1_114 ;
wire \Add2~70 ;
wire \Badd[14]~14 ;
wire \B[14]~reg0_regout ;
wire \Mult2|auto_generated|mac_out1~DATAOUT15 ;
wire \Add2~72 ;
wire \Add2~72COUT1_116 ;
wire \Add2~75 ;
wire \Badd[15]~15 ;
wire \B[15]~reg0_regout ;
wire [7:0] \in_data~combout ;
wire [15:0] B_reg;
wire [15:0] G_reg;
wire [15:0] R_reg;
wire [7:0] data_reg;

wire [17:0] \Mult0|auto_generated|mac_out1_DATAOUT_bus ;
wire [35:0] \Mult1|auto_generated|mac_out1_DATAOUT_bus ;
wire [17:0] \Mult2|auto_generated|mac_out1_DATAOUT_bus ;
wire [17:0] \Mult0|auto_generated|mac_mult2_DATAOUT_bus ;
wire [35:0] \Mult1|auto_generated|mac_mult2_DATAOUT_bus ;
wire [17:0] \Mult2|auto_generated|mac_mult2_DATAOUT_bus ;

assign \Mult0|auto_generated|mac_out1~0  = \Mult0|auto_generated|mac_out1_DATAOUT_bus [0];
assign \Mult0|auto_generated|mac_out1~dataout  = \Mult0|auto_generated|mac_out1_DATAOUT_bus [1];
assign \Mult0|auto_generated|mac_out1~DATAOUT1  = \Mult0|auto_generated|mac_out1_DATAOUT_bus [2];
assign \Mult0|auto_generated|mac_out1~DATAOUT2  = \Mult0|auto_generated|mac_out1_DATAOUT_bus [3];
assign \Mult0|auto_generated|mac_out1~DATAOUT3  = \Mult0|auto_generated|mac_out1_DATAOUT_bus [4];
assign \Mult0|auto_generated|mac_out1~DATAOUT4  = \Mult0|auto_generated|mac_out1_DATAOUT_bus [5];
assign \Mult0|auto_generated|mac_out1~DATAOUT5  = \Mult0|auto_generated|mac_out1_DATAOUT_bus [6];
assign \Mult0|auto_generated|mac_out1~DATAOUT6  = \Mult0|auto_generated|mac_out1_DATAOUT_bus [7];
assign \Mult0|auto_generated|mac_out1~DATAOUT7  = \Mult0|auto_generated|mac_out1_DATAOUT_bus [8];
assign \Mult0|auto_generated|mac_out1~DATAOUT8  = \Mult0|auto_generated|mac_out1_DATAOUT_bus [9];
assign \Mult0|auto_generated|mac_out1~DATAOUT9  = \Mult0|auto_generated|mac_out1_DATAOUT_bus [10];
assign \Mult0|auto_generated|mac_out1~DATAOUT10  = \Mult0|auto_generated|mac_out1_DATAOUT_bus [11];
assign \Mult0|auto_generated|mac_out1~DATAOUT11  = \Mult0|auto_generated|mac_out1_DATAOUT_bus [12];
assign \Mult0|auto_generated|mac_out1~DATAOUT12  = \Mult0|auto_generated|mac_out1_DATAOUT_bus [13];
assign \Mult0|auto_generated|mac_out1~DATAOUT13  = \Mult0|auto_generated|mac_out1_DATAOUT_bus [14];
assign \Mult0|auto_generated|mac_out1~DATAOUT14  = \Mult0|auto_generated|mac_out1_DATAOUT_bus [15];
assign \Mult0|auto_generated|mac_out1~DATAOUT15  = \Mult0|auto_generated|mac_out1_DATAOUT_bus [16];
assign \Mult0|auto_generated|mac_out1~DATAOUT16  = \Mult0|auto_generated|mac_out1_DATAOUT_bus [17];

assign \Mult1|auto_generated|mac_out1~0  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [0];
assign \Mult1|auto_generated|mac_out1~1  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [1];
assign \Mult1|auto_generated|mac_out1~2  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [2];
assign \Mult1|auto_generated|mac_out1~3  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [3];
assign \Mult1|auto_generated|mac_out1~4  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [4];
assign \Mult1|auto_generated|mac_out1~5  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [5];
assign \Mult1|auto_generated|mac_out1~6  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [6];
assign \Mult1|auto_generated|mac_out1~7  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [7];
assign \Mult1|auto_generated|mac_out1~8  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [8];
assign \Mult1|auto_generated|mac_out1~9  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [9];
assign \Mult1|auto_generated|mac_out1~10  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [10];
assign \Mult1|auto_generated|mac_out1~11  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [11];
assign \Mult1|auto_generated|mac_out1~dataout  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [12];
assign \Mult1|auto_generated|mac_out1~DATAOUT1  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [13];
assign \Mult1|auto_generated|mac_out1~DATAOUT2  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [14];
assign \Mult1|auto_generated|mac_out1~DATAOUT3  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [15];
assign \Mult1|auto_generated|mac_out1~DATAOUT4  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [16];
assign \Mult1|auto_generated|mac_out1~DATAOUT5  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [17];
assign \Mult1|auto_generated|mac_out1~DATAOUT6  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [18];
assign \Mult1|auto_generated|mac_out1~DATAOUT7  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [19];
assign \Mult1|auto_generated|mac_out1~DATAOUT8  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [20];
assign \Mult1|auto_generated|mac_out1~DATAOUT9  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [21];
assign \Mult1|auto_generated|mac_out1~DATAOUT10  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [22];
assign \Mult1|auto_generated|mac_out1~DATAOUT11  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [23];
assign \Mult1|auto_generated|mac_out1~DATAOUT12  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [24];
assign \Mult1|auto_generated|mac_out1~DATAOUT13  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [25];
assign \Mult1|auto_generated|mac_out1~DATAOUT14  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [26];
assign \Mult1|auto_generated|mac_out1~DATAOUT15  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [27];
assign \Mult1|auto_generated|mac_out1~DATAOUT16  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [28];
assign \Mult1|auto_generated|mac_out1~DATAOUT17  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [29];
assign \Mult1|auto_generated|mac_out1~DATAOUT18  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [30];
assign \Mult1|auto_generated|mac_out1~DATAOUT19  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [31];
assign \Mult1|auto_generated|mac_out1~DATAOUT20  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [32];
assign \Mult1|auto_generated|mac_out1~DATAOUT21  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [33];
assign \Mult1|auto_generated|mac_out1~DATAOUT22  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [34];
assign \Mult1|auto_generated|mac_out1~DATAOUT23  = \Mult1|auto_generated|mac_out1_DATAOUT_bus [35];

assign \Mult2|auto_generated|mac_out1~0  = \Mult2|auto_generated|mac_out1_DATAOUT_bus [0];
assign \Mult2|auto_generated|mac_out1~dataout  = \Mult2|auto_generated|mac_out1_DATAOUT_bus [1];
assign \Mult2|auto_generated|mac_out1~DATAOUT1  = \Mult2|auto_generated|mac_out1_DATAOUT_bus [2];
assign \Mult2|auto_generated|mac_out1~DATAOUT2  = \Mult2|auto_generated|mac_out1_DATAOUT_bus [3];
assign \Mult2|auto_generated|mac_out1~DATAOUT3  = \Mult2|auto_generated|mac_out1_DATAOUT_bus [4];
assign \Mult2|auto_generated|mac_out1~DATAOUT4  = \Mult2|auto_generated|mac_out1_DATAOUT_bus [5];
assign \Mult2|auto_generated|mac_out1~DATAOUT5  = \Mult2|auto_generated|mac_out1_DATAOUT_bus [6];
assign \Mult2|auto_generated|mac_out1~DATAOUT6  = \Mult2|auto_generated|mac_out1_DATAOUT_bus [7];
assign \Mult2|auto_generated|mac_out1~DATAOUT7  = \Mult2|auto_generated|mac_out1_DATAOUT_bus [8];
assign \Mult2|auto_generated|mac_out1~DATAOUT8  = \Mult2|auto_generated|mac_out1_DATAOUT_bus [9];
assign \Mult2|auto_generated|mac_out1~DATAOUT9  = \Mult2|auto_generated|mac_out1_DATAOUT_bus [10];
assign \Mult2|auto_generated|mac_out1~DATAOUT10  = \Mult2|auto_generated|mac_out1_DATAOUT_bus [11];
assign \Mult2|auto_generated|mac_out1~DATAOUT11  = \Mult2|auto_generated|mac_out1_DATAOUT_bus [12];
assign \Mult2|auto_generated|mac_out1~DATAOUT12  = \Mult2|auto_generated|mac_out1_DATAOUT_bus [13];
assign \Mult2|auto_generated|mac_out1~DATAOUT13  = \Mult2|auto_generated|mac_out1_DATAOUT_bus [14];
assign \Mult2|auto_generated|mac_out1~DATAOUT14  = \Mult2|auto_generated|mac_out1_DATAOUT_bus [15];
assign \Mult2|auto_generated|mac_out1~DATAOUT15  = \Mult2|auto_generated|mac_out1_DATAOUT_bus [16];
assign \Mult2|auto_generated|mac_out1~DATAOUT16  = \Mult2|auto_generated|mac_out1_DATAOUT_bus [17];

assign \Mult0|auto_generated|mac_mult2~1  = \Mult0|auto_generated|mac_mult2_DATAOUT_bus [0];
assign \Mult0|auto_generated|mac_mult2~dataout  = \Mult0|auto_generated|mac_mult2_DATAOUT_bus [1];
assign \Mult0|auto_generated|mac_mult2~DATAOUT1  = \Mult0|auto_generated|mac_mult2_DATAOUT_bus [2];
assign \Mult0|auto_generated|mac_mult2~DATAOUT2  = \Mult0|auto_generated|mac_mult2_DATAOUT_bus [3];
assign \Mult0|auto_generated|mac_mult2~DATAOUT3  = \Mult0|auto_generated|mac_mult2_DATAOUT_bus [4];
assign \Mult0|auto_generated|mac_mult2~DATAOUT4  = \Mult0|auto_generated|mac_mult2_DATAOUT_bus [5];
assign \Mult0|auto_generated|mac_mult2~DATAOUT5  = \Mult0|auto_generated|mac_mult2_DATAOUT_bus [6];
assign \Mult0|auto_generated|mac_mult2~DATAOUT6  = \Mult0|auto_generated|mac_mult2_DATAOUT_bus [7];
assign \Mult0|auto_generated|mac_mult2~DATAOUT7  = \Mult0|auto_generated|mac_mult2_DATAOUT_bus [8];
assign \Mult0|auto_generated|mac_mult2~DATAOUT8  = \Mult0|auto_generated|mac_mult2_DATAOUT_bus [9];
assign \Mult0|auto_generated|mac_mult2~DATAOUT9  = \Mult0|auto_generated|mac_mult2_DATAOUT_bus [10];
assign \Mult0|auto_generated|mac_mult2~DATAOUT10  = \Mult0|auto_generated|mac_mult2_DATAOUT_bus [11];
assign \Mult0|auto_generated|mac_mult2~DATAOUT11  = \Mult0|auto_generated|mac_mult2_DATAOUT_bus [12];
assign \Mult0|auto_generated|mac_mult2~DATAOUT12  = \Mult0|auto_generated|mac_mult2_DATAOUT_bus [13];
assign \Mult0|auto_generated|mac_mult2~DATAOUT13  = \Mult0|auto_generated|mac_mult2_DATAOUT_bus [14];
assign \Mult0|auto_generated|mac_mult2~DATAOUT14  = \Mult0|auto_generated|mac_mult2_DATAOUT_bus [15];
assign \Mult0|auto_generated|mac_mult2~DATAOUT15  = \Mult0|auto_generated|mac_mult2_DATAOUT_bus [16];
assign \Mult0|auto_generated|mac_mult2~DATAOUT16  = \Mult0|auto_generated|mac_mult2_DATAOUT_bus [17];

assign \Mult1|auto_generated|mac_mult2~12  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [0];
assign \Mult1|auto_generated|mac_mult2~13  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [1];
assign \Mult1|auto_generated|mac_mult2~14  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [2];
assign \Mult1|auto_generated|mac_mult2~15  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [3];
assign \Mult1|auto_generated|mac_mult2~16  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [4];
assign \Mult1|auto_generated|mac_mult2~17  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [5];
assign \Mult1|auto_generated|mac_mult2~18  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [6];
assign \Mult1|auto_generated|mac_mult2~19  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [7];
assign \Mult1|auto_generated|mac_mult2~20  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [8];
assign \Mult1|auto_generated|mac_mult2~21  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [9];
assign \Mult1|auto_generated|mac_mult2~22  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [10];
assign \Mult1|auto_generated|mac_mult2~23  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [11];
assign \Mult1|auto_generated|mac_mult2~dataout  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [12];
assign \Mult1|auto_generated|mac_mult2~DATAOUT1  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [13];
assign \Mult1|auto_generated|mac_mult2~DATAOUT2  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [14];
assign \Mult1|auto_generated|mac_mult2~DATAOUT3  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [15];
assign \Mult1|auto_generated|mac_mult2~DATAOUT4  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [16];
assign \Mult1|auto_generated|mac_mult2~DATAOUT5  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [17];
assign \Mult1|auto_generated|mac_mult2~DATAOUT6  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [18];
assign \Mult1|auto_generated|mac_mult2~DATAOUT7  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [19];
assign \Mult1|auto_generated|mac_mult2~DATAOUT8  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [20];
assign \Mult1|auto_generated|mac_mult2~DATAOUT9  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [21];
assign \Mult1|auto_generated|mac_mult2~DATAOUT10  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [22];
assign \Mult1|auto_generated|mac_mult2~DATAOUT11  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [23];
assign \Mult1|auto_generated|mac_mult2~DATAOUT12  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [24];
assign \Mult1|auto_generated|mac_mult2~DATAOUT13  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [25];
assign \Mult1|auto_generated|mac_mult2~DATAOUT14  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [26];
assign \Mult1|auto_generated|mac_mult2~DATAOUT15  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [27];
assign \Mult1|auto_generated|mac_mult2~DATAOUT16  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [28];
assign \Mult1|auto_generated|mac_mult2~DATAOUT17  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [29];
assign \Mult1|auto_generated|mac_mult2~DATAOUT18  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [30];
assign \Mult1|auto_generated|mac_mult2~DATAOUT19  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [31];
assign \Mult1|auto_generated|mac_mult2~DATAOUT20  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [32];
assign \Mult1|auto_generated|mac_mult2~DATAOUT21  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [33];
assign \Mult1|auto_generated|mac_mult2~DATAOUT22  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [34];
assign \Mult1|auto_generated|mac_mult2~DATAOUT23  = \Mult1|auto_generated|mac_mult2_DATAOUT_bus [35];

assign \Mult2|auto_generated|mac_mult2~1  = \Mult2|auto_generated|mac_mult2_DATAOUT_bus [0];
assign \Mult2|auto_generated|mac_mult2~dataout  = \Mult2|auto_generated|mac_mult2_DATAOUT_bus [1];
assign \Mult2|auto_generated|mac_mult2~DATAOUT1  = \Mult2|auto_generated|mac_mult2_DATAOUT_bus [2];
assign \Mult2|auto_generated|mac_mult2~DATAOUT2  = \Mult2|auto_generated|mac_mult2_DATAOUT_bus [3];
assign \Mult2|auto_generated|mac_mult2~DATAOUT3  = \Mult2|auto_generated|mac_mult2_DATAOUT_bus [4];
assign \Mult2|auto_generated|mac_mult2~DATAOUT4  = \Mult2|auto_generated|mac_mult2_DATAOUT_bus [5];
assign \Mult2|auto_generated|mac_mult2~DATAOUT5  = \Mult2|auto_generated|mac_mult2_DATAOUT_bus [6];
assign \Mult2|auto_generated|mac_mult2~DATAOUT6  = \Mult2|auto_generated|mac_mult2_DATAOUT_bus [7];
assign \Mult2|auto_generated|mac_mult2~DATAOUT7  = \Mult2|auto_generated|mac_mult2_DATAOUT_bus [8];
assign \Mult2|auto_generated|mac_mult2~DATAOUT8  = \Mult2|auto_generated|mac_mult2_DATAOUT_bus [9];
assign \Mult2|auto_generated|mac_mult2~DATAOUT9  = \Mult2|auto_generated|mac_mult2_DATAOUT_bus [10];
assign \Mult2|auto_generated|mac_mult2~DATAOUT10  = \Mult2|auto_generated|mac_mult2_DATAOUT_bus [11];
assign \Mult2|auto_generated|mac_mult2~DATAOUT11  = \Mult2|auto_generated|mac_mult2_DATAOUT_bus [12];
assign \Mult2|auto_generated|mac_mult2~DATAOUT12  = \Mult2|auto_generated|mac_mult2_DATAOUT_bus [13];
assign \Mult2|auto_generated|mac_mult2~DATAOUT13  = \Mult2|auto_generated|mac_mult2_DATAOUT_bus [14];
assign \Mult2|auto_generated|mac_mult2~DATAOUT14  = \Mult2|auto_generated|mac_mult2_DATAOUT_bus [15];
assign \Mult2|auto_generated|mac_mult2~DATAOUT15  = \Mult2|auto_generated|mac_mult2_DATAOUT_bus [16];
assign \Mult2|auto_generated|mac_mult2~DATAOUT16  = \Mult2|auto_generated|mac_mult2_DATAOUT_bus [17];

// Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
stratix_io \clk~I (
	.datain(gnd),
	.ddiodatain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\clk~combout ),
	.regout(),
	.ddioregout(),
	.padio(clk),
	.dqsundelayedout());
// synopsys translate_off
defparam \clk~I .ddio_mode = "none";
defparam \clk~I .input_async_reset = "none";
defparam \clk~I .input_power_up = "low";
defparam \clk~I .input_register_mode = "none";
defparam \clk~I .input_sync_reset = "none";
defparam \clk~I .oe_async_reset = "none";
defparam \clk~I .oe_power_up = "low";
defparam \clk~I .oe_register_mode = "none";
defparam \clk~I .oe_sync_reset = "none";
defparam \clk~I .operation_mode = "input";
defparam \clk~I .output_async_reset = "none";
defparam \clk~I .output_power_up = "low";
defparam \clk~I .output_register_mode = "none";
defparam \clk~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
stratix_io \reset~I (
	.datain(gnd),
	.ddiodatain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\reset~combout ),
	.regout(),
	.ddioregout(),
	.padio(reset),
	.dqsundelayedout());
// synopsys translate_off
defparam \reset~I .ddio_mode = "none";
defparam \reset~I .input_async_reset = "none";
defparam \reset~I .input_power_up = "low";
defparam \reset~I .input_register_mode = "none";
defparam \reset~I .input_sync_reset = "none";
defparam \reset~I .oe_async_reset = "none";
defparam \reset~I .oe_power_up = "low";
defparam \reset~I .oe_register_mode = "none";
defparam \reset~I .oe_sync_reset = "none";
defparam \reset~I .operation_mode = "input";
defparam \reset~I .output_async_reset = "none";
defparam \reset~I .output_power_up = "low";
defparam \reset~I .output_register_mode = "none";
defparam \reset~I .output_sync_reset = "none";
// synopsys translate_on

// Location: LC_X9_Y16_N0
stratix_lcell \present_state.S0 (
// Equation(s):
// \present_state.S0~regout  = DFFEAS(VCC, GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , , , , , )

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(),
	.regout(\present_state.S0~regout ),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \present_state.S0 .lut_mask = "ffff";
defparam \present_state.S0 .operation_mode = "normal";
defparam \present_state.S0 .output_mode = "reg_only";
defparam \present_state.S0 .register_cascade_mode = "off";
defparam \present_state.S0 .sum_lutc_input = "datac";
defparam \present_state.S0 .synch_mode = "off";
// synopsys translate_on

// Location: PIN_R26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
stratix_io \in_data[0]~I (
	.datain(gnd),
	.ddiodatain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\in_data~combout [0]),
	.regout(),
	.ddioregout(),
	.padio(in_data[0]),
	.dqsundelayedout());
// synopsys translate_off
defparam \in_data[0]~I .ddio_mode = "none";
defparam \in_data[0]~I .input_async_reset = "none";
defparam \in_data[0]~I .input_power_up = "low";
defparam \in_data[0]~I .input_register_mode = "none";
defparam \in_data[0]~I .input_sync_reset = "none";
defparam \in_data[0]~I .oe_async_reset = "none";
defparam \in_data[0]~I .oe_power_up = "low";
defparam \in_data[0]~I .oe_register_mode = "none";
defparam \in_data[0]~I .oe_sync_reset = "none";
defparam \in_data[0]~I .operation_mode = "input";
defparam \in_data[0]~I .output_async_reset = "none";
defparam \in_data[0]~I .output_power_up = "low";
defparam \in_data[0]~I .output_register_mode = "none";
defparam \in_data[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: LC_X18_Y16_N8
stratix_lcell \data_reg[0] (
// Equation(s):
// data_reg[0] = DFFEAS(GND, GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , , \in_data~combout [0], , , VCC)

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(vcc),
	.datac(\in_data~combout [0]),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(),
	.regout(data_reg[0]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \data_reg[0] .lut_mask = "0000";
defparam \data_reg[0] .operation_mode = "normal";
defparam \data_reg[0] .output_mode = "reg_only";
defparam \data_reg[0] .register_cascade_mode = "off";
defparam \data_reg[0] .sum_lutc_input = "datac";
defparam \data_reg[0] .synch_mode = "on";
// synopsys translate_on

// Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
stratix_io \in_data[1]~I (
	.datain(gnd),
	.ddiodatain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\in_data~combout [1]),
	.regout(),
	.ddioregout(),
	.padio(in_data[1]),
	.dqsundelayedout());
// synopsys translate_off
defparam \in_data[1]~I .ddio_mode = "none";
defparam \in_data[1]~I .input_async_reset = "none";
defparam \in_data[1]~I .input_power_up = "low";
defparam \in_data[1]~I .input_register_mode = "none";
defparam \in_data[1]~I .input_sync_reset = "none";
defparam \in_data[1]~I .oe_async_reset = "none";
defparam \in_data[1]~I .oe_power_up = "low";
defparam \in_data[1]~I .oe_register_mode = "none";
defparam \in_data[1]~I .oe_sync_reset = "none";
defparam \in_data[1]~I .operation_mode = "input";
defparam \in_data[1]~I .output_async_reset = "none";
defparam \in_data[1]~I .output_power_up = "low";
defparam \in_data[1]~I .output_register_mode = "none";
defparam \in_data[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: LC_X13_Y20_N2
stratix_lcell \data_reg[1] (
// Equation(s):
// data_reg[1] = DFFEAS((((\in_data~combout [1]))), GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , , , , , )

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\in_data~combout [1]),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(),
	.regout(data_reg[1]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \data_reg[1] .lut_mask = "ff00";
defparam \data_reg[1] .operation_mode = "normal";
defparam \data_reg[1] .output_mode = "reg_only";
defparam \data_reg[1] .register_cascade_mode = "off";
defparam \data_reg[1] .sum_lutc_input = "datac";
defparam \data_reg[1] .synch_mode = "off";
// synopsys translate_on

// Location: PIN_U27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
stratix_io \in_data[2]~I (
	.datain(gnd),
	.ddiodatain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\in_data~combout [2]),
	.regout(),
	.ddioregout(),
	.padio(in_data[2]),
	.dqsundelayedout());
// synopsys translate_off
defparam \in_data[2]~I .ddio_mode = "none";
defparam \in_data[2]~I .input_async_reset = "none";
defparam \in_data[2]~I .input_power_up = "low";
defparam \in_data[2]~I .input_register_mode = "none";
defparam \in_data[2]~I .input_sync_reset = "none";
defparam \in_data[2]~I .oe_async_reset = "none";
defparam \in_data[2]~I .oe_power_up = "low";
defparam \in_data[2]~I .oe_register_mode = "none";
defparam \in_data[2]~I .oe_sync_reset = "none";
defparam \in_data[2]~I .operation_mode = "input";
defparam \in_data[2]~I .output_async_reset = "none";
defparam \in_data[2]~I .output_power_up = "low";
defparam \in_data[2]~I .output_register_mode = "none";
defparam \in_data[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: LC_X1_Y11_N8
stratix_lcell \data_reg[2] (
// Equation(s):
// data_reg[2] = DFFEAS((((\in_data~combout [2]))), GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , , , , , )

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\in_data~combout [2]),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(),
	.regout(data_reg[2]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \data_reg[2] .lut_mask = "ff00";
defparam \data_reg[2] .operation_mode = "normal";
defparam \data_reg[2] .output_mode = "reg_only";
defparam \data_reg[2] .register_cascade_mode = "off";
defparam \data_reg[2] .sum_lutc_input = "datac";
defparam \data_reg[2] .synch_mode = "off";
// synopsys translate_on

// Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
stratix_io \in_data[3]~I (
	.datain(gnd),
	.ddiodatain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\in_data~combout [3]),
	.regout(),
	.ddioregout(),
	.padio(in_data[3]),
	.dqsundelayedout());
// synopsys translate_off
defparam \in_data[3]~I .ddio_mode = "none";
defparam \in_data[3]~I .input_async_reset = "none";
defparam \in_data[3]~I .input_power_up = "low";
defparam \in_data[3]~I .input_register_mode = "none";
defparam \in_data[3]~I .input_sync_reset = "none";
defparam \in_data[3]~I .oe_async_reset = "none";
defparam \in_data[3]~I .oe_power_up = "low";
defparam \in_data[3]~I .oe_register_mode = "none";
defparam \in_data[3]~I .oe_sync_reset = "none";
defparam \in_data[3]~I .operation_mode = "input";
defparam \in_data[3]~I .output_async_reset = "none";
defparam \in_data[3]~I .output_power_up = "low";
defparam \in_data[3]~I .output_register_mode = "none";
defparam \in_data[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: LC_X7_Y16_N2
stratix_lcell \data_reg[3] (
// Equation(s):
// data_reg[3] = DFFEAS((((\in_data~combout [3]))), GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , , , , , )

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\in_data~combout [3]),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(),
	.regout(data_reg[3]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \data_reg[3] .lut_mask = "ff00";
defparam \data_reg[3] .operation_mode = "normal";
defparam \data_reg[3] .output_mode = "reg_only";
defparam \data_reg[3] .register_cascade_mode = "off";
defparam \data_reg[3] .sum_lutc_input = "datac";
defparam \data_reg[3] .synch_mode = "off";
// synopsys translate_on

// Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
stratix_io \in_data[4]~I (
	.datain(gnd),
	.ddiodatain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\in_data~combout [4]),
	.regout(),
	.ddioregout(),
	.padio(in_data[4]),
	.dqsundelayedout());
// synopsys translate_off
defparam \in_data[4]~I .ddio_mode = "none";
defparam \in_data[4]~I .input_async_reset = "none";
defparam \in_data[4]~I .input_power_up = "low";
defparam \in_data[4]~I .input_register_mode = "none";
defparam \in_data[4]~I .input_sync_reset = "none";
defparam \in_data[4]~I .oe_async_reset = "none";
defparam \in_data[4]~I .oe_power_up = "low";
defparam \in_data[4]~I .oe_register_mode = "none";
defparam \in_data[4]~I .oe_sync_reset = "none";
defparam \in_data[4]~I .operation_mode = "input";
defparam \in_data[4]~I .output_async_reset = "none";
defparam \in_data[4]~I .output_power_up = "low";
defparam \in_data[4]~I .output_register_mode = "none";
defparam \in_data[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: LC_X18_Y6_N3
stratix_lcell \data_reg[4] (
// Equation(s):
// data_reg[4] = DFFEAS((((\in_data~combout [4]))), GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , , , , , )

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\in_data~combout [4]),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(),
	.regout(data_reg[4]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \data_reg[4] .lut_mask = "ff00";
defparam \data_reg[4] .operation_mode = "normal";
defparam \data_reg[4] .output_mode = "reg_only";
defparam \data_reg[4] .register_cascade_mode = "off";
defparam \data_reg[4] .sum_lutc_input = "datac";
defparam \data_reg[4] .synch_mode = "off";
// synopsys translate_on

// Location: PIN_T27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
stratix_io \in_data[5]~I (
	.datain(gnd),
	.ddiodatain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\in_data~combout [5]),
	.regout(),
	.ddioregout(),
	.padio(in_data[5]),
	.dqsundelayedout());
// synopsys translate_off
defparam \in_data[5]~I .ddio_mode = "none";
defparam \in_data[5]~I .input_async_reset = "none";
defparam \in_data[5]~I .input_power_up = "low";
defparam \in_data[5]~I .input_register_mode = "none";
defparam \in_data[5]~I .input_sync_reset = "none";
defparam \in_data[5]~I .oe_async_reset = "none";
defparam \in_data[5]~I .oe_power_up = "low";
defparam \in_data[5]~I .oe_register_mode = "none";
defparam \in_data[5]~I .oe_sync_reset = "none";
defparam \in_data[5]~I .operation_mode = "input";
defparam \in_data[5]~I .output_async_reset = "none";
defparam \in_data[5]~I .output_power_up = "low";
defparam \in_data[5]~I .output_register_mode = "none";
defparam \in_data[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: LC_X5_Y17_N2
stratix_lcell \data_reg[5] (
// Equation(s):
// data_reg[5] = DFFEAS((((\in_data~combout [5]))), GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , , , , , )

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\in_data~combout [5]),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(),
	.regout(data_reg[5]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \data_reg[5] .lut_mask = "ff00";
defparam \data_reg[5] .operation_mode = "normal";
defparam \data_reg[5] .output_mode = "reg_only";
defparam \data_reg[5] .register_cascade_mode = "off";
defparam \data_reg[5] .sum_lutc_input = "datac";
defparam \data_reg[5] .synch_mode = "off";
// synopsys translate_on

// Location: PIN_N27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
stratix_io \in_data[6]~I (
	.datain(gnd),
	.ddiodatain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\in_data~combout [6]),
	.regout(),
	.ddioregout(),
	.padio(in_data[6]),
	.dqsundelayedout());
// synopsys translate_off
defparam \in_data[6]~I .ddio_mode = "none";
defparam \in_data[6]~I .input_async_reset = "none";
defparam \in_data[6]~I .input_power_up = "low";
defparam \in_data[6]~I .input_register_mode = "none";
defparam \in_data[6]~I .input_sync_reset = "none";
defparam \in_data[6]~I .oe_async_reset = "none";
defparam \in_data[6]~I .oe_power_up = "low";
defparam \in_data[6]~I .oe_register_mode = "none";
defparam \in_data[6]~I .oe_sync_reset = "none";
defparam \in_data[6]~I .operation_mode = "input";
defparam \in_data[6]~I .output_async_reset = "none";
defparam \in_data[6]~I .output_power_up = "low";
defparam \in_data[6]~I .output_register_mode = "none";
defparam \in_data[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: LC_X1_Y18_N2
stratix_lcell \data_reg[6] (
// Equation(s):
// data_reg[6] = DFFEAS((((\in_data~combout [6]))), GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , , , , , )

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\in_data~combout [6]),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(),
	.regout(data_reg[6]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \data_reg[6] .lut_mask = "ff00";
defparam \data_reg[6] .operation_mode = "normal";
defparam \data_reg[6] .output_mode = "reg_only";
defparam \data_reg[6] .register_cascade_mode = "off";
defparam \data_reg[6] .sum_lutc_input = "datac";
defparam \data_reg[6] .synch_mode = "off";
// synopsys translate_on

// Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
stratix_io \in_data[7]~I (
	.datain(gnd),
	.ddiodatain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\in_data~combout [7]),
	.regout(),
	.ddioregout(),
	.padio(in_data[7]),
	.dqsundelayedout());
// synopsys translate_off
defparam \in_data[7]~I .ddio_mode = "none";
defparam \in_data[7]~I .input_async_reset = "none";
defparam \in_data[7]~I .input_power_up = "low";
defparam \in_data[7]~I .input_register_mode = "none";
defparam \in_data[7]~I .input_sync_reset = "none";
defparam \in_data[7]~I .oe_async_reset = "none";
defparam \in_data[7]~I .oe_power_up = "low";
defparam \in_data[7]~I .oe_register_mode = "none";
defparam \in_data[7]~I .oe_sync_reset = "none";
defparam \in_data[7]~I .operation_mode = "input";
defparam \in_data[7]~I .output_async_reset = "none";
defparam \in_data[7]~I .output_power_up = "low";
defparam \in_data[7]~I .output_register_mode = "none";
defparam \in_data[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: LC_X2_Y10_N2
stratix_lcell \data_reg[7] (
// Equation(s):
// data_reg[7] = DFFEAS(GND, GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , , \in_data~combout [7], , , VCC)

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(vcc),
	.datac(\in_data~combout [7]),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(),
	.regout(data_reg[7]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \data_reg[7] .lut_mask = "0000";
defparam \data_reg[7] .operation_mode = "normal";
defparam \data_reg[7] .output_mode = "reg_only";
defparam \data_reg[7] .register_cascade_mode = "off";
defparam \data_reg[7] .sum_lutc_input = "datac";
defparam \data_reg[7] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X9_Y16_N5
stratix_lcell \present_state.S2 (
// Equation(s):
// WideNor0 = (((present_state.S2) # (\present_state.S1~regout )) # (!\present_state.S0~regout ))
// \present_state.S2~regout  = DFFEAS(WideNor0, GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , , \present_state.S1~regout , , , VCC)

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(\present_state.S0~regout ),
	.datac(\present_state.S1~regout ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(WideNor0),
	.regout(\present_state.S2~regout ),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \present_state.S2 .lut_mask = "fff3";
defparam \present_state.S2 .operation_mode = "normal";
defparam \present_state.S2 .output_mode = "reg_and_comb";
defparam \present_state.S2 .register_cascade_mode = "off";
defparam \present_state.S2 .sum_lutc_input = "qfbk";
defparam \present_state.S2 .synch_mode = "on";
// synopsys translate_on

// Location: LC_X9_Y16_N2
stratix_lcell \present_state.S3 (
// Equation(s):
// \present_state.S3~regout  = DFFEAS(GND, GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , , \present_state.S2~regout , , , VCC)

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(vcc),
	.datac(\present_state.S2~regout ),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(),
	.regout(\present_state.S3~regout ),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \present_state.S3 .lut_mask = "0000";
defparam \present_state.S3 .operation_mode = "normal";
defparam \present_state.S3 .output_mode = "reg_only";
defparam \present_state.S3 .register_cascade_mode = "off";
defparam \present_state.S3 .sum_lutc_input = "datac";
defparam \present_state.S3 .synch_mode = "on";
// synopsys translate_on

// Location: LC_X9_Y16_N4
stratix_lcell \present_state.S1 (
// Equation(s):
// \present_state.S1~regout  = DFFEAS((((\present_state.S3~regout ))) # (!\present_state.S0~regout ), GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , , , , , )

	.clk(\clk~combout ),
	.dataa(\present_state.S0~regout ),
	.datab(vcc),
	.datac(vcc),
	.datad(\present_state.S3~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(),
	.regout(\present_state.S1~regout ),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \present_state.S1 .lut_mask = "ff55";
defparam \present_state.S1 .operation_mode = "normal";
defparam \present_state.S1 .output_mode = "reg_only";
defparam \present_state.S1 .register_cascade_mode = "off";
defparam \present_state.S1 .sum_lutc_input = "datac";
defparam \present_state.S1 .synch_mode = "off";
// synopsys translate_on

// Location: DSPMULT_X42_Y15_N0
stratix_mac_mult \Mult0|auto_generated|mac_mult2 (
	.signa(gnd),
	.signb(gnd),
	.dataa({data_reg[7],data_reg[6],data_reg[5],data_reg[4],data_reg[3],data_reg[2],data_reg[1],data_reg[0],gnd}),
	.datab({!\present_state.S2~regout ,gnd,!WideNor0,gnd,!WideNor0,!WideNor0,!WideNor0,!WideNor0,!WideNor0}),
	.clk(4'b0000),
	.aclr(4'b0000),
	.ena(4'b1111),
	.devclrn(devclrn),
	.devpor(devpor),
	.dataout(\Mult0|auto_generated|mac_mult2_DATAOUT_bus ),
	.scanouta(),
	.scanoutb());
// synopsys translate_off
defparam \Mult0|auto_generated|mac_mult2 .dataa_clear = "none";
defparam \Mult0|auto_generated|mac_mult2 .dataa_clock = "none";
defparam \Mult0|auto_generated|mac_mult2 .dataa_width = 9;
defparam \Mult0|auto_generated|mac_mult2 .datab_clear = "none";
defparam \Mult0|auto_generated|mac_mult2 .datab_clock = "none";
defparam \Mult0|auto_generated|mac_mult2 .datab_width = 9;
defparam \Mult0|auto_generated|mac_mult2 .output_clear = "none";
defparam \Mult0|auto_generated|mac_mult2 .output_clock = "none";
defparam \Mult0|auto_generated|mac_mult2 .signa_clear = "none";
defparam \Mult0|auto_generated|mac_mult2 .signa_clock = "none";
defparam \Mult0|auto_generated|mac_mult2 .signa_internally_grounded = "false";
defparam \Mult0|auto_generated|mac_mult2 .signb_clear = "none";
defparam \Mult0|auto_generated|mac_mult2 .signb_clock = "none";
defparam \Mult0|auto_generated|mac_mult2 .signb_internally_grounded = "false";
// synopsys translate_on

// Location: DSPOUT_X43_Y9_N0
stratix_mac_out \Mult0|auto_generated|mac_out1 (
	.zeroacc(gnd),
	.addnsub0(vcc),
	.addnsub1(vcc),
	.signa(vcc),
	.signb(vcc),
	.dataa({\Mult0|auto_generated|mac_mult2~DATAOUT16 ,\Mult0|auto_generated|mac_mult2~DATAOUT15 ,\Mult0|auto_generated|mac_mult2~DATAOUT14 ,\Mult0|auto_generated|mac_mult2~DATAOUT13 ,\Mult0|auto_generated|mac_mult2~DATAOUT12 ,\Mult0|auto_generated|mac_mult2~DATAOUT11 ,
\Mult0|auto_generated|mac_mult2~DATAOUT10 ,\Mult0|auto_generated|mac_mult2~DATAOUT9 ,\Mult0|auto_generated|mac_mult2~DATAOUT8 ,\Mult0|auto_generated|mac_mult2~DATAOUT7 ,\Mult0|auto_generated|mac_mult2~DATAOUT6 ,\Mult0|auto_generated|mac_mult2~DATAOUT5 ,
\Mult0|auto_generated|mac_mult2~DATAOUT4 ,\Mult0|auto_generated|mac_mult2~DATAOUT3 ,\Mult0|auto_generated|mac_mult2~DATAOUT2 ,\Mult0|auto_generated|mac_mult2~DATAOUT1 ,\Mult0|auto_generated|mac_mult2~dataout ,\Mult0|auto_generated|mac_mult2~1 }),
	.datab(1'b1),
	.datac(1'b1),
	.datad(1'b1),
	.clk(4'b0000),
	.aclr(4'b0000),
	.ena(4'b1111),
	.devclrn(devclrn),
	.devpor(devpor),
	.accoverflow(),
	.dataout(\Mult0|auto_generated|mac_out1_DATAOUT_bus ));
// synopsys translate_off
defparam \Mult0|auto_generated|mac_out1 .addnsub0_clear = "none";
defparam \Mult0|auto_generated|mac_out1 .addnsub0_clock = "none";
defparam \Mult0|auto_generated|mac_out1 .addnsub0_pipeline_clear = "none";
defparam \Mult0|auto_generated|mac_out1 .addnsub0_pipeline_clock = "none";
defparam \Mult0|auto_generated|mac_out1 .addnsub1_clear = "none";
defparam \Mult0|auto_generated|mac_out1 .addnsub1_clock = "none";
defparam \Mult0|auto_generated|mac_out1 .addnsub1_pipeline_clear = "none";
defparam \Mult0|auto_generated|mac_out1 .addnsub1_pipeline_clock = "none";
defparam \Mult0|auto_generated|mac_out1 .data_out_programmable_invert = 72'b000000000000000000000000000000000000000000000000000000000000000000000000;
defparam \Mult0|auto_generated|mac_out1 .dataa_width = 18;
defparam \Mult0|auto_generated|mac_out1 .dataout_width = 18;
defparam \Mult0|auto_generated|mac_out1 .operation_mode = "output_only";
defparam \Mult0|auto_generated|mac_out1 .output_clear = "none";
defparam \Mult0|auto_generated|mac_out1 .output_clock = "none";
defparam \Mult0|auto_generated|mac_out1 .signa_clear = "none";
defparam \Mult0|auto_generated|mac_out1 .signa_clock = "none";
defparam \Mult0|auto_generated|mac_out1 .signa_pipeline_clear = "none";
defparam \Mult0|auto_generated|mac_out1 .signa_pipeline_clock = "none";
defparam \Mult0|auto_generated|mac_out1 .signb_clear = "none";
defparam \Mult0|auto_generated|mac_out1 .signb_clock = "none";
defparam \Mult0|auto_generated|mac_out1 .signb_pipeline_clear = "none";
defparam \Mult0|auto_generated|mac_out1 .signb_pipeline_clock = "none";
defparam \Mult0|auto_generated|mac_out1 .zeroacc_clear = "none";
defparam \Mult0|auto_generated|mac_out1 .zeroacc_clock = "none";
defparam \Mult0|auto_generated|mac_out1 .zeroacc_pipeline_clear = "none";
defparam \Mult0|auto_generated|mac_out1 .zeroacc_pipeline_clock = "none";
// synopsys translate_on

// Location: LC_X44_Y16_N2
stratix_lcell \R[0]~reg0 (
// Equation(s):
// \Add0~0  = \Radd[0]~0  $ ((\Mult0|auto_generated|mac_out1~dataout ))
// \R[0]~reg0_regout  = DFFEAS(\Add0~0 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add0~2  = CARRY((\Radd[0]~0  & (\Mult0|auto_generated|mac_out1~dataout )))
// \Add0~2COUT1_94  = CARRY((\Radd[0]~0  & (\Mult0|auto_generated|mac_out1~dataout )))

	.clk(\clk~combout ),
	.dataa(\Radd[0]~0 ),
	.datab(\Mult0|auto_generated|mac_out1~dataout ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add0~0 ),
	.regout(\R[0]~reg0_regout ),
	.cout(),
	.cout0(\Add0~2 ),
	.cout1(\Add0~2COUT1_94 ));
// synopsys translate_off
defparam \R[0]~reg0 .lut_mask = "6688";
defparam \R[0]~reg0 .operation_mode = "arithmetic";
defparam \R[0]~reg0 .output_mode = "reg_and_comb";
defparam \R[0]~reg0 .register_cascade_mode = "off";
defparam \R[0]~reg0 .sum_lutc_input = "datac";
defparam \R[0]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X9_Y16_N7
stratix_lcell \R_reg[0] (
// Equation(s):
// \Radd[0]~0  = (((R_reg[0]) # (\present_state.S1~regout ))) # (!\present_state.S0~regout )

	.clk(\clk~combout ),
	.dataa(\present_state.S0~regout ),
	.datab(vcc),
	.datac(\Add0~0 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Radd[0]~0 ),
	.regout(R_reg[0]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \R_reg[0] .lut_mask = "fff5";
defparam \R_reg[0] .operation_mode = "normal";
defparam \R_reg[0] .output_mode = "comb_only";
defparam \R_reg[0] .register_cascade_mode = "off";
defparam \R_reg[0] .sum_lutc_input = "qfbk";
defparam \R_reg[0] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X44_Y16_N3
stratix_lcell \R[1]~reg0 (
// Equation(s):
// \Add0~5  = \Radd[1]~1  $ (\Mult0|auto_generated|mac_out1~DATAOUT1  $ ((\Add0~2 )))
// \R[1]~reg0_regout  = DFFEAS(\Add0~5 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add0~7  = CARRY((\Radd[1]~1  & (!\Mult0|auto_generated|mac_out1~DATAOUT1  & !\Add0~2 )) # (!\Radd[1]~1  & ((!\Add0~2 ) # (!\Mult0|auto_generated|mac_out1~DATAOUT1 ))))
// \Add0~7COUT1_96  = CARRY((\Radd[1]~1  & (!\Mult0|auto_generated|mac_out1~DATAOUT1  & !\Add0~2COUT1_94 )) # (!\Radd[1]~1  & ((!\Add0~2COUT1_94 ) # (!\Mult0|auto_generated|mac_out1~DATAOUT1 ))))

	.clk(\clk~combout ),
	.dataa(\Radd[1]~1 ),
	.datab(\Mult0|auto_generated|mac_out1~DATAOUT1 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(gnd),
	.cin0(\Add0~2 ),
	.cin1(\Add0~2COUT1_94 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add0~5 ),
	.regout(\R[1]~reg0_regout ),
	.cout(),
	.cout0(\Add0~7 ),
	.cout1(\Add0~7COUT1_96 ));
// synopsys translate_off
defparam \R[1]~reg0 .cin0_used = "true";
defparam \R[1]~reg0 .cin1_used = "true";
defparam \R[1]~reg0 .lut_mask = "9617";
defparam \R[1]~reg0 .operation_mode = "arithmetic";
defparam \R[1]~reg0 .output_mode = "reg_and_comb";
defparam \R[1]~reg0 .register_cascade_mode = "off";
defparam \R[1]~reg0 .sum_lutc_input = "cin";
defparam \R[1]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X9_Y16_N6
stratix_lcell \R_reg[1] (
// Equation(s):
// \Radd[1]~1  = (((R_reg[1]) # (\present_state.S1~regout ))) # (!\present_state.S0~regout )

	.clk(\clk~combout ),
	.dataa(\present_state.S0~regout ),
	.datab(vcc),
	.datac(\Add0~5 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Radd[1]~1 ),
	.regout(R_reg[1]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \R_reg[1] .lut_mask = "fff5";
defparam \R_reg[1] .operation_mode = "normal";
defparam \R_reg[1] .output_mode = "comb_only";
defparam \R_reg[1] .register_cascade_mode = "off";
defparam \R_reg[1] .sum_lutc_input = "qfbk";
defparam \R_reg[1] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X44_Y16_N4
stratix_lcell \R[2]~reg0 (
// Equation(s):
// \Add0~10  = \Mult0|auto_generated|mac_out1~DATAOUT2  $ (\Radd[2]~2  $ ((!\Add0~7 )))
// \R[2]~reg0_regout  = DFFEAS(\Add0~10 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add0~12  = CARRY((\Mult0|auto_generated|mac_out1~DATAOUT2  & ((\Radd[2]~2 ) # (!\Add0~7COUT1_96 ))) # (!\Mult0|auto_generated|mac_out1~DATAOUT2  & (\Radd[2]~2  & !\Add0~7COUT1_96 )))

	.clk(\clk~combout ),
	.dataa(\Mult0|auto_generated|mac_out1~DATAOUT2 ),
	.datab(\Radd[2]~2 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(gnd),
	.cin0(\Add0~7 ),
	.cin1(\Add0~7COUT1_96 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add0~10 ),
	.regout(\R[2]~reg0_regout ),
	.cout(\Add0~12 ),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \R[2]~reg0 .cin0_used = "true";
defparam \R[2]~reg0 .cin1_used = "true";
defparam \R[2]~reg0 .lut_mask = "698e";
defparam \R[2]~reg0 .operation_mode = "arithmetic";
defparam \R[2]~reg0 .output_mode = "reg_and_comb";
defparam \R[2]~reg0 .register_cascade_mode = "off";
defparam \R[2]~reg0 .sum_lutc_input = "cin";
defparam \R[2]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X39_Y16_N3
stratix_lcell \R_reg[2] (
// Equation(s):
// \Radd[2]~2  = ((\present_state.S0~regout  & (R_reg[2] & !\present_state.S1~regout )))

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(\present_state.S0~regout ),
	.datac(\Add0~10 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Radd[2]~2 ),
	.regout(R_reg[2]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \R_reg[2] .lut_mask = "00c0";
defparam \R_reg[2] .operation_mode = "normal";
defparam \R_reg[2] .output_mode = "comb_only";
defparam \R_reg[2] .register_cascade_mode = "off";
defparam \R_reg[2] .sum_lutc_input = "qfbk";
defparam \R_reg[2] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X44_Y16_N5
stratix_lcell \R[3]~reg0 (
// Equation(s):
// \Add0~15  = \Mult0|auto_generated|mac_out1~DATAOUT3  $ (\Radd[3]~3  $ ((\Add0~12 )))
// \R[3]~reg0_regout  = DFFEAS(\Add0~15 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add0~17  = CARRY((\Mult0|auto_generated|mac_out1~DATAOUT3  & (!\Radd[3]~3  & !\Add0~12 )) # (!\Mult0|auto_generated|mac_out1~DATAOUT3  & ((!\Add0~12 ) # (!\Radd[3]~3 ))))
// \Add0~17COUT1_98  = CARRY((\Mult0|auto_generated|mac_out1~DATAOUT3  & (!\Radd[3]~3  & !\Add0~12 )) # (!\Mult0|auto_generated|mac_out1~DATAOUT3  & ((!\Add0~12 ) # (!\Radd[3]~3 ))))

	.clk(\clk~combout ),
	.dataa(\Mult0|auto_generated|mac_out1~DATAOUT3 ),
	.datab(\Radd[3]~3 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add0~12 ),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add0~15 ),
	.regout(\R[3]~reg0_regout ),
	.cout(),
	.cout0(\Add0~17 ),
	.cout1(\Add0~17COUT1_98 ));
// synopsys translate_off
defparam \R[3]~reg0 .cin_used = "true";
defparam \R[3]~reg0 .lut_mask = "9617";
defparam \R[3]~reg0 .operation_mode = "arithmetic";
defparam \R[3]~reg0 .output_mode = "reg_and_comb";
defparam \R[3]~reg0 .register_cascade_mode = "off";
defparam \R[3]~reg0 .sum_lutc_input = "cin";
defparam \R[3]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X39_Y16_N7
stratix_lcell \R_reg[3] (
// Equation(s):
// \Radd[3]~3  = ((\present_state.S0~regout  & (R_reg[3] & !\present_state.S1~regout )))

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(\present_state.S0~regout ),
	.datac(\Add0~15 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Radd[3]~3 ),
	.regout(R_reg[3]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \R_reg[3] .lut_mask = "00c0";
defparam \R_reg[3] .operation_mode = "normal";
defparam \R_reg[3] .output_mode = "comb_only";
defparam \R_reg[3] .register_cascade_mode = "off";
defparam \R_reg[3] .sum_lutc_input = "qfbk";
defparam \R_reg[3] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X44_Y16_N6
stratix_lcell \R[4]~reg0 (
// Equation(s):
// \Add0~20  = \Radd[4]~4  $ (\Mult0|auto_generated|mac_out1~DATAOUT4  $ ((!(!\Add0~12  & \Add0~17 ) # (\Add0~12  & \Add0~17COUT1_98 ))))
// \R[4]~reg0_regout  = DFFEAS(\Add0~20 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add0~22  = CARRY((\Radd[4]~4  & ((\Mult0|auto_generated|mac_out1~DATAOUT4 ) # (!\Add0~17 ))) # (!\Radd[4]~4  & (\Mult0|auto_generated|mac_out1~DATAOUT4  & !\Add0~17 )))
// \Add0~22COUT1_100  = CARRY((\Radd[4]~4  & ((\Mult0|auto_generated|mac_out1~DATAOUT4 ) # (!\Add0~17COUT1_98 ))) # (!\Radd[4]~4  & (\Mult0|auto_generated|mac_out1~DATAOUT4  & !\Add0~17COUT1_98 )))

	.clk(\clk~combout ),
	.dataa(\Radd[4]~4 ),
	.datab(\Mult0|auto_generated|mac_out1~DATAOUT4 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add0~12 ),
	.cin0(\Add0~17 ),
	.cin1(\Add0~17COUT1_98 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add0~20 ),
	.regout(\R[4]~reg0_regout ),
	.cout(),
	.cout0(\Add0~22 ),
	.cout1(\Add0~22COUT1_100 ));
// synopsys translate_off
defparam \R[4]~reg0 .cin0_used = "true";
defparam \R[4]~reg0 .cin1_used = "true";
defparam \R[4]~reg0 .cin_used = "true";
defparam \R[4]~reg0 .lut_mask = "698e";
defparam \R[4]~reg0 .operation_mode = "arithmetic";
defparam \R[4]~reg0 .output_mode = "reg_and_comb";
defparam \R[4]~reg0 .register_cascade_mode = "off";
defparam \R[4]~reg0 .sum_lutc_input = "cin";
defparam \R[4]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X39_Y16_N2
stratix_lcell \R_reg[4] (
// Equation(s):
// \Radd[4]~4  = ((\present_state.S0~regout  & (R_reg[4] & !\present_state.S1~regout )))

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(\present_state.S0~regout ),
	.datac(\Add0~20 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Radd[4]~4 ),
	.regout(R_reg[4]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \R_reg[4] .lut_mask = "00c0";
defparam \R_reg[4] .operation_mode = "normal";
defparam \R_reg[4] .output_mode = "comb_only";
defparam \R_reg[4] .register_cascade_mode = "off";
defparam \R_reg[4] .sum_lutc_input = "qfbk";
defparam \R_reg[4] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X44_Y16_N7
stratix_lcell \R[5]~reg0 (
// Equation(s):
// \Add0~25  = \Radd[5]~5  $ (\Mult0|auto_generated|mac_out1~DATAOUT5  $ (((!\Add0~12  & \Add0~22 ) # (\Add0~12  & \Add0~22COUT1_100 ))))
// \R[5]~reg0_regout  = DFFEAS(\Add0~25 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add0~27  = CARRY((\Radd[5]~5  & (!\Mult0|auto_generated|mac_out1~DATAOUT5  & !\Add0~22 )) # (!\Radd[5]~5  & ((!\Add0~22 ) # (!\Mult0|auto_generated|mac_out1~DATAOUT5 ))))
// \Add0~27COUT1_102  = CARRY((\Radd[5]~5  & (!\Mult0|auto_generated|mac_out1~DATAOUT5  & !\Add0~22COUT1_100 )) # (!\Radd[5]~5  & ((!\Add0~22COUT1_100 ) # (!\Mult0|auto_generated|mac_out1~DATAOUT5 ))))

	.clk(\clk~combout ),
	.dataa(\Radd[5]~5 ),
	.datab(\Mult0|auto_generated|mac_out1~DATAOUT5 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add0~12 ),
	.cin0(\Add0~22 ),
	.cin1(\Add0~22COUT1_100 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add0~25 ),
	.regout(\R[5]~reg0_regout ),
	.cout(),
	.cout0(\Add0~27 ),
	.cout1(\Add0~27COUT1_102 ));
// synopsys translate_off
defparam \R[5]~reg0 .cin0_used = "true";
defparam \R[5]~reg0 .cin1_used = "true";
defparam \R[5]~reg0 .cin_used = "true";
defparam \R[5]~reg0 .lut_mask = "9617";
defparam \R[5]~reg0 .operation_mode = "arithmetic";
defparam \R[5]~reg0 .output_mode = "reg_and_comb";
defparam \R[5]~reg0 .register_cascade_mode = "off";
defparam \R[5]~reg0 .sum_lutc_input = "cin";
defparam \R[5]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X39_Y16_N4
stratix_lcell \R_reg[5] (
// Equation(s):
// \Radd[5]~5  = ((\present_state.S0~regout  & (R_reg[5] & !\present_state.S1~regout )))

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(\present_state.S0~regout ),
	.datac(\Add0~25 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Radd[5]~5 ),
	.regout(R_reg[5]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \R_reg[5] .lut_mask = "00c0";
defparam \R_reg[5] .operation_mode = "normal";
defparam \R_reg[5] .output_mode = "comb_only";
defparam \R_reg[5] .register_cascade_mode = "off";
defparam \R_reg[5] .sum_lutc_input = "qfbk";
defparam \R_reg[5] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X44_Y16_N8
stratix_lcell \R[6]~reg0 (
// Equation(s):
// \Add0~30  = \Mult0|auto_generated|mac_out1~DATAOUT6  $ (\Radd[6]~6  $ ((!(!\Add0~12  & \Add0~27 ) # (\Add0~12  & \Add0~27COUT1_102 ))))
// \R[6]~reg0_regout  = DFFEAS(\Add0~30 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add0~32  = CARRY((\Mult0|auto_generated|mac_out1~DATAOUT6  & ((\Radd[6]~6 ) # (!\Add0~27 ))) # (!\Mult0|auto_generated|mac_out1~DATAOUT6  & (\Radd[6]~6  & !\Add0~27 )))
// \Add0~32COUT1_104  = CARRY((\Mult0|auto_generated|mac_out1~DATAOUT6  & ((\Radd[6]~6 ) # (!\Add0~27COUT1_102 ))) # (!\Mult0|auto_generated|mac_out1~DATAOUT6  & (\Radd[6]~6  & !\Add0~27COUT1_102 )))

	.clk(\clk~combout ),
	.dataa(\Mult0|auto_generated|mac_out1~DATAOUT6 ),
	.datab(\Radd[6]~6 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add0~12 ),
	.cin0(\Add0~27 ),
	.cin1(\Add0~27COUT1_102 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add0~30 ),
	.regout(\R[6]~reg0_regout ),
	.cout(),
	.cout0(\Add0~32 ),
	.cout1(\Add0~32COUT1_104 ));
// synopsys translate_off
defparam \R[6]~reg0 .cin0_used = "true";
defparam \R[6]~reg0 .cin1_used = "true";
defparam \R[6]~reg0 .cin_used = "true";
defparam \R[6]~reg0 .lut_mask = "698e";
defparam \R[6]~reg0 .operation_mode = "arithmetic";
defparam \R[6]~reg0 .output_mode = "reg_and_comb";
defparam \R[6]~reg0 .register_cascade_mode = "off";
defparam \R[6]~reg0 .sum_lutc_input = "cin";
defparam \R[6]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X44_Y16_N1
stratix_lcell \R_reg[6] (
// Equation(s):
// \Radd[6]~6  = (\present_state.S0~regout  & (((R_reg[6] & !\present_state.S1~regout ))))

	.clk(\clk~combout ),
	.dataa(\present_state.S0~regout ),
	.datab(vcc),
	.datac(\Add0~30 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Radd[6]~6 ),
	.regout(R_reg[6]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \R_reg[6] .lut_mask = "00a0";
defparam \R_reg[6] .operation_mode = "normal";
defparam \R_reg[6] .output_mode = "comb_only";
defparam \R_reg[6] .register_cascade_mode = "off";
defparam \R_reg[6] .sum_lutc_input = "qfbk";
defparam \R_reg[6] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X44_Y16_N9
stratix_lcell \R[7]~reg0 (
// Equation(s):
// \Add0~35  = \Radd[7]~7  $ (\Mult0|auto_generated|mac_out1~DATAOUT7  $ (((!\Add0~12  & \Add0~32 ) # (\Add0~12  & \Add0~32COUT1_104 ))))
// \R[7]~reg0_regout  = DFFEAS(\Add0~35 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add0~37  = CARRY((\Radd[7]~7  & (!\Mult0|auto_generated|mac_out1~DATAOUT7  & !\Add0~32COUT1_104 )) # (!\Radd[7]~7  & ((!\Add0~32COUT1_104 ) # (!\Mult0|auto_generated|mac_out1~DATAOUT7 ))))

	.clk(\clk~combout ),
	.dataa(\Radd[7]~7 ),
	.datab(\Mult0|auto_generated|mac_out1~DATAOUT7 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add0~12 ),
	.cin0(\Add0~32 ),
	.cin1(\Add0~32COUT1_104 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add0~35 ),
	.regout(\R[7]~reg0_regout ),
	.cout(\Add0~37 ),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \R[7]~reg0 .cin0_used = "true";
defparam \R[7]~reg0 .cin1_used = "true";
defparam \R[7]~reg0 .cin_used = "true";
defparam \R[7]~reg0 .lut_mask = "9617";
defparam \R[7]~reg0 .operation_mode = "arithmetic";
defparam \R[7]~reg0 .output_mode = "reg_and_comb";
defparam \R[7]~reg0 .register_cascade_mode = "off";
defparam \R[7]~reg0 .sum_lutc_input = "cin";
defparam \R[7]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X44_Y16_N0
stratix_lcell \R_reg[7] (
// Equation(s):
// \Radd[7]~7  = (((R_reg[7]) # (\present_state.S1~regout ))) # (!\present_state.S0~regout )

	.clk(\clk~combout ),
	.dataa(\present_state.S0~regout ),
	.datab(vcc),
	.datac(\Add0~35 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Radd[7]~7 ),
	.regout(R_reg[7]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \R_reg[7] .lut_mask = "fff5";
defparam \R_reg[7] .operation_mode = "normal";
defparam \R_reg[7] .output_mode = "comb_only";
defparam \R_reg[7] .register_cascade_mode = "off";
defparam \R_reg[7] .sum_lutc_input = "qfbk";
defparam \R_reg[7] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X44_Y15_N0
stratix_lcell \R[8]~reg0 (
// Equation(s):
// \Add0~40  = \Radd[8]~8  $ (\Mult0|auto_generated|mac_out1~DATAOUT8  $ ((!\Add0~37 )))
// \R[8]~reg0_regout  = DFFEAS(\Add0~40 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add0~42  = CARRY((\Radd[8]~8  & ((\Mult0|auto_generated|mac_out1~DATAOUT8 ) # (!\Add0~37 ))) # (!\Radd[8]~8  & (\Mult0|auto_generated|mac_out1~DATAOUT8  & !\Add0~37 )))
// \Add0~42COUT1_106  = CARRY((\Radd[8]~8  & ((\Mult0|auto_generated|mac_out1~DATAOUT8 ) # (!\Add0~37 ))) # (!\Radd[8]~8  & (\Mult0|auto_generated|mac_out1~DATAOUT8  & !\Add0~37 )))

	.clk(\clk~combout ),
	.dataa(\Radd[8]~8 ),
	.datab(\Mult0|auto_generated|mac_out1~DATAOUT8 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add0~37 ),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add0~40 ),
	.regout(\R[8]~reg0_regout ),
	.cout(),
	.cout0(\Add0~42 ),
	.cout1(\Add0~42COUT1_106 ));
// synopsys translate_off
defparam \R[8]~reg0 .cin_used = "true";
defparam \R[8]~reg0 .lut_mask = "698e";
defparam \R[8]~reg0 .operation_mode = "arithmetic";
defparam \R[8]~reg0 .output_mode = "reg_and_comb";
defparam \R[8]~reg0 .register_cascade_mode = "off";
defparam \R[8]~reg0 .sum_lutc_input = "cin";
defparam \R[8]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X39_Y16_N0
stratix_lcell \R_reg[8] (
// Equation(s):
// \Radd[8]~8  = ((\present_state.S0~regout  & (R_reg[8] & !\present_state.S1~regout )))

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(\present_state.S0~regout ),
	.datac(\Add0~40 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Radd[8]~8 ),
	.regout(R_reg[8]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \R_reg[8] .lut_mask = "00c0";
defparam \R_reg[8] .operation_mode = "normal";
defparam \R_reg[8] .output_mode = "comb_only";
defparam \R_reg[8] .register_cascade_mode = "off";
defparam \R_reg[8] .sum_lutc_input = "qfbk";
defparam \R_reg[8] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X44_Y15_N1
stratix_lcell \R[9]~reg0 (
// Equation(s):
// \Add0~45  = \Radd[9]~9  $ (\Mult0|auto_generated|mac_out1~DATAOUT9  $ (((!\Add0~37  & \Add0~42 ) # (\Add0~37  & \Add0~42COUT1_106 ))))
// \R[9]~reg0_regout  = DFFEAS(\Add0~45 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add0~47  = CARRY((\Radd[9]~9  & (!\Mult0|auto_generated|mac_out1~DATAOUT9  & !\Add0~42 )) # (!\Radd[9]~9  & ((!\Add0~42 ) # (!\Mult0|auto_generated|mac_out1~DATAOUT9 ))))
// \Add0~47COUT1_108  = CARRY((\Radd[9]~9  & (!\Mult0|auto_generated|mac_out1~DATAOUT9  & !\Add0~42COUT1_106 )) # (!\Radd[9]~9  & ((!\Add0~42COUT1_106 ) # (!\Mult0|auto_generated|mac_out1~DATAOUT9 ))))

	.clk(\clk~combout ),
	.dataa(\Radd[9]~9 ),
	.datab(\Mult0|auto_generated|mac_out1~DATAOUT9 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add0~37 ),
	.cin0(\Add0~42 ),
	.cin1(\Add0~42COUT1_106 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add0~45 ),
	.regout(\R[9]~reg0_regout ),
	.cout(),
	.cout0(\Add0~47 ),
	.cout1(\Add0~47COUT1_108 ));
// synopsys translate_off
defparam \R[9]~reg0 .cin0_used = "true";
defparam \R[9]~reg0 .cin1_used = "true";
defparam \R[9]~reg0 .cin_used = "true";
defparam \R[9]~reg0 .lut_mask = "9617";
defparam \R[9]~reg0 .operation_mode = "arithmetic";
defparam \R[9]~reg0 .output_mode = "reg_and_comb";
defparam \R[9]~reg0 .register_cascade_mode = "off";
defparam \R[9]~reg0 .sum_lutc_input = "cin";
defparam \R[9]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X39_Y16_N5
stratix_lcell \R_reg[9] (
// Equation(s):
// \Radd[9]~9  = ((\present_state.S0~regout  & (R_reg[9] & !\present_state.S1~regout )))

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(\present_state.S0~regout ),
	.datac(\Add0~45 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Radd[9]~9 ),
	.regout(R_reg[9]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \R_reg[9] .lut_mask = "00c0";
defparam \R_reg[9] .operation_mode = "normal";
defparam \R_reg[9] .output_mode = "comb_only";
defparam \R_reg[9] .register_cascade_mode = "off";
defparam \R_reg[9] .sum_lutc_input = "qfbk";
defparam \R_reg[9] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X44_Y15_N2
stratix_lcell \R[10]~reg0 (
// Equation(s):
// \Add0~50  = \Mult0|auto_generated|mac_out1~DATAOUT10  $ (\Radd[10]~10  $ ((!(!\Add0~37  & \Add0~47 ) # (\Add0~37  & \Add0~47COUT1_108 ))))
// \R[10]~reg0_regout  = DFFEAS(\Add0~50 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add0~52  = CARRY((\Mult0|auto_generated|mac_out1~DATAOUT10  & ((\Radd[10]~10 ) # (!\Add0~47 ))) # (!\Mult0|auto_generated|mac_out1~DATAOUT10  & (\Radd[10]~10  & !\Add0~47 )))
// \Add0~52COUT1_110  = CARRY((\Mult0|auto_generated|mac_out1~DATAOUT10  & ((\Radd[10]~10 ) # (!\Add0~47COUT1_108 ))) # (!\Mult0|auto_generated|mac_out1~DATAOUT10  & (\Radd[10]~10  & !\Add0~47COUT1_108 )))

	.clk(\clk~combout ),
	.dataa(\Mult0|auto_generated|mac_out1~DATAOUT10 ),
	.datab(\Radd[10]~10 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add0~37 ),
	.cin0(\Add0~47 ),
	.cin1(\Add0~47COUT1_108 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add0~50 ),
	.regout(\R[10]~reg0_regout ),
	.cout(),
	.cout0(\Add0~52 ),
	.cout1(\Add0~52COUT1_110 ));
// synopsys translate_off
defparam \R[10]~reg0 .cin0_used = "true";
defparam \R[10]~reg0 .cin1_used = "true";
defparam \R[10]~reg0 .cin_used = "true";
defparam \R[10]~reg0 .lut_mask = "698e";
defparam \R[10]~reg0 .operation_mode = "arithmetic";
defparam \R[10]~reg0 .output_mode = "reg_and_comb";
defparam \R[10]~reg0 .register_cascade_mode = "off";
defparam \R[10]~reg0 .sum_lutc_input = "cin";
defparam \R[10]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X39_Y16_N1
stratix_lcell \R_reg[10] (
// Equation(s):
// \Radd[10]~10  = ((\present_state.S0~regout  & (R_reg[10] & !\present_state.S1~regout )))

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(\present_state.S0~regout ),
	.datac(\Add0~50 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Radd[10]~10 ),
	.regout(R_reg[10]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \R_reg[10] .lut_mask = "00c0";
defparam \R_reg[10] .operation_mode = "normal";
defparam \R_reg[10] .output_mode = "comb_only";
defparam \R_reg[10] .register_cascade_mode = "off";
defparam \R_reg[10] .sum_lutc_input = "qfbk";
defparam \R_reg[10] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X44_Y15_N3
stratix_lcell \R[11]~reg0 (
// Equation(s):
// \Add0~55  = \Mult0|auto_generated|mac_out1~DATAOUT11  $ (\Radd[11]~11  $ (((!\Add0~37  & \Add0~52 ) # (\Add0~37  & \Add0~52COUT1_110 ))))
// \R[11]~reg0_regout  = DFFEAS(\Add0~55 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add0~57  = CARRY((\Mult0|auto_generated|mac_out1~DATAOUT11  & (!\Radd[11]~11  & !\Add0~52 )) # (!\Mult0|auto_generated|mac_out1~DATAOUT11  & ((!\Add0~52 ) # (!\Radd[11]~11 ))))
// \Add0~57COUT1_112  = CARRY((\Mult0|auto_generated|mac_out1~DATAOUT11  & (!\Radd[11]~11  & !\Add0~52COUT1_110 )) # (!\Mult0|auto_generated|mac_out1~DATAOUT11  & ((!\Add0~52COUT1_110 ) # (!\Radd[11]~11 ))))

	.clk(\clk~combout ),
	.dataa(\Mult0|auto_generated|mac_out1~DATAOUT11 ),
	.datab(\Radd[11]~11 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add0~37 ),
	.cin0(\Add0~52 ),
	.cin1(\Add0~52COUT1_110 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add0~55 ),
	.regout(\R[11]~reg0_regout ),
	.cout(),
	.cout0(\Add0~57 ),
	.cout1(\Add0~57COUT1_112 ));
// synopsys translate_off
defparam \R[11]~reg0 .cin0_used = "true";
defparam \R[11]~reg0 .cin1_used = "true";
defparam \R[11]~reg0 .cin_used = "true";
defparam \R[11]~reg0 .lut_mask = "9617";
defparam \R[11]~reg0 .operation_mode = "arithmetic";
defparam \R[11]~reg0 .output_mode = "reg_and_comb";
defparam \R[11]~reg0 .register_cascade_mode = "off";
defparam \R[11]~reg0 .sum_lutc_input = "cin";
defparam \R[11]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X39_Y16_N9
stratix_lcell \R_reg[11] (
// Equation(s):
// \Radd[11]~11  = ((\present_state.S0~regout  & (R_reg[11] & !\present_state.S1~regout )))

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(\present_state.S0~regout ),
	.datac(\Add0~55 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Radd[11]~11 ),
	.regout(R_reg[11]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \R_reg[11] .lut_mask = "00c0";
defparam \R_reg[11] .operation_mode = "normal";
defparam \R_reg[11] .output_mode = "comb_only";
defparam \R_reg[11] .register_cascade_mode = "off";
defparam \R_reg[11] .sum_lutc_input = "qfbk";
defparam \R_reg[11] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X44_Y15_N4
stratix_lcell \R[12]~reg0 (
// Equation(s):
// \Add0~60  = \Radd[12]~12  $ (\Mult0|auto_generated|mac_out1~DATAOUT12  $ ((!(!\Add0~37  & \Add0~57 ) # (\Add0~37  & \Add0~57COUT1_112 ))))
// \R[12]~reg0_regout  = DFFEAS(\Add0~60 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add0~62  = CARRY((\Radd[12]~12  & ((\Mult0|auto_generated|mac_out1~DATAOUT12 ) # (!\Add0~57COUT1_112 ))) # (!\Radd[12]~12  & (\Mult0|auto_generated|mac_out1~DATAOUT12  & !\Add0~57COUT1_112 )))

	.clk(\clk~combout ),
	.dataa(\Radd[12]~12 ),
	.datab(\Mult0|auto_generated|mac_out1~DATAOUT12 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add0~37 ),
	.cin0(\Add0~57 ),
	.cin1(\Add0~57COUT1_112 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add0~60 ),
	.regout(\R[12]~reg0_regout ),
	.cout(\Add0~62 ),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \R[12]~reg0 .cin0_used = "true";
defparam \R[12]~reg0 .cin1_used = "true";
defparam \R[12]~reg0 .cin_used = "true";
defparam \R[12]~reg0 .lut_mask = "698e";
defparam \R[12]~reg0 .operation_mode = "arithmetic";
defparam \R[12]~reg0 .output_mode = "reg_and_comb";
defparam \R[12]~reg0 .register_cascade_mode = "off";
defparam \R[12]~reg0 .sum_lutc_input = "cin";
defparam \R[12]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X39_Y16_N8
stratix_lcell \R_reg[12] (
// Equation(s):
// \Radd[12]~12  = (((R_reg[12]) # (\present_state.S1~regout )) # (!\present_state.S0~regout ))

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(\present_state.S0~regout ),
	.datac(\Add0~60 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Radd[12]~12 ),
	.regout(R_reg[12]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \R_reg[12] .lut_mask = "fff3";
defparam \R_reg[12] .operation_mode = "normal";
defparam \R_reg[12] .output_mode = "comb_only";
defparam \R_reg[12] .register_cascade_mode = "off";
defparam \R_reg[12] .sum_lutc_input = "qfbk";
defparam \R_reg[12] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X44_Y15_N5
stratix_lcell \R[13]~reg0 (
// Equation(s):
// \Add0~65  = \Radd[13]~13  $ (\Mult0|auto_generated|mac_out1~DATAOUT13  $ ((\Add0~62 )))
// \R[13]~reg0_regout  = DFFEAS(\Add0~65 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add0~67  = CARRY((\Radd[13]~13  & (!\Mult0|auto_generated|mac_out1~DATAOUT13  & !\Add0~62 )) # (!\Radd[13]~13  & ((!\Add0~62 ) # (!\Mult0|auto_generated|mac_out1~DATAOUT13 ))))
// \Add0~67COUT1_114  = CARRY((\Radd[13]~13  & (!\Mult0|auto_generated|mac_out1~DATAOUT13  & !\Add0~62 )) # (!\Radd[13]~13  & ((!\Add0~62 ) # (!\Mult0|auto_generated|mac_out1~DATAOUT13 ))))

	.clk(\clk~combout ),
	.dataa(\Radd[13]~13 ),
	.datab(\Mult0|auto_generated|mac_out1~DATAOUT13 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add0~62 ),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add0~65 ),
	.regout(\R[13]~reg0_regout ),
	.cout(),
	.cout0(\Add0~67 ),
	.cout1(\Add0~67COUT1_114 ));
// synopsys translate_off
defparam \R[13]~reg0 .cin_used = "true";
defparam \R[13]~reg0 .lut_mask = "9617";
defparam \R[13]~reg0 .operation_mode = "arithmetic";
defparam \R[13]~reg0 .output_mode = "reg_and_comb";
defparam \R[13]~reg0 .register_cascade_mode = "off";
defparam \R[13]~reg0 .sum_lutc_input = "cin";
defparam \R[13]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X13_Y15_N2
stratix_lcell \R_reg[13] (
// Equation(s):
// \Radd[13]~13  = (\present_state.S0~regout  & (((R_reg[13] & !\present_state.S1~regout ))))

	.clk(\clk~combout ),
	.dataa(\present_state.S0~regout ),
	.datab(vcc),
	.datac(\Add0~65 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Radd[13]~13 ),
	.regout(R_reg[13]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \R_reg[13] .lut_mask = "00a0";
defparam \R_reg[13] .operation_mode = "normal";
defparam \R_reg[13] .output_mode = "comb_only";
defparam \R_reg[13] .register_cascade_mode = "off";
defparam \R_reg[13] .sum_lutc_input = "qfbk";
defparam \R_reg[13] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X44_Y15_N6
stratix_lcell \R[14]~reg0 (
// Equation(s):
// \Add0~70  = \Radd[14]~14  $ (\Mult0|auto_generated|mac_out1~DATAOUT14  $ ((!(!\Add0~62  & \Add0~67 ) # (\Add0~62  & \Add0~67COUT1_114 ))))
// \R[14]~reg0_regout  = DFFEAS(\Add0~70 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add0~72  = CARRY((\Radd[14]~14  & ((\Mult0|auto_generated|mac_out1~DATAOUT14 ) # (!\Add0~67 ))) # (!\Radd[14]~14  & (\Mult0|auto_generated|mac_out1~DATAOUT14  & !\Add0~67 )))
// \Add0~72COUT1_116  = CARRY((\Radd[14]~14  & ((\Mult0|auto_generated|mac_out1~DATAOUT14 ) # (!\Add0~67COUT1_114 ))) # (!\Radd[14]~14  & (\Mult0|auto_generated|mac_out1~DATAOUT14  & !\Add0~67COUT1_114 )))

	.clk(\clk~combout ),
	.dataa(\Radd[14]~14 ),
	.datab(\Mult0|auto_generated|mac_out1~DATAOUT14 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add0~62 ),
	.cin0(\Add0~67 ),
	.cin1(\Add0~67COUT1_114 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add0~70 ),
	.regout(\R[14]~reg0_regout ),
	.cout(),
	.cout0(\Add0~72 ),
	.cout1(\Add0~72COUT1_116 ));
// synopsys translate_off
defparam \R[14]~reg0 .cin0_used = "true";
defparam \R[14]~reg0 .cin1_used = "true";
defparam \R[14]~reg0 .cin_used = "true";
defparam \R[14]~reg0 .lut_mask = "698e";
defparam \R[14]~reg0 .operation_mode = "arithmetic";
defparam \R[14]~reg0 .output_mode = "reg_and_comb";
defparam \R[14]~reg0 .register_cascade_mode = "off";
defparam \R[14]~reg0 .sum_lutc_input = "cin";
defparam \R[14]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X44_Y15_N8
stratix_lcell \R_reg[14] (
// Equation(s):
// \Radd[14]~14  = (((R_reg[14]) # (\present_state.S1~regout ))) # (!\present_state.S0~regout )

	.clk(\clk~combout ),
	.dataa(\present_state.S0~regout ),
	.datab(vcc),
	.datac(\Add0~70 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Radd[14]~14 ),
	.regout(R_reg[14]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \R_reg[14] .lut_mask = "fff5";
defparam \R_reg[14] .operation_mode = "normal";
defparam \R_reg[14] .output_mode = "comb_only";
defparam \R_reg[14] .register_cascade_mode = "off";
defparam \R_reg[14] .sum_lutc_input = "qfbk";
defparam \R_reg[14] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X44_Y15_N7
stratix_lcell \R[15]~reg0 (
// Equation(s):
// \Add0~75  = (\Mult0|auto_generated|mac_out1~DATAOUT15  $ ((!\Add0~62  & \Add0~72 ) # (\Add0~62  & \Add0~72COUT1_116 ) $ (\Radd[15]~15 )))
// \R[15]~reg0_regout  = DFFEAS(\Add0~75 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(\Mult0|auto_generated|mac_out1~DATAOUT15 ),
	.datac(vcc),
	.datad(\Radd[15]~15 ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add0~62 ),
	.cin0(\Add0~72 ),
	.cin1(\Add0~72COUT1_116 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add0~75 ),
	.regout(\R[15]~reg0_regout ),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \R[15]~reg0 .cin0_used = "true";
defparam \R[15]~reg0 .cin1_used = "true";
defparam \R[15]~reg0 .cin_used = "true";
defparam \R[15]~reg0 .lut_mask = "c33c";
defparam \R[15]~reg0 .operation_mode = "normal";
defparam \R[15]~reg0 .output_mode = "reg_and_comb";
defparam \R[15]~reg0 .register_cascade_mode = "off";
defparam \R[15]~reg0 .sum_lutc_input = "cin";
defparam \R[15]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X44_Y15_N9
stratix_lcell \R_reg[15] (
// Equation(s):
// \Radd[15]~15  = (\present_state.S0~regout  & (((R_reg[15] & !\present_state.S1~regout ))))

	.clk(\clk~combout ),
	.dataa(\present_state.S0~regout ),
	.datab(vcc),
	.datac(\Add0~75 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Radd[15]~15 ),
	.regout(R_reg[15]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \R_reg[15] .lut_mask = "00a0";
defparam \R_reg[15] .operation_mode = "normal";
defparam \R_reg[15] .output_mode = "comb_only";
defparam \R_reg[15] .register_cascade_mode = "off";
defparam \R_reg[15] .sum_lutc_input = "qfbk";
defparam \R_reg[15] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X9_Y16_N8
stratix_lcell \sel~0 (
// Equation(s):
// \sel~0_combout  = ((\present_state.S0~regout  & ((!\present_state.S1~regout ))))

	.clk(gnd),
	.dataa(vcc),
	.datab(\present_state.S0~regout ),
	.datac(vcc),
	.datad(\present_state.S1~regout ),
	.aclr(gnd),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\sel~0_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \sel~0 .lut_mask = "00cc";
defparam \sel~0 .operation_mode = "normal";
defparam \sel~0 .output_mode = "comb_only";
defparam \sel~0 .register_cascade_mode = "off";
defparam \sel~0 .sum_lutc_input = "datac";
defparam \sel~0 .synch_mode = "off";
// synopsys translate_on

// Location: DSPMULT_X10_Y15_N0
stratix_mac_mult \Mult1|auto_generated|mac_mult2 (
	.signa(gnd),
	.signb(gnd),
	.dataa({data_reg[7],data_reg[6],data_reg[5],data_reg[4],data_reg[3],data_reg[2],data_reg[1],data_reg[0],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.datab({\sel~0_combout ,\sel~0_combout ,\sel~0_combout ,\sel~0_combout ,\sel~0_combout ,\sel~0_combout ,\sel~0_combout ,vcc,\present_state.S2~regout ,!WideNor0,\present_state.S2~regout ,gnd,\sel~0_combout ,!WideNor0,\present_state.S2~regout ,!WideNor0,gnd,gnd}),
	.clk(4'b0000),
	.aclr(4'b0000),
	.ena(4'b1111),
	.devclrn(devclrn),
	.devpor(devpor),
	.dataout(\Mult1|auto_generated|mac_mult2_DATAOUT_bus ),
	.scanouta(),
	.scanoutb());
// synopsys translate_off
defparam \Mult1|auto_generated|mac_mult2 .dataa_clear = "none";
defparam \Mult1|auto_generated|mac_mult2 .dataa_clock = "none";
defparam \Mult1|auto_generated|mac_mult2 .dataa_width = 18;
defparam \Mult1|auto_generated|mac_mult2 .datab_clear = "none";
defparam \Mult1|auto_generated|mac_mult2 .datab_clock = "none";
defparam \Mult1|auto_generated|mac_mult2 .datab_width = 18;
defparam \Mult1|auto_generated|mac_mult2 .output_clear = "none";
defparam \Mult1|auto_generated|mac_mult2 .output_clock = "none";
defparam \Mult1|auto_generated|mac_mult2 .signa_clear = "none";
defparam \Mult1|auto_generated|mac_mult2 .signa_clock = "none";
defparam \Mult1|auto_generated|mac_mult2 .signa_internally_grounded = "false";
defparam \Mult1|auto_generated|mac_mult2 .signb_clear = "none";
defparam \Mult1|auto_generated|mac_mult2 .signb_clock = "none";
defparam \Mult1|auto_generated|mac_mult2 .signb_internally_grounded = "false";
// synopsys translate_on

// Location: DSPOUT_X11_Y9_N0
stratix_mac_out \Mult1|auto_generated|mac_out1 (
	.zeroacc(gnd),
	.addnsub0(vcc),
	.addnsub1(vcc),
	.signa(vcc),
	.signb(vcc),
	.dataa({\Mult1|auto_generated|mac_mult2~DATAOUT23 ,\Mult1|auto_generated|mac_mult2~DATAOUT22 ,\Mult1|auto_generated|mac_mult2~DATAOUT21 ,\Mult1|auto_generated|mac_mult2~DATAOUT20 ,\Mult1|auto_generated|mac_mult2~DATAOUT19 ,\Mult1|auto_generated|mac_mult2~DATAOUT18 ,
\Mult1|auto_generated|mac_mult2~DATAOUT17 ,\Mult1|auto_generated|mac_mult2~DATAOUT16 ,\Mult1|auto_generated|mac_mult2~DATAOUT15 ,\Mult1|auto_generated|mac_mult2~DATAOUT14 ,\Mult1|auto_generated|mac_mult2~DATAOUT13 ,\Mult1|auto_generated|mac_mult2~DATAOUT12 ,
\Mult1|auto_generated|mac_mult2~DATAOUT11 ,\Mult1|auto_generated|mac_mult2~DATAOUT10 ,\Mult1|auto_generated|mac_mult2~DATAOUT9 ,\Mult1|auto_generated|mac_mult2~DATAOUT8 ,\Mult1|auto_generated|mac_mult2~DATAOUT7 ,\Mult1|auto_generated|mac_mult2~DATAOUT6 ,
\Mult1|auto_generated|mac_mult2~DATAOUT5 ,\Mult1|auto_generated|mac_mult2~DATAOUT4 ,\Mult1|auto_generated|mac_mult2~DATAOUT3 ,\Mult1|auto_generated|mac_mult2~DATAOUT2 ,\Mult1|auto_generated|mac_mult2~DATAOUT1 ,\Mult1|auto_generated|mac_mult2~dataout ,
\Mult1|auto_generated|mac_mult2~23 ,\Mult1|auto_generated|mac_mult2~22 ,\Mult1|auto_generated|mac_mult2~21 ,\Mult1|auto_generated|mac_mult2~20 ,\Mult1|auto_generated|mac_mult2~19 ,\Mult1|auto_generated|mac_mult2~18 ,\Mult1|auto_generated|mac_mult2~17 ,
\Mult1|auto_generated|mac_mult2~16 ,\Mult1|auto_generated|mac_mult2~15 ,\Mult1|auto_generated|mac_mult2~14 ,\Mult1|auto_generated|mac_mult2~13 ,\Mult1|auto_generated|mac_mult2~12 }),
	.datab(1'b1),
	.datac(1'b1),
	.datad(1'b1),
	.clk(4'b0000),
	.aclr(4'b0000),
	.ena(4'b1111),
	.devclrn(devclrn),
	.devpor(devpor),
	.accoverflow(),
	.dataout(\Mult1|auto_generated|mac_out1_DATAOUT_bus ));
// synopsys translate_off
defparam \Mult1|auto_generated|mac_out1 .addnsub0_clear = "none";
defparam \Mult1|auto_generated|mac_out1 .addnsub0_clock = "none";
defparam \Mult1|auto_generated|mac_out1 .addnsub0_pipeline_clear = "none";
defparam \Mult1|auto_generated|mac_out1 .addnsub0_pipeline_clock = "none";
defparam \Mult1|auto_generated|mac_out1 .addnsub1_clear = "none";
defparam \Mult1|auto_generated|mac_out1 .addnsub1_clock = "none";
defparam \Mult1|auto_generated|mac_out1 .addnsub1_pipeline_clear = "none";
defparam \Mult1|auto_generated|mac_out1 .addnsub1_pipeline_clock = "none";
defparam \Mult1|auto_generated|mac_out1 .data_out_programmable_invert = 72'b000000000000000000000000000000000000000000000000000000000000000000000000;
defparam \Mult1|auto_generated|mac_out1 .dataa_width = 36;
defparam \Mult1|auto_generated|mac_out1 .dataout_width = 36;
defparam \Mult1|auto_generated|mac_out1 .operation_mode = "output_only";
defparam \Mult1|auto_generated|mac_out1 .output_clear = "none";
defparam \Mult1|auto_generated|mac_out1 .output_clock = "none";
defparam \Mult1|auto_generated|mac_out1 .signa_clear = "none";
defparam \Mult1|auto_generated|mac_out1 .signa_clock = "none";
defparam \Mult1|auto_generated|mac_out1 .signa_pipeline_clear = "none";
defparam \Mult1|auto_generated|mac_out1 .signa_pipeline_clock = "none";
defparam \Mult1|auto_generated|mac_out1 .signb_clear = "none";
defparam \Mult1|auto_generated|mac_out1 .signb_clock = "none";
defparam \Mult1|auto_generated|mac_out1 .signb_pipeline_clear = "none";
defparam \Mult1|auto_generated|mac_out1 .signb_pipeline_clock = "none";
defparam \Mult1|auto_generated|mac_out1 .zeroacc_clear = "none";
defparam \Mult1|auto_generated|mac_out1 .zeroacc_clock = "none";
defparam \Mult1|auto_generated|mac_out1 .zeroacc_pipeline_clear = "none";
defparam \Mult1|auto_generated|mac_out1 .zeroacc_pipeline_clock = "none";
// synopsys translate_on

// Location: LC_X12_Y16_N2
stratix_lcell \G[0]~reg0 (
// Equation(s):
// \Add1~0  = \Mult1|auto_generated|mac_out1~dataout  $ ((\Gadd[0]~0 ))
// \G[0]~reg0_regout  = DFFEAS(\Add1~0 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add1~2  = CARRY((\Mult1|auto_generated|mac_out1~dataout  & (\Gadd[0]~0 )))
// \Add1~2COUT1_94  = CARRY((\Mult1|auto_generated|mac_out1~dataout  & (\Gadd[0]~0 )))

	.clk(\clk~combout ),
	.dataa(\Mult1|auto_generated|mac_out1~dataout ),
	.datab(\Gadd[0]~0 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add1~0 ),
	.regout(\G[0]~reg0_regout ),
	.cout(),
	.cout0(\Add1~2 ),
	.cout1(\Add1~2COUT1_94 ));
// synopsys translate_off
defparam \G[0]~reg0 .lut_mask = "6688";
defparam \G[0]~reg0 .operation_mode = "arithmetic";
defparam \G[0]~reg0 .output_mode = "reg_and_comb";
defparam \G[0]~reg0 .register_cascade_mode = "off";
defparam \G[0]~reg0 .sum_lutc_input = "datac";
defparam \G[0]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X9_Y16_N3
stratix_lcell \G_reg[0] (
// Equation(s):
// \Gadd[0]~0  = (\present_state.S0~regout  & (((G_reg[0] & !\present_state.S1~regout ))))

	.clk(\clk~combout ),
	.dataa(\present_state.S0~regout ),
	.datab(vcc),
	.datac(\Add1~0 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Gadd[0]~0 ),
	.regout(G_reg[0]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \G_reg[0] .lut_mask = "00a0";
defparam \G_reg[0] .operation_mode = "normal";
defparam \G_reg[0] .output_mode = "comb_only";
defparam \G_reg[0] .register_cascade_mode = "off";
defparam \G_reg[0] .sum_lutc_input = "qfbk";
defparam \G_reg[0] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X12_Y16_N3
stratix_lcell \G[1]~reg0 (
// Equation(s):
// \Add1~5  = \Gadd[1]~1  $ (\Mult1|auto_generated|mac_out1~DATAOUT1  $ ((\Add1~2 )))
// \G[1]~reg0_regout  = DFFEAS(\Add1~5 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add1~7  = CARRY((\Gadd[1]~1  & (!\Mult1|auto_generated|mac_out1~DATAOUT1  & !\Add1~2 )) # (!\Gadd[1]~1  & ((!\Add1~2 ) # (!\Mult1|auto_generated|mac_out1~DATAOUT1 ))))
// \Add1~7COUT1_96  = CARRY((\Gadd[1]~1  & (!\Mult1|auto_generated|mac_out1~DATAOUT1  & !\Add1~2COUT1_94 )) # (!\Gadd[1]~1  & ((!\Add1~2COUT1_94 ) # (!\Mult1|auto_generated|mac_out1~DATAOUT1 ))))

	.clk(\clk~combout ),
	.dataa(\Gadd[1]~1 ),
	.datab(\Mult1|auto_generated|mac_out1~DATAOUT1 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(gnd),
	.cin0(\Add1~2 ),
	.cin1(\Add1~2COUT1_94 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add1~5 ),
	.regout(\G[1]~reg0_regout ),
	.cout(),
	.cout0(\Add1~7 ),
	.cout1(\Add1~7COUT1_96 ));
// synopsys translate_off
defparam \G[1]~reg0 .cin0_used = "true";
defparam \G[1]~reg0 .cin1_used = "true";
defparam \G[1]~reg0 .lut_mask = "9617";
defparam \G[1]~reg0 .operation_mode = "arithmetic";
defparam \G[1]~reg0 .output_mode = "reg_and_comb";
defparam \G[1]~reg0 .register_cascade_mode = "off";
defparam \G[1]~reg0 .sum_lutc_input = "cin";
defparam \G[1]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X9_Y16_N9
stratix_lcell \G_reg[1] (
// Equation(s):
// \Gadd[1]~1  = (((G_reg[1]) # (\present_state.S1~regout ))) # (!\present_state.S0~regout )

	.clk(\clk~combout ),
	.dataa(\present_state.S0~regout ),
	.datab(vcc),
	.datac(\Add1~5 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Gadd[1]~1 ),
	.regout(G_reg[1]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \G_reg[1] .lut_mask = "fff5";
defparam \G_reg[1] .operation_mode = "normal";
defparam \G_reg[1] .output_mode = "comb_only";
defparam \G_reg[1] .register_cascade_mode = "off";
defparam \G_reg[1] .sum_lutc_input = "qfbk";
defparam \G_reg[1] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X12_Y16_N4
stratix_lcell \G[2]~reg0 (
// Equation(s):
// \Add1~10  = \Gadd[2]~2  $ (\Mult1|auto_generated|mac_out1~DATAOUT2  $ ((!\Add1~7 )))
// \G[2]~reg0_regout  = DFFEAS(\Add1~10 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add1~12  = CARRY((\Gadd[2]~2  & ((\Mult1|auto_generated|mac_out1~DATAOUT2 ) # (!\Add1~7COUT1_96 ))) # (!\Gadd[2]~2  & (\Mult1|auto_generated|mac_out1~DATAOUT2  & !\Add1~7COUT1_96 )))

	.clk(\clk~combout ),
	.dataa(\Gadd[2]~2 ),
	.datab(\Mult1|auto_generated|mac_out1~DATAOUT2 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(gnd),
	.cin0(\Add1~7 ),
	.cin1(\Add1~7COUT1_96 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add1~10 ),
	.regout(\G[2]~reg0_regout ),
	.cout(\Add1~12 ),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \G[2]~reg0 .cin0_used = "true";
defparam \G[2]~reg0 .cin1_used = "true";
defparam \G[2]~reg0 .lut_mask = "698e";
defparam \G[2]~reg0 .operation_mode = "arithmetic";
defparam \G[2]~reg0 .output_mode = "reg_and_comb";
defparam \G[2]~reg0 .register_cascade_mode = "off";
defparam \G[2]~reg0 .sum_lutc_input = "cin";
defparam \G[2]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X13_Y15_N6
stratix_lcell \G_reg[2] (
// Equation(s):
// \Gadd[2]~2  = (\present_state.S0~regout  & (((G_reg[2] & !\present_state.S1~regout ))))

	.clk(\clk~combout ),
	.dataa(\present_state.S0~regout ),
	.datab(vcc),
	.datac(\Add1~10 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Gadd[2]~2 ),
	.regout(G_reg[2]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \G_reg[2] .lut_mask = "00a0";
defparam \G_reg[2] .operation_mode = "normal";
defparam \G_reg[2] .output_mode = "comb_only";
defparam \G_reg[2] .register_cascade_mode = "off";
defparam \G_reg[2] .sum_lutc_input = "qfbk";
defparam \G_reg[2] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X12_Y16_N5
stratix_lcell \G[3]~reg0 (
// Equation(s):
// \Add1~15  = \Mult1|auto_generated|mac_out1~DATAOUT3  $ (\Gadd[3]~3  $ ((\Add1~12 )))
// \G[3]~reg0_regout  = DFFEAS(\Add1~15 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add1~17  = CARRY((\Mult1|auto_generated|mac_out1~DATAOUT3  & (!\Gadd[3]~3  & !\Add1~12 )) # (!\Mult1|auto_generated|mac_out1~DATAOUT3  & ((!\Add1~12 ) # (!\Gadd[3]~3 ))))
// \Add1~17COUT1_98  = CARRY((\Mult1|auto_generated|mac_out1~DATAOUT3  & (!\Gadd[3]~3  & !\Add1~12 )) # (!\Mult1|auto_generated|mac_out1~DATAOUT3  & ((!\Add1~12 ) # (!\Gadd[3]~3 ))))

	.clk(\clk~combout ),
	.dataa(\Mult1|auto_generated|mac_out1~DATAOUT3 ),
	.datab(\Gadd[3]~3 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add1~12 ),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add1~15 ),
	.regout(\G[3]~reg0_regout ),
	.cout(),
	.cout0(\Add1~17 ),
	.cout1(\Add1~17COUT1_98 ));
// synopsys translate_off
defparam \G[3]~reg0 .cin_used = "true";
defparam \G[3]~reg0 .lut_mask = "9617";
defparam \G[3]~reg0 .operation_mode = "arithmetic";
defparam \G[3]~reg0 .output_mode = "reg_and_comb";
defparam \G[3]~reg0 .register_cascade_mode = "off";
defparam \G[3]~reg0 .sum_lutc_input = "cin";
defparam \G[3]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X13_Y15_N5
stratix_lcell \G_reg[3] (
// Equation(s):
// \Gadd[3]~3  = (((G_reg[3]) # (\present_state.S1~regout ))) # (!\present_state.S0~regout )

	.clk(\clk~combout ),
	.dataa(\present_state.S0~regout ),
	.datab(vcc),
	.datac(\Add1~15 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Gadd[3]~3 ),
	.regout(G_reg[3]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \G_reg[3] .lut_mask = "fff5";
defparam \G_reg[3] .operation_mode = "normal";
defparam \G_reg[3] .output_mode = "comb_only";
defparam \G_reg[3] .register_cascade_mode = "off";
defparam \G_reg[3] .sum_lutc_input = "qfbk";
defparam \G_reg[3] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X12_Y16_N6
stratix_lcell \G[4]~reg0 (
// Equation(s):
// \Add1~20  = \Gadd[4]~4  $ (\Mult1|auto_generated|mac_out1~DATAOUT4  $ ((!(!\Add1~12  & \Add1~17 ) # (\Add1~12  & \Add1~17COUT1_98 ))))
// \G[4]~reg0_regout  = DFFEAS(\Add1~20 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add1~22  = CARRY((\Gadd[4]~4  & ((\Mult1|auto_generated|mac_out1~DATAOUT4 ) # (!\Add1~17 ))) # (!\Gadd[4]~4  & (\Mult1|auto_generated|mac_out1~DATAOUT4  & !\Add1~17 )))
// \Add1~22COUT1_100  = CARRY((\Gadd[4]~4  & ((\Mult1|auto_generated|mac_out1~DATAOUT4 ) # (!\Add1~17COUT1_98 ))) # (!\Gadd[4]~4  & (\Mult1|auto_generated|mac_out1~DATAOUT4  & !\Add1~17COUT1_98 )))

	.clk(\clk~combout ),
	.dataa(\Gadd[4]~4 ),
	.datab(\Mult1|auto_generated|mac_out1~DATAOUT4 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add1~12 ),
	.cin0(\Add1~17 ),
	.cin1(\Add1~17COUT1_98 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add1~20 ),
	.regout(\G[4]~reg0_regout ),
	.cout(),
	.cout0(\Add1~22 ),
	.cout1(\Add1~22COUT1_100 ));
// synopsys translate_off
defparam \G[4]~reg0 .cin0_used = "true";
defparam \G[4]~reg0 .cin1_used = "true";
defparam \G[4]~reg0 .cin_used = "true";
defparam \G[4]~reg0 .lut_mask = "698e";
defparam \G[4]~reg0 .operation_mode = "arithmetic";
defparam \G[4]~reg0 .output_mode = "reg_and_comb";
defparam \G[4]~reg0 .register_cascade_mode = "off";
defparam \G[4]~reg0 .sum_lutc_input = "cin";
defparam \G[4]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X13_Y15_N9
stratix_lcell \G_reg[4] (
// Equation(s):
// \Gadd[4]~4  = (((G_reg[4]) # (\present_state.S1~regout ))) # (!\present_state.S0~regout )

	.clk(\clk~combout ),
	.dataa(\present_state.S0~regout ),
	.datab(vcc),
	.datac(\Add1~20 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Gadd[4]~4 ),
	.regout(G_reg[4]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \G_reg[4] .lut_mask = "fff5";
defparam \G_reg[4] .operation_mode = "normal";
defparam \G_reg[4] .output_mode = "comb_only";
defparam \G_reg[4] .register_cascade_mode = "off";
defparam \G_reg[4] .sum_lutc_input = "qfbk";
defparam \G_reg[4] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X12_Y16_N7
stratix_lcell \G[5]~reg0 (
// Equation(s):
// \Add1~25  = \Gadd[5]~5  $ (\Mult1|auto_generated|mac_out1~DATAOUT5  $ (((!\Add1~12  & \Add1~22 ) # (\Add1~12  & \Add1~22COUT1_100 ))))
// \G[5]~reg0_regout  = DFFEAS(\Add1~25 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add1~27  = CARRY((\Gadd[5]~5  & (!\Mult1|auto_generated|mac_out1~DATAOUT5  & !\Add1~22 )) # (!\Gadd[5]~5  & ((!\Add1~22 ) # (!\Mult1|auto_generated|mac_out1~DATAOUT5 ))))
// \Add1~27COUT1_102  = CARRY((\Gadd[5]~5  & (!\Mult1|auto_generated|mac_out1~DATAOUT5  & !\Add1~22COUT1_100 )) # (!\Gadd[5]~5  & ((!\Add1~22COUT1_100 ) # (!\Mult1|auto_generated|mac_out1~DATAOUT5 ))))

	.clk(\clk~combout ),
	.dataa(\Gadd[5]~5 ),
	.datab(\Mult1|auto_generated|mac_out1~DATAOUT5 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add1~12 ),
	.cin0(\Add1~22 ),
	.cin1(\Add1~22COUT1_100 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add1~25 ),
	.regout(\G[5]~reg0_regout ),
	.cout(),
	.cout0(\Add1~27 ),
	.cout1(\Add1~27COUT1_102 ));
// synopsys translate_off
defparam \G[5]~reg0 .cin0_used = "true";
defparam \G[5]~reg0 .cin1_used = "true";
defparam \G[5]~reg0 .cin_used = "true";
defparam \G[5]~reg0 .lut_mask = "9617";
defparam \G[5]~reg0 .operation_mode = "arithmetic";
defparam \G[5]~reg0 .output_mode = "reg_and_comb";
defparam \G[5]~reg0 .register_cascade_mode = "off";
defparam \G[5]~reg0 .sum_lutc_input = "cin";
defparam \G[5]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X13_Y15_N4
stratix_lcell \G_reg[5] (
// Equation(s):
// \Gadd[5]~5  = (\present_state.S0~regout  & (((G_reg[5] & !\present_state.S1~regout ))))

	.clk(\clk~combout ),
	.dataa(\present_state.S0~regout ),
	.datab(vcc),
	.datac(\Add1~25 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Gadd[5]~5 ),
	.regout(G_reg[5]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \G_reg[5] .lut_mask = "00a0";
defparam \G_reg[5] .operation_mode = "normal";
defparam \G_reg[5] .output_mode = "comb_only";
defparam \G_reg[5] .register_cascade_mode = "off";
defparam \G_reg[5] .sum_lutc_input = "qfbk";
defparam \G_reg[5] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X12_Y16_N8
stratix_lcell \G[6]~reg0 (
// Equation(s):
// \Add1~30  = \Gadd[6]~6  $ (\Mult1|auto_generated|mac_out1~DATAOUT6  $ ((!(!\Add1~12  & \Add1~27 ) # (\Add1~12  & \Add1~27COUT1_102 ))))
// \G[6]~reg0_regout  = DFFEAS(\Add1~30 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add1~32  = CARRY((\Gadd[6]~6  & ((\Mult1|auto_generated|mac_out1~DATAOUT6 ) # (!\Add1~27 ))) # (!\Gadd[6]~6  & (\Mult1|auto_generated|mac_out1~DATAOUT6  & !\Add1~27 )))
// \Add1~32COUT1_104  = CARRY((\Gadd[6]~6  & ((\Mult1|auto_generated|mac_out1~DATAOUT6 ) # (!\Add1~27COUT1_102 ))) # (!\Gadd[6]~6  & (\Mult1|auto_generated|mac_out1~DATAOUT6  & !\Add1~27COUT1_102 )))

	.clk(\clk~combout ),
	.dataa(\Gadd[6]~6 ),
	.datab(\Mult1|auto_generated|mac_out1~DATAOUT6 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add1~12 ),
	.cin0(\Add1~27 ),
	.cin1(\Add1~27COUT1_102 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add1~30 ),
	.regout(\G[6]~reg0_regout ),
	.cout(),
	.cout0(\Add1~32 ),
	.cout1(\Add1~32COUT1_104 ));
// synopsys translate_off
defparam \G[6]~reg0 .cin0_used = "true";
defparam \G[6]~reg0 .cin1_used = "true";
defparam \G[6]~reg0 .cin_used = "true";
defparam \G[6]~reg0 .lut_mask = "698e";
defparam \G[6]~reg0 .operation_mode = "arithmetic";
defparam \G[6]~reg0 .output_mode = "reg_and_comb";
defparam \G[6]~reg0 .register_cascade_mode = "off";
defparam \G[6]~reg0 .sum_lutc_input = "cin";
defparam \G[6]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X12_Y16_N1
stratix_lcell \G_reg[6] (
// Equation(s):
// \Gadd[6]~6  = (((G_reg[6]) # (\present_state.S1~regout )) # (!\present_state.S0~regout ))

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(\present_state.S0~regout ),
	.datac(\Add1~30 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Gadd[6]~6 ),
	.regout(G_reg[6]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \G_reg[6] .lut_mask = "fff3";
defparam \G_reg[6] .operation_mode = "normal";
defparam \G_reg[6] .output_mode = "comb_only";
defparam \G_reg[6] .register_cascade_mode = "off";
defparam \G_reg[6] .sum_lutc_input = "qfbk";
defparam \G_reg[6] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X12_Y16_N9
stratix_lcell \G[7]~reg0 (
// Equation(s):
// \Add1~35  = \Gadd[7]~7  $ (\Mult1|auto_generated|mac_out1~DATAOUT7  $ (((!\Add1~12  & \Add1~32 ) # (\Add1~12  & \Add1~32COUT1_104 ))))
// \G[7]~reg0_regout  = DFFEAS(\Add1~35 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add1~37  = CARRY((\Gadd[7]~7  & (!\Mult1|auto_generated|mac_out1~DATAOUT7  & !\Add1~32COUT1_104 )) # (!\Gadd[7]~7  & ((!\Add1~32COUT1_104 ) # (!\Mult1|auto_generated|mac_out1~DATAOUT7 ))))

	.clk(\clk~combout ),
	.dataa(\Gadd[7]~7 ),
	.datab(\Mult1|auto_generated|mac_out1~DATAOUT7 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add1~12 ),
	.cin0(\Add1~32 ),
	.cin1(\Add1~32COUT1_104 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add1~35 ),
	.regout(\G[7]~reg0_regout ),
	.cout(\Add1~37 ),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \G[7]~reg0 .cin0_used = "true";
defparam \G[7]~reg0 .cin1_used = "true";
defparam \G[7]~reg0 .cin_used = "true";
defparam \G[7]~reg0 .lut_mask = "9617";
defparam \G[7]~reg0 .operation_mode = "arithmetic";
defparam \G[7]~reg0 .output_mode = "reg_and_comb";
defparam \G[7]~reg0 .register_cascade_mode = "off";
defparam \G[7]~reg0 .sum_lutc_input = "cin";
defparam \G[7]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X12_Y16_N0
stratix_lcell \G_reg[7] (
// Equation(s):
// \Gadd[7]~7  = ((\present_state.S0~regout  & (G_reg[7] & !\present_state.S1~regout )))

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(\present_state.S0~regout ),
	.datac(\Add1~35 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Gadd[7]~7 ),
	.regout(G_reg[7]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \G_reg[7] .lut_mask = "00c0";
defparam \G_reg[7] .operation_mode = "normal";
defparam \G_reg[7] .output_mode = "comb_only";
defparam \G_reg[7] .register_cascade_mode = "off";
defparam \G_reg[7] .sum_lutc_input = "qfbk";
defparam \G_reg[7] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X12_Y15_N0
stratix_lcell \G[8]~reg0 (
// Equation(s):
// \Add1~40  = \Gadd[8]~8  $ (\Mult1|auto_generated|mac_out1~DATAOUT8  $ ((!\Add1~37 )))
// \G[8]~reg0_regout  = DFFEAS(\Add1~40 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add1~42  = CARRY((\Gadd[8]~8  & ((\Mult1|auto_generated|mac_out1~DATAOUT8 ) # (!\Add1~37 ))) # (!\Gadd[8]~8  & (\Mult1|auto_generated|mac_out1~DATAOUT8  & !\Add1~37 )))
// \Add1~42COUT1_106  = CARRY((\Gadd[8]~8  & ((\Mult1|auto_generated|mac_out1~DATAOUT8 ) # (!\Add1~37 ))) # (!\Gadd[8]~8  & (\Mult1|auto_generated|mac_out1~DATAOUT8  & !\Add1~37 )))

	.clk(\clk~combout ),
	.dataa(\Gadd[8]~8 ),
	.datab(\Mult1|auto_generated|mac_out1~DATAOUT8 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add1~37 ),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add1~40 ),
	.regout(\G[8]~reg0_regout ),
	.cout(),
	.cout0(\Add1~42 ),
	.cout1(\Add1~42COUT1_106 ));
// synopsys translate_off
defparam \G[8]~reg0 .cin_used = "true";
defparam \G[8]~reg0 .lut_mask = "698e";
defparam \G[8]~reg0 .operation_mode = "arithmetic";
defparam \G[8]~reg0 .output_mode = "reg_and_comb";
defparam \G[8]~reg0 .register_cascade_mode = "off";
defparam \G[8]~reg0 .sum_lutc_input = "cin";
defparam \G[8]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X13_Y15_N8
stratix_lcell \G_reg[8] (
// Equation(s):
// \Gadd[8]~8  = (\present_state.S0~regout  & (((G_reg[8] & !\present_state.S1~regout ))))

	.clk(\clk~combout ),
	.dataa(\present_state.S0~regout ),
	.datab(vcc),
	.datac(\Add1~40 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Gadd[8]~8 ),
	.regout(G_reg[8]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \G_reg[8] .lut_mask = "00a0";
defparam \G_reg[8] .operation_mode = "normal";
defparam \G_reg[8] .output_mode = "comb_only";
defparam \G_reg[8] .register_cascade_mode = "off";
defparam \G_reg[8] .sum_lutc_input = "qfbk";
defparam \G_reg[8] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X12_Y15_N1
stratix_lcell \G[9]~reg0 (
// Equation(s):
// \Add1~45  = \Gadd[9]~9  $ (\Mult1|auto_generated|mac_out1~DATAOUT9  $ (((!\Add1~37  & \Add1~42 ) # (\Add1~37  & \Add1~42COUT1_106 ))))
// \G[9]~reg0_regout  = DFFEAS(\Add1~45 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add1~47  = CARRY((\Gadd[9]~9  & (!\Mult1|auto_generated|mac_out1~DATAOUT9  & !\Add1~42 )) # (!\Gadd[9]~9  & ((!\Add1~42 ) # (!\Mult1|auto_generated|mac_out1~DATAOUT9 ))))
// \Add1~47COUT1_108  = CARRY((\Gadd[9]~9  & (!\Mult1|auto_generated|mac_out1~DATAOUT9  & !\Add1~42COUT1_106 )) # (!\Gadd[9]~9  & ((!\Add1~42COUT1_106 ) # (!\Mult1|auto_generated|mac_out1~DATAOUT9 ))))

	.clk(\clk~combout ),
	.dataa(\Gadd[9]~9 ),
	.datab(\Mult1|auto_generated|mac_out1~DATAOUT9 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add1~37 ),
	.cin0(\Add1~42 ),
	.cin1(\Add1~42COUT1_106 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add1~45 ),
	.regout(\G[9]~reg0_regout ),
	.cout(),
	.cout0(\Add1~47 ),
	.cout1(\Add1~47COUT1_108 ));
// synopsys translate_off
defparam \G[9]~reg0 .cin0_used = "true";
defparam \G[9]~reg0 .cin1_used = "true";
defparam \G[9]~reg0 .cin_used = "true";
defparam \G[9]~reg0 .lut_mask = "9617";
defparam \G[9]~reg0 .operation_mode = "arithmetic";
defparam \G[9]~reg0 .output_mode = "reg_and_comb";
defparam \G[9]~reg0 .register_cascade_mode = "off";
defparam \G[9]~reg0 .sum_lutc_input = "cin";
defparam \G[9]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X13_Y15_N0
stratix_lcell \G_reg[9] (
// Equation(s):
// \Gadd[9]~9  = (\present_state.S0~regout  & (((G_reg[9] & !\present_state.S1~regout ))))

	.clk(\clk~combout ),
	.dataa(\present_state.S0~regout ),
	.datab(vcc),
	.datac(\Add1~45 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Gadd[9]~9 ),
	.regout(G_reg[9]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \G_reg[9] .lut_mask = "00a0";
defparam \G_reg[9] .operation_mode = "normal";
defparam \G_reg[9] .output_mode = "comb_only";
defparam \G_reg[9] .register_cascade_mode = "off";
defparam \G_reg[9] .sum_lutc_input = "qfbk";
defparam \G_reg[9] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X12_Y15_N2
stratix_lcell \G[10]~reg0 (
// Equation(s):
// \Add1~50  = \Gadd[10]~10  $ (\Mult1|auto_generated|mac_out1~DATAOUT10  $ ((!(!\Add1~37  & \Add1~47 ) # (\Add1~37  & \Add1~47COUT1_108 ))))
// \G[10]~reg0_regout  = DFFEAS(\Add1~50 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add1~52  = CARRY((\Gadd[10]~10  & ((\Mult1|auto_generated|mac_out1~DATAOUT10 ) # (!\Add1~47 ))) # (!\Gadd[10]~10  & (\Mult1|auto_generated|mac_out1~DATAOUT10  & !\Add1~47 )))
// \Add1~52COUT1_110  = CARRY((\Gadd[10]~10  & ((\Mult1|auto_generated|mac_out1~DATAOUT10 ) # (!\Add1~47COUT1_108 ))) # (!\Gadd[10]~10  & (\Mult1|auto_generated|mac_out1~DATAOUT10  & !\Add1~47COUT1_108 )))

	.clk(\clk~combout ),
	.dataa(\Gadd[10]~10 ),
	.datab(\Mult1|auto_generated|mac_out1~DATAOUT10 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add1~37 ),
	.cin0(\Add1~47 ),
	.cin1(\Add1~47COUT1_108 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add1~50 ),
	.regout(\G[10]~reg0_regout ),
	.cout(),
	.cout0(\Add1~52 ),
	.cout1(\Add1~52COUT1_110 ));
// synopsys translate_off
defparam \G[10]~reg0 .cin0_used = "true";
defparam \G[10]~reg0 .cin1_used = "true";
defparam \G[10]~reg0 .cin_used = "true";
defparam \G[10]~reg0 .lut_mask = "698e";
defparam \G[10]~reg0 .operation_mode = "arithmetic";
defparam \G[10]~reg0 .output_mode = "reg_and_comb";
defparam \G[10]~reg0 .register_cascade_mode = "off";
defparam \G[10]~reg0 .sum_lutc_input = "cin";
defparam \G[10]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X13_Y15_N3
stratix_lcell \G_reg[10] (
// Equation(s):
// \Gadd[10]~10  = (((G_reg[10]) # (\present_state.S1~regout ))) # (!\present_state.S0~regout )

	.clk(\clk~combout ),
	.dataa(\present_state.S0~regout ),
	.datab(vcc),
	.datac(\Add1~50 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Gadd[10]~10 ),
	.regout(G_reg[10]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \G_reg[10] .lut_mask = "fff5";
defparam \G_reg[10] .operation_mode = "normal";
defparam \G_reg[10] .output_mode = "comb_only";
defparam \G_reg[10] .register_cascade_mode = "off";
defparam \G_reg[10] .sum_lutc_input = "qfbk";
defparam \G_reg[10] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X12_Y15_N3
stratix_lcell \G[11]~reg0 (
// Equation(s):
// \Add1~55  = \Mult1|auto_generated|mac_out1~DATAOUT11  $ (\Gadd[11]~11  $ (((!\Add1~37  & \Add1~52 ) # (\Add1~37  & \Add1~52COUT1_110 ))))
// \G[11]~reg0_regout  = DFFEAS(\Add1~55 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add1~57  = CARRY((\Mult1|auto_generated|mac_out1~DATAOUT11  & (!\Gadd[11]~11  & !\Add1~52 )) # (!\Mult1|auto_generated|mac_out1~DATAOUT11  & ((!\Add1~52 ) # (!\Gadd[11]~11 ))))
// \Add1~57COUT1_112  = CARRY((\Mult1|auto_generated|mac_out1~DATAOUT11  & (!\Gadd[11]~11  & !\Add1~52COUT1_110 )) # (!\Mult1|auto_generated|mac_out1~DATAOUT11  & ((!\Add1~52COUT1_110 ) # (!\Gadd[11]~11 ))))

	.clk(\clk~combout ),
	.dataa(\Mult1|auto_generated|mac_out1~DATAOUT11 ),
	.datab(\Gadd[11]~11 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add1~37 ),
	.cin0(\Add1~52 ),
	.cin1(\Add1~52COUT1_110 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add1~55 ),
	.regout(\G[11]~reg0_regout ),
	.cout(),
	.cout0(\Add1~57 ),
	.cout1(\Add1~57COUT1_112 ));
// synopsys translate_off
defparam \G[11]~reg0 .cin0_used = "true";
defparam \G[11]~reg0 .cin1_used = "true";
defparam \G[11]~reg0 .cin_used = "true";
defparam \G[11]~reg0 .lut_mask = "9617";
defparam \G[11]~reg0 .operation_mode = "arithmetic";
defparam \G[11]~reg0 .output_mode = "reg_and_comb";
defparam \G[11]~reg0 .register_cascade_mode = "off";
defparam \G[11]~reg0 .sum_lutc_input = "cin";
defparam \G[11]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X13_Y15_N1
stratix_lcell \G_reg[11] (
// Equation(s):
// \Gadd[11]~11  = (\present_state.S0~regout  & (((G_reg[11] & !\present_state.S1~regout ))))

	.clk(\clk~combout ),
	.dataa(\present_state.S0~regout ),
	.datab(vcc),
	.datac(\Add1~55 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Gadd[11]~11 ),
	.regout(G_reg[11]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \G_reg[11] .lut_mask = "00a0";
defparam \G_reg[11] .operation_mode = "normal";
defparam \G_reg[11] .output_mode = "comb_only";
defparam \G_reg[11] .register_cascade_mode = "off";
defparam \G_reg[11] .sum_lutc_input = "qfbk";
defparam \G_reg[11] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X12_Y15_N4
stratix_lcell \G[12]~reg0 (
// Equation(s):
// \Add1~60  = \Gadd[12]~12  $ (\Mult1|auto_generated|mac_out1~DATAOUT12  $ ((!(!\Add1~37  & \Add1~57 ) # (\Add1~37  & \Add1~57COUT1_112 ))))
// \G[12]~reg0_regout  = DFFEAS(\Add1~60 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add1~62  = CARRY((\Gadd[12]~12  & ((\Mult1|auto_generated|mac_out1~DATAOUT12 ) # (!\Add1~57COUT1_112 ))) # (!\Gadd[12]~12  & (\Mult1|auto_generated|mac_out1~DATAOUT12  & !\Add1~57COUT1_112 )))

	.clk(\clk~combout ),
	.dataa(\Gadd[12]~12 ),
	.datab(\Mult1|auto_generated|mac_out1~DATAOUT12 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add1~37 ),
	.cin0(\Add1~57 ),
	.cin1(\Add1~57COUT1_112 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add1~60 ),
	.regout(\G[12]~reg0_regout ),
	.cout(\Add1~62 ),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \G[12]~reg0 .cin0_used = "true";
defparam \G[12]~reg0 .cin1_used = "true";
defparam \G[12]~reg0 .cin_used = "true";
defparam \G[12]~reg0 .lut_mask = "698e";
defparam \G[12]~reg0 .operation_mode = "arithmetic";
defparam \G[12]~reg0 .output_mode = "reg_and_comb";
defparam \G[12]~reg0 .register_cascade_mode = "off";
defparam \G[12]~reg0 .sum_lutc_input = "cin";
defparam \G[12]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X13_Y15_N7
stratix_lcell \G_reg[12] (
// Equation(s):
// \Gadd[12]~12  = (\present_state.S0~regout  & (((G_reg[12] & !\present_state.S1~regout ))))

	.clk(\clk~combout ),
	.dataa(\present_state.S0~regout ),
	.datab(vcc),
	.datac(\Add1~60 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Gadd[12]~12 ),
	.regout(G_reg[12]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \G_reg[12] .lut_mask = "00a0";
defparam \G_reg[12] .operation_mode = "normal";
defparam \G_reg[12] .output_mode = "comb_only";
defparam \G_reg[12] .register_cascade_mode = "off";
defparam \G_reg[12] .sum_lutc_input = "qfbk";
defparam \G_reg[12] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X12_Y15_N5
stratix_lcell \G[13]~reg0 (
// Equation(s):
// \Add1~65  = \Gadd[13]~13  $ (\Mult1|auto_generated|mac_out1~DATAOUT13  $ ((\Add1~62 )))
// \G[13]~reg0_regout  = DFFEAS(\Add1~65 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add1~67  = CARRY((\Gadd[13]~13  & (!\Mult1|auto_generated|mac_out1~DATAOUT13  & !\Add1~62 )) # (!\Gadd[13]~13  & ((!\Add1~62 ) # (!\Mult1|auto_generated|mac_out1~DATAOUT13 ))))
// \Add1~67COUT1_114  = CARRY((\Gadd[13]~13  & (!\Mult1|auto_generated|mac_out1~DATAOUT13  & !\Add1~62 )) # (!\Gadd[13]~13  & ((!\Add1~62 ) # (!\Mult1|auto_generated|mac_out1~DATAOUT13 ))))

	.clk(\clk~combout ),
	.dataa(\Gadd[13]~13 ),
	.datab(\Mult1|auto_generated|mac_out1~DATAOUT13 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add1~62 ),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add1~65 ),
	.regout(\G[13]~reg0_regout ),
	.cout(),
	.cout0(\Add1~67 ),
	.cout1(\Add1~67COUT1_114 ));
// synopsys translate_off
defparam \G[13]~reg0 .cin_used = "true";
defparam \G[13]~reg0 .lut_mask = "9617";
defparam \G[13]~reg0 .operation_mode = "arithmetic";
defparam \G[13]~reg0 .output_mode = "reg_and_comb";
defparam \G[13]~reg0 .register_cascade_mode = "off";
defparam \G[13]~reg0 .sum_lutc_input = "cin";
defparam \G[13]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X39_Y16_N6
stratix_lcell \G_reg[13] (
// Equation(s):
// \Gadd[13]~13  = ((\present_state.S0~regout  & (G_reg[13] & !\present_state.S1~regout )))

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(\present_state.S0~regout ),
	.datac(\Add1~65 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Gadd[13]~13 ),
	.regout(G_reg[13]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \G_reg[13] .lut_mask = "00c0";
defparam \G_reg[13] .operation_mode = "normal";
defparam \G_reg[13] .output_mode = "comb_only";
defparam \G_reg[13] .register_cascade_mode = "off";
defparam \G_reg[13] .sum_lutc_input = "qfbk";
defparam \G_reg[13] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X12_Y15_N6
stratix_lcell \G[14]~reg0 (
// Equation(s):
// \Add1~70  = \Mult1|auto_generated|mac_out1~DATAOUT14  $ (\Gadd[14]~14  $ ((!(!\Add1~62  & \Add1~67 ) # (\Add1~62  & \Add1~67COUT1_114 ))))
// \G[14]~reg0_regout  = DFFEAS(\Add1~70 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add1~72  = CARRY((\Mult1|auto_generated|mac_out1~DATAOUT14  & ((\Gadd[14]~14 ) # (!\Add1~67 ))) # (!\Mult1|auto_generated|mac_out1~DATAOUT14  & (\Gadd[14]~14  & !\Add1~67 )))
// \Add1~72COUT1_116  = CARRY((\Mult1|auto_generated|mac_out1~DATAOUT14  & ((\Gadd[14]~14 ) # (!\Add1~67COUT1_114 ))) # (!\Mult1|auto_generated|mac_out1~DATAOUT14  & (\Gadd[14]~14  & !\Add1~67COUT1_114 )))

	.clk(\clk~combout ),
	.dataa(\Mult1|auto_generated|mac_out1~DATAOUT14 ),
	.datab(\Gadd[14]~14 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add1~62 ),
	.cin0(\Add1~67 ),
	.cin1(\Add1~67COUT1_114 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add1~70 ),
	.regout(\G[14]~reg0_regout ),
	.cout(),
	.cout0(\Add1~72 ),
	.cout1(\Add1~72COUT1_116 ));
// synopsys translate_off
defparam \G[14]~reg0 .cin0_used = "true";
defparam \G[14]~reg0 .cin1_used = "true";
defparam \G[14]~reg0 .cin_used = "true";
defparam \G[14]~reg0 .lut_mask = "698e";
defparam \G[14]~reg0 .operation_mode = "arithmetic";
defparam \G[14]~reg0 .output_mode = "reg_and_comb";
defparam \G[14]~reg0 .register_cascade_mode = "off";
defparam \G[14]~reg0 .sum_lutc_input = "cin";
defparam \G[14]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X12_Y15_N8
stratix_lcell \G_reg[14] (
// Equation(s):
// \Gadd[14]~14  = ((!\present_state.S1~regout  & (G_reg[14] & \present_state.S0~regout )))

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(\present_state.S1~regout ),
	.datac(\Add1~70 ),
	.datad(\present_state.S0~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Gadd[14]~14 ),
	.regout(G_reg[14]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \G_reg[14] .lut_mask = "3000";
defparam \G_reg[14] .operation_mode = "normal";
defparam \G_reg[14] .output_mode = "comb_only";
defparam \G_reg[14] .register_cascade_mode = "off";
defparam \G_reg[14] .sum_lutc_input = "qfbk";
defparam \G_reg[14] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X12_Y15_N7
stratix_lcell \G[15]~reg0 (
// Equation(s):
// \Add1~75  = (\Gadd[15]~15  $ ((!\Add1~62  & \Add1~72 ) # (\Add1~62  & \Add1~72COUT1_116 ) $ (\Mult1|auto_generated|mac_out1~DATAOUT15 )))
// \G[15]~reg0_regout  = DFFEAS(\Add1~75 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(\Gadd[15]~15 ),
	.datac(vcc),
	.datad(\Mult1|auto_generated|mac_out1~DATAOUT15 ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add1~62 ),
	.cin0(\Add1~72 ),
	.cin1(\Add1~72COUT1_116 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add1~75 ),
	.regout(\G[15]~reg0_regout ),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \G[15]~reg0 .cin0_used = "true";
defparam \G[15]~reg0 .cin1_used = "true";
defparam \G[15]~reg0 .cin_used = "true";
defparam \G[15]~reg0 .lut_mask = "c33c";
defparam \G[15]~reg0 .operation_mode = "normal";
defparam \G[15]~reg0 .output_mode = "reg_and_comb";
defparam \G[15]~reg0 .register_cascade_mode = "off";
defparam \G[15]~reg0 .sum_lutc_input = "cin";
defparam \G[15]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X12_Y15_N9
stratix_lcell \G_reg[15] (
// Equation(s):
// \Gadd[15]~15  = ((\present_state.S1~regout ) # ((G_reg[15]) # (!\present_state.S0~regout )))

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(\present_state.S1~regout ),
	.datac(\Add1~75 ),
	.datad(\present_state.S0~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Gadd[15]~15 ),
	.regout(G_reg[15]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \G_reg[15] .lut_mask = "fcff";
defparam \G_reg[15] .operation_mode = "normal";
defparam \G_reg[15] .output_mode = "comb_only";
defparam \G_reg[15] .register_cascade_mode = "off";
defparam \G_reg[15] .sum_lutc_input = "qfbk";
defparam \G_reg[15] .synch_mode = "on";
// synopsys translate_on

// Location: DSPMULT_X42_Y15_N1
stratix_mac_mult \Mult2|auto_generated|mac_mult2 (
	.signa(gnd),
	.signb(gnd),
	.dataa({data_reg[7],data_reg[6],data_reg[5],data_reg[4],data_reg[3],data_reg[2],data_reg[1],data_reg[0],gnd}),
	.datab({WideNor0,\present_state.S2~regout ,gnd,\present_state.S2~regout ,\present_state.S2~regout ,\present_state.S2~regout ,gnd,\present_state.S2~regout ,\present_state.S2~regout }),
	.clk(4'b0000),
	.aclr(4'b0000),
	.ena(4'b1111),
	.devclrn(devclrn),
	.devpor(devpor),
	.dataout(\Mult2|auto_generated|mac_mult2_DATAOUT_bus ),
	.scanouta(),
	.scanoutb());
// synopsys translate_off
defparam \Mult2|auto_generated|mac_mult2 .dataa_clear = "none";
defparam \Mult2|auto_generated|mac_mult2 .dataa_clock = "none";
defparam \Mult2|auto_generated|mac_mult2 .dataa_width = 9;
defparam \Mult2|auto_generated|mac_mult2 .datab_clear = "none";
defparam \Mult2|auto_generated|mac_mult2 .datab_clock = "none";
defparam \Mult2|auto_generated|mac_mult2 .datab_width = 9;
defparam \Mult2|auto_generated|mac_mult2 .output_clear = "none";
defparam \Mult2|auto_generated|mac_mult2 .output_clock = "none";
defparam \Mult2|auto_generated|mac_mult2 .signa_clear = "none";
defparam \Mult2|auto_generated|mac_mult2 .signa_clock = "none";
defparam \Mult2|auto_generated|mac_mult2 .signa_internally_grounded = "false";
defparam \Mult2|auto_generated|mac_mult2 .signb_clear = "none";
defparam \Mult2|auto_generated|mac_mult2 .signb_clock = "none";
defparam \Mult2|auto_generated|mac_mult2 .signb_internally_grounded = "false";
// synopsys translate_on

// Location: DSPOUT_X43_Y9_N1
stratix_mac_out \Mult2|auto_generated|mac_out1 (
	.zeroacc(gnd),
	.addnsub0(vcc),
	.addnsub1(vcc),
	.signa(vcc),
	.signb(vcc),
	.dataa({\Mult2|auto_generated|mac_mult2~DATAOUT16 ,\Mult2|auto_generated|mac_mult2~DATAOUT15 ,\Mult2|auto_generated|mac_mult2~DATAOUT14 ,\Mult2|auto_generated|mac_mult2~DATAOUT13 ,\Mult2|auto_generated|mac_mult2~DATAOUT12 ,\Mult2|auto_generated|mac_mult2~DATAOUT11 ,
\Mult2|auto_generated|mac_mult2~DATAOUT10 ,\Mult2|auto_generated|mac_mult2~DATAOUT9 ,\Mult2|auto_generated|mac_mult2~DATAOUT8 ,\Mult2|auto_generated|mac_mult2~DATAOUT7 ,\Mult2|auto_generated|mac_mult2~DATAOUT6 ,\Mult2|auto_generated|mac_mult2~DATAOUT5 ,
\Mult2|auto_generated|mac_mult2~DATAOUT4 ,\Mult2|auto_generated|mac_mult2~DATAOUT3 ,\Mult2|auto_generated|mac_mult2~DATAOUT2 ,\Mult2|auto_generated|mac_mult2~DATAOUT1 ,\Mult2|auto_generated|mac_mult2~dataout ,\Mult2|auto_generated|mac_mult2~1 }),
	.datab(1'b1),
	.datac(1'b1),
	.datad(1'b1),
	.clk(4'b0000),
	.aclr(4'b0000),
	.ena(4'b1111),
	.devclrn(devclrn),
	.devpor(devpor),
	.accoverflow(),
	.dataout(\Mult2|auto_generated|mac_out1_DATAOUT_bus ));
// synopsys translate_off
defparam \Mult2|auto_generated|mac_out1 .addnsub0_clear = "none";
defparam \Mult2|auto_generated|mac_out1 .addnsub0_clock = "none";
defparam \Mult2|auto_generated|mac_out1 .addnsub0_pipeline_clear = "none";
defparam \Mult2|auto_generated|mac_out1 .addnsub0_pipeline_clock = "none";
defparam \Mult2|auto_generated|mac_out1 .addnsub1_clear = "none";
defparam \Mult2|auto_generated|mac_out1 .addnsub1_clock = "none";
defparam \Mult2|auto_generated|mac_out1 .addnsub1_pipeline_clear = "none";
defparam \Mult2|auto_generated|mac_out1 .addnsub1_pipeline_clock = "none";
defparam \Mult2|auto_generated|mac_out1 .data_out_programmable_invert = 72'b000000000000000000000000000000000000000000000000000000000000000000000000;
defparam \Mult2|auto_generated|mac_out1 .dataa_width = 18;
defparam \Mult2|auto_generated|mac_out1 .dataout_width = 18;
defparam \Mult2|auto_generated|mac_out1 .operation_mode = "output_only";
defparam \Mult2|auto_generated|mac_out1 .output_clear = "none";
defparam \Mult2|auto_generated|mac_out1 .output_clock = "none";
defparam \Mult2|auto_generated|mac_out1 .signa_clear = "none";
defparam \Mult2|auto_generated|mac_out1 .signa_clock = "none";
defparam \Mult2|auto_generated|mac_out1 .signa_pipeline_clear = "none";
defparam \Mult2|auto_generated|mac_out1 .signa_pipeline_clock = "none";
defparam \Mult2|auto_generated|mac_out1 .signb_clear = "none";
defparam \Mult2|auto_generated|mac_out1 .signb_clock = "none";
defparam \Mult2|auto_generated|mac_out1 .signb_pipeline_clear = "none";
defparam \Mult2|auto_generated|mac_out1 .signb_pipeline_clock = "none";
defparam \Mult2|auto_generated|mac_out1 .zeroacc_clear = "none";
defparam \Mult2|auto_generated|mac_out1 .zeroacc_clock = "none";
defparam \Mult2|auto_generated|mac_out1 .zeroacc_pipeline_clear = "none";
defparam \Mult2|auto_generated|mac_out1 .zeroacc_pipeline_clock = "none";
// synopsys translate_on

// Location: LC_X41_Y16_N2
stratix_lcell \B[0]~reg0 (
// Equation(s):
// \Add2~0  = \Mult2|auto_generated|mac_out1~dataout  $ ((\Badd[0]~0 ))
// \B[0]~reg0_regout  = DFFEAS(\Add2~0 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add2~2  = CARRY((\Mult2|auto_generated|mac_out1~dataout  & (\Badd[0]~0 )))
// \Add2~2COUT1_94  = CARRY((\Mult2|auto_generated|mac_out1~dataout  & (\Badd[0]~0 )))

	.clk(\clk~combout ),
	.dataa(\Mult2|auto_generated|mac_out1~dataout ),
	.datab(\Badd[0]~0 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add2~0 ),
	.regout(\B[0]~reg0_regout ),
	.cout(),
	.cout0(\Add2~2 ),
	.cout1(\Add2~2COUT1_94 ));
// synopsys translate_off
defparam \B[0]~reg0 .lut_mask = "6688";
defparam \B[0]~reg0 .operation_mode = "arithmetic";
defparam \B[0]~reg0 .output_mode = "reg_and_comb";
defparam \B[0]~reg0 .register_cascade_mode = "off";
defparam \B[0]~reg0 .sum_lutc_input = "datac";
defparam \B[0]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X9_Y16_N1
stratix_lcell \B_reg[0] (
// Equation(s):
// \Badd[0]~0  = (\present_state.S0~regout  & (((B_reg[0] & !\present_state.S1~regout ))))

	.clk(\clk~combout ),
	.dataa(\present_state.S0~regout ),
	.datab(vcc),
	.datac(\Add2~0 ),
	.datad(\present_state.S1~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Badd[0]~0 ),
	.regout(B_reg[0]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \B_reg[0] .lut_mask = "00a0";
defparam \B_reg[0] .operation_mode = "normal";
defparam \B_reg[0] .output_mode = "comb_only";
defparam \B_reg[0] .register_cascade_mode = "off";
defparam \B_reg[0] .sum_lutc_input = "qfbk";
defparam \B_reg[0] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X41_Y16_N3
stratix_lcell \B[1]~reg0 (
// Equation(s):
// \Add2~5  = \Badd[1]~1  $ (\Mult2|auto_generated|mac_out1~DATAOUT1  $ ((\Add2~2 )))
// \B[1]~reg0_regout  = DFFEAS(\Add2~5 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add2~7  = CARRY((\Badd[1]~1  & (!\Mult2|auto_generated|mac_out1~DATAOUT1  & !\Add2~2 )) # (!\Badd[1]~1  & ((!\Add2~2 ) # (!\Mult2|auto_generated|mac_out1~DATAOUT1 ))))
// \Add2~7COUT1_96  = CARRY((\Badd[1]~1  & (!\Mult2|auto_generated|mac_out1~DATAOUT1  & !\Add2~2COUT1_94 )) # (!\Badd[1]~1  & ((!\Add2~2COUT1_94 ) # (!\Mult2|auto_generated|mac_out1~DATAOUT1 ))))

	.clk(\clk~combout ),
	.dataa(\Badd[1]~1 ),
	.datab(\Mult2|auto_generated|mac_out1~DATAOUT1 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(gnd),
	.cin0(\Add2~2 ),
	.cin1(\Add2~2COUT1_94 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add2~5 ),
	.regout(\B[1]~reg0_regout ),
	.cout(),
	.cout0(\Add2~7 ),
	.cout1(\Add2~7COUT1_96 ));
// synopsys translate_off
defparam \B[1]~reg0 .cin0_used = "true";
defparam \B[1]~reg0 .cin1_used = "true";
defparam \B[1]~reg0 .lut_mask = "9617";
defparam \B[1]~reg0 .operation_mode = "arithmetic";
defparam \B[1]~reg0 .output_mode = "reg_and_comb";
defparam \B[1]~reg0 .register_cascade_mode = "off";
defparam \B[1]~reg0 .sum_lutc_input = "cin";
defparam \B[1]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X41_Y14_N1
stratix_lcell \B_reg[1] (
// Equation(s):
// \Badd[1]~1  = (\present_state.S1~regout ) # (((B_reg[1]) # (!\present_state.S0~regout )))

	.clk(\clk~combout ),
	.dataa(\present_state.S1~regout ),
	.datab(vcc),
	.datac(\Add2~5 ),
	.datad(\present_state.S0~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Badd[1]~1 ),
	.regout(B_reg[1]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \B_reg[1] .lut_mask = "faff";
defparam \B_reg[1] .operation_mode = "normal";
defparam \B_reg[1] .output_mode = "comb_only";
defparam \B_reg[1] .register_cascade_mode = "off";
defparam \B_reg[1] .sum_lutc_input = "qfbk";
defparam \B_reg[1] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X41_Y16_N4
stratix_lcell \B[2]~reg0 (
// Equation(s):
// \Add2~10  = \Badd[2]~2  $ (\Mult2|auto_generated|mac_out1~DATAOUT2  $ ((!\Add2~7 )))
// \B[2]~reg0_regout  = DFFEAS(\Add2~10 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add2~12  = CARRY((\Badd[2]~2  & ((\Mult2|auto_generated|mac_out1~DATAOUT2 ) # (!\Add2~7COUT1_96 ))) # (!\Badd[2]~2  & (\Mult2|auto_generated|mac_out1~DATAOUT2  & !\Add2~7COUT1_96 )))

	.clk(\clk~combout ),
	.dataa(\Badd[2]~2 ),
	.datab(\Mult2|auto_generated|mac_out1~DATAOUT2 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(gnd),
	.cin0(\Add2~7 ),
	.cin1(\Add2~7COUT1_96 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add2~10 ),
	.regout(\B[2]~reg0_regout ),
	.cout(\Add2~12 ),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \B[2]~reg0 .cin0_used = "true";
defparam \B[2]~reg0 .cin1_used = "true";
defparam \B[2]~reg0 .lut_mask = "698e";
defparam \B[2]~reg0 .operation_mode = "arithmetic";
defparam \B[2]~reg0 .output_mode = "reg_and_comb";
defparam \B[2]~reg0 .register_cascade_mode = "off";
defparam \B[2]~reg0 .sum_lutc_input = "cin";
defparam \B[2]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X41_Y14_N8
stratix_lcell \B_reg[2] (
// Equation(s):
// \Badd[2]~2  = (\present_state.S1~regout ) # (((B_reg[2]) # (!\present_state.S0~regout )))

	.clk(\clk~combout ),
	.dataa(\present_state.S1~regout ),
	.datab(vcc),
	.datac(\Add2~10 ),
	.datad(\present_state.S0~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Badd[2]~2 ),
	.regout(B_reg[2]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \B_reg[2] .lut_mask = "faff";
defparam \B_reg[2] .operation_mode = "normal";
defparam \B_reg[2] .output_mode = "comb_only";
defparam \B_reg[2] .register_cascade_mode = "off";
defparam \B_reg[2] .sum_lutc_input = "qfbk";
defparam \B_reg[2] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X41_Y16_N5
stratix_lcell \B[3]~reg0 (
// Equation(s):
// \Add2~15  = \Badd[3]~3  $ (\Mult2|auto_generated|mac_out1~DATAOUT3  $ ((\Add2~12 )))
// \B[3]~reg0_regout  = DFFEAS(\Add2~15 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add2~17  = CARRY((\Badd[3]~3  & (!\Mult2|auto_generated|mac_out1~DATAOUT3  & !\Add2~12 )) # (!\Badd[3]~3  & ((!\Add2~12 ) # (!\Mult2|auto_generated|mac_out1~DATAOUT3 ))))
// \Add2~17COUT1_98  = CARRY((\Badd[3]~3  & (!\Mult2|auto_generated|mac_out1~DATAOUT3  & !\Add2~12 )) # (!\Badd[3]~3  & ((!\Add2~12 ) # (!\Mult2|auto_generated|mac_out1~DATAOUT3 ))))

	.clk(\clk~combout ),
	.dataa(\Badd[3]~3 ),
	.datab(\Mult2|auto_generated|mac_out1~DATAOUT3 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add2~12 ),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add2~15 ),
	.regout(\B[3]~reg0_regout ),
	.cout(),
	.cout0(\Add2~17 ),
	.cout1(\Add2~17COUT1_98 ));
// synopsys translate_off
defparam \B[3]~reg0 .cin_used = "true";
defparam \B[3]~reg0 .lut_mask = "9617";
defparam \B[3]~reg0 .operation_mode = "arithmetic";
defparam \B[3]~reg0 .output_mode = "reg_and_comb";
defparam \B[3]~reg0 .register_cascade_mode = "off";
defparam \B[3]~reg0 .sum_lutc_input = "cin";
defparam \B[3]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X41_Y14_N9
stratix_lcell \B_reg[3] (
// Equation(s):
// \Badd[3]~3  = (\present_state.S1~regout ) # (((B_reg[3]) # (!\present_state.S0~regout )))

	.clk(\clk~combout ),
	.dataa(\present_state.S1~regout ),
	.datab(vcc),
	.datac(\Add2~15 ),
	.datad(\present_state.S0~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Badd[3]~3 ),
	.regout(B_reg[3]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \B_reg[3] .lut_mask = "faff";
defparam \B_reg[3] .operation_mode = "normal";
defparam \B_reg[3] .output_mode = "comb_only";
defparam \B_reg[3] .register_cascade_mode = "off";
defparam \B_reg[3] .sum_lutc_input = "qfbk";
defparam \B_reg[3] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X41_Y16_N6
stratix_lcell \B[4]~reg0 (
// Equation(s):
// \Add2~20  = \Mult2|auto_generated|mac_out1~DATAOUT4  $ (\Badd[4]~4  $ ((!(!\Add2~12  & \Add2~17 ) # (\Add2~12  & \Add2~17COUT1_98 ))))
// \B[4]~reg0_regout  = DFFEAS(\Add2~20 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add2~22  = CARRY((\Mult2|auto_generated|mac_out1~DATAOUT4  & ((\Badd[4]~4 ) # (!\Add2~17 ))) # (!\Mult2|auto_generated|mac_out1~DATAOUT4  & (\Badd[4]~4  & !\Add2~17 )))
// \Add2~22COUT1_100  = CARRY((\Mult2|auto_generated|mac_out1~DATAOUT4  & ((\Badd[4]~4 ) # (!\Add2~17COUT1_98 ))) # (!\Mult2|auto_generated|mac_out1~DATAOUT4  & (\Badd[4]~4  & !\Add2~17COUT1_98 )))

	.clk(\clk~combout ),
	.dataa(\Mult2|auto_generated|mac_out1~DATAOUT4 ),
	.datab(\Badd[4]~4 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add2~12 ),
	.cin0(\Add2~17 ),
	.cin1(\Add2~17COUT1_98 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add2~20 ),
	.regout(\B[4]~reg0_regout ),
	.cout(),
	.cout0(\Add2~22 ),
	.cout1(\Add2~22COUT1_100 ));
// synopsys translate_off
defparam \B[4]~reg0 .cin0_used = "true";
defparam \B[4]~reg0 .cin1_used = "true";
defparam \B[4]~reg0 .cin_used = "true";
defparam \B[4]~reg0 .lut_mask = "698e";
defparam \B[4]~reg0 .operation_mode = "arithmetic";
defparam \B[4]~reg0 .output_mode = "reg_and_comb";
defparam \B[4]~reg0 .register_cascade_mode = "off";
defparam \B[4]~reg0 .sum_lutc_input = "cin";
defparam \B[4]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X41_Y14_N0
stratix_lcell \B_reg[4] (
// Equation(s):
// \Badd[4]~4  = (!\present_state.S1~regout  & (((B_reg[4] & \present_state.S0~regout ))))

	.clk(\clk~combout ),
	.dataa(\present_state.S1~regout ),
	.datab(vcc),
	.datac(\Add2~20 ),
	.datad(\present_state.S0~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Badd[4]~4 ),
	.regout(B_reg[4]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \B_reg[4] .lut_mask = "5000";
defparam \B_reg[4] .operation_mode = "normal";
defparam \B_reg[4] .output_mode = "comb_only";
defparam \B_reg[4] .register_cascade_mode = "off";
defparam \B_reg[4] .sum_lutc_input = "qfbk";
defparam \B_reg[4] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X41_Y16_N7
stratix_lcell \B[5]~reg0 (
// Equation(s):
// \Add2~25  = \Badd[5]~5  $ (\Mult2|auto_generated|mac_out1~DATAOUT5  $ (((!\Add2~12  & \Add2~22 ) # (\Add2~12  & \Add2~22COUT1_100 ))))
// \B[5]~reg0_regout  = DFFEAS(\Add2~25 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add2~27  = CARRY((\Badd[5]~5  & (!\Mult2|auto_generated|mac_out1~DATAOUT5  & !\Add2~22 )) # (!\Badd[5]~5  & ((!\Add2~22 ) # (!\Mult2|auto_generated|mac_out1~DATAOUT5 ))))
// \Add2~27COUT1_102  = CARRY((\Badd[5]~5  & (!\Mult2|auto_generated|mac_out1~DATAOUT5  & !\Add2~22COUT1_100 )) # (!\Badd[5]~5  & ((!\Add2~22COUT1_100 ) # (!\Mult2|auto_generated|mac_out1~DATAOUT5 ))))

	.clk(\clk~combout ),
	.dataa(\Badd[5]~5 ),
	.datab(\Mult2|auto_generated|mac_out1~DATAOUT5 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add2~12 ),
	.cin0(\Add2~22 ),
	.cin1(\Add2~22COUT1_100 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add2~25 ),
	.regout(\B[5]~reg0_regout ),
	.cout(),
	.cout0(\Add2~27 ),
	.cout1(\Add2~27COUT1_102 ));
// synopsys translate_off
defparam \B[5]~reg0 .cin0_used = "true";
defparam \B[5]~reg0 .cin1_used = "true";
defparam \B[5]~reg0 .cin_used = "true";
defparam \B[5]~reg0 .lut_mask = "9617";
defparam \B[5]~reg0 .operation_mode = "arithmetic";
defparam \B[5]~reg0 .output_mode = "reg_and_comb";
defparam \B[5]~reg0 .register_cascade_mode = "off";
defparam \B[5]~reg0 .sum_lutc_input = "cin";
defparam \B[5]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X41_Y14_N7
stratix_lcell \B_reg[5] (
// Equation(s):
// \Badd[5]~5  = (!\present_state.S1~regout  & (((B_reg[5] & \present_state.S0~regout ))))

	.clk(\clk~combout ),
	.dataa(\present_state.S1~regout ),
	.datab(vcc),
	.datac(\Add2~25 ),
	.datad(\present_state.S0~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Badd[5]~5 ),
	.regout(B_reg[5]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \B_reg[5] .lut_mask = "5000";
defparam \B_reg[5] .operation_mode = "normal";
defparam \B_reg[5] .output_mode = "comb_only";
defparam \B_reg[5] .register_cascade_mode = "off";
defparam \B_reg[5] .sum_lutc_input = "qfbk";
defparam \B_reg[5] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X41_Y16_N8
stratix_lcell \B[6]~reg0 (
// Equation(s):
// \Add2~30  = \Mult2|auto_generated|mac_out1~DATAOUT6  $ (\Badd[6]~6  $ ((!(!\Add2~12  & \Add2~27 ) # (\Add2~12  & \Add2~27COUT1_102 ))))
// \B[6]~reg0_regout  = DFFEAS(\Add2~30 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add2~32  = CARRY((\Mult2|auto_generated|mac_out1~DATAOUT6  & ((\Badd[6]~6 ) # (!\Add2~27 ))) # (!\Mult2|auto_generated|mac_out1~DATAOUT6  & (\Badd[6]~6  & !\Add2~27 )))
// \Add2~32COUT1_104  = CARRY((\Mult2|auto_generated|mac_out1~DATAOUT6  & ((\Badd[6]~6 ) # (!\Add2~27COUT1_102 ))) # (!\Mult2|auto_generated|mac_out1~DATAOUT6  & (\Badd[6]~6  & !\Add2~27COUT1_102 )))

	.clk(\clk~combout ),
	.dataa(\Mult2|auto_generated|mac_out1~DATAOUT6 ),
	.datab(\Badd[6]~6 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add2~12 ),
	.cin0(\Add2~27 ),
	.cin1(\Add2~27COUT1_102 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add2~30 ),
	.regout(\B[6]~reg0_regout ),
	.cout(),
	.cout0(\Add2~32 ),
	.cout1(\Add2~32COUT1_104 ));
// synopsys translate_off
defparam \B[6]~reg0 .cin0_used = "true";
defparam \B[6]~reg0 .cin1_used = "true";
defparam \B[6]~reg0 .cin_used = "true";
defparam \B[6]~reg0 .lut_mask = "698e";
defparam \B[6]~reg0 .operation_mode = "arithmetic";
defparam \B[6]~reg0 .output_mode = "reg_and_comb";
defparam \B[6]~reg0 .register_cascade_mode = "off";
defparam \B[6]~reg0 .sum_lutc_input = "cin";
defparam \B[6]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X41_Y16_N1
stratix_lcell \B_reg[6] (
// Equation(s):
// \Badd[6]~6  = (\present_state.S1~regout ) # (((B_reg[6])) # (!\present_state.S0~regout ))

	.clk(\clk~combout ),
	.dataa(\present_state.S1~regout ),
	.datab(\present_state.S0~regout ),
	.datac(\Add2~30 ),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Badd[6]~6 ),
	.regout(B_reg[6]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \B_reg[6] .lut_mask = "fbfb";
defparam \B_reg[6] .operation_mode = "normal";
defparam \B_reg[6] .output_mode = "comb_only";
defparam \B_reg[6] .register_cascade_mode = "off";
defparam \B_reg[6] .sum_lutc_input = "qfbk";
defparam \B_reg[6] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X41_Y16_N9
stratix_lcell \B[7]~reg0 (
// Equation(s):
// \Add2~35  = \Badd[7]~7  $ (\Mult2|auto_generated|mac_out1~DATAOUT7  $ (((!\Add2~12  & \Add2~32 ) # (\Add2~12  & \Add2~32COUT1_104 ))))
// \B[7]~reg0_regout  = DFFEAS(\Add2~35 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add2~37  = CARRY((\Badd[7]~7  & (!\Mult2|auto_generated|mac_out1~DATAOUT7  & !\Add2~32COUT1_104 )) # (!\Badd[7]~7  & ((!\Add2~32COUT1_104 ) # (!\Mult2|auto_generated|mac_out1~DATAOUT7 ))))

	.clk(\clk~combout ),
	.dataa(\Badd[7]~7 ),
	.datab(\Mult2|auto_generated|mac_out1~DATAOUT7 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add2~12 ),
	.cin0(\Add2~32 ),
	.cin1(\Add2~32COUT1_104 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add2~35 ),
	.regout(\B[7]~reg0_regout ),
	.cout(\Add2~37 ),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \B[7]~reg0 .cin0_used = "true";
defparam \B[7]~reg0 .cin1_used = "true";
defparam \B[7]~reg0 .cin_used = "true";
defparam \B[7]~reg0 .lut_mask = "9617";
defparam \B[7]~reg0 .operation_mode = "arithmetic";
defparam \B[7]~reg0 .output_mode = "reg_and_comb";
defparam \B[7]~reg0 .register_cascade_mode = "off";
defparam \B[7]~reg0 .sum_lutc_input = "cin";
defparam \B[7]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X41_Y16_N0
stratix_lcell \B_reg[7] (
// Equation(s):
// \Badd[7]~7  = (!\present_state.S1~regout  & (\present_state.S0~regout  & (B_reg[7])))

	.clk(\clk~combout ),
	.dataa(\present_state.S1~regout ),
	.datab(\present_state.S0~regout ),
	.datac(\Add2~35 ),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Badd[7]~7 ),
	.regout(B_reg[7]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \B_reg[7] .lut_mask = "4040";
defparam \B_reg[7] .operation_mode = "normal";
defparam \B_reg[7] .output_mode = "comb_only";
defparam \B_reg[7] .register_cascade_mode = "off";
defparam \B_reg[7] .sum_lutc_input = "qfbk";
defparam \B_reg[7] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X41_Y15_N0
stratix_lcell \B[8]~reg0 (
// Equation(s):
// \Add2~40  = \Badd[8]~8  $ (\Mult2|auto_generated|mac_out1~DATAOUT8  $ ((!\Add2~37 )))
// \B[8]~reg0_regout  = DFFEAS(\Add2~40 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add2~42  = CARRY((\Badd[8]~8  & ((\Mult2|auto_generated|mac_out1~DATAOUT8 ) # (!\Add2~37 ))) # (!\Badd[8]~8  & (\Mult2|auto_generated|mac_out1~DATAOUT8  & !\Add2~37 )))
// \Add2~42COUT1_106  = CARRY((\Badd[8]~8  & ((\Mult2|auto_generated|mac_out1~DATAOUT8 ) # (!\Add2~37 ))) # (!\Badd[8]~8  & (\Mult2|auto_generated|mac_out1~DATAOUT8  & !\Add2~37 )))

	.clk(\clk~combout ),
	.dataa(\Badd[8]~8 ),
	.datab(\Mult2|auto_generated|mac_out1~DATAOUT8 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add2~37 ),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add2~40 ),
	.regout(\B[8]~reg0_regout ),
	.cout(),
	.cout0(\Add2~42 ),
	.cout1(\Add2~42COUT1_106 ));
// synopsys translate_off
defparam \B[8]~reg0 .cin_used = "true";
defparam \B[8]~reg0 .lut_mask = "698e";
defparam \B[8]~reg0 .operation_mode = "arithmetic";
defparam \B[8]~reg0 .output_mode = "reg_and_comb";
defparam \B[8]~reg0 .register_cascade_mode = "off";
defparam \B[8]~reg0 .sum_lutc_input = "cin";
defparam \B[8]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X41_Y14_N6
stratix_lcell \B_reg[8] (
// Equation(s):
// \Badd[8]~8  = (!\present_state.S1~regout  & (((B_reg[8] & \present_state.S0~regout ))))

	.clk(\clk~combout ),
	.dataa(\present_state.S1~regout ),
	.datab(vcc),
	.datac(\Add2~40 ),
	.datad(\present_state.S0~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Badd[8]~8 ),
	.regout(B_reg[8]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \B_reg[8] .lut_mask = "5000";
defparam \B_reg[8] .operation_mode = "normal";
defparam \B_reg[8] .output_mode = "comb_only";
defparam \B_reg[8] .register_cascade_mode = "off";
defparam \B_reg[8] .sum_lutc_input = "qfbk";
defparam \B_reg[8] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X41_Y15_N1
stratix_lcell \B[9]~reg0 (
// Equation(s):
// \Add2~45  = \Badd[9]~9  $ (\Mult2|auto_generated|mac_out1~DATAOUT9  $ (((!\Add2~37  & \Add2~42 ) # (\Add2~37  & \Add2~42COUT1_106 ))))
// \B[9]~reg0_regout  = DFFEAS(\Add2~45 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add2~47  = CARRY((\Badd[9]~9  & (!\Mult2|auto_generated|mac_out1~DATAOUT9  & !\Add2~42 )) # (!\Badd[9]~9  & ((!\Add2~42 ) # (!\Mult2|auto_generated|mac_out1~DATAOUT9 ))))
// \Add2~47COUT1_108  = CARRY((\Badd[9]~9  & (!\Mult2|auto_generated|mac_out1~DATAOUT9  & !\Add2~42COUT1_106 )) # (!\Badd[9]~9  & ((!\Add2~42COUT1_106 ) # (!\Mult2|auto_generated|mac_out1~DATAOUT9 ))))

	.clk(\clk~combout ),
	.dataa(\Badd[9]~9 ),
	.datab(\Mult2|auto_generated|mac_out1~DATAOUT9 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add2~37 ),
	.cin0(\Add2~42 ),
	.cin1(\Add2~42COUT1_106 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add2~45 ),
	.regout(\B[9]~reg0_regout ),
	.cout(),
	.cout0(\Add2~47 ),
	.cout1(\Add2~47COUT1_108 ));
// synopsys translate_off
defparam \B[9]~reg0 .cin0_used = "true";
defparam \B[9]~reg0 .cin1_used = "true";
defparam \B[9]~reg0 .cin_used = "true";
defparam \B[9]~reg0 .lut_mask = "9617";
defparam \B[9]~reg0 .operation_mode = "arithmetic";
defparam \B[9]~reg0 .output_mode = "reg_and_comb";
defparam \B[9]~reg0 .register_cascade_mode = "off";
defparam \B[9]~reg0 .sum_lutc_input = "cin";
defparam \B[9]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X41_Y14_N2
stratix_lcell \B_reg[9] (
// Equation(s):
// \Badd[9]~9  = (\present_state.S1~regout ) # (((B_reg[9]) # (!\present_state.S0~regout )))

	.clk(\clk~combout ),
	.dataa(\present_state.S1~regout ),
	.datab(vcc),
	.datac(\Add2~45 ),
	.datad(\present_state.S0~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Badd[9]~9 ),
	.regout(B_reg[9]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \B_reg[9] .lut_mask = "faff";
defparam \B_reg[9] .operation_mode = "normal";
defparam \B_reg[9] .output_mode = "comb_only";
defparam \B_reg[9] .register_cascade_mode = "off";
defparam \B_reg[9] .sum_lutc_input = "qfbk";
defparam \B_reg[9] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X41_Y15_N2
stratix_lcell \B[10]~reg0 (
// Equation(s):
// \Add2~50  = \Mult2|auto_generated|mac_out1~DATAOUT10  $ (\Badd[10]~10  $ ((!(!\Add2~37  & \Add2~47 ) # (\Add2~37  & \Add2~47COUT1_108 ))))
// \B[10]~reg0_regout  = DFFEAS(\Add2~50 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add2~52  = CARRY((\Mult2|auto_generated|mac_out1~DATAOUT10  & ((\Badd[10]~10 ) # (!\Add2~47 ))) # (!\Mult2|auto_generated|mac_out1~DATAOUT10  & (\Badd[10]~10  & !\Add2~47 )))
// \Add2~52COUT1_110  = CARRY((\Mult2|auto_generated|mac_out1~DATAOUT10  & ((\Badd[10]~10 ) # (!\Add2~47COUT1_108 ))) # (!\Mult2|auto_generated|mac_out1~DATAOUT10  & (\Badd[10]~10  & !\Add2~47COUT1_108 )))

	.clk(\clk~combout ),
	.dataa(\Mult2|auto_generated|mac_out1~DATAOUT10 ),
	.datab(\Badd[10]~10 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add2~37 ),
	.cin0(\Add2~47 ),
	.cin1(\Add2~47COUT1_108 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add2~50 ),
	.regout(\B[10]~reg0_regout ),
	.cout(),
	.cout0(\Add2~52 ),
	.cout1(\Add2~52COUT1_110 ));
// synopsys translate_off
defparam \B[10]~reg0 .cin0_used = "true";
defparam \B[10]~reg0 .cin1_used = "true";
defparam \B[10]~reg0 .cin_used = "true";
defparam \B[10]~reg0 .lut_mask = "698e";
defparam \B[10]~reg0 .operation_mode = "arithmetic";
defparam \B[10]~reg0 .output_mode = "reg_and_comb";
defparam \B[10]~reg0 .register_cascade_mode = "off";
defparam \B[10]~reg0 .sum_lutc_input = "cin";
defparam \B[10]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X41_Y14_N3
stratix_lcell \B_reg[10] (
// Equation(s):
// \Badd[10]~10  = (!\present_state.S1~regout  & (((B_reg[10] & \present_state.S0~regout ))))

	.clk(\clk~combout ),
	.dataa(\present_state.S1~regout ),
	.datab(vcc),
	.datac(\Add2~50 ),
	.datad(\present_state.S0~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Badd[10]~10 ),
	.regout(B_reg[10]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \B_reg[10] .lut_mask = "5000";
defparam \B_reg[10] .operation_mode = "normal";
defparam \B_reg[10] .output_mode = "comb_only";
defparam \B_reg[10] .register_cascade_mode = "off";
defparam \B_reg[10] .sum_lutc_input = "qfbk";
defparam \B_reg[10] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X41_Y15_N3
stratix_lcell \B[11]~reg0 (
// Equation(s):
// \Add2~55  = \Mult2|auto_generated|mac_out1~DATAOUT11  $ (\Badd[11]~11  $ (((!\Add2~37  & \Add2~52 ) # (\Add2~37  & \Add2~52COUT1_110 ))))
// \B[11]~reg0_regout  = DFFEAS(\Add2~55 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add2~57  = CARRY((\Mult2|auto_generated|mac_out1~DATAOUT11  & (!\Badd[11]~11  & !\Add2~52 )) # (!\Mult2|auto_generated|mac_out1~DATAOUT11  & ((!\Add2~52 ) # (!\Badd[11]~11 ))))
// \Add2~57COUT1_112  = CARRY((\Mult2|auto_generated|mac_out1~DATAOUT11  & (!\Badd[11]~11  & !\Add2~52COUT1_110 )) # (!\Mult2|auto_generated|mac_out1~DATAOUT11  & ((!\Add2~52COUT1_110 ) # (!\Badd[11]~11 ))))

	.clk(\clk~combout ),
	.dataa(\Mult2|auto_generated|mac_out1~DATAOUT11 ),
	.datab(\Badd[11]~11 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add2~37 ),
	.cin0(\Add2~52 ),
	.cin1(\Add2~52COUT1_110 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add2~55 ),
	.regout(\B[11]~reg0_regout ),
	.cout(),
	.cout0(\Add2~57 ),
	.cout1(\Add2~57COUT1_112 ));
// synopsys translate_off
defparam \B[11]~reg0 .cin0_used = "true";
defparam \B[11]~reg0 .cin1_used = "true";
defparam \B[11]~reg0 .cin_used = "true";
defparam \B[11]~reg0 .lut_mask = "9617";
defparam \B[11]~reg0 .operation_mode = "arithmetic";
defparam \B[11]~reg0 .output_mode = "reg_and_comb";
defparam \B[11]~reg0 .register_cascade_mode = "off";
defparam \B[11]~reg0 .sum_lutc_input = "cin";
defparam \B[11]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X41_Y14_N5
stratix_lcell \B_reg[11] (
// Equation(s):
// \Badd[11]~11  = (!\present_state.S1~regout  & (((B_reg[11] & \present_state.S0~regout ))))

	.clk(\clk~combout ),
	.dataa(\present_state.S1~regout ),
	.datab(vcc),
	.datac(\Add2~55 ),
	.datad(\present_state.S0~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Badd[11]~11 ),
	.regout(B_reg[11]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \B_reg[11] .lut_mask = "5000";
defparam \B_reg[11] .operation_mode = "normal";
defparam \B_reg[11] .output_mode = "comb_only";
defparam \B_reg[11] .register_cascade_mode = "off";
defparam \B_reg[11] .sum_lutc_input = "qfbk";
defparam \B_reg[11] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X41_Y15_N4
stratix_lcell \B[12]~reg0 (
// Equation(s):
// \Add2~60  = \Mult2|auto_generated|mac_out1~DATAOUT12  $ (\Badd[12]~12  $ ((!(!\Add2~37  & \Add2~57 ) # (\Add2~37  & \Add2~57COUT1_112 ))))
// \B[12]~reg0_regout  = DFFEAS(\Add2~60 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add2~62  = CARRY((\Mult2|auto_generated|mac_out1~DATAOUT12  & ((\Badd[12]~12 ) # (!\Add2~57COUT1_112 ))) # (!\Mult2|auto_generated|mac_out1~DATAOUT12  & (\Badd[12]~12  & !\Add2~57COUT1_112 )))

	.clk(\clk~combout ),
	.dataa(\Mult2|auto_generated|mac_out1~DATAOUT12 ),
	.datab(\Badd[12]~12 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add2~37 ),
	.cin0(\Add2~57 ),
	.cin1(\Add2~57COUT1_112 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add2~60 ),
	.regout(\B[12]~reg0_regout ),
	.cout(\Add2~62 ),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \B[12]~reg0 .cin0_used = "true";
defparam \B[12]~reg0 .cin1_used = "true";
defparam \B[12]~reg0 .cin_used = "true";
defparam \B[12]~reg0 .lut_mask = "698e";
defparam \B[12]~reg0 .operation_mode = "arithmetic";
defparam \B[12]~reg0 .output_mode = "reg_and_comb";
defparam \B[12]~reg0 .register_cascade_mode = "off";
defparam \B[12]~reg0 .sum_lutc_input = "cin";
defparam \B[12]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X40_Y15_N2
stratix_lcell \B_reg[12] (
// Equation(s):
// \Badd[12]~12  = (\present_state.S0~regout  & (!\present_state.S1~regout  & (B_reg[12])))

	.clk(\clk~combout ),
	.dataa(\present_state.S0~regout ),
	.datab(\present_state.S1~regout ),
	.datac(\Add2~60 ),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Badd[12]~12 ),
	.regout(B_reg[12]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \B_reg[12] .lut_mask = "2020";
defparam \B_reg[12] .operation_mode = "normal";
defparam \B_reg[12] .output_mode = "comb_only";
defparam \B_reg[12] .register_cascade_mode = "off";
defparam \B_reg[12] .sum_lutc_input = "qfbk";
defparam \B_reg[12] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X41_Y15_N5
stratix_lcell \B[13]~reg0 (
// Equation(s):
// \Add2~65  = \Badd[13]~13  $ (\Mult2|auto_generated|mac_out1~DATAOUT13  $ ((\Add2~62 )))
// \B[13]~reg0_regout  = DFFEAS(\Add2~65 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add2~67  = CARRY((\Badd[13]~13  & (!\Mult2|auto_generated|mac_out1~DATAOUT13  & !\Add2~62 )) # (!\Badd[13]~13  & ((!\Add2~62 ) # (!\Mult2|auto_generated|mac_out1~DATAOUT13 ))))
// \Add2~67COUT1_114  = CARRY((\Badd[13]~13  & (!\Mult2|auto_generated|mac_out1~DATAOUT13  & !\Add2~62 )) # (!\Badd[13]~13  & ((!\Add2~62 ) # (!\Mult2|auto_generated|mac_out1~DATAOUT13 ))))

	.clk(\clk~combout ),
	.dataa(\Badd[13]~13 ),
	.datab(\Mult2|auto_generated|mac_out1~DATAOUT13 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add2~62 ),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add2~65 ),
	.regout(\B[13]~reg0_regout ),
	.cout(),
	.cout0(\Add2~67 ),
	.cout1(\Add2~67COUT1_114 ));
// synopsys translate_off
defparam \B[13]~reg0 .cin_used = "true";
defparam \B[13]~reg0 .lut_mask = "9617";
defparam \B[13]~reg0 .operation_mode = "arithmetic";
defparam \B[13]~reg0 .output_mode = "reg_and_comb";
defparam \B[13]~reg0 .register_cascade_mode = "off";
defparam \B[13]~reg0 .sum_lutc_input = "cin";
defparam \B[13]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X41_Y14_N4
stratix_lcell \B_reg[13] (
// Equation(s):
// \Badd[13]~13  = (\present_state.S1~regout ) # (((B_reg[13]) # (!\present_state.S0~regout )))

	.clk(\clk~combout ),
	.dataa(\present_state.S1~regout ),
	.datab(vcc),
	.datac(\Add2~65 ),
	.datad(\present_state.S0~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Badd[13]~13 ),
	.regout(B_reg[13]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \B_reg[13] .lut_mask = "faff";
defparam \B_reg[13] .operation_mode = "normal";
defparam \B_reg[13] .output_mode = "comb_only";
defparam \B_reg[13] .register_cascade_mode = "off";
defparam \B_reg[13] .sum_lutc_input = "qfbk";
defparam \B_reg[13] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X41_Y15_N6
stratix_lcell \B[14]~reg0 (
// Equation(s):
// \Add2~70  = \Badd[14]~14  $ (\Mult2|auto_generated|mac_out1~DATAOUT14  $ ((!(!\Add2~62  & \Add2~67 ) # (\Add2~62  & \Add2~67COUT1_114 ))))
// \B[14]~reg0_regout  = DFFEAS(\Add2~70 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )
// \Add2~72  = CARRY((\Badd[14]~14  & ((\Mult2|auto_generated|mac_out1~DATAOUT14 ) # (!\Add2~67 ))) # (!\Badd[14]~14  & (\Mult2|auto_generated|mac_out1~DATAOUT14  & !\Add2~67 )))
// \Add2~72COUT1_116  = CARRY((\Badd[14]~14  & ((\Mult2|auto_generated|mac_out1~DATAOUT14 ) # (!\Add2~67COUT1_114 ))) # (!\Badd[14]~14  & (\Mult2|auto_generated|mac_out1~DATAOUT14  & !\Add2~67COUT1_114 )))

	.clk(\clk~combout ),
	.dataa(\Badd[14]~14 ),
	.datab(\Mult2|auto_generated|mac_out1~DATAOUT14 ),
	.datac(vcc),
	.datad(vcc),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add2~62 ),
	.cin0(\Add2~67 ),
	.cin1(\Add2~67COUT1_114 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add2~70 ),
	.regout(\B[14]~reg0_regout ),
	.cout(),
	.cout0(\Add2~72 ),
	.cout1(\Add2~72COUT1_116 ));
// synopsys translate_off
defparam \B[14]~reg0 .cin0_used = "true";
defparam \B[14]~reg0 .cin1_used = "true";
defparam \B[14]~reg0 .cin_used = "true";
defparam \B[14]~reg0 .lut_mask = "698e";
defparam \B[14]~reg0 .operation_mode = "arithmetic";
defparam \B[14]~reg0 .output_mode = "reg_and_comb";
defparam \B[14]~reg0 .register_cascade_mode = "off";
defparam \B[14]~reg0 .sum_lutc_input = "cin";
defparam \B[14]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X41_Y15_N8
stratix_lcell \B_reg[14] (
// Equation(s):
// \Badd[14]~14  = ((!\present_state.S1~regout  & (B_reg[14] & \present_state.S0~regout )))

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(\present_state.S1~regout ),
	.datac(\Add2~70 ),
	.datad(\present_state.S0~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Badd[14]~14 ),
	.regout(B_reg[14]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \B_reg[14] .lut_mask = "3000";
defparam \B_reg[14] .operation_mode = "normal";
defparam \B_reg[14] .output_mode = "comb_only";
defparam \B_reg[14] .register_cascade_mode = "off";
defparam \B_reg[14] .sum_lutc_input = "qfbk";
defparam \B_reg[14] .synch_mode = "on";
// synopsys translate_on

// Location: LC_X41_Y15_N7
stratix_lcell \B[15]~reg0 (
// Equation(s):
// \Add2~75  = (\Badd[15]~15  $ ((!\Add2~62  & \Add2~72 ) # (\Add2~62  & \Add2~72COUT1_116 ) $ (\Mult2|auto_generated|mac_out1~DATAOUT15 )))
// \B[15]~reg0_regout  = DFFEAS(\Add2~75 , GLOBAL(\clk~combout ), !GLOBAL(\reset~combout ), , \present_state.S3~regout , , , , )

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(\Badd[15]~15 ),
	.datac(vcc),
	.datad(\Mult2|auto_generated|mac_out1~DATAOUT15 ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\present_state.S3~regout ),
	.cin(\Add2~62 ),
	.cin0(\Add2~72 ),
	.cin1(\Add2~72COUT1_116 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add2~75 ),
	.regout(\B[15]~reg0_regout ),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \B[15]~reg0 .cin0_used = "true";
defparam \B[15]~reg0 .cin1_used = "true";
defparam \B[15]~reg0 .cin_used = "true";
defparam \B[15]~reg0 .lut_mask = "c33c";
defparam \B[15]~reg0 .operation_mode = "normal";
defparam \B[15]~reg0 .output_mode = "reg_and_comb";
defparam \B[15]~reg0 .register_cascade_mode = "off";
defparam \B[15]~reg0 .sum_lutc_input = "cin";
defparam \B[15]~reg0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X41_Y15_N9
stratix_lcell \B_reg[15] (
// Equation(s):
// \Badd[15]~15  = ((!\present_state.S1~regout  & (B_reg[15] & \present_state.S0~regout )))

	.clk(\clk~combout ),
	.dataa(vcc),
	.datab(\present_state.S1~regout ),
	.datac(\Add2~75 ),
	.datad(\present_state.S0~regout ),
	.aclr(\reset~combout ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(!\present_state.S3~regout ),
	.cin(gnd),
	.cin0(gnd),
	.cin1(vcc),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Badd[15]~15 ),
	.regout(B_reg[15]),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \B_reg[15] .lut_mask = "3000";
defparam \B_reg[15] .operation_mode = "normal";
defparam \B_reg[15] .output_mode = "comb_only";
defparam \B_reg[15] .register_cascade_mode = "off";
defparam \B_reg[15] .sum_lutc_input = "qfbk";
defparam \B_reg[15] .synch_mode = "on";
// synopsys translate_on

// Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \R[0]~I (
	.datain(\R[0]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(R[0]),
	.dqsundelayedout());
// synopsys translate_off
defparam \R[0]~I .ddio_mode = "none";
defparam \R[0]~I .input_async_reset = "none";
defparam \R[0]~I .input_power_up = "low";
defparam \R[0]~I .input_register_mode = "none";
defparam \R[0]~I .input_sync_reset = "none";
defparam \R[0]~I .oe_async_reset = "none";
defparam \R[0]~I .oe_power_up = "low";
defparam \R[0]~I .oe_register_mode = "none";
defparam \R[0]~I .oe_sync_reset = "none";
defparam \R[0]~I .operation_mode = "output";
defparam \R[0]~I .output_async_reset = "none";
defparam \R[0]~I .output_power_up = "low";
defparam \R[0]~I .output_register_mode = "none";
defparam \R[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \R[1]~I (
	.datain(\R[1]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(R[1]),
	.dqsundelayedout());
// synopsys translate_off
defparam \R[1]~I .ddio_mode = "none";
defparam \R[1]~I .input_async_reset = "none";
defparam \R[1]~I .input_power_up = "low";
defparam \R[1]~I .input_register_mode = "none";
defparam \R[1]~I .input_sync_reset = "none";
defparam \R[1]~I .oe_async_reset = "none";
defparam \R[1]~I .oe_power_up = "low";
defparam \R[1]~I .oe_register_mode = "none";
defparam \R[1]~I .oe_sync_reset = "none";
defparam \R[1]~I .operation_mode = "output";
defparam \R[1]~I .output_async_reset = "none";
defparam \R[1]~I .output_power_up = "low";
defparam \R[1]~I .output_register_mode = "none";
defparam \R[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \R[2]~I (
	.datain(\R[2]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(R[2]),
	.dqsundelayedout());
// synopsys translate_off
defparam \R[2]~I .ddio_mode = "none";
defparam \R[2]~I .input_async_reset = "none";
defparam \R[2]~I .input_power_up = "low";
defparam \R[2]~I .input_register_mode = "none";
defparam \R[2]~I .input_sync_reset = "none";
defparam \R[2]~I .oe_async_reset = "none";
defparam \R[2]~I .oe_power_up = "low";
defparam \R[2]~I .oe_register_mode = "none";
defparam \R[2]~I .oe_sync_reset = "none";
defparam \R[2]~I .operation_mode = "output";
defparam \R[2]~I .output_async_reset = "none";
defparam \R[2]~I .output_power_up = "low";
defparam \R[2]~I .output_register_mode = "none";
defparam \R[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \R[3]~I (
	.datain(\R[3]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(R[3]),
	.dqsundelayedout());
// synopsys translate_off
defparam \R[3]~I .ddio_mode = "none";
defparam \R[3]~I .input_async_reset = "none";
defparam \R[3]~I .input_power_up = "low";
defparam \R[3]~I .input_register_mode = "none";
defparam \R[3]~I .input_sync_reset = "none";
defparam \R[3]~I .oe_async_reset = "none";
defparam \R[3]~I .oe_power_up = "low";
defparam \R[3]~I .oe_register_mode = "none";
defparam \R[3]~I .oe_sync_reset = "none";
defparam \R[3]~I .operation_mode = "output";
defparam \R[3]~I .output_async_reset = "none";
defparam \R[3]~I .output_power_up = "low";
defparam \R[3]~I .output_register_mode = "none";
defparam \R[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \R[4]~I (
	.datain(\R[4]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(R[4]),
	.dqsundelayedout());
// synopsys translate_off
defparam \R[4]~I .ddio_mode = "none";
defparam \R[4]~I .input_async_reset = "none";
defparam \R[4]~I .input_power_up = "low";
defparam \R[4]~I .input_register_mode = "none";
defparam \R[4]~I .input_sync_reset = "none";
defparam \R[4]~I .oe_async_reset = "none";
defparam \R[4]~I .oe_power_up = "low";
defparam \R[4]~I .oe_register_mode = "none";
defparam \R[4]~I .oe_sync_reset = "none";
defparam \R[4]~I .operation_mode = "output";
defparam \R[4]~I .output_async_reset = "none";
defparam \R[4]~I .output_power_up = "low";
defparam \R[4]~I .output_register_mode = "none";
defparam \R[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \R[5]~I (
	.datain(\R[5]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(R[5]),
	.dqsundelayedout());
// synopsys translate_off
defparam \R[5]~I .ddio_mode = "none";
defparam \R[5]~I .input_async_reset = "none";
defparam \R[5]~I .input_power_up = "low";
defparam \R[5]~I .input_register_mode = "none";
defparam \R[5]~I .input_sync_reset = "none";
defparam \R[5]~I .oe_async_reset = "none";
defparam \R[5]~I .oe_power_up = "low";
defparam \R[5]~I .oe_register_mode = "none";
defparam \R[5]~I .oe_sync_reset = "none";
defparam \R[5]~I .operation_mode = "output";
defparam \R[5]~I .output_async_reset = "none";
defparam \R[5]~I .output_power_up = "low";
defparam \R[5]~I .output_register_mode = "none";
defparam \R[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \R[6]~I (
	.datain(\R[6]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(R[6]),
	.dqsundelayedout());
// synopsys translate_off
defparam \R[6]~I .ddio_mode = "none";
defparam \R[6]~I .input_async_reset = "none";
defparam \R[6]~I .input_power_up = "low";
defparam \R[6]~I .input_register_mode = "none";
defparam \R[6]~I .input_sync_reset = "none";
defparam \R[6]~I .oe_async_reset = "none";
defparam \R[6]~I .oe_power_up = "low";
defparam \R[6]~I .oe_register_mode = "none";
defparam \R[6]~I .oe_sync_reset = "none";
defparam \R[6]~I .operation_mode = "output";
defparam \R[6]~I .output_async_reset = "none";
defparam \R[6]~I .output_power_up = "low";
defparam \R[6]~I .output_register_mode = "none";
defparam \R[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \R[7]~I (
	.datain(\R[7]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(R[7]),
	.dqsundelayedout());
// synopsys translate_off
defparam \R[7]~I .ddio_mode = "none";
defparam \R[7]~I .input_async_reset = "none";
defparam \R[7]~I .input_power_up = "low";
defparam \R[7]~I .input_register_mode = "none";
defparam \R[7]~I .input_sync_reset = "none";
defparam \R[7]~I .oe_async_reset = "none";
defparam \R[7]~I .oe_power_up = "low";
defparam \R[7]~I .oe_register_mode = "none";
defparam \R[7]~I .oe_sync_reset = "none";
defparam \R[7]~I .operation_mode = "output";
defparam \R[7]~I .output_async_reset = "none";
defparam \R[7]~I .output_power_up = "low";
defparam \R[7]~I .output_register_mode = "none";
defparam \R[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \R[8]~I (
	.datain(\R[8]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(R[8]),
	.dqsundelayedout());
// synopsys translate_off
defparam \R[8]~I .ddio_mode = "none";
defparam \R[8]~I .input_async_reset = "none";
defparam \R[8]~I .input_power_up = "low";
defparam \R[8]~I .input_register_mode = "none";
defparam \R[8]~I .input_sync_reset = "none";
defparam \R[8]~I .oe_async_reset = "none";
defparam \R[8]~I .oe_power_up = "low";
defparam \R[8]~I .oe_register_mode = "none";
defparam \R[8]~I .oe_sync_reset = "none";
defparam \R[8]~I .operation_mode = "output";
defparam \R[8]~I .output_async_reset = "none";
defparam \R[8]~I .output_power_up = "low";
defparam \R[8]~I .output_register_mode = "none";
defparam \R[8]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AH9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \R[9]~I (
	.datain(\R[9]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(R[9]),
	.dqsundelayedout());
// synopsys translate_off
defparam \R[9]~I .ddio_mode = "none";
defparam \R[9]~I .input_async_reset = "none";
defparam \R[9]~I .input_power_up = "low";
defparam \R[9]~I .input_register_mode = "none";
defparam \R[9]~I .input_sync_reset = "none";
defparam \R[9]~I .oe_async_reset = "none";
defparam \R[9]~I .oe_power_up = "low";
defparam \R[9]~I .oe_register_mode = "none";
defparam \R[9]~I .oe_sync_reset = "none";
defparam \R[9]~I .operation_mode = "output";
defparam \R[9]~I .output_async_reset = "none";
defparam \R[9]~I .output_power_up = "low";
defparam \R[9]~I .output_register_mode = "none";
defparam \R[9]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AG9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \R[10]~I (
	.datain(\R[10]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(R[10]),
	.dqsundelayedout());
// synopsys translate_off
defparam \R[10]~I .ddio_mode = "none";
defparam \R[10]~I .input_async_reset = "none";
defparam \R[10]~I .input_power_up = "low";
defparam \R[10]~I .input_register_mode = "none";
defparam \R[10]~I .input_sync_reset = "none";
defparam \R[10]~I .oe_async_reset = "none";
defparam \R[10]~I .oe_power_up = "low";
defparam \R[10]~I .oe_register_mode = "none";
defparam \R[10]~I .oe_sync_reset = "none";
defparam \R[10]~I .operation_mode = "output";
defparam \R[10]~I .output_async_reset = "none";
defparam \R[10]~I .output_power_up = "low";
defparam \R[10]~I .output_register_mode = "none";
defparam \R[10]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \R[11]~I (
	.datain(\R[11]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(R[11]),
	.dqsundelayedout());
// synopsys translate_off
defparam \R[11]~I .ddio_mode = "none";
defparam \R[11]~I .input_async_reset = "none";
defparam \R[11]~I .input_power_up = "low";
defparam \R[11]~I .input_register_mode = "none";
defparam \R[11]~I .input_sync_reset = "none";
defparam \R[11]~I .oe_async_reset = "none";
defparam \R[11]~I .oe_power_up = "low";
defparam \R[11]~I .oe_register_mode = "none";
defparam \R[11]~I .oe_sync_reset = "none";
defparam \R[11]~I .operation_mode = "output";
defparam \R[11]~I .output_async_reset = "none";
defparam \R[11]~I .output_power_up = "low";
defparam \R[11]~I .output_register_mode = "none";
defparam \R[11]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \R[12]~I (
	.datain(\R[12]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(R[12]),
	.dqsundelayedout());
// synopsys translate_off
defparam \R[12]~I .ddio_mode = "none";
defparam \R[12]~I .input_async_reset = "none";
defparam \R[12]~I .input_power_up = "low";
defparam \R[12]~I .input_register_mode = "none";
defparam \R[12]~I .input_sync_reset = "none";
defparam \R[12]~I .oe_async_reset = "none";
defparam \R[12]~I .oe_power_up = "low";
defparam \R[12]~I .oe_register_mode = "none";
defparam \R[12]~I .oe_sync_reset = "none";
defparam \R[12]~I .operation_mode = "output";
defparam \R[12]~I .output_async_reset = "none";
defparam \R[12]~I .output_power_up = "low";
defparam \R[12]~I .output_register_mode = "none";
defparam \R[12]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \R[13]~I (
	.datain(\R[13]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(R[13]),
	.dqsundelayedout());
// synopsys translate_off
defparam \R[13]~I .ddio_mode = "none";
defparam \R[13]~I .input_async_reset = "none";
defparam \R[13]~I .input_power_up = "low";
defparam \R[13]~I .input_register_mode = "none";
defparam \R[13]~I .input_sync_reset = "none";
defparam \R[13]~I .oe_async_reset = "none";
defparam \R[13]~I .oe_power_up = "low";
defparam \R[13]~I .oe_register_mode = "none";
defparam \R[13]~I .oe_sync_reset = "none";
defparam \R[13]~I .operation_mode = "output";
defparam \R[13]~I .output_async_reset = "none";
defparam \R[13]~I .output_power_up = "low";
defparam \R[13]~I .output_register_mode = "none";
defparam \R[13]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \R[14]~I (
	.datain(\R[14]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(R[14]),
	.dqsundelayedout());
// synopsys translate_off
defparam \R[14]~I .ddio_mode = "none";
defparam \R[14]~I .input_async_reset = "none";
defparam \R[14]~I .input_power_up = "low";
defparam \R[14]~I .input_register_mode = "none";
defparam \R[14]~I .input_sync_reset = "none";
defparam \R[14]~I .oe_async_reset = "none";
defparam \R[14]~I .oe_power_up = "low";
defparam \R[14]~I .oe_register_mode = "none";
defparam \R[14]~I .oe_sync_reset = "none";
defparam \R[14]~I .operation_mode = "output";
defparam \R[14]~I .output_async_reset = "none";
defparam \R[14]~I .output_power_up = "low";
defparam \R[14]~I .output_register_mode = "none";
defparam \R[14]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \R[15]~I (
	.datain(\R[15]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(R[15]),
	.dqsundelayedout());
// synopsys translate_off
defparam \R[15]~I .ddio_mode = "none";
defparam \R[15]~I .input_async_reset = "none";
defparam \R[15]~I .input_power_up = "low";
defparam \R[15]~I .input_register_mode = "none";
defparam \R[15]~I .input_sync_reset = "none";
defparam \R[15]~I .oe_async_reset = "none";
defparam \R[15]~I .oe_power_up = "low";
defparam \R[15]~I .oe_register_mode = "none";
defparam \R[15]~I .oe_sync_reset = "none";
defparam \R[15]~I .operation_mode = "output";
defparam \R[15]~I .output_async_reset = "none";
defparam \R[15]~I .output_power_up = "low";
defparam \R[15]~I .output_register_mode = "none";
defparam \R[15]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \G[0]~I (
	.datain(\G[0]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(G[0]),
	.dqsundelayedout());
// synopsys translate_off
defparam \G[0]~I .ddio_mode = "none";
defparam \G[0]~I .input_async_reset = "none";
defparam \G[0]~I .input_power_up = "low";
defparam \G[0]~I .input_register_mode = "none";
defparam \G[0]~I .input_sync_reset = "none";
defparam \G[0]~I .oe_async_reset = "none";
defparam \G[0]~I .oe_power_up = "low";
defparam \G[0]~I .oe_register_mode = "none";
defparam \G[0]~I .oe_sync_reset = "none";
defparam \G[0]~I .operation_mode = "output";
defparam \G[0]~I .output_async_reset = "none";
defparam \G[0]~I .output_power_up = "low";
defparam \G[0]~I .output_register_mode = "none";
defparam \G[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \G[1]~I (
	.datain(\G[1]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(G[1]),
	.dqsundelayedout());
// synopsys translate_off
defparam \G[1]~I .ddio_mode = "none";
defparam \G[1]~I .input_async_reset = "none";
defparam \G[1]~I .input_power_up = "low";
defparam \G[1]~I .input_register_mode = "none";
defparam \G[1]~I .input_sync_reset = "none";
defparam \G[1]~I .oe_async_reset = "none";
defparam \G[1]~I .oe_power_up = "low";
defparam \G[1]~I .oe_register_mode = "none";
defparam \G[1]~I .oe_sync_reset = "none";
defparam \G[1]~I .operation_mode = "output";
defparam \G[1]~I .output_async_reset = "none";
defparam \G[1]~I .output_power_up = "low";
defparam \G[1]~I .output_register_mode = "none";
defparam \G[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \G[2]~I (
	.datain(\G[2]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(G[2]),
	.dqsundelayedout());
// synopsys translate_off
defparam \G[2]~I .ddio_mode = "none";
defparam \G[2]~I .input_async_reset = "none";
defparam \G[2]~I .input_power_up = "low";
defparam \G[2]~I .input_register_mode = "none";
defparam \G[2]~I .input_sync_reset = "none";
defparam \G[2]~I .oe_async_reset = "none";
defparam \G[2]~I .oe_power_up = "low";
defparam \G[2]~I .oe_register_mode = "none";
defparam \G[2]~I .oe_sync_reset = "none";
defparam \G[2]~I .operation_mode = "output";
defparam \G[2]~I .output_async_reset = "none";
defparam \G[2]~I .output_power_up = "low";
defparam \G[2]~I .output_register_mode = "none";
defparam \G[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \G[3]~I (
	.datain(\G[3]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(G[3]),
	.dqsundelayedout());
// synopsys translate_off
defparam \G[3]~I .ddio_mode = "none";
defparam \G[3]~I .input_async_reset = "none";
defparam \G[3]~I .input_power_up = "low";
defparam \G[3]~I .input_register_mode = "none";
defparam \G[3]~I .input_sync_reset = "none";
defparam \G[3]~I .oe_async_reset = "none";
defparam \G[3]~I .oe_power_up = "low";
defparam \G[3]~I .oe_register_mode = "none";
defparam \G[3]~I .oe_sync_reset = "none";
defparam \G[3]~I .operation_mode = "output";
defparam \G[3]~I .output_async_reset = "none";
defparam \G[3]~I .output_power_up = "low";
defparam \G[3]~I .output_register_mode = "none";
defparam \G[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \G[4]~I (
	.datain(\G[4]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(G[4]),
	.dqsundelayedout());
// synopsys translate_off
defparam \G[4]~I .ddio_mode = "none";
defparam \G[4]~I .input_async_reset = "none";
defparam \G[4]~I .input_power_up = "low";
defparam \G[4]~I .input_register_mode = "none";
defparam \G[4]~I .input_sync_reset = "none";
defparam \G[4]~I .oe_async_reset = "none";
defparam \G[4]~I .oe_power_up = "low";
defparam \G[4]~I .oe_register_mode = "none";
defparam \G[4]~I .oe_sync_reset = "none";
defparam \G[4]~I .operation_mode = "output";
defparam \G[4]~I .output_async_reset = "none";
defparam \G[4]~I .output_power_up = "low";
defparam \G[4]~I .output_register_mode = "none";
defparam \G[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \G[5]~I (
	.datain(\G[5]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(G[5]),
	.dqsundelayedout());
// synopsys translate_off
defparam \G[5]~I .ddio_mode = "none";
defparam \G[5]~I .input_async_reset = "none";
defparam \G[5]~I .input_power_up = "low";
defparam \G[5]~I .input_register_mode = "none";
defparam \G[5]~I .input_sync_reset = "none";
defparam \G[5]~I .oe_async_reset = "none";
defparam \G[5]~I .oe_power_up = "low";
defparam \G[5]~I .oe_register_mode = "none";
defparam \G[5]~I .oe_sync_reset = "none";
defparam \G[5]~I .operation_mode = "output";
defparam \G[5]~I .output_async_reset = "none";
defparam \G[5]~I .output_power_up = "low";
defparam \G[5]~I .output_register_mode = "none";
defparam \G[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \G[6]~I (
	.datain(\G[6]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(G[6]),
	.dqsundelayedout());
// synopsys translate_off
defparam \G[6]~I .ddio_mode = "none";
defparam \G[6]~I .input_async_reset = "none";
defparam \G[6]~I .input_power_up = "low";
defparam \G[6]~I .input_register_mode = "none";
defparam \G[6]~I .input_sync_reset = "none";
defparam \G[6]~I .oe_async_reset = "none";
defparam \G[6]~I .oe_power_up = "low";
defparam \G[6]~I .oe_register_mode = "none";
defparam \G[6]~I .oe_sync_reset = "none";
defparam \G[6]~I .operation_mode = "output";
defparam \G[6]~I .output_async_reset = "none";
defparam \G[6]~I .output_power_up = "low";
defparam \G[6]~I .output_register_mode = "none";
defparam \G[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \G[7]~I (
	.datain(\G[7]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(G[7]),
	.dqsundelayedout());
// synopsys translate_off
defparam \G[7]~I .ddio_mode = "none";
defparam \G[7]~I .input_async_reset = "none";
defparam \G[7]~I .input_power_up = "low";
defparam \G[7]~I .input_register_mode = "none";
defparam \G[7]~I .input_sync_reset = "none";
defparam \G[7]~I .oe_async_reset = "none";
defparam \G[7]~I .oe_power_up = "low";
defparam \G[7]~I .oe_register_mode = "none";
defparam \G[7]~I .oe_sync_reset = "none";
defparam \G[7]~I .operation_mode = "output";
defparam \G[7]~I .output_async_reset = "none";
defparam \G[7]~I .output_power_up = "low";
defparam \G[7]~I .output_register_mode = "none";
defparam \G[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \G[8]~I (
	.datain(\G[8]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(G[8]),
	.dqsundelayedout());
// synopsys translate_off
defparam \G[8]~I .ddio_mode = "none";
defparam \G[8]~I .input_async_reset = "none";
defparam \G[8]~I .input_power_up = "low";
defparam \G[8]~I .input_register_mode = "none";
defparam \G[8]~I .input_sync_reset = "none";
defparam \G[8]~I .oe_async_reset = "none";
defparam \G[8]~I .oe_power_up = "low";
defparam \G[8]~I .oe_register_mode = "none";
defparam \G[8]~I .oe_sync_reset = "none";
defparam \G[8]~I .operation_mode = "output";
defparam \G[8]~I .output_async_reset = "none";
defparam \G[8]~I .output_power_up = "low";
defparam \G[8]~I .output_register_mode = "none";
defparam \G[8]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \G[9]~I (
	.datain(\G[9]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(G[9]),
	.dqsundelayedout());
// synopsys translate_off
defparam \G[9]~I .ddio_mode = "none";
defparam \G[9]~I .input_async_reset = "none";
defparam \G[9]~I .input_power_up = "low";
defparam \G[9]~I .input_register_mode = "none";
defparam \G[9]~I .input_sync_reset = "none";
defparam \G[9]~I .oe_async_reset = "none";
defparam \G[9]~I .oe_power_up = "low";
defparam \G[9]~I .oe_register_mode = "none";
defparam \G[9]~I .oe_sync_reset = "none";
defparam \G[9]~I .operation_mode = "output";
defparam \G[9]~I .output_async_reset = "none";
defparam \G[9]~I .output_power_up = "low";
defparam \G[9]~I .output_register_mode = "none";
defparam \G[9]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \G[10]~I (
	.datain(\G[10]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(G[10]),
	.dqsundelayedout());
// synopsys translate_off
defparam \G[10]~I .ddio_mode = "none";
defparam \G[10]~I .input_async_reset = "none";
defparam \G[10]~I .input_power_up = "low";
defparam \G[10]~I .input_register_mode = "none";
defparam \G[10]~I .input_sync_reset = "none";
defparam \G[10]~I .oe_async_reset = "none";
defparam \G[10]~I .oe_power_up = "low";
defparam \G[10]~I .oe_register_mode = "none";
defparam \G[10]~I .oe_sync_reset = "none";
defparam \G[10]~I .operation_mode = "output";
defparam \G[10]~I .output_async_reset = "none";
defparam \G[10]~I .output_power_up = "low";
defparam \G[10]~I .output_register_mode = "none";
defparam \G[10]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \G[11]~I (
	.datain(\G[11]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(G[11]),
	.dqsundelayedout());
// synopsys translate_off
defparam \G[11]~I .ddio_mode = "none";
defparam \G[11]~I .input_async_reset = "none";
defparam \G[11]~I .input_power_up = "low";
defparam \G[11]~I .input_register_mode = "none";
defparam \G[11]~I .input_sync_reset = "none";
defparam \G[11]~I .oe_async_reset = "none";
defparam \G[11]~I .oe_power_up = "low";
defparam \G[11]~I .oe_register_mode = "none";
defparam \G[11]~I .oe_sync_reset = "none";
defparam \G[11]~I .operation_mode = "output";
defparam \G[11]~I .output_async_reset = "none";
defparam \G[11]~I .output_power_up = "low";
defparam \G[11]~I .output_register_mode = "none";
defparam \G[11]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \G[12]~I (
	.datain(\G[12]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(G[12]),
	.dqsundelayedout());
// synopsys translate_off
defparam \G[12]~I .ddio_mode = "none";
defparam \G[12]~I .input_async_reset = "none";
defparam \G[12]~I .input_power_up = "low";
defparam \G[12]~I .input_register_mode = "none";
defparam \G[12]~I .input_sync_reset = "none";
defparam \G[12]~I .oe_async_reset = "none";
defparam \G[12]~I .oe_power_up = "low";
defparam \G[12]~I .oe_register_mode = "none";
defparam \G[12]~I .oe_sync_reset = "none";
defparam \G[12]~I .operation_mode = "output";
defparam \G[12]~I .output_async_reset = "none";
defparam \G[12]~I .output_power_up = "low";
defparam \G[12]~I .output_register_mode = "none";
defparam \G[12]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \G[13]~I (
	.datain(\G[13]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(G[13]),
	.dqsundelayedout());
// synopsys translate_off
defparam \G[13]~I .ddio_mode = "none";
defparam \G[13]~I .input_async_reset = "none";
defparam \G[13]~I .input_power_up = "low";
defparam \G[13]~I .input_register_mode = "none";
defparam \G[13]~I .input_sync_reset = "none";
defparam \G[13]~I .oe_async_reset = "none";
defparam \G[13]~I .oe_power_up = "low";
defparam \G[13]~I .oe_register_mode = "none";
defparam \G[13]~I .oe_sync_reset = "none";
defparam \G[13]~I .operation_mode = "output";
defparam \G[13]~I .output_async_reset = "none";
defparam \G[13]~I .output_power_up = "low";
defparam \G[13]~I .output_register_mode = "none";
defparam \G[13]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \G[14]~I (
	.datain(\G[14]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(G[14]),
	.dqsundelayedout());
// synopsys translate_off
defparam \G[14]~I .ddio_mode = "none";
defparam \G[14]~I .input_async_reset = "none";
defparam \G[14]~I .input_power_up = "low";
defparam \G[14]~I .input_register_mode = "none";
defparam \G[14]~I .input_sync_reset = "none";
defparam \G[14]~I .oe_async_reset = "none";
defparam \G[14]~I .oe_power_up = "low";
defparam \G[14]~I .oe_register_mode = "none";
defparam \G[14]~I .oe_sync_reset = "none";
defparam \G[14]~I .operation_mode = "output";
defparam \G[14]~I .output_async_reset = "none";
defparam \G[14]~I .output_power_up = "low";
defparam \G[14]~I .output_register_mode = "none";
defparam \G[14]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \G[15]~I (
	.datain(\G[15]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(G[15]),
	.dqsundelayedout());
// synopsys translate_off
defparam \G[15]~I .ddio_mode = "none";
defparam \G[15]~I .input_async_reset = "none";
defparam \G[15]~I .input_power_up = "low";
defparam \G[15]~I .input_register_mode = "none";
defparam \G[15]~I .input_sync_reset = "none";
defparam \G[15]~I .oe_async_reset = "none";
defparam \G[15]~I .oe_power_up = "low";
defparam \G[15]~I .oe_register_mode = "none";
defparam \G[15]~I .oe_sync_reset = "none";
defparam \G[15]~I .operation_mode = "output";
defparam \G[15]~I .output_async_reset = "none";
defparam \G[15]~I .output_power_up = "low";
defparam \G[15]~I .output_register_mode = "none";
defparam \G[15]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \B[0]~I (
	.datain(\B[0]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(B[0]),
	.dqsundelayedout());
// synopsys translate_off
defparam \B[0]~I .ddio_mode = "none";
defparam \B[0]~I .input_async_reset = "none";
defparam \B[0]~I .input_power_up = "low";
defparam \B[0]~I .input_register_mode = "none";
defparam \B[0]~I .input_sync_reset = "none";
defparam \B[0]~I .oe_async_reset = "none";
defparam \B[0]~I .oe_power_up = "low";
defparam \B[0]~I .oe_register_mode = "none";
defparam \B[0]~I .oe_sync_reset = "none";
defparam \B[0]~I .operation_mode = "output";
defparam \B[0]~I .output_async_reset = "none";
defparam \B[0]~I .output_power_up = "low";
defparam \B[0]~I .output_register_mode = "none";
defparam \B[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \B[1]~I (
	.datain(\B[1]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(B[1]),
	.dqsundelayedout());
// synopsys translate_off
defparam \B[1]~I .ddio_mode = "none";
defparam \B[1]~I .input_async_reset = "none";
defparam \B[1]~I .input_power_up = "low";
defparam \B[1]~I .input_register_mode = "none";
defparam \B[1]~I .input_sync_reset = "none";
defparam \B[1]~I .oe_async_reset = "none";
defparam \B[1]~I .oe_power_up = "low";
defparam \B[1]~I .oe_register_mode = "none";
defparam \B[1]~I .oe_sync_reset = "none";
defparam \B[1]~I .operation_mode = "output";
defparam \B[1]~I .output_async_reset = "none";
defparam \B[1]~I .output_power_up = "low";
defparam \B[1]~I .output_register_mode = "none";
defparam \B[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \B[2]~I (
	.datain(\B[2]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(B[2]),
	.dqsundelayedout());
// synopsys translate_off
defparam \B[2]~I .ddio_mode = "none";
defparam \B[2]~I .input_async_reset = "none";
defparam \B[2]~I .input_power_up = "low";
defparam \B[2]~I .input_register_mode = "none";
defparam \B[2]~I .input_sync_reset = "none";
defparam \B[2]~I .oe_async_reset = "none";
defparam \B[2]~I .oe_power_up = "low";
defparam \B[2]~I .oe_register_mode = "none";
defparam \B[2]~I .oe_sync_reset = "none";
defparam \B[2]~I .operation_mode = "output";
defparam \B[2]~I .output_async_reset = "none";
defparam \B[2]~I .output_power_up = "low";
defparam \B[2]~I .output_register_mode = "none";
defparam \B[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \B[3]~I (
	.datain(\B[3]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(B[3]),
	.dqsundelayedout());
// synopsys translate_off
defparam \B[3]~I .ddio_mode = "none";
defparam \B[3]~I .input_async_reset = "none";
defparam \B[3]~I .input_power_up = "low";
defparam \B[3]~I .input_register_mode = "none";
defparam \B[3]~I .input_sync_reset = "none";
defparam \B[3]~I .oe_async_reset = "none";
defparam \B[3]~I .oe_power_up = "low";
defparam \B[3]~I .oe_register_mode = "none";
defparam \B[3]~I .oe_sync_reset = "none";
defparam \B[3]~I .operation_mode = "output";
defparam \B[3]~I .output_async_reset = "none";
defparam \B[3]~I .output_power_up = "low";
defparam \B[3]~I .output_register_mode = "none";
defparam \B[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \B[4]~I (
	.datain(\B[4]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(B[4]),
	.dqsundelayedout());
// synopsys translate_off
defparam \B[4]~I .ddio_mode = "none";
defparam \B[4]~I .input_async_reset = "none";
defparam \B[4]~I .input_power_up = "low";
defparam \B[4]~I .input_register_mode = "none";
defparam \B[4]~I .input_sync_reset = "none";
defparam \B[4]~I .oe_async_reset = "none";
defparam \B[4]~I .oe_power_up = "low";
defparam \B[4]~I .oe_register_mode = "none";
defparam \B[4]~I .oe_sync_reset = "none";
defparam \B[4]~I .operation_mode = "output";
defparam \B[4]~I .output_async_reset = "none";
defparam \B[4]~I .output_power_up = "low";
defparam \B[4]~I .output_register_mode = "none";
defparam \B[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \B[5]~I (
	.datain(\B[5]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(B[5]),
	.dqsundelayedout());
// synopsys translate_off
defparam \B[5]~I .ddio_mode = "none";
defparam \B[5]~I .input_async_reset = "none";
defparam \B[5]~I .input_power_up = "low";
defparam \B[5]~I .input_register_mode = "none";
defparam \B[5]~I .input_sync_reset = "none";
defparam \B[5]~I .oe_async_reset = "none";
defparam \B[5]~I .oe_power_up = "low";
defparam \B[5]~I .oe_register_mode = "none";
defparam \B[5]~I .oe_sync_reset = "none";
defparam \B[5]~I .operation_mode = "output";
defparam \B[5]~I .output_async_reset = "none";
defparam \B[5]~I .output_power_up = "low";
defparam \B[5]~I .output_register_mode = "none";
defparam \B[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \B[6]~I (
	.datain(\B[6]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(B[6]),
	.dqsundelayedout());
// synopsys translate_off
defparam \B[6]~I .ddio_mode = "none";
defparam \B[6]~I .input_async_reset = "none";
defparam \B[6]~I .input_power_up = "low";
defparam \B[6]~I .input_register_mode = "none";
defparam \B[6]~I .input_sync_reset = "none";
defparam \B[6]~I .oe_async_reset = "none";
defparam \B[6]~I .oe_power_up = "low";
defparam \B[6]~I .oe_register_mode = "none";
defparam \B[6]~I .oe_sync_reset = "none";
defparam \B[6]~I .operation_mode = "output";
defparam \B[6]~I .output_async_reset = "none";
defparam \B[6]~I .output_power_up = "low";
defparam \B[6]~I .output_register_mode = "none";
defparam \B[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AH10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \B[7]~I (
	.datain(\B[7]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(B[7]),
	.dqsundelayedout());
// synopsys translate_off
defparam \B[7]~I .ddio_mode = "none";
defparam \B[7]~I .input_async_reset = "none";
defparam \B[7]~I .input_power_up = "low";
defparam \B[7]~I .input_register_mode = "none";
defparam \B[7]~I .input_sync_reset = "none";
defparam \B[7]~I .oe_async_reset = "none";
defparam \B[7]~I .oe_power_up = "low";
defparam \B[7]~I .oe_register_mode = "none";
defparam \B[7]~I .oe_sync_reset = "none";
defparam \B[7]~I .operation_mode = "output";
defparam \B[7]~I .output_async_reset = "none";
defparam \B[7]~I .output_power_up = "low";
defparam \B[7]~I .output_register_mode = "none";
defparam \B[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \B[8]~I (
	.datain(\B[8]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(B[8]),
	.dqsundelayedout());
// synopsys translate_off
defparam \B[8]~I .ddio_mode = "none";
defparam \B[8]~I .input_async_reset = "none";
defparam \B[8]~I .input_power_up = "low";
defparam \B[8]~I .input_register_mode = "none";
defparam \B[8]~I .input_sync_reset = "none";
defparam \B[8]~I .oe_async_reset = "none";
defparam \B[8]~I .oe_power_up = "low";
defparam \B[8]~I .oe_register_mode = "none";
defparam \B[8]~I .oe_sync_reset = "none";
defparam \B[8]~I .operation_mode = "output";
defparam \B[8]~I .output_async_reset = "none";
defparam \B[8]~I .output_power_up = "low";
defparam \B[8]~I .output_register_mode = "none";
defparam \B[8]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \B[9]~I (
	.datain(\B[9]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(B[9]),
	.dqsundelayedout());
// synopsys translate_off
defparam \B[9]~I .ddio_mode = "none";
defparam \B[9]~I .input_async_reset = "none";
defparam \B[9]~I .input_power_up = "low";
defparam \B[9]~I .input_register_mode = "none";
defparam \B[9]~I .input_sync_reset = "none";
defparam \B[9]~I .oe_async_reset = "none";
defparam \B[9]~I .oe_power_up = "low";
defparam \B[9]~I .oe_register_mode = "none";
defparam \B[9]~I .oe_sync_reset = "none";
defparam \B[9]~I .operation_mode = "output";
defparam \B[9]~I .output_async_reset = "none";
defparam \B[9]~I .output_power_up = "low";
defparam \B[9]~I .output_register_mode = "none";
defparam \B[9]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \B[10]~I (
	.datain(\B[10]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(B[10]),
	.dqsundelayedout());
// synopsys translate_off
defparam \B[10]~I .ddio_mode = "none";
defparam \B[10]~I .input_async_reset = "none";
defparam \B[10]~I .input_power_up = "low";
defparam \B[10]~I .input_register_mode = "none";
defparam \B[10]~I .input_sync_reset = "none";
defparam \B[10]~I .oe_async_reset = "none";
defparam \B[10]~I .oe_power_up = "low";
defparam \B[10]~I .oe_register_mode = "none";
defparam \B[10]~I .oe_sync_reset = "none";
defparam \B[10]~I .operation_mode = "output";
defparam \B[10]~I .output_async_reset = "none";
defparam \B[10]~I .output_power_up = "low";
defparam \B[10]~I .output_register_mode = "none";
defparam \B[10]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \B[11]~I (
	.datain(\B[11]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(B[11]),
	.dqsundelayedout());
// synopsys translate_off
defparam \B[11]~I .ddio_mode = "none";
defparam \B[11]~I .input_async_reset = "none";
defparam \B[11]~I .input_power_up = "low";
defparam \B[11]~I .input_register_mode = "none";
defparam \B[11]~I .input_sync_reset = "none";
defparam \B[11]~I .oe_async_reset = "none";
defparam \B[11]~I .oe_power_up = "low";
defparam \B[11]~I .oe_register_mode = "none";
defparam \B[11]~I .oe_sync_reset = "none";
defparam \B[11]~I .operation_mode = "output";
defparam \B[11]~I .output_async_reset = "none";
defparam \B[11]~I .output_power_up = "low";
defparam \B[11]~I .output_register_mode = "none";
defparam \B[11]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \B[12]~I (
	.datain(\B[12]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(B[12]),
	.dqsundelayedout());
// synopsys translate_off
defparam \B[12]~I .ddio_mode = "none";
defparam \B[12]~I .input_async_reset = "none";
defparam \B[12]~I .input_power_up = "low";
defparam \B[12]~I .input_register_mode = "none";
defparam \B[12]~I .input_sync_reset = "none";
defparam \B[12]~I .oe_async_reset = "none";
defparam \B[12]~I .oe_power_up = "low";
defparam \B[12]~I .oe_register_mode = "none";
defparam \B[12]~I .oe_sync_reset = "none";
defparam \B[12]~I .operation_mode = "output";
defparam \B[12]~I .output_async_reset = "none";
defparam \B[12]~I .output_power_up = "low";
defparam \B[12]~I .output_register_mode = "none";
defparam \B[12]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \B[13]~I (
	.datain(\B[13]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(B[13]),
	.dqsundelayedout());
// synopsys translate_off
defparam \B[13]~I .ddio_mode = "none";
defparam \B[13]~I .input_async_reset = "none";
defparam \B[13]~I .input_power_up = "low";
defparam \B[13]~I .input_register_mode = "none";
defparam \B[13]~I .input_sync_reset = "none";
defparam \B[13]~I .oe_async_reset = "none";
defparam \B[13]~I .oe_power_up = "low";
defparam \B[13]~I .oe_register_mode = "none";
defparam \B[13]~I .oe_sync_reset = "none";
defparam \B[13]~I .operation_mode = "output";
defparam \B[13]~I .output_async_reset = "none";
defparam \B[13]~I .output_power_up = "low";
defparam \B[13]~I .output_register_mode = "none";
defparam \B[13]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \B[14]~I (
	.datain(\B[14]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(B[14]),
	.dqsundelayedout());
// synopsys translate_off
defparam \B[14]~I .ddio_mode = "none";
defparam \B[14]~I .input_async_reset = "none";
defparam \B[14]~I .input_power_up = "low";
defparam \B[14]~I .input_register_mode = "none";
defparam \B[14]~I .input_sync_reset = "none";
defparam \B[14]~I .oe_async_reset = "none";
defparam \B[14]~I .oe_power_up = "low";
defparam \B[14]~I .oe_register_mode = "none";
defparam \B[14]~I .oe_sync_reset = "none";
defparam \B[14]~I .operation_mode = "output";
defparam \B[14]~I .output_async_reset = "none";
defparam \B[14]~I .output_power_up = "low";
defparam \B[14]~I .output_register_mode = "none";
defparam \B[14]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \B[15]~I (
	.datain(\B[15]~reg0_regout ),
	.ddiodatain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.delayctrlin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.ddioregout(),
	.padio(B[15]),
	.dqsundelayedout());
// synopsys translate_off
defparam \B[15]~I .ddio_mode = "none";
defparam \B[15]~I .input_async_reset = "none";
defparam \B[15]~I .input_power_up = "low";
defparam \B[15]~I .input_register_mode = "none";
defparam \B[15]~I .input_sync_reset = "none";
defparam \B[15]~I .oe_async_reset = "none";
defparam \B[15]~I .oe_power_up = "low";
defparam \B[15]~I .oe_register_mode = "none";
defparam \B[15]~I .oe_sync_reset = "none";
defparam \B[15]~I .operation_mode = "output";
defparam \B[15]~I .output_async_reset = "none";
defparam \B[15]~I .output_power_up = "low";
defparam \B[15]~I .output_register_mode = "none";
defparam \B[15]~I .output_sync_reset = "none";
// synopsys translate_on

endmodule
