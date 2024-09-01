property p1;
  @(posedge clk);
  $rose(clk)|->#t/2 clk=0;
endproperty
//another way
property p2;
  @(posedge clk);
  $rose(clk)|->#t $rose(clk);
endproperty
