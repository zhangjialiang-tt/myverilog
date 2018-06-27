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
module mealy
(
	// system signals
	input			wire			clk,
	input			wire			rst_n,	
	// Communicate with TOP
	input			wire			A,
	output			reg				k
		
);

//===================================================================\
// ********* Define Parameter and Internal Signals *********
//===================================================================/
parameter		S1				=				6'b000001;
parameter		S2				=				6'b000010;
parameter		S3				=				6'b000100;
parameter		S4				=				6'b001000;
parameter		S5				=				6'b010000;
parameter		S6				=				6'b100000;
reg		[5:0]	cur_st;
reg		[5:0]	nxt_st;

//==========================================================================
// ****************     Main    Code    **************
//==========================================================================
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		k 						<= 				0;
	else if( S5 && A == 1 )
		k 						<= 				1;	
	else
		k 						<= 				0;			
end


//-------------------------  STATE ------------------------------------------
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		cur_st 					<= 				S1;
	else
		cur_st  				<=  			nxt_st;
end
always@(*)
begin
	case( nxt_st )
		S1: 					if( A )				
									nxt_st = S2;
								else
									nxt_st = s1;
		S2: 					if( A )
									nxt_st = S3;
								else
									nxt_st = s1;		
		S3: 					if( A )
									nxt_st = S4;
								else
									nxt_st = s1;		
		S4: 					if( A )
									nxt_st = S5;
								else
									nxt_st = s1;		
		S5: 					if( A )
									nxt_st = S6;
								else
									nxt_st = s1;		
		S6: 					nxt_st = s1;		
		default: 				nxt_st = s1;
	endcase		
end

endmodule


