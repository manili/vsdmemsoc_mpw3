// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none

module user_proj_example (
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif
    output [9:0] OUT,
    input CLK,
    input reset,

    output mem_wr,
    output [7:0] mem_addr,
    input init_en,
    input [7:0] init_addr,
    input [31:0] imem_data
);

    wire [7:0]  imem_addr;

    assign mem_wr   = init_en ? 1'b0 : 1'b1;
    assign mem_addr = init_en ? init_addr : imem_addr;

    rvmyth core (
        .OUT(OUT),
        .CLK(CLK),
        .reset(reset),

        .imem_addr(imem_addr),
        .imem_data(imem_data)
    );

endmodule

`default_nettype wire