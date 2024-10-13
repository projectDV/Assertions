time t;
property p1;
  @(poesdge clk)
  (1, t=$realtime) |=> (($realtime -t)==10ns);
endproperty
assert property p1;
  else $error("Not Matched");
