#modelsim自动化仿真平台搭建
#run.do

#1.退出当前仿真工程
quit -sim

#2.清除命令行显示信息
.main clear

#3.删除当前work库
if [file exists work] {vdel -all}

#--------- create library and mapping ------------#
#4.在相对目录中创建work库
vlib ./lib/work

#5.创建sim文件夹
#set命令。作用：对变量赋值。格式：set variable value
set path [pwd]

#方括号“[]”完成命令替换。用“[]”将一条命令括起来，命令执行完成后，返回结果。
#file dirname命令。作用：返回name所描述的文件名的目录部分。格式：file dirname name
set proj_dir [file dirname $path]

#file join命令。作用：拼接文件名。格式：file dirname name
#把sim文件夹拼接到$proj_dir
#在工程路径下创建sim文件夹，并赋值给sim变量
set sim [file mkdir [file join $proj_dir "sim"]]

#6.获取工程下所有的.v文件
#a.获取src目录绝对路径；b.获取路径下所有.V文件；c.所有.v文件赋值给列表
#glob该命令可以获取一个或更多模式参数，返回匹配的文件名列表
set rtlfiles [glob -nocomplain [file join [file join $proj_dir "src"] "*.v"]]
set tbfile   [glob -nocomplain [file join [file join $proj_dir "sim"]  "tb_*.v"]]

#regsub - 作用：基于正则表达式模式匹配完成替换操作。语法：regsub -switches {exp} string {subSpec} varName
#描述：这个命令对string进行正则表达匹配，然后把字符串拷贝进入varName中，如果没有varName则将字符串返回
regsub {(.*)/vlog/.*} $proj_dir {\1/lib/novas_vlog.v} novas_vlog

















