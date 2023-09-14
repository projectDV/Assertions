logic valid, gnt;
property p1;
  @(posedge clk)
  $rose(valid)|->##[*2:5]gnt;
endproperty
