module tb_dct_approximation;
    reg signed [7:0] pixel1, pixel2;    // Test inputs
    wire signed [7:0] dct1, dct2;       // Test outputs

    // Instantiate the DCT module
    dct_approximation uut (
        .pixel1(pixel1),
        .pixel2(pixel2),
        .dct1(dct1),
        .dct2(dct2)
    );

    initial begin
        // Apply test inputs
        pixel1 = 8'd50;   // Pixel 1 value
        pixel2 = 8'd30;   // Pixel 2 value
        #10;
        
        // Display the outputs
        $display("DCT1 (Approximate) = %d", dct1);
        $display("DCT2 (Approximate) = %d", dct2);

        // Test with another set of inputs
        pixel1 = 8'd100;
        pixel2 = 8'd40;
        #10;
        
        // Display the outputs
        $display("DCT1 (Approximate) = %d", dct1);
        $display("DCT2 (Approximate) = %d", dct2);
    end
endmodule
