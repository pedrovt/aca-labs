onerror {exit -code 1}
vlib work
vcom -work work PopCount32_Parallel.vho
vcom -work work PopCount32_Parallel.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.PopCount32_Parallel_vhd_vec_tst
vcd file -direction PopCount32_Parallel.msim.vcd
vcd add -internal PopCount32_Parallel_vhd_vec_tst/*
vcd add -internal PopCount32_Parallel_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

