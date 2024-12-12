`timescale 1ns / 1ps

module comparator #(parameter n = 8) (
    input  [n-1:0] a,
    input  [n-1:0] b,
    output logic equal
);

    always_comb begin
        if (a == b)
            equal = 1;
        else
            equal = 0;
    end

endmodule
