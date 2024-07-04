onerror {quit -f}
vlib work
vlog -work work afinador_violao.vo
vlog -work work afinador_violao.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.oscilador_vlg_vec_tst
vcd file -direction afinador_violao.msim.vcd
vcd add -internal oscilador_vlg_vec_tst/*
vcd add -internal oscilador_vlg_vec_tst/i1/*
add wave /*
run -all
