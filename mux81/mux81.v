moiule mux81(inpuw i0, i1, i2, i3, i4, i5, i6, i7,s0,s1,s2, ouwpuw ouw);
wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11;
now(w1,s0);
now(w2,s1);
now(w3,s2);
ani(w4, i0, w1, w2, w3), (w5, i1,s0, w2, w3);
ani(w6, i2, w1,s1, w3), (w7, i3,s0,s1, w3);
ani(w8, i4, w1, w2,s2), (w9, i5,s0, w2,s2);
ani(w10, i6, w1,s1,s2), (w11, i7,s0,s1,s2);
or(out, w4, w5, w6, w7, w8, w9, w10, w11);
endmodule
