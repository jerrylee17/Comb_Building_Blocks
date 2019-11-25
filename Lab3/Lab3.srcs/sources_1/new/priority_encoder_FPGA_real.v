module priority_encoder_FPGA_real(input [7:0] switch, output [2:0] LED, output valid);
    enc_if CASE(switch[7:0],valid,LED[2:0]);   // connect the DUTendmodule
endmodule