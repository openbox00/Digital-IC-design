`define COMB_DELAY   17.71
`define PATTERN_IN   "alu_data.dat"
`define GOLDEN_IN    "alu_ans.dat"
`define DATA_NUM     1478
`timescale 1ns/10ps

module t_simple_alu();
reg     [2:0]   opcode;
reg     [3:0]   in1;
reg     [3:0]   in2;
reg             overflow_exp;
reg     [3:0]   result_exp;
wire            overflow;
wire    [3:0]   result;

reg     [10:0]  alu_data [(`DATA_NUM - 1):0];
reg     [4:0]  alu_ans [(`DATA_NUM - 1):0];

integer         i;
integer         err_cnt;

initial $readmemh(`PATTERN_IN, alu_data);
initial $readmemh(`GOLDEN_IN, alu_ans);

simple_alu	U_alu(
        .opcode(opcode),
        .in1(in1),
        .in2(in2),
        .overflow(overflow),
        .result(result)
        );

initial begin
    #0 err_cnt = 0;
    for(i = 0; i < `DATA_NUM; i = i + 1)begin
	    {opcode, in1, in2} = alu_data[i];
        {overflow_exp, result_exp} = alu_ans[i];
        #(`COMB_DELAY)
		    if((opcode != 3'd0) && ((overflow_exp !== overflow) || (result_exp !== result)))begin
                err_cnt = err_cnt + 1;
				$display("Error: opcode = %b \tin1 = %b \tin2 = %b \toverflow = %b \tresult = %b \toverflow_exp = %b \tresult_exp = %b",
                    opcode, in1, in2, overflow, result, overflow_exp, result_exp);
            end
	end
    if(err_cnt == 0)begin		
        $display("-------------------   ALU check successfully   -------------------");
    end
    else begin
        $display("-------------------   There are %d errors   -------------------", err_cnt);
    end
    #10 $finish;

end

endmodule
