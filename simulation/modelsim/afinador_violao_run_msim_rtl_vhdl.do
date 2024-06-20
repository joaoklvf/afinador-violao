transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/aluno/Desktop/afinador-violao-main/UC.vhd}
vcom -93 -work work {C:/Users/aluno/Desktop/afinador-violao-main/contador_sem_overflow.vhd}
vcom -93 -work work {C:/Users/aluno/Desktop/afinador-violao-main/lpm_compare0.vhd}
vcom -93 -work work {C:/Users/aluno/Desktop/afinador-violao-main/lpm_compare1.vhd}
vcom -93 -work work {C:/Users/aluno/Desktop/afinador-violao-main/lpm_compare2.vhd}
vcom -93 -work work {C:/Users/aluno/Desktop/afinador-violao-main/lpm_compare3.vhd}
vcom -93 -work work {C:/Users/aluno/Desktop/afinador-violao-main/SaidasLed.vhd}

