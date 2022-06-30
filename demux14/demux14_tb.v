module demux14_tb;
    reg IN;
    reg S0,S1;
    wire A0,A1,A2,A3;

    demux14 ina(.in(IN),.s0(S0),.s1(S1),.a0(A0),.a1(A1),.a2(A2),.a3(A3));
    
        initial begin
        IN=1;
        S0=0;S1=0; #10;
        S0=0;S1=1; #10;
        S0=1;S1=0; #10;
        S0=1;S1=1; #10;
        $finish;
    end
    initial begin
        $monitor("%t | S0=%d | S1=%d | A0=%d | A1=%d | A2=%d| A3=%d | IN=%d", $time,S0,S1,A0,A1,A2,A3,IN);
        $dumpfile("dump.vcd");
        $dumpvars();
    end 

endmodule