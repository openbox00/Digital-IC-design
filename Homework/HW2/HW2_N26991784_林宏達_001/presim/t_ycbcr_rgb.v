`timescale 1ns/10ps
`define CYCLE    20  
`define DATA_IN   "hw2_in.dat"
`define DATA_OUT  "hw2_out.dat"
module tb;

reg  clk, reset;
reg  [7:0] in_data;
wire [15:0] R, G, B;
reg  [15:0] R_exp, G_exp, B_exp;
reg  [7:0] test_in [59:0];
reg  [49:0]test_out[19:0];

integer err,i,j;
reg [15:0] numR,numG,numB;

initial $readmemh(`DATA_IN, test_in);
initial $readmemb(`DATA_OUT,test_out);


ycbcr_rgb HW2(.clk(clk), .reset(reset), .in_data(in_data), .R(R), .G(G), .B(B));
 
always #(`CYCLE/2) clk=~clk;

initial
begin
    reset = 0; clk = 0;
    #(`CYCLE/4)
    reset = 1;
    #(`CYCLE/2)
    reset = 0;
end

initial
begin     
  #(`CYCLE/4*5)
  for(i=0;i<60;i=i+1) begin
      in_data=test_in[i];
      #(`CYCLE);
  end
  
end

initial
begin
  err = 0;  
  #(`CYCLE*5) 
  for(j=0;j<20;j=j+1) begin
      {R_exp, G_exp, B_exp}=test_out[j];
      numR = ( R >= R_exp ) ? ( R - R_exp) : ( R_exp - R  );
      numG = ( G >= G_exp ) ? ( G - G_exp) : ( G_exp - G  );
      numB = ( B >= B_exp ) ? ( B - B_exp) : ( B_exp - B  );
      $display("numR=%d\tnumG=%d\tnumB=%d",numR,numG,numB);
      if((numR < 8'd128) && (numG < 8'd128) && (numB < 8'd128) ) begin
  	      $display("GOOD",);
  	   end
      else begin
     	   $display("(ERROR)The difference is larger then 0.5, (R G B) = %b\t\t\t%b\t\t\t%b\t (R_exp G_exp B_exp) = %b\t\t\t%b\t\t\t%b",R,G,B,R_exp,G_exp,B_exp);
     	   err = err + 1 ;
 	   end
     	#(`CYCLE*3);
  end
  
   
  if (err == 0)begin
     $display("All data have been generated successfully!\n");
     $display("-------------------PASS-------------------\n");
  end
  else begin
     $display("There are %d errors!\n", err);
     $display("---------------------------------------------\n");
  end
  #(`CYCLE*2);
     $stop;
 
end


endmodule
