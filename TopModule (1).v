`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 09:37:27 PM
// Design Name: 
// Module Name: TopModule
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


module TopModule (
    input clk, reset, 
    input [2:0] rom_addr1, rom_addr2,
    output [7:0] result
                
);
    wire [2:0] st_out; 
    wire [3:0] rom_data, A,B;  // ROM data output
    wire [7:0] product;// Product of multiplication
    wire [2:0] rom_addr;       // Address signals
    reg [2:0]  ram_addr = 3'b000;
    wire w_rf,w_ram, DA,SA,SB;
    

    
 ControlUnit uut2( clk, reset,rom_addr1, rom_addr2, w_rf, rom_addr, DA,SA,SB,st_out,w_ram);

    ROM rom_inst (
        .addr(rom_addr), 
        .data_out(rom_data)
    );

RegisterFile uut3(A, B, SA, SB, rom_data, DA, w_rf, reset, clk);

    Multiplier mul_inst (
        .operand1( A), 
        .operand2(B), 
        .product(product)
    );
    
 RAM uut1(clk, rst, ram_addr, product[7:0],w_ram, result);

endmodule