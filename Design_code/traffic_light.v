// Code your design here
module traffic_light(input clk, input rst, output reg s0, s1, s2, output reg m0,m1,m0_r,m1_l,s);
  reg [4:0] count;
  
  always @(posedge clk) begin
    
    if (rst) begin
      count<=0;
      s0<=0;
      s1<=0;
      s2<=0;
      m0<=0;
      m1<=0;
      m0_r<=0;
      m1_l<=0;
      s<=0;
    end else begin
      if (count==17)
        count<=0;
      else
        count=count+1;
    end
    
    s0<=0;
    s1<=0;
    s2<=0;
    m0<=0;
    m1<=0;
    m0_r<=0;
    m1_l<=0;
    s<=0;
      
    if (count<7) begin
      s0<=1;
      m0<=1;
      m1<=1;
      m1_l<=1;
    end else if (count>=7 && count<12) begin
      s1<=1;
      m0<=1;
      m0_r<=1;
    end else if (count>=12 && count<17) begin
      s2<=1;
      s<=1;
    end
    
  end 
endmodule
  