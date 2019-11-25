module enc_if 
(input [7:0]A, output reg valid, reg[2:0]Y);
    always @ (A)
    begin
        valid = 1;
        if (A[7]) Y = 7;
        else if (A[6]) Y = 6;
        else if (A[5]) Y = 5;
        else if (A[4]) Y = 4;
        else if (A[3]) Y = 3;
        else if (A[2]) Y = 2;
        else if (A[1]) Y = 1;
        else if (A[0]) Y = 0;
        else begin
            valid = 0;
            Y = 3'bxxx;
        end
    end
endmodule