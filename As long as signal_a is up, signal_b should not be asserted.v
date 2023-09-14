logic sig_a, sig_b;
property p1;
  @(posedge clk)
  sig_a|->!(sig_b);
endproperty
