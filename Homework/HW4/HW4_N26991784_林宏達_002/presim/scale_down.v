`timescale 1ns/10ps
module scale_down(
					clk, reset, in, 	//input
					out, display, ask);	//output
input	clk, reset;
input   [7:0] in;
output  [7:0] out;
output	display;
output  ask;



wire [7:0] out;
reg	display;
reg ask;

reg [7:0] data [255:0];

reg [2:0] state;
reg [2:0] next_state;

reg write;

reg [7:0] countersv;
reg [5:0] counter1;
reg scaledown;

integer i;


wire [7:0] addr1;
wire [7:0] addr2;
wire [7:0] addr3;
wire [7:0] addr4;
reg [7:0] A;
reg [7:0] B;
reg [7:0] C;
reg [7:0] D;

parameter	S0 = 3'd0,
			S1 = 3'd1,
			S2 = 3'd2,
			S3 = 3'd3,
			S4 = 3'd4;
	
			
always @ (posedge clk)
begin
	if (reset)
		for(i=0;i<256;i=i+1)
		data[i] <= 8'd0;
	else if(write)
		data[countersv] <= in;
end

always @ (posedge clk)
begin
	if (reset)
	countersv <= 8'd0;
	else
	if (write) begin
		if (countersv==8'd255)
		countersv <= 8'd0;
		else
		countersv <= countersv + 1;
	end
end



always @ (posedge clk or posedge reset)
begin
	if (reset)
	state <= S0;
	else
	state <= next_state;
end


always @ (state or countersv or counter1)
begin
	case (state)
	S0	:	next_state = S1;
	S1	:	begin
			if(countersv==8'd255)
			next_state = S2;
			else
			next_state = S1;
			end
	S2	:	next_state = S3;
	S3	:	next_state = S4;
 default:	begin
			if(counter1==6'd63)
			next_state = S1;
			else
			next_state = S2;
			end	
	endcase
end


always @ (posedge clk)
begin
	if (reset)
	counter1 <= 6'd0;
	else if (scaledown)
	begin
		if (counter1==6'd63)
		counter1 <= 6'd0;
		else
		counter1 <= counter1 + 1;
	end
end

assign addr1 = (scaledown)?data[({counter1,1'd0}+8'd0)]:8'd0;
assign addr2 = (scaledown)?data[({counter1,1'd0}+8'd1)]:8'd0;
assign addr3 = (scaledown)?data[({counter1,1'd0}+8'd128)]:8'd0;
assign addr4 = (scaledown)?data[({counter1,1'd0}+8'd129)]:8'd0;

/*
always @ (posedge clk)
begin
	if (reset)
	begin
	addr1 = 8'd0;
	addr2 = 8'd0;
	addr3 = 8'd0;
	addr4 = 8'd0;
	end
	else if (scaledown)
	begin
	addr1 = data[0];//{counter1*2}+8'd0;
	addr2 = data[0];//{counter1*2}+8'd1;
	addr3 = data[0];//{counter1*2}+8'd128;
	addr4 = data[0];//{counter1*2}+8'd129;
	end
end
*/

/*
assign A = (state==S3)?addr1:8'd0;//(state==S3)?{2'd0,addr1[7:2]}:8'd0;
assign B = (state==S3)?{2'd0,addr2[7:2]}:8'd0;
assign C = (state==S3)?{2'd0,addr3[7:2]}:8'd0;
assign D = (state==S3)?{2'd0,addr4[7:2]}:8'd0;
*/	
always @ (posedge clk)
begin
	if (reset) begin
	A = 8'd0;
	B = 8'd0;
	C = 8'd0;
	D = 8'd0;
	end	
	else if (state==S2)
	begin
	A = {2'd0,addr1[7:2]};
	B = {2'd0,addr2[7:2]};
	C = {2'd0,addr3[7:2]};
	D = {2'd0,addr4[7:2]};
	end
end

assign out = (display)?(A+B+C+D):8'd0;

always @ (state)
begin
	case (state)
	S0	:	begin  			//reset
			ask = 0;
			display = 0;
			write = 0;
			scaledown = 0;
			end
	S1	:	begin
			ask = 1;
			display = 0;
			write = 1;
			scaledown = 0;
			end	
	S2	:	begin
			ask = 0;
			display = 0;
			write = 0;
			scaledown = 1;
			end	
	S3	:	begin
			ask = 0;
			display = 0;
			write = 0;
			scaledown = 0;
			end
 default:	begin
			ask = 0;
			display = 1;
			write = 0;
			scaledown = 0;		
			end
	endcase
end
	
endmodule
