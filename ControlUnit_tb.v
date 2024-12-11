`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 09:44:11 PM
// Design Name: 
// Module Name: ControlUnit_tb
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


module ControlUnit_tb;
    reg clk, start;                     
    wire read_rom, write_ram;          
    wire [2:0] rom_addr, ram_addr;      

    
    ControlUnit cu_inst (
        .clk(clk),
        .start(start),
        .read_rom(read_rom),
        .write_ram(write_ram),
        .rom_addr(rom_addr),
        .ram_addr(ram_addr)
    );

    
    always begin
        clk = 0; #5; clk = 1; #5; 
    end

   
    initial begin
       

     
        start = 0;  //start is 0 
        #10;

        // Test
        start = 1;  // start
        #60;       

        //Start deasserted
        start = 0;  
        #60;         

        
        start = 1;  // Assert start 
        #60;

        
        start = 0;  // Deassert start
        #60;

 
        $stop;
    end

   
endmodule
