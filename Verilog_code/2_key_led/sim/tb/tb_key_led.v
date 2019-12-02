`timescale 1 ns/ 1 ns
module tb_key_led();

parameter T = 20;

reg  [3:0]  key      ;
reg         sys_clk  ;
reg         sys_rst_n;
reg         key_value;

wire [3:0]  led;

initial begin   
     key                <=4'b1111;//������ʼ״̬Ϊȫ�Ͽ�
     sys_clk            <=1'b0;   //��ʼʱ��Ϊ�͵�ƽ
     sys_rst_n          <=1'b0;   //��λ�źų�ʼΪ�͵�ƽ
#T   sys_rst_n          <=1'b1;   //һ��ʱ�����ں�λ�ź�����

#600_000_020 key[0]     <=0;      //0.6sʱ���°���1
#800_000_000 key[0]     <=1;    
key[1]                  <=0;      //0.8s���ɿ�����1�����°���2
#800_000_000 key[1]     <=1;   
key[2]                  <=0;      //0.8s���ɿ�����2�����°���3
#800_000_000 key[2]     <=1;   
key[3]                  <=0;      //0.8s���ɿ�����3�����°���4    
#800_000_000 key[3]     <=1;      //0.8s���ɿ�����4

end 

always # (T/2) sys_clk <= ~sys_clk;
key_led   u_key_led(
      .sys_clk(sys_clk),       
      .sys_rst_n(sys_rst_n),     
      .key(key),                  
      .led(led)          
      );

endmodule