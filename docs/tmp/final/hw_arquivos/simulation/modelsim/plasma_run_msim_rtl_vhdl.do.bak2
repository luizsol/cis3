transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/comparador_gen.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/datapath.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/fibonacci.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/fsm_fibonacci.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/minor_gen.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/minor_igual_gen.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/mlite_pack.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/multiplexor2a1_gen.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/reg.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/reg_gen.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/wrapper0.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/wrapper1.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/somador_gen.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/alu.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/bus_mux.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/control.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/mem_ctrl.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/mlite_cpu.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/mult.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/pc_next.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/pipeline.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/plasma.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/ram.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/reg_bank.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/shifter.vhd}
vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/uart.vhd}

vcom -93 -work work {X:/psi2553/15/exp6/final/hw_arquivos/plasma_tbw.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L cycloneii -L rtl_work -L work -voptargs="+acc" plasma_tbw

do X:/psi2553/15/exp6/final/hw_arquivos/inicio.txt
