module encoder(
    input [3:0] in,      // 4-bit input signal
    output reg [1:0] out, // 2-bit output signal (encoded value)
    output reg valid     // Output that shows if the input is valid
);

    // Always block that runs whenever the input changes
    always @(*) begin
        // Default values for out and valid
        out = 2'b00;     // Default output is 00
        valid = 0;       // Default valid is 0 (no active input)
        
        // Check which input bit is set (active)
        if (in[3] == 1) begin
            out = 2'b11; // If the 3rd bit is set, output 11
            valid = 1;   // Valid because an input bit is set
        end
        else if (in[2] == 1) begin
            out = 2'b10; // If the 2nd bit is set, output 10
            valid = 1;
        end
        else if (in[1] == 1) begin
            out = 2'b01; // If the 1st bit is set, output 01
            valid = 1;
        end
        else if (in[0] == 1) begin
            out = 2'b00; // If the 0th bit is set, output 00
            valid = 1;
        end
    end

endmodule
