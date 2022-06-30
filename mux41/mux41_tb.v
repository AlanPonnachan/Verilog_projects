module mux41_tb;
    reg A0,A1,A2,A3;
    reg S0,S1;
    wire OUT;

    mux41 in(.a0(A0),.a1(A1),.a2(A2),.a3(A3),.s0(S0),.s1(S1),.out(OUT));

    initial begin
        S0=0;S1=0;A0=1;A1=0;A2=0;A3=0; #10;
        S0=0;S1=1;A0=1;A1=0;A2=0;A3=0; #10;
        S0=1;S1=0;A0=1;A1=0;A2=0;A3=0; #10;
        S0=1;S1=1;A0=1;A1=0;A2=0;A3=0; #10;
        $finish;
    end
    initial begin
        $monitor("%t | S0=%d | S1=%d | A0=%d | A1=%d | A2=%d| A3=%d | OUT=%d", $time,S0,S1,A0,A1,A2,A3,OUT);
        $dumpfile("dump.vcd");
        $dumpvars();
    end 
endmodule