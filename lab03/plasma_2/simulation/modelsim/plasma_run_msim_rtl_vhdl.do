transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {X:/projects/cis3/lab03/plasma_2/mlite_pack.vhd}
vcom -93 -work work {X:/projects/cis3/lab03/plasma_2/alu.vhd}
vcom -93 -work work {X:/projects/cis3/lab03/plasma_2/bus_mux.vhd}
vcom -93 -work work {X:/projects/cis3/lab03/plasma_2/control.vhd}
vcom -93 -work work {X:/projects/cis3/lab03/plasma_2/mem_ctrl.vhd}
vcom -93 -work work {X:/projects/cis3/lab03/plasma_2/mlite_cpu.vhd}
vcom -93 -work work {X:/projects/cis3/lab03/plasma_2/mult.vhd}
vcom -93 -work work {X:/projects/cis3/lab03/plasma_2/pc_next.vhd}
vcom -93 -work work {X:/projects/cis3/lab03/plasma_2/pipeline.vhd}
vcom -93 -work work {X:/projects/cis3/lab03/plasma_2/plasma.vhd}
vcom -93 -work work {X:/projects/cis3/lab03/plasma_2/ram.vhd}
vcom -93 -work work {X:/projects/cis3/lab03/plasma_2/reg_bank.vhd}
vcom -93 -work work {X:/projects/cis3/lab03/plasma_2/shifter.vhd}
vcom -93 -work work {X:/projects/cis3/lab03/plasma_2/uart.vhd}

vcom -93 -work work {X:/projects/cis3/lab03/plasma_2/plasma_tbw.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L cycloneii -L rtl_work -L work -voptargs="+acc" plasma_tbw

do X:/projects/cis3/lab03/plasma_2/inicio.txt
