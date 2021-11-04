module user_project_wrapper (user_clock2,
    vccd1,
    vccd2,
    vdda1,
    vdda2,
    vssa1,
    vssa2,
    vssd1,
    vssd2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input vccd1;
 input vccd2;
 input vdda1;
 input vdda2;
 input vssa1;
 input vssa2;
 input vssd1;
 input vssd2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 wire \imem_data[0] ;
 wire \imem_data[10] ;
 wire \imem_data[11] ;
 wire \imem_data[12] ;
 wire \imem_data[13] ;
 wire \imem_data[14] ;
 wire \imem_data[15] ;
 wire \imem_data[16] ;
 wire \imem_data[17] ;
 wire \imem_data[18] ;
 wire \imem_data[19] ;
 wire \imem_data[1] ;
 wire \imem_data[20] ;
 wire \imem_data[21] ;
 wire \imem_data[22] ;
 wire \imem_data[23] ;
 wire \imem_data[24] ;
 wire \imem_data[25] ;
 wire \imem_data[26] ;
 wire \imem_data[27] ;
 wire \imem_data[28] ;
 wire \imem_data[29] ;
 wire \imem_data[2] ;
 wire \imem_data[30] ;
 wire \imem_data[31] ;
 wire \imem_data[3] ;
 wire \imem_data[4] ;
 wire \imem_data[5] ;
 wire \imem_data[6] ;
 wire \imem_data[7] ;
 wire \imem_data[8] ;
 wire \imem_data[9] ;
 wire \mem_addr[0] ;
 wire \mem_addr[1] ;
 wire \mem_addr[2] ;
 wire \mem_addr[3] ;
 wire \mem_addr[4] ;
 wire \mem_addr[5] ;
 wire \mem_addr[6] ;
 wire \mem_addr[7] ;
 wire mem_wr;
 wire zero_;

 sram_32_256_sky130A mem (.csb0(zero_),
    .web0(mem_wr),
    .clk0(wb_clk_i),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\mem_addr[7] ,
    \mem_addr[6] ,
    \mem_addr[5] ,
    \mem_addr[4] ,
    \mem_addr[3] ,
    \mem_addr[2] ,
    \mem_addr[1] ,
    \mem_addr[0] }),
    .din0({wbs_dat_i[31],
    wbs_dat_i[30],
    wbs_dat_i[29],
    wbs_dat_i[28],
    wbs_dat_i[27],
    wbs_dat_i[26],
    wbs_dat_i[25],
    wbs_dat_i[24],
    wbs_dat_i[23],
    wbs_dat_i[22],
    wbs_dat_i[21],
    wbs_dat_i[20],
    wbs_dat_i[19],
    wbs_dat_i[18],
    wbs_dat_i[17],
    wbs_dat_i[16],
    wbs_dat_i[15],
    wbs_dat_i[14],
    wbs_dat_i[13],
    wbs_dat_i[12],
    wbs_dat_i[11],
    wbs_dat_i[10],
    wbs_dat_i[9],
    wbs_dat_i[8],
    wbs_dat_i[7],
    wbs_dat_i[6],
    wbs_dat_i[5],
    wbs_dat_i[4],
    wbs_dat_i[3],
    wbs_dat_i[2],
    wbs_dat_i[1],
    wbs_dat_i[0]}),
    .dout0({\imem_data[31] ,
    \imem_data[30] ,
    \imem_data[29] ,
    \imem_data[28] ,
    \imem_data[27] ,
    \imem_data[26] ,
    \imem_data[25] ,
    \imem_data[24] ,
    \imem_data[23] ,
    \imem_data[22] ,
    \imem_data[21] ,
    \imem_data[20] ,
    \imem_data[19] ,
    \imem_data[18] ,
    \imem_data[17] ,
    \imem_data[16] ,
    \imem_data[15] ,
    \imem_data[14] ,
    \imem_data[13] ,
    \imem_data[12] ,
    \imem_data[11] ,
    \imem_data[10] ,
    \imem_data[9] ,
    \imem_data[8] ,
    \imem_data[7] ,
    \imem_data[6] ,
    \imem_data[5] ,
    \imem_data[4] ,
    \imem_data[3] ,
    \imem_data[2] ,
    \imem_data[1] ,
    \imem_data[0] }));
 user_proj_example mprj (.CLK(wb_clk_i),
    .init_en(wbs_sel_i[0]),
    .mem_wr(mem_wr),
    .reset(wb_rst_i),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .OUT({wbs_dat_o[9],
    wbs_dat_o[8],
    wbs_dat_o[7],
    wbs_dat_o[6],
    wbs_dat_o[5],
    wbs_dat_o[4],
    wbs_dat_o[3],
    wbs_dat_o[2],
    wbs_dat_o[1],
    wbs_dat_o[0]}),
    .imem_data({\imem_data[31] ,
    \imem_data[30] ,
    \imem_data[29] ,
    \imem_data[28] ,
    \imem_data[27] ,
    \imem_data[26] ,
    \imem_data[25] ,
    \imem_data[24] ,
    \imem_data[23] ,
    \imem_data[22] ,
    \imem_data[21] ,
    \imem_data[20] ,
    \imem_data[19] ,
    \imem_data[18] ,
    \imem_data[17] ,
    \imem_data[16] ,
    \imem_data[15] ,
    \imem_data[14] ,
    \imem_data[13] ,
    \imem_data[12] ,
    \imem_data[11] ,
    \imem_data[10] ,
    \imem_data[9] ,
    \imem_data[8] ,
    \imem_data[7] ,
    \imem_data[6] ,
    \imem_data[5] ,
    \imem_data[4] ,
    \imem_data[3] ,
    \imem_data[2] ,
    \imem_data[1] ,
    \imem_data[0] }),
    .init_addr({wbs_adr_i[7],
    wbs_adr_i[6],
    wbs_adr_i[5],
    wbs_adr_i[4],
    wbs_adr_i[3],
    wbs_adr_i[2],
    wbs_adr_i[1],
    wbs_adr_i[0]}),
    .mem_addr({\mem_addr[7] ,
    \mem_addr[6] ,
    \mem_addr[5] ,
    \mem_addr[4] ,
    \mem_addr[3] ,
    \mem_addr[2] ,
    \mem_addr[1] ,
    \mem_addr[0] }));
endmodule
