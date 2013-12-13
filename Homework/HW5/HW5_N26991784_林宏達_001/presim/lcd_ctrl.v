`timescale 1ns/10ps

module lcd_ctrl(clk, reset, datain, cmd, cmd_valid, dataout, output_valid, busy);
input clk;
input reset;
input [7:0] datain;
input [2:0] cmd;
input cmd_valid;
output [7:0] dataout;
output output_valid;
output busy;

reg [7:0] dataout;
reg output_valid;
reg busy;
reg [7:0] data [35:0];
reg [3:0] counter;
reg [5:0] countersv;
reg [1:0] state;
reg [1:0] next_state;

reg [1:0] x;
reg [1:0] y;

reg axisena;

integer i;

reg [1:0] x_tmp;
reg [1:0] y_tmp;

wire [7:0] result1;
wire [7:0] result2;
wire [7:0] result3;
wire [7:0] result4;
wire [7:0] result5;
wire [7:0] result6;
wire [7:0] result7;
wire [7:0] result8;
wire [7:0] result9;

reg	[5:0] addr1;
reg	[5:0] addr2;
reg	[5:0] addr3;

reg write;
reg addrena;
reg	[5:0] addr1_tmp;
reg	[5:0] addr2_tmp;
reg	[5:0] addr3_tmp;

	parameter 	Reflash	 = 3'd0,
				LoadData = 3'd1,
				ShiftRight = 3'd2,
				ShiftLeft = 3'd3,
				ShiftUp = 3'd4,
				ShiftDown = 3'd5;
				
	parameter	S0 = 3'd0,
				S1 = 3'd1,
				S2 = 3'd2,
				S3 = 3'd3;
								
always @ (posedge clk or posedge reset)
begin
	if (reset)
	state = S0;
	else
	state = next_state;
end

always @ (state or countersv or counter or cmd)
begin
	case (state)

	S0	:	next_state = S1;	//reset
	S1	:	if(cmd==LoadData)
			next_state = S2;
			else
			next_state = S3;
	S2	:	if(countersv==6'd35)
			next_state = S3;
			else
			next_state = S2;
	S3	:	if(counter==4'd8)
			next_state = S1;
			else
			next_state = S3;
default :	next_state = S1;
	endcase
end

always @ (state)
begin
	case (state)
	S0	:	begin			//reset
			busy = 1;
			output_valid = 0;
			axisena = 0;
			write = 0;
			addrena = 0;
			end
	S1	:	begin
			busy = 0;
			output_valid = 0;
			axisena = 1;
			write = 0;
			addrena = 1;
			end
	S2	:	begin
			busy = 1;
			output_valid = 0;
			axisena = 0;
			write = 1;
			addrena = 0;
			end
	S3	:	begin
			busy = 1;
			output_valid = 1;
			axisena = 0;
			write = 0;
			addrena = 0;
			end			
default : 	begin
			busy = 0;
			output_valid = 0;
			axisena = 0;
			write = 0;
			addrena = 0;
			end
	endcase
end


always @ (posedge clk or posedge reset)
begin
	if (reset)
	for(i=0;i<36;i=i+1)
	data[i] <= 8'd0;
	else if (write)
	data[countersv] <= datain;
end

always @ (posedge clk)
begin
	if (reset)
	countersv <= 6'd0;
	else if(write)
	begin
		if(countersv==6'd35)
		countersv <= 6'd0;
		else
		countersv <= countersv + 6'd1;
	end
end

always @ (posedge clk)
begin
	if (reset)
	counter <= 4'd0;
	else if(output_valid==1)
	begin
		if(counter==4'd8)
		counter <= 4'd0;
		else
		counter = counter + 4'd1;
	end
end

always @ (cmd or axisena or x or y)
begin
	if (axisena)begin
	case (cmd)
	Reflash		:	begin
					x_tmp = x;
					y_tmp = y;
					end
	LoadData 	:	begin
					x_tmp = x;
					y_tmp = y;
					end
	ShiftRight	:	begin
					y_tmp = y;
					if (x==2'd3)
					x_tmp = x;
					else
					x_tmp = x + 2'd1;
					end
	ShiftLeft 	:	begin
					y_tmp = y;
					if (x==2'd0)
					x_tmp = x;
					else
					x_tmp = x - 2'd1;
					end
	ShiftUp		:	begin
					x_tmp = x;
					if (y==2'd0)
					y_tmp = y;
					else
					y_tmp = y - 2'd1;
					end
	ShiftDown	:	begin
					x_tmp = x;
					if (y==2'd3)
					y_tmp = y;
					else
					y_tmp = y + 2'd1;
					end
	default		:	begin
					x_tmp = x;
					y_tmp = y;
					end
	endcase
	end
	else begin
	x_tmp = x;
	y_tmp = y;
	end
end

always @ (posedge clk)
begin
  if(reset) 
    begin
      x <= 2'd2;
      y <= 2'd2;
    end
  else if(axisena)
    begin 
      x <= x_tmp;
      y <= y_tmp;    
    end
end

always @ (posedge clk)
begin
	if (reset)
	begin
	addr1 <= 6'd14;
	addr2 <= 6'd20;
	addr3 <= 6'd26;
	end
	else if (addrena)
	begin
	addr1 <= addr1_tmp;
	addr2 <= addr2_tmp;
	addr3 <= addr3_tmp;
	end
end

always @ (cmd or addrena or addr1 or addr2 or addr3 or x or y)
begin
	if (addrena)begin
	case (cmd)
	Reflash		:	begin
					addr1_tmp = addr1;
					addr2_tmp = addr2;
					addr3_tmp = addr3;
					end
	LoadData 	:	begin
					addr1_tmp = 6'd14;
					addr2_tmp = 6'd20;
					addr3_tmp = 6'd26;
					end
	ShiftRight	:	if (addr1==6'd3 || addr1==6'd9 || addr1==6'd15 || addr1==6'd21)
					begin
					addr1_tmp = addr1;
					addr2_tmp = addr2;
					addr3_tmp = addr3;
					end
					else begin
					addr1_tmp = addr1 + 6'd1;
					addr2_tmp = addr2 + 6'd1;
					addr3_tmp = addr3 + 6'd1;
					end
	ShiftLeft 	:	if (addr1==6'd0 || addr1==6'd6 || addr1==6'd12 || addr1==6'd18)
					begin
					addr1_tmp = addr1;
					addr2_tmp = addr2;
					addr3_tmp = addr3;
					end
					else begin
					addr1_tmp = addr1 - 6'd1;
					addr2_tmp = addr2 - 6'd1;
					addr3_tmp = addr3 - 6'd1;
					end
	ShiftUp		:	if (addr1==6'd0 || addr1==6'd1 || addr1==6'd2 || addr1==6'd3)
					begin
					addr1_tmp = addr1;
					addr2_tmp = addr2;
					addr3_tmp = addr3;
					end
					else begin
					addr1_tmp = addr1 - 6'd6;
					addr2_tmp = addr2 - 6'd6;
					addr3_tmp = addr3 - 6'd6;
					end
	ShiftDown	:	if (addr1==6'd18 || addr1==6'd19 || addr1==6'd20 || addr1==6'd21)
					begin
					addr1_tmp = addr1;
					addr2_tmp = addr2;
					addr3_tmp = addr3;
					end
					else begin
					addr1_tmp = addr1 + 6'd6;
					addr2_tmp = addr2 + 6'd6;
					addr3_tmp = addr3 + 6'd6;
					end
	default		:	begin
					addr1_tmp = 6'd14;
					addr2_tmp = 6'd20;
					addr3_tmp = 6'd26;
					end
	endcase
	end
	else begin
		 addr1_tmp = addr1;
		 addr2_tmp = addr2;
		 addr3_tmp = addr3;
		 end
	
end

assign result1 = data[addr1];
assign result2 = data[addr1+6'd1];
assign result3 = data[addr1+6'd2];
assign result4 = data[addr2];
assign result5 = data[addr2+6'd1];
assign result6 = data[addr2+6'd2];
assign result7 = data[addr3];
assign result8 = data[addr3+6'd1];
assign result9 = data[addr3+6'd2];


always @ (counter or result1 or result2 or result3 or result4 or result5 or result6 or result7 or result8 or result9)
begin
	case (counter)
	4'd0	:	dataout = result1;
	4'd1	:	dataout = result2;
	4'd2	:	dataout = result3;
	4'd3	:	dataout = result4;
	4'd4	:	dataout = result5;
	4'd5	:	dataout = result6;
	4'd6	:	dataout = result7;
	4'd7	:	dataout = result8;
	4'd8	:	dataout = result9;
	default	:	dataout = 8'd0;
	endcase
end

endmodule
