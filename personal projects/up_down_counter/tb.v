
`timescale 1ns/1ps

module tb;

  reg clk, reset, enable, preload, up_down;
  reg [15:0] data;
  wire [15:0] counter;

  up_down_counter uut (
      .clk(clk),
      .reset(reset),
      .enable(enable),
      .preload(preload),
      .up_down(up_down),
      .data(data),
      .counter(counter)
  );

  
  initial begin
      clk =0;
      repeat (200) #5 clk = ~clk;
  end


  initial begin
      reset = 1'b1;
      #15 reset = 1'b0;
      #120 reset = 1'b1;
      #10 reset = 1'b0;
  end

  initial begin
      enable = 1'b0;
      #30 enable = 1'b1;
      #150 enable = 1'b0;
      #40 enable = 1'b1;
  end
  
  initial begin
      up_down = 1'b1;
      #100 up_down = 1'b0;
  end

  
  initial begin
      preload = 1'b0;
      #60 preload = 1'b1;
      #10 preload = 1'b0;
      #180 preload = 1'b1;
      #10 preload = 1'b0;
  end


  initial begin
      data = 16'd10;
      #60 data = 16'd25;
      #120 data = 16'd100;
  end


  initial begin
      $monitor("time=%0t reset=%b preload=%b enable=%b up_down=%b data=%0d counter=%0d",
                $time, reset, preload, enable, up_down, data, counter);
  end

endmodule :tb
