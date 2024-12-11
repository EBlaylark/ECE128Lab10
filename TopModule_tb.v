`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 09:47:51 PM
// Design Name: 
// Module Name: TopModule_tb
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


module TopModule_tb;

// Inputs
reg clk;
reg reset;
reg [2:0] rom_addr1, rom_addr2;

// Outputs
wire [7:0] result;


TopModule uut (
    .clk(clk), 
    .reset(reset), 
    .rom_addr1(rom_addr1), 
    .rom_addr2(rom_addr2), 
    .result(result)
);


initial begin
    clk = 0;
    forever #5 clk = ~clk; 
end


initial begin
    // inputs
    reset = 1;
    rom_addr1 = 3'b000;
    rom_addr2 = 3'b001;
    
    
    #30;
    reset = 0;
    
  
    #10;
    rom_addr1 = 3'b001; 
    rom_addr2 = 3'b010; 
    #20;
    

    rom_addr1 = 3'b011;
    rom_addr2 = 3'b100;
    #20;
    
   
    rom_addr1 = 3'b111;
    rom_addr2 = 3'b110;
    #20;

   
   
   
   
    reset = 1; 
    
    
    #10;
    
    reset = 0; 
    
    rom_addr1 = 3'b111; 
    rom_addr2 = 3'b000;
    #20;
    
    
    $stop;
end

endmodule
