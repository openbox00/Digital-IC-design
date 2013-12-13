`timescale 1ns/10ps
`define CYCLE 100
module scale_down_tb;
wire	[7:0] out;
wire	display;
wire	ask;
reg	clk, reset;
reg	[7:0] image[0:16383];  //16384=128x128
reg	[7:0] in;
reg	[14:0] counter;
integer i;
integer error;
integer fp;


scale_down test(clk, reset, in, out, display, ask);


initial
begin
	clk = 0;
	#`CYCLE
	  reset = 1;
	#(`CYCLE*5)
	  reset = 0;

end

always
begin
	#`CYCLE
	  clk = ~clk;
end

initial
begin
	fp = $fopen("lena64.dat");
	$readmemh("lena128.dat", image);
	i=0;
	error=0;
		
	for(counter = 15'd0; counter <= 15'd16383; counter = counter + 1)
	begin
		#(`CYCLE*2)
		if(ask == 1)
			in <= image[counter];
		else
			counter = counter - 1;	
	end   		
end

always @(posedge clk)
begin
	if(display)
	begin
	    if(out[7:0]===8'dx) error=error+1;
		$fdisplay(fp, out[7:0]);
		i=i+1; 
		if(i==1024)  $display("1/4 finish\n");
	    else if(i==2048) $display("2/4 finish\n");
	    else if(i==3076) $display("3/4 finish\n");
	end
	
	if(i==4096)
	begin
	$display("4/4 finish\n");
	$display("finish time %d ns\n",$time);
	$display("unknown output= %d \n",error);
	$fclose(fp);
	$stop;
	end
end  
endmodule
