
module softmax(input [3:0]in, input a; input b; input c; input d; output reg [7:0]res)
wire num;
wire ares,bres,cres,dres;
exp_lut(.x(in),.exp_out(exp));
exp_lut(.x(a),.exp_out(ares));
exp_lut(.x(b),.exp_out(bres));
exp_lut(.x(c),.exp_out(cres));

always@(*)begin
assign res=exp/(ares+bres+cres+dres);
end
endmodule


module exp_lut (
  input [5:0] x,              
  output reg [7:0] exp_out    
);

  always @(*) begin
    case(x)
      6'd0:  exp_out = 8'b0000_0110;  // e^(-1) ~ 0.3679 (Q4.4)
      6'd1:  exp_out = 8'b0000_0110;  // 0.3916 (Q4.4)
      6'd2:  exp_out = 8'b0000_0111;  // 0.4169 (Q4.4)
      6'd3:  exp_out = 8'b0000_0111;  // 0.4437 (Q4.4)
      6'd4:  exp_out = 8'b0000_1000;  // 0.4724 (Q4.4)
      6'd5:  exp_out = 8'b0000_1000;  // 0.5028 (Q4.4)
      6'd6:  exp_out = 8'b0000_1001;  // 0.5353 (Q4.4)
      6'd7:  exp_out = 8'b0000_1001;  // 0.5698 (Q4.4)
      6'd8:  exp_out = 8'b0000_1010;  // 0.6065 (Q4.4)
      6'd9:  exp_out = 8'b0000_1010;  // 0.6456 (Q4.4)
      6'd10: exp_out = 8'b0000_1011;  // 0.6873 (Q4.4)
      6'd11: exp_out = 8'b0000_1100;  // 0.7316 (Q4.4)
      6'd12: exp_out = 8'b0000_1100;  // 0.7788 (Q4.4)
      6'd13: exp_out = 8'b0000_1101;  // 0.8290 (Q4.4)
      6'd14: exp_out = 8'b0000_1110;  // 0.8825 (Q4.4)
      6'd15: exp_out = 8'b0000_1111;  // 0.9394 (Q4.4)
      6'd16: exp_out = 8'b0001_0000;  // 1.0 (Q4.4)
      6'd17: exp_out = 8'b0001_0001;  // 1.0645 (Q4.4)
      6'd18: exp_out = 8'b0001_0010;  // 1.1331 (Q4.4)
      6'd19: exp_out = 8'b0001_0011;  // 1.2062 (Q4.4)
      6'd20: exp_out = 8'b0001_0101;  // 1.2840 (Q4.4)
      6'd21: exp_out = 8'b0001_0110;  // 1.3668 (Q4.4)
      6'd22: exp_out = 8'b0001_0111;  // 1.4550 (Q4.4)
      6'd23: exp_out = 8'b0001_1001;  // 1.5488 (Q4.4)
      6'd24: exp_out = 8'b0001_1010;  // 1.6487 (Q4.4)
      6'd25: exp_out = 8'b0001_1100;  // 1.7551 (Q4.4)
      6'd26: exp_out = 8'b0001_1110;  // 1.8682 (Q4.4)
      6'd27: exp_out = 8'b0010_0000;  // 1.9887 (Q4.4)
      6'd28: exp_out = 8'b0010_0010;  // 2.1170 (Q4.4)
      6'd29: exp_out = 8'b0010_0100;  // 2.2535 (Q4.4)
      6'd30: exp_out = 8'b0010_0110;  // 2.3989 (Q4.4)
      6'd31: exp_out = 8'b0010_1001;  // 2.5536 (Q4.4)
      default: exp_out = 8'b0000_0000;  // Default to 0 if out of range
    endcase
  end
endmodule
