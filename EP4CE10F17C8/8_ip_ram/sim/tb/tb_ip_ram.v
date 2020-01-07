//****************************************Copyright (c)***********************************//
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com 
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡFPGA & STM32���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           tb_ip_pll
// Last modified Date:  2018/3/18 8:41:06
// Last Version:        V1.0
// Descriptions:        
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2018/3/18 8:41:06
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//                                                               

`timescale  1ns/1ns

module        tb_ip_ram      ;

parameter     SYS_PERIOD = 20;  //����ϵͳʱ������

reg           clk            ;
reg           rst_n          ;  

always #(SYS_PERIOD/2) clk <= ~clk ;

initial begin
            clk <= 1'b0 ;
            rst_n <= 1'b0 ;
          #(20*SYS_PERIOD)
            rst_n <= 1'b1 ;
          end

//����ip_pllģ��          
ip_ram  u_ip_ram(
    .sys_clk          (clk),
    .sys_rst_n        (rst_n)
    );        

endmodule         