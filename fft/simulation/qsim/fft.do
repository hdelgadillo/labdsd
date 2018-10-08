onerror {quit -f}
vlib work
vlog -work work fft.vo
vlog -work work fft.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.fft_vlg_vec_tst
vcd file -direction fft.msim.vcd
vcd add -internal fft_vlg_vec_tst/*
vcd add -internal fft_vlg_vec_tst/i1/*
add wave /*
run -all
