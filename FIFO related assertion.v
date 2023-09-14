Question-
For a synchronus FIFO of depth=16, write an assertion for the following Scenarios. Assume signals:-
  a. clk
  b. write
  c. read
  d. full_flag
  e. counter
1. If the wod count is >15, fifo full flag is set.
2. If the word count is 15 and a new write operation happens without a simultaneous read, then the fifo full is set.

Answer-
1.
property p1;
  @(posedge clk)
  counter>15|->$rose(fifo_full);
endproperty

2.
property p1;
  @(posedge clk)
  (counter==15&&write&!read)|->$rose(fifo_full);
endproperty
