module shift_reg1(clk, out);
input clk;
 output [7:0]  out;
 reg [1:0] digit ;
reg [1:0]  digit_next;
assign digit=0;
assign digit_next = digit+1;
always @(posedge clk)
begin
digit=digit_next;
 end
assign out = digit[1] ? (digit[0] ? 8'h7E : 8'h30) : (digit[0] ? 8'h7E : 8'h33);
endmodule 


