`timescale 1ns/10ps
`define CYCLE	37.1
`define PAT		"./Mask_data.dat"
`define EXP		"./Mask_ans.dat"

module t_Mask;
parameter N_PAT   = 256;
parameter N_EXP   = 256;

wire [7:0] data_out;
wire out_valid;
wire busy;
reg [7:0] data_in;
reg clk;
reg rst;

reg [7:0] pat_mem [0:N_PAT-1];
reg [7:0] exp_mem [0:N_EXP-1];
reg [7:0] out_temp;

integer i;
integer err_cnt;
integer pass;
integer exp_num;
reg over;

initial	$readmemh (`PAT, pat_mem);
initial	$readmemh (`EXP, exp_mem);

Mask top(.data_out(data_out),
		.out_valid(out_valid),
		.busy(busy),
		.data_in(data_in),
		.clk(clk),
		.rst(rst));

initial begin
	data_in = 8'd0;
	clk = 1'd0;
	rst = 1'd0;
	
	over = 1'b0;
	exp_num = 0;
	err_cnt = 0;
	pass = 0;
end

always begin #(`CYCLE/2) clk = ~clk; end

initial begin
$dumpfile("Mask.vcd");
$dumpvars;
//$fsdbDumpfile("Mask.fsdb");
//$fsdbDumpvars;
end


initial begin
   @(negedge clk)  rst = 1'b1;
   #`CYCLE         rst = 1'b0;
   
   @(negedge clk)    i=0;
    while (i <= N_PAT) begin               
      if(!busy) begin
         data_in = pat_mem[i];
         i=i+1;
      end
      else begin
         data_in = 'hz; 
      end
      @(negedge clk); 
    end
end

always @(posedge clk)begin
   out_temp = exp_mem[exp_num];
   if(out_valid)begin
      if(data_out !== out_temp) begin
         $display("ERROR at %3d:output %6h !=expect %6h " ,exp_num, data_out, out_temp);
         err_cnt = err_cnt + 1 ;  
      end
      else begin      
         pass = pass + 1 ;
      end
      #1 exp_num = exp_num + 1;
   end
   if(exp_num === N_EXP)  over = 1'b1;         
end


initial begin
      @(posedge over)      
      if(exp_num!='d0) begin
         $display("-----------------------------------------------------\n");
         if (err_cnt == 0)  begin
            $display("Congratulations! All data have been generated successfully!\n");
            $display("-------------------------PASS------------------------\n");
         end
         else begin
            $display("There are %d err_cntors!\n", err_cnt);
            $display("-----------------------------------------------------\n");
         end
      end
      else begin
        $display("-----------------------------------------------------\n");
        $display("Error!!! Somethings' wrong with your code ...!\n");
        $display("-------------------------FAIL------------------------\n");
        $display("-----------------------------------------------------\n");
      end
      #(`CYCLE/2); $finish;
end

endmodule
