#---------  ------------#

#1.exit modelsim simulation
quit -sim

#2.clear messages
.main clear

#3.delete the existing work dir
if [file exists work] {vdel -all}

#--------- create library and mapping ------------#
#4.creat work dir
vlib work

#5.
vmap work work

#6.complie .v files
vlog -work work ./*.v
vlog -work work ./../src./*.v

#7.start simulation
vsim -voptargs=+acc work.tb_top

#8.add waves
add wave tb_/signal
add wave tb_/inst_/signal

#9.run
run 100us