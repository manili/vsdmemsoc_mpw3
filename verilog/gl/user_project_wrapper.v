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

 sram_32_256_sky130A mem (.csb0(la_data_in[40]),
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
    .din0({la_data_in[31],
    la_data_in[30],
    la_data_in[29],
    la_data_in[28],
    la_data_in[27],
    la_data_in[26],
    la_data_in[25],
    la_data_in[24],
    la_data_in[23],
    la_data_in[22],
    la_data_in[21],
    la_data_in[20],
    la_data_in[19],
    la_data_in[18],
    la_data_in[17],
    la_data_in[16],
    la_data_in[15],
    la_data_in[14],
    la_data_in[13],
    la_data_in[12],
    la_data_in[11],
    la_data_in[10],
    la_data_in[9],
    la_data_in[8],
    la_data_in[7],
    la_data_in[6],
    la_data_in[5],
    la_data_in[4],
    la_data_in[3],
    la_data_in[2],
    la_data_in[1],
    la_data_in[0]}),
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
    .init_en(la_data_in[36]),
    .mem_wr(mem_wr),
    .reset(la_data_in[32]),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .OUT({la_data_out[73],
    la_data_out[72],
    la_data_out[71],
    la_data_out[70],
    la_data_out[69],
    la_data_out[68],
    la_data_out[67],
    la_data_out[66],
    la_data_out[65],
    la_data_out[64]}),
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
    .init_addr({la_data_in[51],
    la_data_in[50],
    la_data_in[49],
    la_data_in[48],
    la_data_in[47],
    la_data_in[46],
    la_data_in[45],
    la_data_in[44]}),
    .mem_addr({\mem_addr[7] ,
    \mem_addr[6] ,
    \mem_addr[5] ,
    \mem_addr[4] ,
    \mem_addr[3] ,
    \mem_addr[2] ,
    \mem_addr[1] ,
    \mem_addr[0] }));
endmodule
