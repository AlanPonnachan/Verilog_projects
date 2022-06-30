3dmodule fulladder_beha( a,b,c,s,cout);
  input wire a,b,c;
  output reg s,cout;
  always @(a or b or c)
  begin 
   s = a ^ b ^ c; 
   cout = a&b | (a^b) & c; 
  end
  endmodule