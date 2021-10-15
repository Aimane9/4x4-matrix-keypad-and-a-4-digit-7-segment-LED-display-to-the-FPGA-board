module keypad( input clk, 
               input [3:0] col,
               output [3:0] row,
               output [3:0]en,
               output reg a,b,c,d,e,f,g);
assign en = 4'b1110;
assign row = 4'b1110;
 reg [7:0] seg;
wire [7:0] out1,out2;
shift_reg    r0(clk, out1);
shift_reg1   r1(clk, out2);
always @( posedge clk or col)
begin
   case(col)
        4'b0111:   seg <=out1;
       default :  seg <=out2;
   endcase
assign {a,b,c,d,e,f,g}= seg[6:0];
  end

endmodule
