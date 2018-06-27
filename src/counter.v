//标准的计数器模板
/*********************************************************************************************************************/
//define parameter
parameter		N			=;
reg				[N-1:0]		cnt0;
reg				[M-1:0]		cnt1;
reg			 			 	flag;
wire						add_cnt0;
wire						end_cnt0;
wire						add_cnt1;
wire						end_cnt1;

/*********************************************************************************************************************/
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		cnt0						<=						0;
	else if( add_cnt0 )
	begin
		if( end_cnt0 )
			cnt0					<=						0;
		else
			cnt0					<=						cnt0 + 1;			
	end
end

assign add_cnt0 		= 		( flag == 1 );				//计数器开始计数条件
assign end_cnt0 		= 		add_cnt0 && ( cnt0 == ) ;		//计数器停止计数条件

always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		cnt1						<=						0;
	else if( add_cnt1 )
	begin
		if( end_cnt1 )
			cnt1					<=						0;
		else
			cnt1					<=						cnt1 + 1;			
	end
end

assign add_cnt1 		= 		;//计数器开始计数条件
assign end_cnt1 		= 		add_cnt0 && ( cnt1 == ) ;//计数器停止计数条件

//flag是计数周期
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		flag						<=						0;
	else if( en )
		flag					<=						1;
	else if(  )
		flag					<=						0;
	else
		flag					<=						flag;
end


endmodule