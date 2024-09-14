module dct_approximation (
    input signed [7:0] pixel1,   // Input: Pixel 1
    input signed [7:0] pixel2,   // Input: Pixel 2
    output signed [7:0] dct1,    // Output: DCT coefficient 1
    output signed [7:0] dct2     // Output: DCT coefficient 2
);
    wire signed [7:0] sum, diff;

    // Simple DCT transformation
    assign sum = pixel1 + pixel2;        // Sum for DCT1
    assign diff = pixel1 - pixel2;       // Difference for DCT2

    // Approximation: We truncate the least significant 2 bits to save computational resources
    assign dct1 = {sum[7:2], 2'b00};     // Approximate DCT1 (truncate 2 LSBs)
    assign dct2 = {diff[7:2], 2'b00};    // Approximate DCT2 (truncate 2 LSBs)

endmodule
