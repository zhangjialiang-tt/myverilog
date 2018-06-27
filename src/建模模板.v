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
module Name
(
	// system signals
	input			wire			clk,
	input			wire			rst_n,	
	// Communicate with TOP
	input			wire			,
	input			wire			,
	output			reg				,
	//peripheral interface
	input			wire			,
	input			wire			,
	// Others
	input			wire			,
	input           wire			,
	output			reg				
);

//===================================================================\
// ********* Define Parameter and Internal Signals *********
//===================================================================/
parameter						;
reg								;
wire							;

//==========================================================================
// ****************     Main    Code    **************
//==========================================================================
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		
	else
		
end


//-------------------------  STATE ------------------------------------------




//----------------------------
//function describtion


endmodule


