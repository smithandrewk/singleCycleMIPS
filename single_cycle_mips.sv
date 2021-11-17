module single_cycle_mips (
    input logic clk, // clock signal
    input logic rst_n // active-low reset signal used for initialization
);
    logic [31:0] pc, instr, readdata;
    logic [31:0] writedata, dataadr;
    logic       memwrite;
    logic [31:0] pc, instr, readdata;
    
    // instantiate processor and memories
    mips mips(clk, rst_n, pc, instr, memwrite, dataadr,writedata, readdata);
    imem imem(pc[7:2], instr);
    dmem dmem(clk, memwrite, dataadr, writedata, readdata);
endmodule