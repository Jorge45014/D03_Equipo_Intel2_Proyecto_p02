`timescale 1ps/1ps

// Memoria de datos /////////////////////////
module Mem_datos (
	input wire [31:0] dataInput,
	input wire EnW,
    input wire EnR,

	output reg[31:0] dataOutput
);

reg [31:0] mem [0:63];

always @(*) begin
	if (EnW) begin
		mem[0] = dataInput;
    end
	else if (EnR) begin
		dataOutput = mem[0];
    end
end
endmodule