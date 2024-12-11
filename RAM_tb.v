`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 09:46:19 PM
// Design Name: 
// Module Name: RAM_tb
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


module RAM_tb;
    reg clk, we;                 
    reg [2:0] addr;              
    reg [7:0] data_in;        
    wire [7:0] data_out;      

   
    RAM ram_inst (
        .clk(clk), 
        .we(we), 
        .addr(addr), 
        .data_in(data_in), 
        .data_out(data_out)
    );

    
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    
    initial begin
        
        
        // address 0
        we = 1;
        addr = 3'b000;
        data_in = 8'hA5; 
        #10; 
        we = 0;
        addr = 3'b000;
        #10; 
      
   
   
        addr = 3'b001;
        data_in = 8'h3C; 
        we = 1;
        #10;
        we = 0;
        addr = 3'b001;
        #10; 
    

      
        $stop;
    end
endmodule