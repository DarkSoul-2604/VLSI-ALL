`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2026 22:58:38
// Design Name: 
// Module Name: up_down_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module up_down_counter(up_down,enable,preload,data,counter,clk,reset);
//    reg [25:0] div_counter = 0;  
    input wire clk,reset;
    input up_down,preload,enable;
    input [15:0] data;
    output reg [15:0] counter;
//    reg clk_div = 0;  

//// Clock divider logic
//    always @(posedge clk) 
//    begin
//        if (reset) begin
//            div_counter <= 0;
//            clk_div <= 0;
//        end
//        else begin
//            if (div_counter == 25_000_000 - 1) 
//            begin
//                div_counter <= 0;
//                clk_div <= ~clk_div;  // Toggle the clock signal after every 25 million cycles
//            end
//            else
//            begin
//                div_counter <= div_counter + 1;  // Increment the counter
//            end
//        end
//    end




 always @(posedge clk) begin
    if (reset)
        counter <= 0;
    else if (preload)
        counter <= data;
    else if (enable) begin
        if (up_down)
            counter <= counter + 1;
        else
            counter <= counter - 1;
    end
end


endmodule
