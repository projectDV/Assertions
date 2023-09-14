logic [4:0] gnt;
property p1;
  @(posedge clk)
  $rose(en)|->$onhot(gnt);
endproperty
