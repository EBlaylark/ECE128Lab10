`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 09:44:45 PM
// Design Name: 
// Module Name: Multiplier_tb
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


module Multiplier_tb;
    reg [7:0] operand1, operand2;   
    wire [15:0] product;        

    
    Multiplier mul_inst (
        .operand1(operand1), 
        .operand2(operand2), 
        .product(product)
    );

  
    initial begin
       

        
        operand1 = 8'h05; // 5
        operand2 = 8'h04; // 4
        #10;
       

        
        operand1 = 8'h0A; // 10
        operand2 = 8'h03; // 3
        #10;
       

      
      
      
        $stop;
    end
endmodule
