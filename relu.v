module relu(
    input signed [31:0]din_relu,
    output [31:0]dout_relu
);
assign [31:0]dout_relu=din_relu[31] ? 32'b0 : din_relu;
endmodule