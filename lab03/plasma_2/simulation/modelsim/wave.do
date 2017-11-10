onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /plasma_tbw/uo/clk
add wave -noupdate -format Logic /plasma_tbw/uo/reset
add wave -noupdate -format Literal -radix hexadecimal /plasma_tbw/uo/address_next
add wave -noupdate -format Literal -radix decimal /plasma_tbw/uo/byte_we_next
add wave -noupdate -format Literal -radix decimal /plasma_tbw/uo/data_r
add wave -noupdate -format Literal -radix decimal /plasma_tbw/uo/data_w
add wave -noupdate -format Literal -radix decimal /plasma_tbw/uo/data_read_ram
add wave -noupdate -format Logic -radix decimal /plasma_tbw/uo/write_enable
add wave -noupdate -format Logic -radix decimal /plasma_tbw/uo/enable_internal_ram
add wave -noupdate -format Literal -radix hexadecimal /plasma_tbw/uo/u1_cpu/opcode
add wave -noupdate -format Literal -radix decimal /plasma_tbw/uo/u1_cpu/rs_index
add wave -noupdate -format Literal -radix decimal /plasma_tbw/uo/u1_cpu/rt_index
add wave -noupdate -format Literal -radix decimal /plasma_tbw/uo/u1_cpu/rd_index
add wave -noupdate -format Literal -radix decimal /plasma_tbw/uo/u1_cpu/u4_reg_bank/dual_port_mem/ram_proc2/dual_port_ram1
add wave -noupdate -format Literal -radix decimal /plasma_tbw/uo/u1_cpu/u4_reg_bank/dual_port_mem/ram_proc2/dual_port_ram2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {10730000 ps} 0}
configure wave -namecolwidth 438
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {10630416 ps} {10829584 ps}
