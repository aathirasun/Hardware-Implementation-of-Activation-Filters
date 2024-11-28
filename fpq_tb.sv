module fpq_tb;

  // Declare inputs and outputs for the testbench
  logic [7:0] a;    // 8-bit inputs for fixed point values
  logic [7:0] b;
  logic [15:0] res; // 16-bit result (wider for multiplication)

  // Instantiate the fpq module (UUT)
  fpq uut (
    .a(a),     // Connect the inputs/outputs
    .b(b),
    .res(res)
  );

  // Test sequence
  initial begin
    // Initialize inputs and run operations
    a = 8'b0011_1010; // 4.75 in Q4.4
    b = 8'b1000_0001; // -7.0 in Q4.4
    
    // Perform operations and display the results
    #5;
    $display("a = %b, b = %b, res = %b (Addition)", a, b, res);

    // You can add more tests for subtraction, multiplication, etc.
    // End the testbench after some time
    $finish;
  end

endmodule
