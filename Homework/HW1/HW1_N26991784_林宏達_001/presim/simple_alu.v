`timescale 1ns/10ps


module simple_alu(
        opcode,
        in1,
        in2,
        overflow,
        result
        );

`define NOP 	3'd0
`define AND		3'd1
`define OR		3'd2
`define XOR		3'd3
`define ADD		3'd4
`define SUB		3'd5
`define SLLI	3'd6
`define SRLI	3'd7		
		
input   [2:0]   opcode;    
input   [3:0]   in1;
input   [3:0]   in2;
output  reg        overflow;
output  reg [3:0]   result;

always @ (*)
	begin
		case (opcode)
		`AND	:	begin
					result = in1&in2;
					overflow = 1'd0;
					end
		`OR		:	begin
					result = in1|in2;
					overflow = 1'd0;
					end
		`XOR	:	begin
					result = in1^in2;
					overflow = 1'd0;
					end
		`ADD	:	begin
					result = in1 + in2;
					if((!in1[3] && !in2[3] && result[3]) || 
					(in1[3] && in2[3] && !result[3])) 
					overflow = 1;
				else overflow = 0;
					end			
		`SUB	:	begin
					result = in1 - in2;
					if((!in1[3] && in2[3] && result[3]) || 
					(in1[3] && !in2[3] && !result[3])) 
					overflow = 1;
					else overflow = 0;
					end
		`SLLI	:	begin
					result = in1<<in2;
                    overflow  = 1'b0;
					end
		`SRLI	:	begin
					result = in1>>in2;
                    overflow = 1'b0;
					end
		default	:	begin
					result = 4'd0;
					overflow = 1'd0;
					end		
		endcase	
	end


endmodule