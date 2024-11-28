module exp_lut_tb;

  // Testbench signals
  reg [5:0] x;          // 6-bit input for test
  wire [7:0] exp_out;   // 8-bit output from exp_lut (Q4.4)
  
  // Testing variables
  integer i; 

  // Instantiate the DUT (Device Under Test)
  exp_lut dut (
    .x(x),
    .exp_out(exp_out)
  );

  // Test sequence
  initial begin
    
   $dumpfile("dump.vcd"); 
    $dumpvars(x, exp_out);
    
    // Display header
    $display("Testing exp_lut Module (Q4.4 Format):");
    $display(" x   | exp_out (Q4.4) | Decimal Value");
    
    // Repeat full range of signal for 100 iterations
    repeat(100) begin
      for(i=0;i<32;i++) begin
          x = i; #5; $display("%2d   | %b         | %f", x, exp_out, exp_out/16.0);
      end
    end


    // Finish simulation
    $finish;
  end

endmodule
