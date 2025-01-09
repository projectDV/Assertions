//baic Glitch without clock
parameter time stable_time=5ns;
property p1{
  @(sig) disable iff (reset)
    $rose(sig)|->##[0:stable_time] $stable(sig);   
  else
    $error("Glitch Found");
}
//short pulse with clock
  property p1{
    @(posedge clk)
    !((sig==1) ##1 (sig=0));
  }
