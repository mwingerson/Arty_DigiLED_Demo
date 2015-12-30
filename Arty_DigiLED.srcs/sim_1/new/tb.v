`timescale 1ns / 1ps

module tb();
  reg [3:0]dip_switches_4bits_tri_i = 0;
  reg [3:0]push_buttons_4bits_tri_i = 0;
  reg reset = 1;
  reg sys_clock = 0;
  reg usb_uart_rxd = 0;
    
  wire led_out;
  wire usb_uart_txd;
  
  design_1_wrapper uut(
    .dip_switches_4bits_tri_i(dip_switches_4bits_tri_i),
    .led_out(led_out),
    .push_buttons_4bits_tri_i(push_buttons_4bits_tri_i),
    .reset(reset),
    .sys_clock(sys_clock),
    .usb_uart_rxd(usb_uart_rxd),
    .usb_uart_txd(usb_uart_txd)
    );
  
  
  always
    #5 sys_clock = !sys_clock;
  
  initial begin
    #200 reset = 0;
      #200 reset = 1;

  end  
  
endmodule
