onerror {resume}
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(3) &RAM(2) &RAM(1) &RAM(0) )} mem0
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(7) &RAM(6) &RAM(5) &RAM(4) )} mem1
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(11) &RAM(10) &RAM(9) &RAM(8) )} mem2
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(15) &RAM(14) &RAM(13) &RAM(12) )} mem3
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(19) &RAM(18) &RAM(17) &RAM(16) )} mem4
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(23) &RAM(22) &RAM(21) &RAM(20) )} mem5
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(27) &RAM(26) &RAM(25) &RAM(24) )} mem6
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(31) &RAM(30) &RAM(29) &RAM(28) )} mem7
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(35) &RAM(34) &RAM(33) &RAM(32) )} mem8
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(39) &RAM(38) &RAM(37) &RAM(36) )} mem9
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(43) &RAM(42) &RAM(41) &RAM(40) )} mem10
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(47) &RAM(46) &RAM(45) &RAM(44) )} mem11
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(51) &RAM(50) &RAM(49) &RAM(48) )} mem12
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(55) &RAM(54) &RAM(53) &RAM(52) )} mem13
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(59) &RAM(58) &RAM(57) &RAM(56) )} mem14
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(63) &RAM(62) &RAM(61) &RAM(60) )} mem15
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(67) &RAM(66) &RAM(65) &RAM(64) )} mem16
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(71) &RAM(70) &RAM(69) &RAM(68) )} mem17
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(75) &RAM(74) &RAM(73) &RAM(72) )} mem18
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(79) &RAM(78) &RAM(77) &RAM(76) )} mem19
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(83) &RAM(22) &RAM(81) &RAM(80) )} mem20
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(87) &RAM(86) &RAM(85) &RAM(84) )} mem21
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(91) &RAM(90) &RAM(89) &RAM(88) )} mem22
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(95) &RAM(94) &RAM(93) &RAM(92) )} mem23
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(99) &RAM(98) &RAM(97) &RAM(96) )} mem24
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(103) &RAM(102) &RAM(101) &RAM(100) )} mem25
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(107) &RAM(106) &RAM(105) &RAM(104) )} mem26
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(111) &RAM(110) &RAM(109) &RAM(108) )} mem27
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(115) &RAM(114) &RAM(113) &RAM(112) )} mem28
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(119) &RAM(118) &RAM(117) &RAM(116) )} mem29
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(123) &RAM(122) &RAM(121) &RAM(120) )} mem30
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(127) &RAM(126) &RAM(125) &RAM(124) )} mem31
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(131) &RAM(130) &RAM(129) &RAM(128) )} mem32
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(135) &RAM(134) &RAM(133) &RAM(132) )} mem33
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(139) &RAM(138) &RAM(137) &RAM(136) )} mem34
quietly virtual signal -install /cpu_tb/Data_mem { (context /cpu_tb/Data_mem )(RAM(143) &RAM(142) &RAM(141) &RAM(140) )} mem35
quietly WaveActivateNextPane {} 0
add wave -noupdate /cpu_tb/CPU/dp/ck
add wave -noupdate /cpu_tb/CPU/dp/rst
add wave -noupdate /cpu_tb/CPU/ct/i
add wave -noupdate /cpu_tb/CPU/dp/i_address
add wave -noupdate /cpu_tb/CPU/dp/uins
add wave -noupdate /cpu_tb/CPU/dp/uins.i
add wave -noupdate -divider {ESTAGIO 1}
add wave -noupdate -color yellow /cpu_tb/CPU/dp/uins.CY1
add wave -noupdate -radix hexadecimal /cpu_tb/CPU/dp/npc
add wave -noupdate -radix hexadecimal /cpu_tb/CPU/dp/IR
add wave -noupdate -divider {ESTAGIO 2}
add wave -noupdate -color yellow /cpu_tb/CPU/dp/uins.CY2
add wave -noupdate -radix hexadecimal /cpu_tb/CPU/dp/RS
add wave -noupdate -radix hexadecimal /cpu_tb/CPU/dp/RT
add wave -noupdate -divider {ESTAGIO 3}
add wave -noupdate -color yellow /cpu_tb/CPU/dp/uins.CY3
add wave -noupdate -radix hexadecimal /cpu_tb/CPU/dp/Rula
add wave -noupdate -divider {ESTAGIO 3}
add wave -noupdate -color Yellow /cpu_tb/CPU/dp/uins.wpc
add wave -noupdate -color Yellow /cpu_tb/CPU/dp/uins.wreg
add wave -noupdate -color Yellow /cpu_tb/CPU/dp/uins.ce
add wave -noupdate -color Yellow /cpu_tb/CPU/dp/uins.rw
add wave -noupdate -radix hexadecimal /cpu_tb/CPU/dp/pc
add wave -noupdate -label {r1 (at)} -radix hexadecimal /cpu_tb/CPU/dp/REGS/reg(1)
add wave -noupdate -label {r8 (t0)} -radix hexadecimal /cpu_tb/CPU/dp/REGS/reg(8)
add wave -noupdate -label {r9 (t1)} -radix hexadecimal /cpu_tb/CPU/dp/REGS/reg(9)
add wave -noupdate -label {r10 (t2)} -radix hexadecimal /cpu_tb/CPU/dp/REGS/reg(10)
add wave -noupdate -label {r11 (t3)} -radix hexadecimal /cpu_tb/CPU/dp/REGS/reg(11)
add wave -noupdate -label {r12 (t4)} -radix hexadecimal /cpu_tb/CPU/dp/REGS/reg(12)
add wave -noupdate -label {r13 (t5)} -radix hexadecimal /cpu_tb/CPU/dp/REGS/reg(13)
add wave -noupdate -label {r14 (t6)} -radix hexadecimal /cpu_tb/CPU/dp/REGS/reg(14)
add wave -noupdate -label {r15 (t7)} -radix hexadecimal /cpu_tb/CPU/dp/REGS/reg(16)
add wave -noupdate -label {r16 (s0)} -radix hexadecimal /cpu_tb/CPU/dp/REGS/reg(16)
add wave -noupdate -label {r17 (s1)} -radix hexadecimal /cpu_tb/CPU/dp/REGS/reg(17)
add wave -noupdate -label {r18 (s2)} -radix hexadecimal /cpu_tb/CPU/dp/REGS/reg(18)
add wave -noupdate -label {r19 (s3)} -radix hexadecimal /cpu_tb/CPU/dp/REGS/reg(19)
add wave -noupdate -label {r20 (s4)} -radix hexadecimal /cpu_tb/CPU/dp/REGS/reg(20)
add wave -noupdate -label {r21 (s5)} -radix hexadecimal /cpu_tb/CPU/dp/REGS/reg(21)
add wave -noupdate -color {Violet Red} -label {r31 (sp)} -radix hexadecimal /cpu_tb/CPU/dp/REGS/reg(31)
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1166686 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue right
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 2000
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {1117500 ps} {1327500 ps}