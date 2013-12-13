`timescale 1ns/10ps

module Mask(
		data_out,
		out_valid,
		busy,
		data_in,
		clk,
		rst);
output [7:0] data_out;
output out_valid;
output busy;
input [7:0] data_in;
input clk;
input rst;
/*---------------------------------------
              Your Code
---------------------------------------*/
reg [7:0] data [47:0];



reg [3:0] next_state;
reg [3:0] state;

reg [3:0] count4;
reg [1:0] rcount;
reg [3:0] final;
reg [3:0] count;
reg [5:0] addr;
reg [1:0] read1count;
reg [1:0] read15count;

wire [7:0] data_out;
reg out_valid;
reg busy;
reg [7:0] mask_result;
reg sel_out;
wire [7:0] read_data1;
wire [7:0] read_data15;
wire [7:0] temp1;
wire [7:0] temp2;
wire [7:0] data_mem;
wire [7:0] read_data;
wire [7:0] mem;
wire [7:0] last_out;
reg sel_final;
reg sel_in;



integer i;


parameter [3:0] S0 = 4'd1, //reset state
                S1 = 4'd2,
                S2 = 4'd3,
                S3 = 4'd4,
				S4 = 4'd5,
				S5 = 4'd6,
				S6 = 4'd7,
				S7 = 4'd8,
				S8 = 4'd0;
					

always @ (posedge clk)
	begin
		if (rst) state <= S8;
		else state <= next_state;
	end

	
always @(state or addr or count or final or count4)
begin
		case(state)
		default:next_state = S0;
		S0: next_state = S1;		//rst
		S1: if(addr==6'd15)			//first
			next_state = S2;     
			else
			next_state = S1; 			
		S2: if(addr==6'd47)			//write 2~3
			next_state = S3;     
			else
			next_state = S2; 
		S3:	next_state = S4;        //read first1
		S4:	if(count4==4'd13)
			next_state = S5; 
			else
			next_state = S4; //2~15
		S5: next_state = S6; 		//read last
		S6: if(final==4'd14)
				if(count==4'd15)		//write 2
				next_state = S7; 
				else
				next_state = S6; 				
			else begin
				if(count==4'd15)		//write 2
				next_state = S3; 
				else
				next_state = S6; 
			end
		S7: if(count==4'd15)			//first
			next_state = S1;     
			else
			next_state = S7; 
		//default: next_state = S1;
		endcase  
	end	

always@(posedge clk)
begin
	if(rst) begin
		for(i=0;i<48;i=i+1)
		data[i] <= 8'd0;
	end
	else if(busy==0) begin
		data[addr] <= data_in;	 
	end
end

always @ (posedge clk)
begin
	if(rst) 
	addr <= 6'd0;
	else if(busy==0) begin
	if (addr==6'd47) 
    addr <= 6'd0;
	else
	addr <= addr + 1;
	end
end
	
always @ (posedge clk)begin
	if(rst) 
	count4 <= 4'd0;
	else if (state==S4)	begin
				if (count4==4'd13) 
				count4 <= 4'd0;
				else
				count4 <= count4 + 1;
			end
end

always @ (posedge clk)begin
	if(rst) 
	count <= 4'd0;

	else if (state==S6 ||state==S7)	begin
				if (count==4'd15) 
				count <= 4'd0;
				else
				count <= count + 1;
			end
		
end


always @ (posedge clk)begin
	if (rst)
	rcount = 2'd0;
	if (state==S5 )	begin
				if (rcount==4'd2) 
				rcount <= 4'd0;
				else
				rcount <= rcount + 1;
			end
	else rcount <= rcount;
end

always @ (posedge clk)begin
	if(rst) 
	final <= 4'd0;
	else if (next_state == S6)
			if (final==4'd14)
			final <= 4'd0;
			else
			final <= final + 1;

end


always @ (*)
begin
	if(state==S4) begin
		case(rcount)
		2'd0	:	begin    
						mask_result = {4'd0,data[count4][7:4]} + {4'd0,data[count4+2'd2][7:4]} + {4'd0,data[count4+6'd32][7:4]} + {4'd0,data[count4+6'd34][7:4]}
						+ {3'd0,data[count4+1'd1][7:3]} + {3'd0,data[count4+5'd16][7:3]} + {3'd0,data[count4+5'd18][7:3]} + {3'd0,data[count4+6'd33][7:3]}
						+ {2'd0,data[count4+5'd17][7:2]} ;
					end
		2'd1	:	begin
						mask_result = {4'd0,data[count4][7:4]} + {4'd0,data[count4+2'd2][7:4]} + {4'd0,data[count4+5'd16][7:4]} + {4'd0,data[count4+5'd18][7:4]}
						+ {3'd0,data[count4+1'd1][7:3]} + {3'd0,data[count4+5'd17][7:3]} + {3'd0,data[count4+6'd32][7:3]} + {3'd0,data[count4+6'd34][7:3]}
						+ {2'd0,data[count4+6'd33][7:2]} ;						
					end
		2'd2	:	begin
						mask_result = {4'd0,data[count4+6'd32][7:4]} + {4'd0,data[count4+6'd34][7:4]} + {4'd0,data[count4+5'd16][7:4]} + {4'd0,data[count4+5'd18][7:4]}
						+ {3'd0,data[count4][7:3]} + {3'd0,data[count4+2'd2][7:3]} + {3'd0,data[count4+5'd17][7:3]} + {3'd0,data[count4+6'd33][7:3]}
						+ {2'd0,data[count4+1'd1][7:2]}	;							
					end		
		default :  	begin
					mask_result = 8'd0;
					end
		endcase
		end
		else begin
			mask_result = 8'd0;
		end
end	


always @ (posedge clk)begin
	if(rst) 
	read1count <= 2'd1;
	else if (state==S3)	begin
				if (read1count==2'd2) 
				read1count <= 2'd0;
				else
				read1count <= read1count + 1;
			end
end

always @ (posedge clk)begin
	if(rst) 
	read15count <= 2'd1;
	else if (state==S5)	begin
				if (read15count==2'd2) 
				read15count <= 2'd0;
				else
				read15count <= read15count + 1;
			end
end

assign temp1 = data[{read1count[1:0],4'd0}];
assign temp2 = data[6'd15+{read15count[1:0],4'd0}];

assign read_data1 = (state==S3)?temp1:(8'd0);
assign read_data15 = (state==S5)?temp2:(8'd0);
assign read_data = (state==S3)?read_data1:read_data15;
assign data_mem = (sel_in)?data_in:read_data;
assign last_out = (sel_out)?data_mem:mask_result[7:0];
assign data_out = (sel_final)?mem:last_out;

assign mem = data[count];

always @(state)
begin
		case(state)
		default: begin
			sel_in = 1;
			sel_out = 1;
			busy = 1;
			out_valid =	0;
			sel_final = 0;
		end
		S0: begin
			sel_in = 1;
			sel_out = 1;
			busy = 1;
			out_valid =	0;
			sel_final = 0;
		end
		S1: begin
			sel_in = 1;
			sel_out = 1;
			busy = 0;
			out_valid =	1;
			sel_final = 0;
			end			
		S2: begin
			sel_in = 1;
			sel_out = 1;
			busy = 0;
			out_valid = 0;	
			sel_final = 0;
			end 
		S3:	begin
			sel_in = 0;
			sel_out = 1;
			busy = 1;
			out_valid = 1;	
			sel_final = 0;
			end
		S4:	begin
			sel_in = 1;
			sel_out = 0;
			busy = 1;
			out_valid =	1;
			sel_final = 0;
			end
		S5: begin
			sel_in = 0;
			sel_out = 1;
			busy = 1;
			out_valid =	1;
			sel_final = 0;
			end
		S6: begin
			sel_in = 1;
			sel_out = 1;
			busy = 0;
			out_valid =	0;
			sel_final = 0;
			end
		S7: begin
			sel_in = 1;
			sel_out = 1;
			busy = 1;
			out_valid = 1;
			sel_final = 1;			
			end
		endcase  
	end	

endmodule

