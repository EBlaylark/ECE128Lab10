`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 09:46:41 PM
// Design Name: 
// Module Name: ROM_tb
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


module ROM_tb;
    reg [2:0] addr;            
    wire [3:0] data_out;        


    ROM rom_inst (.addr(addr), .data_out(data_out));

    initial begin
        $display("Starting ROM Testbench");
        
        for (addr = 0; addr < 8; addr = addr + 1) begin
        
        
        
     
            #10;
            
            
            
            $display("Address %0d -> Data: %h", addr, data_out);
            
            
        end
        $stop;
        
        
        
    end
endmodule