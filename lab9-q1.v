module testbench;
    reg C, D;
    wire Q, Qn;

    ff dut(.c(C), .d(D), .q(Q), .qn(Qn));

    always #10 C = ~C;

    initial begin
        $monitor("%6d: C=%b, D=%b, Q=%b, Qn=%b", $time, C, D, Q, Qn);
        C = 0;
        D = 0;
        #20 D = 1;
        #4  D = 0;
        #2  D = 1;
        #9  D = 0;
        #25 $finish;
    end
endmodule

module ff(input c, d, output q, qn);
    // Fill in this modulecu
  //So because assigned all at once
  //Create outputs
  wire output1;
  wire output2;
  wire output3;
  wire output4;
  
  //1st o 2nd and beyond is inputs
  nand #1 (output1, d, c);
  nand #1 (output2, d, c);
  nand #1 (output3, d, c);
  nand #1 (output4, d, c);
  nand #1 (q, output2, qn);
  nand #1 (qn, output3, q);
  
  
  
endmodule
