transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {X:/projects/cis3/lab01/src/fibonacci.vhd}
vcom -93 -work work {X:/projects/cis3/lab01/src/fibonacci_datapath.vhd}
vcom -93 -work work {X:/projects/cis3/lab01/src/fibonacci_pc.vhd}
vcom -93 -work work {X:/projects/cis3/lab01/src/igual.vhd}
vcom -93 -work work {X:/projects/cis3/lab01/src/multiplexor2a1.vhd}
vcom -93 -work work {X:/projects/cis3/lab01/src/reg.vhd}
vcom -93 -work work {X:/projects/cis3/lab01/src/somador.vhd}
vcom -93 -work work {X:/projects/cis3/lab01/src/subtrator.vhd}

vcom -93 -work work {X:/psi2553/exp1b/project/../rtl/estimulos_rtl.vhd}
vcom -93 -work work {X:/psi2553/exp1b/project/../rtl/fibonacci_tbw_rtl.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L stratixii -L rtl_work -L work -voptargs="+acc" fibonacci_tbw

do X:/psi2553/exp1b/project/../rtl/inicio.txt
