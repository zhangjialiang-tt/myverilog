/*-----------------------------------------------------------------------
CONFIDENTIAL IN CONFIDENCE
This confidential and proprietary software may be only used as authorized
by a licensing agreement from zjl ().
In the event of publication, the following notice is applicable:
Copyright (C) 2013-20xx zjl Corporation
The entire notice above must be reproduced on all authorized copies.
Author				:		zjl
Technology blogs 	: 		
Email Address 		: 		540113104@gmail.com
Filename			:		.v
Data				:		2018-04-06
Description			:		.
Modification History	:
Data			By			Version			Change Description
=========================================================================
04/06/18		zjl			  1.0				Original
-----------------------------------------------------------------------*/

`timescale 1ns/1ns
module tb_mealy;

//------------------------------------------
//Generate driver clock
reg	 			clk; 
reg 			rst_n;
reg      		A;	
wire            k
localparam PERIOD = 20;		//50MHz
initial	
begin
	clk = 0;
	forever	#(PERIOD/2)	
	clk = ~clk;
end

//------------------------------------------
//Generate global reset
task task_reset;
begin
	rst_n = 0;
	repeat(2) @(negedge clk);
	rst_n = 1;
end
endtask


//-----------------------------------------
//
wire			;				

name	inst_name
(
	.clk		( clk	 ),
	.rst_n		( rst_n	 ),
	.A			( A		 ),
	.k			( k		 )
);

//---------------------------------------------
//testbench of the sysinit
integer i;
task task_rand_bit;
begin
	for( i = 0; i < 255; i=i+1 )
		@( posedge clk );
			A <= { $random }%2;
end
endtask
//---------------------------------------------
//task of generate random bit signal
task task_sysinit;
begin
	
end
endtask
//----------------------------------------------
initial
begin
	task_sysinit;
	task_reset;
	
end

endmodule

