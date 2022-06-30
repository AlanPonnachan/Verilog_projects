module mux81_tb;
reg D0, D1, D2, D3, D4, D5, D6, D7, D8, S0, S1, S2;
wire out;

mux81 in(.D0(D0), .D1(D1), .D2(D2), .D3(D3), .D4(D4), .D5(D5), .D6(D6), .D7(D7), .S0(S0), .S1(S1), .S2(S2), .out(out)); 

initial begin
    D0=1'b1; D1=1'b0; D2=1'b0; D3=1'b0; D4=1'b0; D5=1'b0; D6=1'b0; D7=1'b0;S0=1'b0; S1=1'b0; S2=1'b0; #10;
    D0=1'b0; D1=1'b1; D2=1'b0; D3=1'b0; D4=1'b0; D5=1'b0; D6=1'b0; D7=1'b0;S0=1'b0; S1=1'b0; S2=1'b1; #10;
    D0=1'b0; D1=1'b0; D2=1'b1; D3=1'b0; D4=1'b0; D5=1'b0; D6=1'b0; D7=1'b0;S0=1'b0; S1=1'b1; S2=1'b0; #10;
    D0=1'b0; D1=1'b0; D2=1'b0; D3=1'b1; D4=1'b0; D5=1'b0; D6=1'b0; D7=1'b0;S0=1'b0; S1=1'b1; S2=1'b1; #10;
    D0=1'b0; D1=1'b0; D2=1'b0; D3=1'b0; D4=1'b1; D5=1'b0; D6=1'b0; D7=1'b0;S0=1'b1; S1=1'b0; S2=1'b0; #10;
    D0=1'b0; D1=1'b0; D2=1'b0; D3=1'b0; D4=1'b0; D5=1'b1; D6=1'b0; D7=1'b0;S0=1'b1; S1=1'b0; S2=1'b1; #10;
    D0=1'b0; D1=1'b0; D2=1'b0; D3=1'b0; D4=1'b0; D5=1'b0; D6=1'b1; D7=1'b0;S0=1'b1; S1=1'b1; S2=1'b0; #10;
    D0=1'b0; D1=1'b0; D2=1'b0; D3=1'b0; D4=1'b0; D5=1'b0; D6=1'b0; D7=1'b1;S0=1'b1; S1=1'b1; S2=1'b1; #10;
    
end
initial begin
    $monitor("At time = %t, Output = %d", $time, out);
    $dumpfile("dump.vcd");
    $dumpvars(); 
end
endmodule