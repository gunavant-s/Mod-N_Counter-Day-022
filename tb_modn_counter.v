`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 10.08.2023 05:56:24
// Design Name: 
// Module Name: tb_modn_counter
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


module tb_modn_counter;
    parameter N = 10;
    parameter width = 4;
    reg clk;
    reg reset;
    wire [3:0]count; // WIDTH - 1 = 3
    
    modn_counter DUT(.clk(clk),
                     .reset(reset),
                     .count(count)
                     );
    
    initial begin
       clk = 0;
       reset = 1;
       #10 
       reset = 0;
    end
    
    always #5 clk = ~clk;
    
endmodule
