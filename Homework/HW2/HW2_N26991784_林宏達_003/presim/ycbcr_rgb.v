`timescale 1ns/10ps

module ycbcr_rgb(clk,reset,in_data,R,G,B);
    input clk,reset;
    input [7:0] in_data;
    output[15:0] R,G,B;
    
    /*  Your Code  */
    wire [15:0] R_tmp,G_tmp,B_tmp; 
    reg [15:0] R, G, B;    
    reg [15:0] R_reg,G_reg,B_reg;
    reg [7:0] data_reg;    
    reg [1:0] present_state;
    reg [1:0] next_state;
    reg [18:0] Radd, Gadd, Badd;
    reg [18:0] Rmul, Gmul, Bmul;
	reg [1:0] sel;
	
    parameter [1:0] S0 = 2'b00, //reset state
                    S1 = 2'b01,
                    S2 = 2'b10,
                    S3 = 2'b11; 

    parameter [18:0] mux0 = 17'd0,
                     mux1 = 17'd256,
                     mux2 = 17'd351,//1.371
					 mux3 = 17'd44925,//128
                     mux4 = 17'd179,//0.699 
					 mux5 = 17'd86,//0.3359 
					 mux6 = 17'd33882,//1.7304 
					 mux7 = 17'd443,
					 mux8 = 17'd56754;
					 
					 

	
	always @ (posedge clk or posedge reset)
	begin
		if (reset) present_state <= S0;
		else present_state <= next_state;
	end
	
	always @ (posedge clk or posedge reset)
	begin 
		if(reset)begin
		data_reg <= 8'd0;
		R <= 16'd0;    
		G <= 16'd0;    
		B <= 16'd0;
		R_reg  <= 16'd0;    
		G_reg <= 16'd0;    
		B_reg <= 16'd0;      
	end
		
	else if(present_state==S3)begin
		data_reg <= in_data;    
		R <= R_tmp;   
		G <= G_tmp;    
		B <= B_tmp; 
		R_reg <= R_reg;    
		G_reg <= G_reg;    
		B_reg <= B_reg;      
    end 
    
	else 
		begin
		data_reg <= in_data; 
		R <= R;   
		G <= G;    
		B <= B;      
		R_reg <= R_tmp;    
		G_reg <= G_tmp;    
		B_reg <= B_tmp;
    end
	end
	
	always @(present_state)begin
		case(present_state)
		S0: next_state = S1;
        
		S1: next_state = S2;     
      
		S2: next_state = S3;
        
		default: next_state = S1;
		endcase  
	end
	
assign R_tmp = {data_reg}*Rmul + Radd;
assign G_tmp = {data_reg}*Gmul + Gadd;
assign B_tmp = {data_reg}*Bmul + Badd;

always@(sel or R_reg or G_reg or B_reg)
begin
  case(sel)
    2'b00: 
    begin
      Radd = -mux3;
      Rmul = mux1;
      Gadd = mux6;
      Gmul = mux1;
      Badd = -mux8;
      Bmul = mux1;
    end  

    2'b01: 
    begin
      Radd = R_reg;
      Rmul = mux0;
      Gadd = G_reg;
      Gmul = -mux5;
      Badd = B_reg;
      Bmul = mux7;
    end 
      
    default: 
    begin
      Radd = R_reg;
      Rmul = mux2;
      Gadd = G_reg;
      Gmul = -mux4;
      Badd = B_reg;
      Bmul = mux0;
    end 
	
  endcase
end

always @(present_state)
  begin        
    case(present_state)
      S0:
      begin
        sel = 2'b00;
                
      end
        
      S1:
      begin
        sel = 2'b00;
        
      end
      
      S2:
      begin
        sel = 2'b01;
        
      end 
               
      default:
      begin
        sel = 2'b10;
        
       end 
        
    endcase
end
    
endmodule

