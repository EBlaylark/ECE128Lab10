`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 09:47:14 PM
// Design Name: 
// Module Name: RegisterFile_tb
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


module RegisterFile_tb;
    reg clk, we;                   
    reg [2:0] read_addr1, read_addr2, write_addr; 
    reg [7:0] write_data;          
    wire [7:0] read_data1, read_data2; 

   
   
   
   
    RegisterFile rf_inst (
        .clk(clk), 
        .we(we), 
        .read_addr1(read_addr1), 
        .read_addr2(read_addr2), 
        .write_addr(write_addr), 
        .write_data(write_data), 
        .read_data1(read_data1), 
        .read_data2(read_data2)
    );

    
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    
    initial begin
       

        // Write register 0
        we = 1;
        write_addr = 3'b000;
        write_data = 8'h55;   
        #10;




        // Read register 0
        
        
        we = 0;
        read_addr1 = 3'b000;
        read_addr2 = 3'b000;
        #10;
        




        // Write register 1
        write_addr = 3'b001;
        write_data = 8'hAA;  
        
        
        we = 1;
        #10;
        we = 0;

        // Read register 1
        read_addr1 = 3'b001;
        #10;
       

       
        $stop;
    end
endmodule
