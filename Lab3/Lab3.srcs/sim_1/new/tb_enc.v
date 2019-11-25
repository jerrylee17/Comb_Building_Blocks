module tb_encoder;
    reg[7:0]  in_tb;
    wire      valid_if, valid_case, valid_for;
    wire[2:0] out_if, out_case, out_for;
    integer n;
    enc_if          DUT_IF (in_tb, valid_if, out_if);
    enc_case        DUT_CASE (in_tb, valid_case, out_case);
    enc_for         DUT_FOR (in_tb, valid_for, out_for);
    initial begin
        for (n=0; n<256; n=n+1)
        begin
            in_tb = n; #5;
            if (!in_tb[out_if])     $display ("IF FAILED");
            if (!in_tb[out_case])   $display ("CASE FAILED");
            if (!in_tb[out_for])    $display ("FOR FAILED");
            if (in_tb&&!valid_if)   $display ("VALID IF FAILED");
            if (in_tb&&!valid_case) $display ("VALID CASE FAILED");
            if (in_tb&&!valid_for)  $display ("VALID FOR FAILED");
       end
       $display ("SIM FINISH");
       $finish;
    end
endmodule
            