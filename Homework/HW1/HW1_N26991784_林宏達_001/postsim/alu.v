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

// DATE "11/06/2010 20:10:36"

// 
// Device: Altera EP1S10F780C6 Package FBGA780
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module simple_alu (
	opcode,
	in1,
	in2,
	overflow,
	result);
input 	[2:0] opcode;
input 	[3:0] in1;
input 	[3:0] in2;
output 	overflow;
output 	[3:0] result;

// Design Ports Information
// overflow	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// result[0]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// result[1]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// result[2]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// result[3]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// opcode[2]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// opcode[1]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// in1[3]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// in2[3]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// opcode[0]	=>  Location: PIN_L27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// in2[2]	=>  Location: PIN_K27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// in1[0]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// in2[0]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// in2[1]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// in1[2]	=>  Location: PIN_N27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// in1[1]	=>  Location: PIN_N19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
initial $sdf_annotate("alu_v.sdo");
// synopsys translate_on

wire \Add0~7 ;
wire \Add0~7COUT1_25 ;
wire \Add0~12 ;
wire \Add0~12COUT1_27 ;
wire \Add0~17 ;
wire \Add0~17COUT1_29 ;
wire \Add0~0_combout ;
wire \Mux4~1_combout ;
wire \Add1~7 ;
wire \Add1~7COUT1_25 ;
wire \Add1~12 ;
wire \Add1~12COUT1_27 ;
wire \Add1~17 ;
wire \Add1~17COUT1_29 ;
wire \Add1~0_combout ;
wire \Mux4~2_combout ;
wire \Mux4~0_combout ;
wire \Mux4~3_combout ;
wire \Mux3~2_combout ;
wire \Add0~5_combout ;
wire \Mux3~3_combout ;
wire \ShiftRight0~2_combout ;
wire \ShiftRight0~0_combout ;
wire \ShiftRight0~1_combout ;
wire \ShiftRight0~3_combout ;
wire \Add1~5_combout ;
wire \ShiftLeft0~6_combout ;
wire \ShiftLeft0~8_combout ;
wire \Mux3~0_combout ;
wire \Mux3~1_combout ;
wire \Mux3~4_combout ;
wire \Mux2~2_combout ;
wire \ShiftLeft0~7_combout ;
wire \ShiftLeft0~9_combout ;
wire \Add0~10_combout ;
wire \Mux2~0_combout ;
wire \Add1~10_combout ;
wire \ShiftRight0~4_combout ;
wire \ShiftRight0~5_combout ;
wire \ShiftRight0~6_combout ;
wire \Mux2~1_combout ;
wire \Mux2~3_combout ;
wire \Add0~15_combout ;
wire \result~0_combout ;
wire \Mux1~6_combout ;
wire \Mux1~5_combout ;
wire \Mux1~7_combout ;
wire \Mux1~4_combout ;
wire \Mux1~8_combout ;
wire \Add1~15_combout ;
wire \Mux1~1_combout ;
wire \Mux1~2_combout ;
wire \Mux1~0_combout ;
wire \Mux1~3_combout ;
wire \Mux1~9_combout ;
wire \Mux1~10_combout ;
wire \result~1_combout ;
wire \Mux0~3_combout ;
wire \Mux0~4_combout ;
wire \Mux0~0_combout ;
wire \Mux0~1_combout ;
wire \Mux0~2_combout ;
wire \Mux0~5_combout ;
wire \Mux0~6_combout ;
wire [3:0] \in1~combout ;
wire [3:0] \in2~combout ;
wire [2:0] \opcode~combout ;


// Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
stratix_io \in2[3]~I (
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
	.combout(\in2~combout [3]),
	.regout(),
	.ddioregout(),
	.padio(in2[3]),
	.dqsundelayedout());
// synopsys translate_off
defparam \in2[3]~I .ddio_mode = "none";
defparam \in2[3]~I .input_async_reset = "none";
defparam \in2[3]~I .input_power_up = "low";
defparam \in2[3]~I .input_register_mode = "none";
defparam \in2[3]~I .input_sync_reset = "none";
defparam \in2[3]~I .oe_async_reset = "none";
defparam \in2[3]~I .oe_power_up = "low";
defparam \in2[3]~I .oe_register_mode = "none";
defparam \in2[3]~I .oe_sync_reset = "none";
defparam \in2[3]~I .operation_mode = "input";
defparam \in2[3]~I .output_async_reset = "none";
defparam \in2[3]~I .output_power_up = "low";
defparam \in2[3]~I .output_register_mode = "none";
defparam \in2[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
stratix_io \in1[3]~I (
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
	.combout(\in1~combout [3]),
	.regout(),
	.ddioregout(),
	.padio(in1[3]),
	.dqsundelayedout());
// synopsys translate_off
defparam \in1[3]~I .ddio_mode = "none";
defparam \in1[3]~I .input_async_reset = "none";
defparam \in1[3]~I .input_power_up = "low";
defparam \in1[3]~I .input_register_mode = "none";
defparam \in1[3]~I .input_sync_reset = "none";
defparam \in1[3]~I .oe_async_reset = "none";
defparam \in1[3]~I .oe_power_up = "low";
defparam \in1[3]~I .oe_register_mode = "none";
defparam \in1[3]~I .oe_sync_reset = "none";
defparam \in1[3]~I .operation_mode = "input";
defparam \in1[3]~I .output_async_reset = "none";
defparam \in1[3]~I .output_power_up = "low";
defparam \in1[3]~I .output_register_mode = "none";
defparam \in1[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
stratix_io \opcode[0]~I (
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
	.combout(\opcode~combout [0]),
	.regout(),
	.ddioregout(),
	.padio(opcode[0]),
	.dqsundelayedout());
// synopsys translate_off
defparam \opcode[0]~I .ddio_mode = "none";
defparam \opcode[0]~I .input_async_reset = "none";
defparam \opcode[0]~I .input_power_up = "low";
defparam \opcode[0]~I .input_register_mode = "none";
defparam \opcode[0]~I .input_sync_reset = "none";
defparam \opcode[0]~I .oe_async_reset = "none";
defparam \opcode[0]~I .oe_power_up = "low";
defparam \opcode[0]~I .oe_register_mode = "none";
defparam \opcode[0]~I .oe_sync_reset = "none";
defparam \opcode[0]~I .operation_mode = "input";
defparam \opcode[0]~I .output_async_reset = "none";
defparam \opcode[0]~I .output_power_up = "low";
defparam \opcode[0]~I .output_register_mode = "none";
defparam \opcode[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_K27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
stratix_io \in2[2]~I (
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
	.combout(\in2~combout [2]),
	.regout(),
	.ddioregout(),
	.padio(in2[2]),
	.dqsundelayedout());
// synopsys translate_off
defparam \in2[2]~I .ddio_mode = "none";
defparam \in2[2]~I .input_async_reset = "none";
defparam \in2[2]~I .input_power_up = "low";
defparam \in2[2]~I .input_register_mode = "none";
defparam \in2[2]~I .input_sync_reset = "none";
defparam \in2[2]~I .oe_async_reset = "none";
defparam \in2[2]~I .oe_power_up = "low";
defparam \in2[2]~I .oe_register_mode = "none";
defparam \in2[2]~I .oe_sync_reset = "none";
defparam \in2[2]~I .operation_mode = "input";
defparam \in2[2]~I .output_async_reset = "none";
defparam \in2[2]~I .output_power_up = "low";
defparam \in2[2]~I .output_register_mode = "none";
defparam \in2[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
stratix_io \in1[2]~I (
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
	.combout(\in1~combout [2]),
	.regout(),
	.ddioregout(),
	.padio(in1[2]),
	.dqsundelayedout());
// synopsys translate_off
defparam \in1[2]~I .ddio_mode = "none";
defparam \in1[2]~I .input_async_reset = "none";
defparam \in1[2]~I .input_power_up = "low";
defparam \in1[2]~I .input_register_mode = "none";
defparam \in1[2]~I .input_sync_reset = "none";
defparam \in1[2]~I .oe_async_reset = "none";
defparam \in1[2]~I .oe_power_up = "low";
defparam \in1[2]~I .oe_register_mode = "none";
defparam \in1[2]~I .oe_sync_reset = "none";
defparam \in1[2]~I .operation_mode = "input";
defparam \in1[2]~I .output_async_reset = "none";
defparam \in1[2]~I .output_power_up = "low";
defparam \in1[2]~I .output_register_mode = "none";
defparam \in1[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
stratix_io \in2[1]~I (
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
	.combout(\in2~combout [1]),
	.regout(),
	.ddioregout(),
	.padio(in2[1]),
	.dqsundelayedout());
// synopsys translate_off
defparam \in2[1]~I .ddio_mode = "none";
defparam \in2[1]~I .input_async_reset = "none";
defparam \in2[1]~I .input_power_up = "low";
defparam \in2[1]~I .input_register_mode = "none";
defparam \in2[1]~I .input_sync_reset = "none";
defparam \in2[1]~I .oe_async_reset = "none";
defparam \in2[1]~I .oe_power_up = "low";
defparam \in2[1]~I .oe_register_mode = "none";
defparam \in2[1]~I .oe_sync_reset = "none";
defparam \in2[1]~I .operation_mode = "input";
defparam \in2[1]~I .output_async_reset = "none";
defparam \in2[1]~I .output_power_up = "low";
defparam \in2[1]~I .output_register_mode = "none";
defparam \in2[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
stratix_io \in1[1]~I (
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
	.combout(\in1~combout [1]),
	.regout(),
	.ddioregout(),
	.padio(in1[1]),
	.dqsundelayedout());
// synopsys translate_off
defparam \in1[1]~I .ddio_mode = "none";
defparam \in1[1]~I .input_async_reset = "none";
defparam \in1[1]~I .input_power_up = "low";
defparam \in1[1]~I .input_register_mode = "none";
defparam \in1[1]~I .input_sync_reset = "none";
defparam \in1[1]~I .oe_async_reset = "none";
defparam \in1[1]~I .oe_power_up = "low";
defparam \in1[1]~I .oe_register_mode = "none";
defparam \in1[1]~I .oe_sync_reset = "none";
defparam \in1[1]~I .operation_mode = "input";
defparam \in1[1]~I .output_async_reset = "none";
defparam \in1[1]~I .output_power_up = "low";
defparam \in1[1]~I .output_register_mode = "none";
defparam \in1[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
stratix_io \in2[0]~I (
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
	.combout(\in2~combout [0]),
	.regout(),
	.ddioregout(),
	.padio(in2[0]),
	.dqsundelayedout());
// synopsys translate_off
defparam \in2[0]~I .ddio_mode = "none";
defparam \in2[0]~I .input_async_reset = "none";
defparam \in2[0]~I .input_power_up = "low";
defparam \in2[0]~I .input_register_mode = "none";
defparam \in2[0]~I .input_sync_reset = "none";
defparam \in2[0]~I .oe_async_reset = "none";
defparam \in2[0]~I .oe_power_up = "low";
defparam \in2[0]~I .oe_register_mode = "none";
defparam \in2[0]~I .oe_sync_reset = "none";
defparam \in2[0]~I .operation_mode = "input";
defparam \in2[0]~I .output_async_reset = "none";
defparam \in2[0]~I .output_power_up = "low";
defparam \in2[0]~I .output_register_mode = "none";
defparam \in2[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
stratix_io \in1[0]~I (
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
	.combout(\in1~combout [0]),
	.regout(),
	.ddioregout(),
	.padio(in1[0]),
	.dqsundelayedout());
// synopsys translate_off
defparam \in1[0]~I .ddio_mode = "none";
defparam \in1[0]~I .input_async_reset = "none";
defparam \in1[0]~I .input_power_up = "low";
defparam \in1[0]~I .input_register_mode = "none";
defparam \in1[0]~I .input_sync_reset = "none";
defparam \in1[0]~I .oe_async_reset = "none";
defparam \in1[0]~I .oe_power_up = "low";
defparam \in1[0]~I .oe_register_mode = "none";
defparam \in1[0]~I .oe_sync_reset = "none";
defparam \in1[0]~I .operation_mode = "input";
defparam \in1[0]~I .output_async_reset = "none";
defparam \in1[0]~I .output_power_up = "low";
defparam \in1[0]~I .output_register_mode = "none";
defparam \in1[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: LC_X12_Y28_N1
stratix_lcell \Add0~5 (
// Equation(s):
// \Add0~5_combout  = \in2~combout [0] $ ((\in1~combout [0]))
// \Add0~7  = CARRY((\in2~combout [0] & (\in1~combout [0])))
// \Add0~7COUT1_25  = CARRY((\in2~combout [0] & (\in1~combout [0])))

	.clk(gnd),
	.dataa(\in2~combout [0]),
	.datab(\in1~combout [0]),
	.datac(vcc),
	.datad(vcc),
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
	.combout(\Add0~5_combout ),
	.regout(),
	.cout(),
	.cout0(\Add0~7 ),
	.cout1(\Add0~7COUT1_25 ));
// synopsys translate_off
defparam \Add0~5 .lut_mask = "6688";
defparam \Add0~5 .operation_mode = "arithmetic";
defparam \Add0~5 .output_mode = "comb_only";
defparam \Add0~5 .register_cascade_mode = "off";
defparam \Add0~5 .sum_lutc_input = "datac";
defparam \Add0~5 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X12_Y28_N2
stratix_lcell \Add0~10 (
// Equation(s):
// \Add0~10_combout  = \in2~combout [1] $ (\in1~combout [1] $ ((\Add0~7 )))
// \Add0~12  = CARRY((\in2~combout [1] & (!\in1~combout [1] & !\Add0~7 )) # (!\in2~combout [1] & ((!\Add0~7 ) # (!\in1~combout [1]))))
// \Add0~12COUT1_27  = CARRY((\in2~combout [1] & (!\in1~combout [1] & !\Add0~7COUT1_25 )) # (!\in2~combout [1] & ((!\Add0~7COUT1_25 ) # (!\in1~combout [1]))))

	.clk(gnd),
	.dataa(\in2~combout [1]),
	.datab(\in1~combout [1]),
	.datac(vcc),
	.datad(vcc),
	.aclr(gnd),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.cin(gnd),
	.cin0(\Add0~7 ),
	.cin1(\Add0~7COUT1_25 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add0~10_combout ),
	.regout(),
	.cout(),
	.cout0(\Add0~12 ),
	.cout1(\Add0~12COUT1_27 ));
// synopsys translate_off
defparam \Add0~10 .cin0_used = "true";
defparam \Add0~10 .cin1_used = "true";
defparam \Add0~10 .lut_mask = "9617";
defparam \Add0~10 .operation_mode = "arithmetic";
defparam \Add0~10 .output_mode = "comb_only";
defparam \Add0~10 .register_cascade_mode = "off";
defparam \Add0~10 .sum_lutc_input = "cin";
defparam \Add0~10 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X12_Y28_N3
stratix_lcell \Add0~15 (
// Equation(s):
// \Add0~15_combout  = \in2~combout [2] $ (\in1~combout [2] $ ((!\Add0~12 )))
// \Add0~17  = CARRY((\in2~combout [2] & ((\in1~combout [2]) # (!\Add0~12 ))) # (!\in2~combout [2] & (\in1~combout [2] & !\Add0~12 )))
// \Add0~17COUT1_29  = CARRY((\in2~combout [2] & ((\in1~combout [2]) # (!\Add0~12COUT1_27 ))) # (!\in2~combout [2] & (\in1~combout [2] & !\Add0~12COUT1_27 )))

	.clk(gnd),
	.dataa(\in2~combout [2]),
	.datab(\in1~combout [2]),
	.datac(vcc),
	.datad(vcc),
	.aclr(gnd),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.cin(gnd),
	.cin0(\Add0~12 ),
	.cin1(\Add0~12COUT1_27 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add0~15_combout ),
	.regout(),
	.cout(),
	.cout0(\Add0~17 ),
	.cout1(\Add0~17COUT1_29 ));
// synopsys translate_off
defparam \Add0~15 .cin0_used = "true";
defparam \Add0~15 .cin1_used = "true";
defparam \Add0~15 .lut_mask = "698e";
defparam \Add0~15 .operation_mode = "arithmetic";
defparam \Add0~15 .output_mode = "comb_only";
defparam \Add0~15 .register_cascade_mode = "off";
defparam \Add0~15 .sum_lutc_input = "cin";
defparam \Add0~15 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X12_Y28_N4
stratix_lcell \Add0~0 (
// Equation(s):
// \Add0~0_combout  = (\in2~combout [3] $ (\Add0~17  $ (\in1~combout [3])))

	.clk(gnd),
	.dataa(vcc),
	.datab(\in2~combout [3]),
	.datac(vcc),
	.datad(\in1~combout [3]),
	.aclr(gnd),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.cin(gnd),
	.cin0(\Add0~17 ),
	.cin1(\Add0~17COUT1_29 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add0~0_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Add0~0 .cin0_used = "true";
defparam \Add0~0 .cin1_used = "true";
defparam \Add0~0 .lut_mask = "c33c";
defparam \Add0~0 .operation_mode = "normal";
defparam \Add0~0 .output_mode = "comb_only";
defparam \Add0~0 .register_cascade_mode = "off";
defparam \Add0~0 .sum_lutc_input = "cin";
defparam \Add0~0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X8_Y24_N8
stratix_lcell \Mux4~1 (
// Equation(s):
// \Mux4~1_combout  = (!\opcode~combout [0] & ((\in2~combout [3] & (\in1~combout [3] & !\Add0~0_combout )) # (!\in2~combout [3] & (!\in1~combout [3] & \Add0~0_combout ))))

	.clk(gnd),
	.dataa(\in2~combout [3]),
	.datab(\in1~combout [3]),
	.datac(\opcode~combout [0]),
	.datad(\Add0~0_combout ),
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
	.combout(\Mux4~1_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux4~1 .lut_mask = "0108";
defparam \Mux4~1 .operation_mode = "normal";
defparam \Mux4~1 .output_mode = "comb_only";
defparam \Mux4~1 .register_cascade_mode = "off";
defparam \Mux4~1 .sum_lutc_input = "datac";
defparam \Mux4~1 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X2_Y26_N0
stratix_lcell \Add1~5 (
// Equation(s):
// \Add1~5_combout  = \in1~combout [0] $ ((\in2~combout [0]))
// \Add1~7  = CARRY((\in1~combout [0]) # ((!\in2~combout [0])))
// \Add1~7COUT1_25  = CARRY((\in1~combout [0]) # ((!\in2~combout [0])))

	.clk(gnd),
	.dataa(\in1~combout [0]),
	.datab(\in2~combout [0]),
	.datac(vcc),
	.datad(vcc),
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
	.combout(\Add1~5_combout ),
	.regout(),
	.cout(),
	.cout0(\Add1~7 ),
	.cout1(\Add1~7COUT1_25 ));
// synopsys translate_off
defparam \Add1~5 .lut_mask = "66bb";
defparam \Add1~5 .operation_mode = "arithmetic";
defparam \Add1~5 .output_mode = "comb_only";
defparam \Add1~5 .register_cascade_mode = "off";
defparam \Add1~5 .sum_lutc_input = "datac";
defparam \Add1~5 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X2_Y26_N1
stratix_lcell \Add1~10 (
// Equation(s):
// \Add1~10_combout  = \in2~combout [1] $ (\in1~combout [1] $ ((!\Add1~7 )))
// \Add1~12  = CARRY((\in2~combout [1] & ((!\Add1~7 ) # (!\in1~combout [1]))) # (!\in2~combout [1] & (!\in1~combout [1] & !\Add1~7 )))
// \Add1~12COUT1_27  = CARRY((\in2~combout [1] & ((!\Add1~7COUT1_25 ) # (!\in1~combout [1]))) # (!\in2~combout [1] & (!\in1~combout [1] & !\Add1~7COUT1_25 )))

	.clk(gnd),
	.dataa(\in2~combout [1]),
	.datab(\in1~combout [1]),
	.datac(vcc),
	.datad(vcc),
	.aclr(gnd),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.cin(gnd),
	.cin0(\Add1~7 ),
	.cin1(\Add1~7COUT1_25 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add1~10_combout ),
	.regout(),
	.cout(),
	.cout0(\Add1~12 ),
	.cout1(\Add1~12COUT1_27 ));
// synopsys translate_off
defparam \Add1~10 .cin0_used = "true";
defparam \Add1~10 .cin1_used = "true";
defparam \Add1~10 .lut_mask = "692b";
defparam \Add1~10 .operation_mode = "arithmetic";
defparam \Add1~10 .output_mode = "comb_only";
defparam \Add1~10 .register_cascade_mode = "off";
defparam \Add1~10 .sum_lutc_input = "cin";
defparam \Add1~10 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X2_Y26_N2
stratix_lcell \Add1~15 (
// Equation(s):
// \Add1~15_combout  = \in2~combout [2] $ (\in1~combout [2] $ ((\Add1~12 )))
// \Add1~17  = CARRY((\in2~combout [2] & (\in1~combout [2] & !\Add1~12 )) # (!\in2~combout [2] & ((\in1~combout [2]) # (!\Add1~12 ))))
// \Add1~17COUT1_29  = CARRY((\in2~combout [2] & (\in1~combout [2] & !\Add1~12COUT1_27 )) # (!\in2~combout [2] & ((\in1~combout [2]) # (!\Add1~12COUT1_27 ))))

	.clk(gnd),
	.dataa(\in2~combout [2]),
	.datab(\in1~combout [2]),
	.datac(vcc),
	.datad(vcc),
	.aclr(gnd),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.cin(gnd),
	.cin0(\Add1~12 ),
	.cin1(\Add1~12COUT1_27 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add1~15_combout ),
	.regout(),
	.cout(),
	.cout0(\Add1~17 ),
	.cout1(\Add1~17COUT1_29 ));
// synopsys translate_off
defparam \Add1~15 .cin0_used = "true";
defparam \Add1~15 .cin1_used = "true";
defparam \Add1~15 .lut_mask = "964d";
defparam \Add1~15 .operation_mode = "arithmetic";
defparam \Add1~15 .output_mode = "comb_only";
defparam \Add1~15 .register_cascade_mode = "off";
defparam \Add1~15 .sum_lutc_input = "cin";
defparam \Add1~15 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X2_Y26_N3
stratix_lcell \Add1~0 (
// Equation(s):
// \Add1~0_combout  = \in2~combout [3] $ (((\Add1~17  $ (!\in1~combout [3]))))

	.clk(gnd),
	.dataa(\in2~combout [3]),
	.datab(vcc),
	.datac(vcc),
	.datad(\in1~combout [3]),
	.aclr(gnd),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.cin(gnd),
	.cin0(\Add1~17 ),
	.cin1(\Add1~17COUT1_29 ),
	.inverta(gnd),
	.regcascin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.combout(\Add1~0_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Add1~0 .cin0_used = "true";
defparam \Add1~0 .cin1_used = "true";
defparam \Add1~0 .lut_mask = "5aa5";
defparam \Add1~0 .operation_mode = "normal";
defparam \Add1~0 .output_mode = "comb_only";
defparam \Add1~0 .register_cascade_mode = "off";
defparam \Add1~0 .sum_lutc_input = "cin";
defparam \Add1~0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X8_Y24_N3
stratix_lcell \Mux4~2 (
// Equation(s):
// \Mux4~2_combout  = (\in2~combout [3] & (((\Add1~0_combout  & !\in1~combout [3])))) # (!\in2~combout [3] & (((!\Add1~0_combout  & \in1~combout [3]))))

	.clk(gnd),
	.dataa(\in2~combout [3]),
	.datab(vcc),
	.datac(\Add1~0_combout ),
	.datad(\in1~combout [3]),
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
	.combout(\Mux4~2_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux4~2 .lut_mask = "05a0";
defparam \Mux4~2 .operation_mode = "normal";
defparam \Mux4~2 .output_mode = "comb_only";
defparam \Mux4~2 .register_cascade_mode = "off";
defparam \Mux4~2 .sum_lutc_input = "datac";
defparam \Mux4~2 .synch_mode = "off";
// synopsys translate_on

// Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
stratix_io \opcode[1]~I (
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
	.combout(\opcode~combout [1]),
	.regout(),
	.ddioregout(),
	.padio(opcode[1]),
	.dqsundelayedout());
// synopsys translate_off
defparam \opcode[1]~I .ddio_mode = "none";
defparam \opcode[1]~I .input_async_reset = "none";
defparam \opcode[1]~I .input_power_up = "low";
defparam \opcode[1]~I .input_register_mode = "none";
defparam \opcode[1]~I .input_sync_reset = "none";
defparam \opcode[1]~I .oe_async_reset = "none";
defparam \opcode[1]~I .oe_power_up = "low";
defparam \opcode[1]~I .oe_register_mode = "none";
defparam \opcode[1]~I .oe_sync_reset = "none";
defparam \opcode[1]~I .operation_mode = "input";
defparam \opcode[1]~I .output_async_reset = "none";
defparam \opcode[1]~I .output_power_up = "low";
defparam \opcode[1]~I .output_register_mode = "none";
defparam \opcode[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
stratix_io \opcode[2]~I (
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
	.combout(\opcode~combout [2]),
	.regout(),
	.ddioregout(),
	.padio(opcode[2]),
	.dqsundelayedout());
// synopsys translate_off
defparam \opcode[2]~I .ddio_mode = "none";
defparam \opcode[2]~I .input_async_reset = "none";
defparam \opcode[2]~I .input_power_up = "low";
defparam \opcode[2]~I .input_register_mode = "none";
defparam \opcode[2]~I .input_sync_reset = "none";
defparam \opcode[2]~I .oe_async_reset = "none";
defparam \opcode[2]~I .oe_power_up = "low";
defparam \opcode[2]~I .oe_register_mode = "none";
defparam \opcode[2]~I .oe_sync_reset = "none";
defparam \opcode[2]~I .operation_mode = "input";
defparam \opcode[2]~I .output_async_reset = "none";
defparam \opcode[2]~I .output_power_up = "low";
defparam \opcode[2]~I .output_register_mode = "none";
defparam \opcode[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: LC_X8_Y24_N6
stratix_lcell \Mux4~0 (
// Equation(s):
// \Mux4~0_combout  = (((!\opcode~combout [1] & \opcode~combout [2])))

	.clk(gnd),
	.dataa(vcc),
	.datab(vcc),
	.datac(\opcode~combout [1]),
	.datad(\opcode~combout [2]),
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
	.combout(\Mux4~0_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux4~0 .lut_mask = "0f00";
defparam \Mux4~0 .operation_mode = "normal";
defparam \Mux4~0 .output_mode = "comb_only";
defparam \Mux4~0 .register_cascade_mode = "off";
defparam \Mux4~0 .sum_lutc_input = "datac";
defparam \Mux4~0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X8_Y24_N2
stratix_lcell \Mux4~3 (
// Equation(s):
// \Mux4~3_combout  = (\Mux4~0_combout  & ((\Mux4~1_combout ) # ((\opcode~combout [0] & \Mux4~2_combout ))))

	.clk(gnd),
	.dataa(\Mux4~1_combout ),
	.datab(\opcode~combout [0]),
	.datac(\Mux4~2_combout ),
	.datad(\Mux4~0_combout ),
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
	.combout(\Mux4~3_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux4~3 .lut_mask = "ea00";
defparam \Mux4~3 .operation_mode = "normal";
defparam \Mux4~3 .output_mode = "comb_only";
defparam \Mux4~3 .register_cascade_mode = "off";
defparam \Mux4~3 .sum_lutc_input = "datac";
defparam \Mux4~3 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X12_Y28_N5
stratix_lcell \Mux3~2 (
// Equation(s):
// \Mux3~2_combout  = (\in1~combout [0] & (((\opcode~combout [1]) # (\in2~combout [0])))) # (!\in1~combout [0] & (((\opcode~combout [1] & \in2~combout [0]))))

	.clk(gnd),
	.dataa(\in1~combout [0]),
	.datab(vcc),
	.datac(\opcode~combout [1]),
	.datad(\in2~combout [0]),
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
	.combout(\Mux3~2_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux3~2 .lut_mask = "faa0";
defparam \Mux3~2 .operation_mode = "normal";
defparam \Mux3~2 .output_mode = "comb_only";
defparam \Mux3~2 .register_cascade_mode = "off";
defparam \Mux3~2 .sum_lutc_input = "datac";
defparam \Mux3~2 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X12_Y28_N0
stratix_lcell \Mux3~3 (
// Equation(s):
// \Mux3~3_combout  = (\opcode~combout [0] & ((\opcode~combout [1] & ((\Add0~5_combout ))) # (!\opcode~combout [1] & (\Mux3~2_combout )))) # (!\opcode~combout [0] & (\Mux3~2_combout  & (\opcode~combout [1])))

	.clk(gnd),
	.dataa(\opcode~combout [0]),
	.datab(\Mux3~2_combout ),
	.datac(\opcode~combout [1]),
	.datad(\Add0~5_combout ),
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
	.combout(\Mux3~3_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux3~3 .lut_mask = "e848";
defparam \Mux3~3 .operation_mode = "normal";
defparam \Mux3~3 .output_mode = "comb_only";
defparam \Mux3~3 .register_cascade_mode = "off";
defparam \Mux3~3 .sum_lutc_input = "datac";
defparam \Mux3~3 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X2_Y26_N8
stratix_lcell \ShiftRight0~2 (
// Equation(s):
// \ShiftRight0~2_combout  = (\in2~combout [0] & (\in1~combout [1])) # (!\in2~combout [0] & (((\in1~combout [0]))))

	.clk(gnd),
	.dataa(\in1~combout [1]),
	.datab(\in2~combout [0]),
	.datac(\in1~combout [0]),
	.datad(vcc),
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
	.combout(\ShiftRight0~2_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \ShiftRight0~2 .lut_mask = "b8b8";
defparam \ShiftRight0~2 .operation_mode = "normal";
defparam \ShiftRight0~2 .output_mode = "comb_only";
defparam \ShiftRight0~2 .register_cascade_mode = "off";
defparam \ShiftRight0~2 .sum_lutc_input = "datac";
defparam \ShiftRight0~2 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X1_Y26_N2
stratix_lcell \ShiftRight0~0 (
// Equation(s):
// \ShiftRight0~0_combout  = ((!\in2~combout [3] & ((!\in2~combout [2]))))

	.clk(gnd),
	.dataa(vcc),
	.datab(\in2~combout [3]),
	.datac(vcc),
	.datad(\in2~combout [2]),
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
	.combout(\ShiftRight0~0_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \ShiftRight0~0 .lut_mask = "0033";
defparam \ShiftRight0~0 .operation_mode = "normal";
defparam \ShiftRight0~0 .output_mode = "comb_only";
defparam \ShiftRight0~0 .register_cascade_mode = "off";
defparam \ShiftRight0~0 .sum_lutc_input = "datac";
defparam \ShiftRight0~0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X2_Y26_N9
stratix_lcell \ShiftRight0~1 (
// Equation(s):
// \ShiftRight0~1_combout  = ((\in2~combout [0] & ((\in1~combout [3]))) # (!\in2~combout [0] & (\in1~combout [2])))

	.clk(gnd),
	.dataa(vcc),
	.datab(\in2~combout [0]),
	.datac(\in1~combout [2]),
	.datad(\in1~combout [3]),
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
	.combout(\ShiftRight0~1_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \ShiftRight0~1 .lut_mask = "fc30";
defparam \ShiftRight0~1 .operation_mode = "normal";
defparam \ShiftRight0~1 .output_mode = "comb_only";
defparam \ShiftRight0~1 .register_cascade_mode = "off";
defparam \ShiftRight0~1 .sum_lutc_input = "datac";
defparam \ShiftRight0~1 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X2_Y26_N4
stratix_lcell \ShiftRight0~3 (
// Equation(s):
// \ShiftRight0~3_combout  = (\ShiftRight0~0_combout  & ((\in2~combout [1] & ((\ShiftRight0~1_combout ))) # (!\in2~combout [1] & (\ShiftRight0~2_combout ))))

	.clk(gnd),
	.dataa(\ShiftRight0~2_combout ),
	.datab(\ShiftRight0~0_combout ),
	.datac(\ShiftRight0~1_combout ),
	.datad(\in2~combout [1]),
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
	.combout(\ShiftRight0~3_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \ShiftRight0~3 .lut_mask = "c088";
defparam \ShiftRight0~3 .operation_mode = "normal";
defparam \ShiftRight0~3 .output_mode = "comb_only";
defparam \ShiftRight0~3 .register_cascade_mode = "off";
defparam \ShiftRight0~3 .sum_lutc_input = "datac";
defparam \ShiftRight0~3 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X6_Y25_N4
stratix_lcell \ShiftLeft0~6 (
// Equation(s):
// \ShiftLeft0~6_combout  = (\in1~combout [0] & (((!\in2~combout [0]))))

	.clk(gnd),
	.dataa(\in1~combout [0]),
	.datab(vcc),
	.datac(\in2~combout [0]),
	.datad(vcc),
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
	.combout(\ShiftLeft0~6_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \ShiftLeft0~6 .lut_mask = "0a0a";
defparam \ShiftLeft0~6 .operation_mode = "normal";
defparam \ShiftLeft0~6 .output_mode = "comb_only";
defparam \ShiftLeft0~6 .register_cascade_mode = "off";
defparam \ShiftLeft0~6 .sum_lutc_input = "datac";
defparam \ShiftLeft0~6 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X12_Y28_N6
stratix_lcell \ShiftLeft0~8 (
// Equation(s):
// \ShiftLeft0~8_combout  = (\ShiftLeft0~6_combout  & (!\in2~combout [3] & (!\in2~combout [2] & !\in2~combout [1])))

	.clk(gnd),
	.dataa(\ShiftLeft0~6_combout ),
	.datab(\in2~combout [3]),
	.datac(\in2~combout [2]),
	.datad(\in2~combout [1]),
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
	.combout(\ShiftLeft0~8_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \ShiftLeft0~8 .lut_mask = "0002";
defparam \ShiftLeft0~8 .operation_mode = "normal";
defparam \ShiftLeft0~8 .output_mode = "comb_only";
defparam \ShiftLeft0~8 .register_cascade_mode = "off";
defparam \ShiftLeft0~8 .sum_lutc_input = "datac";
defparam \ShiftLeft0~8 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X12_Y28_N7
stratix_lcell \Mux3~0 (
// Equation(s):
// \Mux3~0_combout  = (\opcode~combout [0] & (((\opcode~combout [1])))) # (!\opcode~combout [0] & ((\opcode~combout [1] & (\ShiftLeft0~8_combout )) # (!\opcode~combout [1] & ((\Add0~5_combout )))))

	.clk(gnd),
	.dataa(\opcode~combout [0]),
	.datab(\ShiftLeft0~8_combout ),
	.datac(\opcode~combout [1]),
	.datad(\Add0~5_combout ),
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
	.combout(\Mux3~0_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux3~0 .lut_mask = "e5e0";
defparam \Mux3~0 .operation_mode = "normal";
defparam \Mux3~0 .output_mode = "comb_only";
defparam \Mux3~0 .register_cascade_mode = "off";
defparam \Mux3~0 .sum_lutc_input = "datac";
defparam \Mux3~0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X2_Y26_N5
stratix_lcell \Mux3~1 (
// Equation(s):
// \Mux3~1_combout  = (\opcode~combout [0] & ((\Mux3~0_combout  & (\ShiftRight0~3_combout )) # (!\Mux3~0_combout  & ((\Add1~5_combout ))))) # (!\opcode~combout [0] & (((\Mux3~0_combout ))))

	.clk(gnd),
	.dataa(\ShiftRight0~3_combout ),
	.datab(\Add1~5_combout ),
	.datac(\opcode~combout [0]),
	.datad(\Mux3~0_combout ),
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
	.combout(\Mux3~1_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux3~1 .lut_mask = "afc0";
defparam \Mux3~1 .operation_mode = "normal";
defparam \Mux3~1 .output_mode = "comb_only";
defparam \Mux3~1 .register_cascade_mode = "off";
defparam \Mux3~1 .sum_lutc_input = "datac";
defparam \Mux3~1 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X17_Y27_N2
stratix_lcell \Mux3~4 (
// Equation(s):
// \Mux3~4_combout  = (\opcode~combout [2] & (((\Mux3~1_combout )))) # (!\opcode~combout [2] & (\Mux3~3_combout ))

	.clk(gnd),
	.dataa(\Mux3~3_combout ),
	.datab(\opcode~combout [2]),
	.datac(vcc),
	.datad(\Mux3~1_combout ),
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
	.combout(\Mux3~4_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux3~4 .lut_mask = "ee22";
defparam \Mux3~4 .operation_mode = "normal";
defparam \Mux3~4 .output_mode = "comb_only";
defparam \Mux3~4 .register_cascade_mode = "off";
defparam \Mux3~4 .sum_lutc_input = "datac";
defparam \Mux3~4 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X8_Y24_N5
stratix_lcell \Mux2~2 (
// Equation(s):
// \Mux2~2_combout  = (\in1~combout [1] & (\opcode~combout [1] $ (((\in2~combout [1] & \opcode~combout [0]))))) # (!\in1~combout [1] & (\opcode~combout [1] & (\in2~combout [1])))

	.clk(gnd),
	.dataa(\opcode~combout [1]),
	.datab(\in1~combout [1]),
	.datac(\in2~combout [1]),
	.datad(\opcode~combout [0]),
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
	.combout(\Mux2~2_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux2~2 .lut_mask = "68a8";
defparam \Mux2~2 .operation_mode = "normal";
defparam \Mux2~2 .output_mode = "comb_only";
defparam \Mux2~2 .register_cascade_mode = "off";
defparam \Mux2~2 .sum_lutc_input = "datac";
defparam \Mux2~2 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X6_Y25_N8
stratix_lcell \ShiftLeft0~7 (
// Equation(s):
// \ShiftLeft0~7_combout  = (\in2~combout [0] & (\in1~combout [0])) # (!\in2~combout [0] & (((\in1~combout [1]))))

	.clk(gnd),
	.dataa(\in1~combout [0]),
	.datab(\in1~combout [1]),
	.datac(\in2~combout [0]),
	.datad(vcc),
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
	.combout(\ShiftLeft0~7_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \ShiftLeft0~7 .lut_mask = "acac";
defparam \ShiftLeft0~7 .operation_mode = "normal";
defparam \ShiftLeft0~7 .output_mode = "comb_only";
defparam \ShiftLeft0~7 .register_cascade_mode = "off";
defparam \ShiftLeft0~7 .sum_lutc_input = "datac";
defparam \ShiftLeft0~7 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X12_Y28_N9
stratix_lcell \ShiftLeft0~9 (
// Equation(s):
// \ShiftLeft0~9_combout  = (\ShiftLeft0~7_combout  & (!\in2~combout [3] & (!\in2~combout [2] & !\in2~combout [1])))

	.clk(gnd),
	.dataa(\ShiftLeft0~7_combout ),
	.datab(\in2~combout [3]),
	.datac(\in2~combout [2]),
	.datad(\in2~combout [1]),
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
	.combout(\ShiftLeft0~9_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \ShiftLeft0~9 .lut_mask = "0002";
defparam \ShiftLeft0~9 .operation_mode = "normal";
defparam \ShiftLeft0~9 .output_mode = "comb_only";
defparam \ShiftLeft0~9 .register_cascade_mode = "off";
defparam \ShiftLeft0~9 .sum_lutc_input = "datac";
defparam \ShiftLeft0~9 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X12_Y28_N8
stratix_lcell \Mux2~0 (
// Equation(s):
// \Mux2~0_combout  = (\opcode~combout [0] & (((\opcode~combout [1])))) # (!\opcode~combout [0] & ((\opcode~combout [1] & (\ShiftLeft0~9_combout )) # (!\opcode~combout [1] & ((\Add0~10_combout )))))

	.clk(gnd),
	.dataa(\opcode~combout [0]),
	.datab(\ShiftLeft0~9_combout ),
	.datac(\opcode~combout [1]),
	.datad(\Add0~10_combout ),
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
	.combout(\Mux2~0_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux2~0 .lut_mask = "e5e0";
defparam \Mux2~0 .operation_mode = "normal";
defparam \Mux2~0 .output_mode = "comb_only";
defparam \Mux2~0 .register_cascade_mode = "off";
defparam \Mux2~0 .sum_lutc_input = "datac";
defparam \Mux2~0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X8_Y25_N2
stratix_lcell \ShiftRight0~4 (
// Equation(s):
// \ShiftRight0~4_combout  = (!\in2~combout [0] & (((\in1~combout [3]))))

	.clk(gnd),
	.dataa(\in2~combout [0]),
	.datab(vcc),
	.datac(vcc),
	.datad(\in1~combout [3]),
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
	.combout(\ShiftRight0~4_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \ShiftRight0~4 .lut_mask = "5500";
defparam \ShiftRight0~4 .operation_mode = "normal";
defparam \ShiftRight0~4 .output_mode = "comb_only";
defparam \ShiftRight0~4 .register_cascade_mode = "off";
defparam \ShiftRight0~4 .sum_lutc_input = "datac";
defparam \ShiftRight0~4 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X2_Y26_N7
stratix_lcell \ShiftRight0~5 (
// Equation(s):
// \ShiftRight0~5_combout  = (\in2~combout [0] & (((\in1~combout [2])))) # (!\in2~combout [0] & (\in1~combout [1]))

	.clk(gnd),
	.dataa(\in1~combout [1]),
	.datab(\in2~combout [0]),
	.datac(\in1~combout [2]),
	.datad(vcc),
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
	.combout(\ShiftRight0~5_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \ShiftRight0~5 .lut_mask = "e2e2";
defparam \ShiftRight0~5 .operation_mode = "normal";
defparam \ShiftRight0~5 .output_mode = "comb_only";
defparam \ShiftRight0~5 .register_cascade_mode = "off";
defparam \ShiftRight0~5 .sum_lutc_input = "datac";
defparam \ShiftRight0~5 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X2_Y26_N6
stratix_lcell \ShiftRight0~6 (
// Equation(s):
// \ShiftRight0~6_combout  = (\ShiftRight0~0_combout  & ((\in2~combout [1] & (\ShiftRight0~4_combout )) # (!\in2~combout [1] & ((\ShiftRight0~5_combout )))))

	.clk(gnd),
	.dataa(\ShiftRight0~4_combout ),
	.datab(\ShiftRight0~0_combout ),
	.datac(\ShiftRight0~5_combout ),
	.datad(\in2~combout [1]),
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
	.combout(\ShiftRight0~6_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \ShiftRight0~6 .lut_mask = "88c0";
defparam \ShiftRight0~6 .operation_mode = "normal";
defparam \ShiftRight0~6 .output_mode = "comb_only";
defparam \ShiftRight0~6 .register_cascade_mode = "off";
defparam \ShiftRight0~6 .sum_lutc_input = "datac";
defparam \ShiftRight0~6 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X8_Y24_N9
stratix_lcell \Mux2~1 (
// Equation(s):
// \Mux2~1_combout  = (\Mux2~0_combout  & (((\ShiftRight0~6_combout )) # (!\opcode~combout [0]))) # (!\Mux2~0_combout  & (\opcode~combout [0] & (\Add1~10_combout )))

	.clk(gnd),
	.dataa(\Mux2~0_combout ),
	.datab(\opcode~combout [0]),
	.datac(\Add1~10_combout ),
	.datad(\ShiftRight0~6_combout ),
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
	.combout(\Mux2~1_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux2~1 .lut_mask = "ea62";
defparam \Mux2~1 .operation_mode = "normal";
defparam \Mux2~1 .output_mode = "comb_only";
defparam \Mux2~1 .register_cascade_mode = "off";
defparam \Mux2~1 .sum_lutc_input = "datac";
defparam \Mux2~1 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X8_Y24_N4
stratix_lcell \Mux2~3 (
// Equation(s):
// \Mux2~3_combout  = (\opcode~combout [2] & (((\Mux2~1_combout )))) # (!\opcode~combout [2] & (((\Mux2~2_combout ))))

	.clk(gnd),
	.dataa(\opcode~combout [2]),
	.datab(vcc),
	.datac(\Mux2~2_combout ),
	.datad(\Mux2~1_combout ),
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
	.combout(\Mux2~3_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux2~3 .lut_mask = "fa50";
defparam \Mux2~3 .operation_mode = "normal";
defparam \Mux2~3 .output_mode = "comb_only";
defparam \Mux2~3 .register_cascade_mode = "off";
defparam \Mux2~3 .sum_lutc_input = "datac";
defparam \Mux2~3 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X6_Y25_N7
stratix_lcell \result~0 (
// Equation(s):
// \result~0_combout  = (\in2~combout [2]) # (((\in1~combout [2])))

	.clk(gnd),
	.dataa(\in2~combout [2]),
	.datab(vcc),
	.datac(\in1~combout [2]),
	.datad(vcc),
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
	.combout(\result~0_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \result~0 .lut_mask = "fafa";
defparam \result~0 .operation_mode = "normal";
defparam \result~0 .output_mode = "comb_only";
defparam \result~0 .register_cascade_mode = "off";
defparam \result~0 .sum_lutc_input = "datac";
defparam \result~0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X8_Y25_N8
stratix_lcell \Mux1~6 (
// Equation(s):
// \Mux1~6_combout  = (\opcode~combout [2] & ((\in2~combout [0]) # ((\in2~combout [1]) # (!\ShiftRight0~0_combout ))))

	.clk(gnd),
	.dataa(\in2~combout [0]),
	.datab(\opcode~combout [2]),
	.datac(\ShiftRight0~0_combout ),
	.datad(\in2~combout [1]),
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
	.combout(\Mux1~6_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux1~6 .lut_mask = "cc8c";
defparam \Mux1~6 .operation_mode = "normal";
defparam \Mux1~6 .output_mode = "comb_only";
defparam \Mux1~6 .register_cascade_mode = "off";
defparam \Mux1~6 .sum_lutc_input = "datac";
defparam \Mux1~6 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X8_Y25_N1
stratix_lcell \Mux1~5 (
// Equation(s):
// \Mux1~5_combout  = ((\in2~combout [1] & (!\in2~combout [3] & !\in2~combout [2]))) # (!\opcode~combout [2])

	.clk(gnd),
	.dataa(\in2~combout [1]),
	.datab(\opcode~combout [2]),
	.datac(\in2~combout [3]),
	.datad(\in2~combout [2]),
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
	.combout(\Mux1~5_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux1~5 .lut_mask = "333b";
defparam \Mux1~5 .operation_mode = "normal";
defparam \Mux1~5 .output_mode = "comb_only";
defparam \Mux1~5 .register_cascade_mode = "off";
defparam \Mux1~5 .sum_lutc_input = "datac";
defparam \Mux1~5 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X6_Y25_N2
stratix_lcell \Mux1~7 (
// Equation(s):
// \Mux1~7_combout  = (\Mux1~6_combout  & (((\ShiftLeft0~6_combout  & \Mux1~5_combout )))) # (!\Mux1~6_combout  & ((\result~0_combout ) # ((!\Mux1~5_combout ))))

	.clk(gnd),
	.dataa(\result~0_combout ),
	.datab(\ShiftLeft0~6_combout ),
	.datac(\Mux1~6_combout ),
	.datad(\Mux1~5_combout ),
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
	.combout(\Mux1~7_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux1~7 .lut_mask = "ca0f";
defparam \Mux1~7 .operation_mode = "normal";
defparam \Mux1~7 .output_mode = "comb_only";
defparam \Mux1~7 .register_cascade_mode = "off";
defparam \Mux1~7 .sum_lutc_input = "datac";
defparam \Mux1~7 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X6_Y25_N9
stratix_lcell \Mux1~4 (
// Equation(s):
// \Mux1~4_combout  = ((\in2~combout [3]) # ((\in2~combout [2]) # (\in2~combout [1]))) # (!\opcode~combout [2])

	.clk(gnd),
	.dataa(\opcode~combout [2]),
	.datab(\in2~combout [3]),
	.datac(\in2~combout [2]),
	.datad(\in2~combout [1]),
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
	.combout(\Mux1~4_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux1~4 .lut_mask = "fffd";
defparam \Mux1~4 .operation_mode = "normal";
defparam \Mux1~4 .output_mode = "comb_only";
defparam \Mux1~4 .register_cascade_mode = "off";
defparam \Mux1~4 .sum_lutc_input = "datac";
defparam \Mux1~4 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X6_Y25_N6
stratix_lcell \Mux1~8 (
// Equation(s):
// \Mux1~8_combout  = (\Mux1~7_combout  & ((\in1~combout [2]) # ((\Mux1~4_combout )))) # (!\Mux1~7_combout  & (((\in1~combout [1] & !\Mux1~4_combout ))))

	.clk(gnd),
	.dataa(\Mux1~7_combout ),
	.datab(\in1~combout [2]),
	.datac(\in1~combout [1]),
	.datad(\Mux1~4_combout ),
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
	.combout(\Mux1~8_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux1~8 .lut_mask = "aad8";
defparam \Mux1~8 .operation_mode = "normal";
defparam \Mux1~8 .output_mode = "comb_only";
defparam \Mux1~8 .register_cascade_mode = "off";
defparam \Mux1~8 .sum_lutc_input = "datac";
defparam \Mux1~8 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X8_Y25_N0
stratix_lcell \Mux1~1 (
// Equation(s):
// \Mux1~1_combout  = (\opcode~combout [2] & (\Add1~15_combout  & (!\opcode~combout [1]))) # (!\opcode~combout [2] & (((\opcode~combout [1]))))

	.clk(gnd),
	.dataa(\Add1~15_combout ),
	.datab(\opcode~combout [2]),
	.datac(\opcode~combout [1]),
	.datad(vcc),
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
	.combout(\Mux1~1_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux1~1 .lut_mask = "3838";
defparam \Mux1~1 .operation_mode = "normal";
defparam \Mux1~1 .output_mode = "comb_only";
defparam \Mux1~1 .register_cascade_mode = "off";
defparam \Mux1~1 .sum_lutc_input = "datac";
defparam \Mux1~1 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X8_Y25_N6
stratix_lcell \Mux1~2 (
// Equation(s):
// \Mux1~2_combout  = (\Mux1~1_combout  & ((\in2~combout [2] $ (\in1~combout [2])))) # (!\Mux1~1_combout  & (!\opcode~combout [2] & (\in2~combout [2] & \in1~combout [2])))

	.clk(gnd),
	.dataa(\opcode~combout [2]),
	.datab(\in2~combout [2]),
	.datac(\in1~combout [2]),
	.datad(\Mux1~1_combout ),
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
	.combout(\Mux1~2_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux1~2 .lut_mask = "3c40";
defparam \Mux1~2 .operation_mode = "normal";
defparam \Mux1~2 .output_mode = "comb_only";
defparam \Mux1~2 .register_cascade_mode = "off";
defparam \Mux1~2 .sum_lutc_input = "datac";
defparam \Mux1~2 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X8_Y25_N3
stratix_lcell \Mux1~0 (
// Equation(s):
// \Mux1~0_combout  = (\opcode~combout [1] & (((\ShiftRight0~0_combout  & !\in2~combout [1])) # (!\opcode~combout [2])))

	.clk(gnd),
	.dataa(\opcode~combout [1]),
	.datab(\opcode~combout [2]),
	.datac(\ShiftRight0~0_combout ),
	.datad(\in2~combout [1]),
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
	.combout(\Mux1~0_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux1~0 .lut_mask = "22a2";
defparam \Mux1~0 .operation_mode = "normal";
defparam \Mux1~0 .output_mode = "comb_only";
defparam \Mux1~0 .register_cascade_mode = "off";
defparam \Mux1~0 .sum_lutc_input = "datac";
defparam \Mux1~0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X8_Y25_N4
stratix_lcell \Mux1~3 (
// Equation(s):
// \Mux1~3_combout  = (\Mux1~2_combout  & (((\Mux1~1_combout ) # (!\Mux1~0_combout )))) # (!\Mux1~2_combout  & ((\Mux1~0_combout  & (\ShiftRight0~1_combout  & !\Mux1~1_combout )) # (!\Mux1~0_combout  & ((\Mux1~1_combout )))))

	.clk(gnd),
	.dataa(\ShiftRight0~1_combout ),
	.datab(\Mux1~2_combout ),
	.datac(\Mux1~0_combout ),
	.datad(\Mux1~1_combout ),
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
	.combout(\Mux1~3_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux1~3 .lut_mask = "cf2c";
defparam \Mux1~3 .operation_mode = "normal";
defparam \Mux1~3 .output_mode = "comb_only";
defparam \Mux1~3 .register_cascade_mode = "off";
defparam \Mux1~3 .sum_lutc_input = "datac";
defparam \Mux1~3 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X6_Y25_N5
stratix_lcell \Mux1~9 (
// Equation(s):
// \Mux1~9_combout  = (\opcode~combout [0] & (((\Mux1~3_combout )))) # (!\opcode~combout [0] & (\opcode~combout [1] & (\Mux1~8_combout )))

	.clk(gnd),
	.dataa(\opcode~combout [1]),
	.datab(\Mux1~8_combout ),
	.datac(\opcode~combout [0]),
	.datad(\Mux1~3_combout ),
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
	.combout(\Mux1~9_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux1~9 .lut_mask = "f808";
defparam \Mux1~9 .operation_mode = "normal";
defparam \Mux1~9 .output_mode = "comb_only";
defparam \Mux1~9 .register_cascade_mode = "off";
defparam \Mux1~9 .sum_lutc_input = "datac";
defparam \Mux1~9 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X8_Y24_N0
stratix_lcell \Mux1~10 (
// Equation(s):
// \Mux1~10_combout  = (\Mux1~9_combout ) # ((\Add0~15_combout  & (!\opcode~combout [0] & \Mux4~0_combout )))

	.clk(gnd),
	.dataa(\Add0~15_combout ),
	.datab(\opcode~combout [0]),
	.datac(\Mux1~9_combout ),
	.datad(\Mux4~0_combout ),
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
	.combout(\Mux1~10_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux1~10 .lut_mask = "f2f0";
defparam \Mux1~10 .operation_mode = "normal";
defparam \Mux1~10 .output_mode = "comb_only";
defparam \Mux1~10 .register_cascade_mode = "off";
defparam \Mux1~10 .sum_lutc_input = "datac";
defparam \Mux1~10 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X6_Y25_N0
stratix_lcell \result~1 (
// Equation(s):
// \result~1_combout  = ((\in1~combout [3]) # ((\in2~combout [3])))

	.clk(gnd),
	.dataa(vcc),
	.datab(\in1~combout [3]),
	.datac(vcc),
	.datad(\in2~combout [3]),
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
	.combout(\result~1_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \result~1 .lut_mask = "ffcc";
defparam \result~1 .operation_mode = "normal";
defparam \result~1 .output_mode = "comb_only";
defparam \result~1 .register_cascade_mode = "off";
defparam \result~1 .sum_lutc_input = "datac";
defparam \result~1 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X6_Y25_N3
stratix_lcell \Mux0~3 (
// Equation(s):
// \Mux0~3_combout  = (\Mux1~6_combout  & (\ShiftLeft0~7_combout  & ((\Mux1~5_combout )))) # (!\Mux1~6_combout  & (((\result~1_combout ) # (!\Mux1~5_combout ))))

	.clk(gnd),
	.dataa(\ShiftLeft0~7_combout ),
	.datab(\result~1_combout ),
	.datac(\Mux1~6_combout ),
	.datad(\Mux1~5_combout ),
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
	.combout(\Mux0~3_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux0~3 .lut_mask = "ac0f";
defparam \Mux0~3 .operation_mode = "normal";
defparam \Mux0~3 .output_mode = "comb_only";
defparam \Mux0~3 .register_cascade_mode = "off";
defparam \Mux0~3 .sum_lutc_input = "datac";
defparam \Mux0~3 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X6_Y25_N1
stratix_lcell \Mux0~4 (
// Equation(s):
// \Mux0~4_combout  = (\Mux0~3_combout  & ((\in1~combout [3]) # ((\Mux1~4_combout )))) # (!\Mux0~3_combout  & (((\in1~combout [2] & !\Mux1~4_combout ))))

	.clk(gnd),
	.dataa(\Mux0~3_combout ),
	.datab(\in1~combout [3]),
	.datac(\in1~combout [2]),
	.datad(\Mux1~4_combout ),
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
	.combout(\Mux0~4_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux0~4 .lut_mask = "aad8";
defparam \Mux0~4 .operation_mode = "normal";
defparam \Mux0~4 .output_mode = "comb_only";
defparam \Mux0~4 .register_cascade_mode = "off";
defparam \Mux0~4 .sum_lutc_input = "datac";
defparam \Mux0~4 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X8_Y25_N7
stratix_lcell \Mux0~0 (
// Equation(s):
// \Mux0~0_combout  = (\opcode~combout [1] & (!\opcode~combout [2])) # (!\opcode~combout [1] & (\opcode~combout [2] & (\Add1~0_combout )))

	.clk(gnd),
	.dataa(\opcode~combout [1]),
	.datab(\opcode~combout [2]),
	.datac(\Add1~0_combout ),
	.datad(vcc),
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
	.combout(\Mux0~0_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux0~0 .lut_mask = "6262";
defparam \Mux0~0 .operation_mode = "normal";
defparam \Mux0~0 .output_mode = "comb_only";
defparam \Mux0~0 .register_cascade_mode = "off";
defparam \Mux0~0 .sum_lutc_input = "datac";
defparam \Mux0~0 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X8_Y25_N9
stratix_lcell \Mux0~1 (
// Equation(s):
// \Mux0~1_combout  = (\Mux0~0_combout  & ((\in2~combout [3] $ (\in1~combout [3])))) # (!\Mux0~0_combout  & (!\opcode~combout [2] & (\in2~combout [3] & \in1~combout [3])))

	.clk(gnd),
	.dataa(\Mux0~0_combout ),
	.datab(\opcode~combout [2]),
	.datac(\in2~combout [3]),
	.datad(\in1~combout [3]),
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
	.combout(\Mux0~1_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux0~1 .lut_mask = "1aa0";
defparam \Mux0~1 .operation_mode = "normal";
defparam \Mux0~1 .output_mode = "comb_only";
defparam \Mux0~1 .register_cascade_mode = "off";
defparam \Mux0~1 .sum_lutc_input = "datac";
defparam \Mux0~1 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X8_Y25_N5
stratix_lcell \Mux0~2 (
// Equation(s):
// \Mux0~2_combout  = (\Mux1~0_combout  & ((\Mux0~1_combout  & (\Mux0~0_combout )) # (!\Mux0~1_combout  & (!\Mux0~0_combout  & \ShiftRight0~4_combout )))) # (!\Mux1~0_combout  & ((\Mux0~1_combout ) # ((\Mux0~0_combout ))))

	.clk(gnd),
	.dataa(\Mux1~0_combout ),
	.datab(\Mux0~1_combout ),
	.datac(\Mux0~0_combout ),
	.datad(\ShiftRight0~4_combout ),
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
	.combout(\Mux0~2_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux0~2 .lut_mask = "d6d4";
defparam \Mux0~2 .operation_mode = "normal";
defparam \Mux0~2 .output_mode = "comb_only";
defparam \Mux0~2 .register_cascade_mode = "off";
defparam \Mux0~2 .sum_lutc_input = "datac";
defparam \Mux0~2 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X8_Y24_N7
stratix_lcell \Mux0~5 (
// Equation(s):
// \Mux0~5_combout  = (\opcode~combout [0] & (((\Mux0~2_combout )))) # (!\opcode~combout [0] & (\Mux0~4_combout  & (\opcode~combout [1])))

	.clk(gnd),
	.dataa(\Mux0~4_combout ),
	.datab(\opcode~combout [0]),
	.datac(\opcode~combout [1]),
	.datad(\Mux0~2_combout ),
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
	.combout(\Mux0~5_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux0~5 .lut_mask = "ec20";
defparam \Mux0~5 .operation_mode = "normal";
defparam \Mux0~5 .output_mode = "comb_only";
defparam \Mux0~5 .register_cascade_mode = "off";
defparam \Mux0~5 .sum_lutc_input = "datac";
defparam \Mux0~5 .synch_mode = "off";
// synopsys translate_on

// Location: LC_X8_Y24_N1
stratix_lcell \Mux0~6 (
// Equation(s):
// \Mux0~6_combout  = (\Mux0~5_combout ) # ((\Add0~0_combout  & (!\opcode~combout [0] & \Mux4~0_combout )))

	.clk(gnd),
	.dataa(\Add0~0_combout ),
	.datab(\opcode~combout [0]),
	.datac(\Mux0~5_combout ),
	.datad(\Mux4~0_combout ),
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
	.combout(\Mux0~6_combout ),
	.regout(),
	.cout(),
	.cout0(),
	.cout1());
// synopsys translate_off
defparam \Mux0~6 .lut_mask = "f2f0";
defparam \Mux0~6 .operation_mode = "normal";
defparam \Mux0~6 .output_mode = "comb_only";
defparam \Mux0~6 .register_cascade_mode = "off";
defparam \Mux0~6 .sum_lutc_input = "datac";
defparam \Mux0~6 .synch_mode = "off";
// synopsys translate_on

// Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \overflow~I (
	.datain(\Mux4~3_combout ),
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
	.padio(overflow),
	.dqsundelayedout());
// synopsys translate_off
defparam \overflow~I .ddio_mode = "none";
defparam \overflow~I .input_async_reset = "none";
defparam \overflow~I .input_power_up = "low";
defparam \overflow~I .input_register_mode = "none";
defparam \overflow~I .input_sync_reset = "none";
defparam \overflow~I .oe_async_reset = "none";
defparam \overflow~I .oe_power_up = "low";
defparam \overflow~I .oe_register_mode = "none";
defparam \overflow~I .oe_sync_reset = "none";
defparam \overflow~I .operation_mode = "output";
defparam \overflow~I .output_async_reset = "none";
defparam \overflow~I .output_power_up = "low";
defparam \overflow~I .output_register_mode = "none";
defparam \overflow~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \result[0]~I (
	.datain(\Mux3~4_combout ),
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
	.padio(result[0]),
	.dqsundelayedout());
// synopsys translate_off
defparam \result[0]~I .ddio_mode = "none";
defparam \result[0]~I .input_async_reset = "none";
defparam \result[0]~I .input_power_up = "low";
defparam \result[0]~I .input_register_mode = "none";
defparam \result[0]~I .input_sync_reset = "none";
defparam \result[0]~I .oe_async_reset = "none";
defparam \result[0]~I .oe_power_up = "low";
defparam \result[0]~I .oe_register_mode = "none";
defparam \result[0]~I .oe_sync_reset = "none";
defparam \result[0]~I .operation_mode = "output";
defparam \result[0]~I .output_async_reset = "none";
defparam \result[0]~I .output_power_up = "low";
defparam \result[0]~I .output_register_mode = "none";
defparam \result[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \result[1]~I (
	.datain(\Mux2~3_combout ),
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
	.padio(result[1]),
	.dqsundelayedout());
// synopsys translate_off
defparam \result[1]~I .ddio_mode = "none";
defparam \result[1]~I .input_async_reset = "none";
defparam \result[1]~I .input_power_up = "low";
defparam \result[1]~I .input_register_mode = "none";
defparam \result[1]~I .input_sync_reset = "none";
defparam \result[1]~I .oe_async_reset = "none";
defparam \result[1]~I .oe_power_up = "low";
defparam \result[1]~I .oe_register_mode = "none";
defparam \result[1]~I .oe_sync_reset = "none";
defparam \result[1]~I .operation_mode = "output";
defparam \result[1]~I .output_async_reset = "none";
defparam \result[1]~I .output_power_up = "low";
defparam \result[1]~I .output_register_mode = "none";
defparam \result[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \result[2]~I (
	.datain(\Mux1~10_combout ),
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
	.padio(result[2]),
	.dqsundelayedout());
// synopsys translate_off
defparam \result[2]~I .ddio_mode = "none";
defparam \result[2]~I .input_async_reset = "none";
defparam \result[2]~I .input_power_up = "low";
defparam \result[2]~I .input_register_mode = "none";
defparam \result[2]~I .input_sync_reset = "none";
defparam \result[2]~I .oe_async_reset = "none";
defparam \result[2]~I .oe_power_up = "low";
defparam \result[2]~I .oe_register_mode = "none";
defparam \result[2]~I .oe_sync_reset = "none";
defparam \result[2]~I .operation_mode = "output";
defparam \result[2]~I .output_async_reset = "none";
defparam \result[2]~I .output_power_up = "low";
defparam \result[2]~I .output_register_mode = "none";
defparam \result[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
stratix_io \result[3]~I (
	.datain(\Mux0~6_combout ),
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
	.padio(result[3]),
	.dqsundelayedout());
// synopsys translate_off
defparam \result[3]~I .ddio_mode = "none";
defparam \result[3]~I .input_async_reset = "none";
defparam \result[3]~I .input_power_up = "low";
defparam \result[3]~I .input_register_mode = "none";
defparam \result[3]~I .input_sync_reset = "none";
defparam \result[3]~I .oe_async_reset = "none";
defparam \result[3]~I .oe_power_up = "low";
defparam \result[3]~I .oe_register_mode = "none";
defparam \result[3]~I .oe_sync_reset = "none";
defparam \result[3]~I .operation_mode = "output";
defparam \result[3]~I .output_async_reset = "none";
defparam \result[3]~I .output_power_up = "low";
defparam \result[3]~I .output_register_mode = "none";
defparam \result[3]~I .output_sync_reset = "none";
// synopsys translate_on

endmodule
