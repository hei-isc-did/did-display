onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group Generics /display_tb/displayCircuit_inst/g_clockFrequency
add wave -noupdate -group Generics /display_tb/displayCircuit_inst/g_lcdSpiFrequency
add wave -noupdate -group Generics -radix decimal /display_tb/displayCircuit_inst/g_testLineNb
add wave -noupdate -group Generics -radix decimal /display_tb/displayCircuit_inst/g_vgaPixelClockFrequency
add wave -noupdate -group Generics -radix decimal /display_tb/displayCircuit_inst/g_vgaBitNb
add wave -noupdate -group Generics -radix decimal /display_tb/displayCircuit_inst/g_vgaHResolution
add wave -noupdate -group Generics -radix decimal /display_tb/displayCircuit_inst/g_vgaHFrontPorch
add wave -noupdate -group Generics -radix decimal /display_tb/displayCircuit_inst/g_vgaHBackPorch
add wave -noupdate -group Generics -radix decimal /display_tb/displayCircuit_inst/g_vgaHSync
add wave -noupdate -group Generics -radix decimal /display_tb/displayCircuit_inst/g_vgaVResolution
add wave -noupdate -group Generics -radix decimal /display_tb/displayCircuit_inst/g_vgaVFrontPorch
add wave -noupdate -group Generics -radix decimal /display_tb/displayCircuit_inst/g_vgaVBackPorch
add wave -noupdate -group Generics -radix decimal /display_tb/displayCircuit_inst/g_vgaVSync
add wave -noupdate -group Generics /display_tb/displayCircuit_inst/g_lcdAsciiBitNb
add wave -noupdate -expand -group {TB Signals} -color Gray75 /display_tb/displayCircuit_inst/clk
add wave -noupdate -expand -group {TB Signals} -color Gray75 /display_tb/displayCircuit_inst/rst
add wave -noupdate -expand -group {TB Signals} -color Gray75 /display_tb/displayCircuit_inst/pixelClk
add wave -noupdate -expand -group {TB Signals} -color {Cornflower Blue} /display_tb/displayCircuit_inst/testMode
add wave -noupdate -expand -group {TB Signals} -color {Cornflower Blue} /display_tb/displayCircuit_inst/start
add wave -noupdate -expand -group {TB Signals} -color {Cornflower Blue} /display_tb/displayCircuit_inst/stop
add wave -noupdate -expand -group {TB Signals} -color {Cornflower Blue} /display_tb/displayCircuit_inst/button3
add wave -noupdate -expand -group {TB Signals} -color {Cornflower Blue} /display_tb/displayCircuit_inst/button4
add wave -noupdate -expand -group {TB Signals} -color {Cornflower Blue} /display_tb/displayCircuit_inst/testOut
add wave -noupdate -expand -group {Display Controller} /display_tb/displayCircuit_inst/displayController_inst/current_state
add wave -noupdate -expand -group {Display Controller} /display_tb/displayCircuit_inst/displayController_inst/inhibitRgb
add wave -noupdate -expand -group {VGA Output} -expand -group {VGA Output} -radix unsigned /display_tb/displayCircuit_inst/posX
add wave -noupdate -expand -group {VGA Output} -expand -group {VGA Output} -radix unsigned /display_tb/displayCircuit_inst/posY
add wave -noupdate -expand -group {VGA Output} -expand -group {VGA Output} -radix unsigned /display_tb/displayCircuit_inst/posXY
add wave -noupdate -expand -group {VGA Output} -expand -group {VGA Output} -color Gold /display_tb/displayCircuit_inst/vga_rgb
add wave -noupdate -expand -group {VGA Output} -expand -group {VGA Output} -color Gold /display_tb/displayCircuit_inst/vgaController_inst/dataEnable
add wave -noupdate -expand -group {VGA Output} -expand -group {VGA Output} -color Gold /display_tb/displayCircuit_inst/vga_vsync
add wave -noupdate -expand -group {VGA Output} -expand -group {VGA Output} -color Gold /display_tb/displayCircuit_inst/vga_hsync
add wave -noupdate -expand -group {VGA Output} -expand -group {VGA Output} -radix unsigned /display_tb/displayCircuit_inst/vgaController_inst/lvec_posX
add wave -noupdate -expand -group {VGA Output} -expand -group {VGA Output} -radix unsigned /display_tb/displayCircuit_inst/vgaController_inst/lvec_posY
add wave -noupdate -expand -group {VGA Output} -expand -group {VGA Output} -radix unsigned /display_tb/displayCircuit_inst/vgaController_inst/lvec_posXY
add wave -noupdate -expand -group {VGA Output} -expand -group {VGA Output} -expand -group {V Sync} -radix unsigned /display_tb/displayCircuit_inst/vgaController_inst/lvec_vCount
add wave -noupdate -expand -group {VGA Output} -expand -group {VGA Output} -expand -group {V Sync} /display_tb/displayCircuit_inst/vgaController_inst/current_state_vSync
add wave -noupdate -expand -group {VGA Output} -expand -group {VGA Output} -expand -group {V Sync} /display_tb/displayCircuit_inst/vgaController_inst/next_state_vSync
add wave -noupdate -expand -group {VGA Output} -expand -group {VGA Output} -expand -group {V Sync} /display_tb/displayCircuit_inst/vgaController_inst/lsig_dataEnableV
add wave -noupdate -expand -group {VGA Output} -expand -group {VGA Output} -expand -group {V Sync} /display_tb/displayCircuit_inst/vgaController_inst/lsig_rst_vCount
add wave -noupdate -expand -group {VGA Output} -expand -group {VGA Output} -expand -group {V Sync} /display_tb/displayCircuit_inst/vgaController_inst/lsig_en_vCount
add wave -noupdate -expand -group {VGA Output} -expand -group {VGA Output} -expand -group {H Sync} -radix unsigned /display_tb/displayCircuit_inst/vgaController_inst/lvec_hCount
add wave -noupdate -expand -group {VGA Output} -expand -group {VGA Output} -expand -group {H Sync} /display_tb/displayCircuit_inst/vgaController_inst/current_state_hSync
add wave -noupdate -expand -group {VGA Output} -expand -group {VGA Output} -expand -group {H Sync} /display_tb/displayCircuit_inst/vgaController_inst/next_state_hSync
add wave -noupdate -expand -group {VGA Output} -expand -group {VGA Output} -expand -group {H Sync} /display_tb/displayCircuit_inst/vgaController_inst/lsig_dataEnableH
add wave -noupdate -expand -group {VGA Output} -expand -group {VGA Output} -expand -group {H Sync} /display_tb/displayCircuit_inst/vgaController_inst/lsig_rst_hCount
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 4} {16704129800 ps} 0} {{Cursor 2} {75978 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 445
configure wave -valuecolwidth 58
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1000000
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {0 ps} {16992088649 ps}
