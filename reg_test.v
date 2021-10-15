module reg_test();
reg clk;
 wire [7:0] out1,out2;
shift_reg shif(.clk(clk), .out(out1));
shift_reg1 shif1(.clk(clk), .out(out2));
 initial begin
   clk = 0;
  forever #5 clk = ~clk;
  
end
endmodule

