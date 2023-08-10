`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 10.08.2023 05:47:26
// Design Name: 
// Module Name: modn_counter
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


module modn_counter #(parameter N = 12,
                     parameter width = 4)
                     (input clk,
                     input reset,
                     output reg [width-1:0] count
                     );
                     
    always @(posedge clk or posedge reset) begin
        if(reset)
            count <= 0;
        else if(count == N - 1)
            count <= 0;
        else begin
            count <= count + 1;
        end
    end
    
endmodule
