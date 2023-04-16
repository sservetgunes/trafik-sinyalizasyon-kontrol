module led(input clk, input rst,output reg[2:0]led);
reg[63:0]count;
always @(posedge clk or negedge rst)begin
       if(!rst)
         count <= 64'd0;
       else if(count < 64'd32000_0000)
         count <= count+1;
       else
          count <=64'd0;
       
end
always @(posedge clk or negedge rst)begin
         if ( !rst)
            led <= 3'b110;
         else if (count == 64'd31000_0000)
            led <=3'b011;
        else if(count == 64'd9000_0000)
            led<= 3'b110;
         else if(count == 64'd26000_0000)
            led <= 3'b101;
      
        
         else
            led<=led;
      end




endmodule
