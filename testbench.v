module testbench();
reg clk; 
reg [3:0] col;
wire [3:0] row;
wire [3:0] en;
wire  a,b,c,d,e,f,g;
keypad k(.clk(clk),.col(col),.row(row),.en(en) ,.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g));
 initial begin
   clk = 0;
  forever #5 clk = ~clk;
  
end
initial begin
col=4'b0111;
#10;
col=4'b0111;
#10;
col=4'b0111;
#10;
col=4'b0111;
#10;
col=4'b0111;
#10;
col=4'b1101;
#10
col=4'b1011;
#10
col=4'b1110;
#10
col=4'b1111;
#10
$stop;
end
endmodule