// Code your testbench here
// or browse Examples
module traffic_light_tb;
  reg clk;
  reg rst;
  wire s0, s1, s2;
  wire m0,m1,m0_r,m1_l,s;
  
  traffic_light dut(.clk(clk), .rst(rst), .s0(s0), .s1(s1), .s2(s2), .m0(m0), .m1(m1), .m0_r(m0_r), .m1_l(m1_l), .s(s));
  
  always #5 clk=~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,traffic_light_tb);
  end
  
  initial begin
    clk=0; rst=0;
    #10 rst=1;
    #10 rst=0;
    #200;
    
    #20 $finish;
  end
endmodule