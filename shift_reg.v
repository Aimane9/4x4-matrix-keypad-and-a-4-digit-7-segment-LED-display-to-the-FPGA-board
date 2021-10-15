module shift_reg(clk, out);
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
assign out = digit[1] ? (digit[0] ? 8'h7b : 8'h7f) : (digit[0] ? 8'h7b : 8'h5b);
endmodule 

