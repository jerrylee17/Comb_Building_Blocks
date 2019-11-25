module priority_encoder_FPGA(input [7:0] switch, output [2:0] LED, output valid);
    enc_case(switch[7:0],LED[2:0],valid);   // connect the DUTendmodule
endmodule 