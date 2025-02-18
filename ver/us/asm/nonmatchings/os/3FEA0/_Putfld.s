.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

dlabel jtbl_80099C18
.word .L800654B0_408B0, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800652CC_406CC, .L800654CC_408CC, .L800652CC_406CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800651B4_405B4, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L80065080_40480, .L800650B4_404B4, .L800652CC_406CC, .L800652CC_406CC, .L800652CC_406CC, .L800654CC_408CC, .L800650B4_404B4, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L800654CC_408CC, .L80065380_40780, .L800651B4_405B4, .L80065420_40820, .L800654CC_408CC, .L800654CC_408CC, .L8006546C_4086C, .L800654CC_408CC, .L800651B4_405B4, .L800654CC_408CC, .L800654CC_408CC, .L800651B4_405B4, 0, 0

.section .text

glabel _Putfld
/* 40420 80065020 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 40424 80065024 AFB00010 */  sw        $s0, 0x10($sp)
/* 40428 80065028 00808021 */  addu      $s0, $a0, $zero
/* 4042C 8006502C 00A04021 */  addu      $t0, $a1, $zero
/* 40430 80065030 00E04821 */  addu      $t1, $a3, $zero
/* 40434 80065034 00C03821 */  addu      $a3, $a2, $zero
/* 40438 80065038 24C6FFDB */  addiu     $a2, $a2, -0x25
/* 4043C 8006503C 00063600 */  sll       $a2, $a2, 0x18
/* 40440 80065040 00063603 */  sra       $a2, $a2, 0x18
/* 40444 80065044 2CC20054 */  sltiu     $v0, $a2, 0x54
/* 40448 80065048 AFBF0014 */  sw        $ra, 0x14($sp)
/* 4044C 8006504C AE000020 */  sw        $zero, 0x20($s0)
/* 40450 80065050 AE00001C */  sw        $zero, 0x1c($s0)
/* 40454 80065054 AE000018 */  sw        $zero, 0x18($s0)
/* 40458 80065058 AE000014 */  sw        $zero, 0x14($s0)
/* 4045C 8006505C AE000010 */  sw        $zero, 0x10($s0)
/* 40460 80065060 1040011A */  beqz      $v0, .L800654CC_408CC
/* 40464 80065064 AE00000C */   sw       $zero, 0xc($s0)
/* 40468 80065068 00061080 */  sll       $v0, $a2, 2
/* 4046C 8006506C 3C01800A */  lui       $at, %hi(jtbl_80099C18)
/* 40470 80065070 00220821 */  addu      $at, $at, $v0
/* 40474 80065074 8C229C18 */  lw        $v0, %lo(jtbl_80099C18)($at)
/* 40478 80065078 00400008 */  jr        $v0
/* 4047C 8006507C 00000000 */   nop
.L80065080_40480:
/* 40480 80065080 8E04000C */  lw        $a0, 0xc($s0)
/* 40484 80065084 24820001 */  addiu     $v0, $a0, 1
/* 40488 80065088 AE02000C */  sw        $v0, 0xc($s0)
/* 4048C 8006508C 8D020000 */  lw        $v0, ($t0)
/* 40490 80065090 2403FFFC */  addiu     $v1, $zero, -4
/* 40494 80065094 24420003 */  addiu     $v0, $v0, 3
/* 40498 80065098 00431024 */  and       $v0, $v0, $v1
/* 4049C 8006509C 24430004 */  addiu     $v1, $v0, 4
/* 404A0 800650A0 AD030000 */  sw        $v1, ($t0)
/* 404A4 800650A4 8C420000 */  lw        $v0, ($v0)
/* 404A8 800650A8 01242021 */  addu      $a0, $t1, $a0
/* 404AC 800650AC 08019538 */  j         .L800654E0
/* 404B0 800650B0 A0820000 */   sb       $v0, ($a0)
.L800650B4_404B4:
/* 404B4 800650B4 82030034 */  lb        $v1, 0x34($s0)
/* 404B8 800650B8 2402006C */  addiu     $v0, $zero, 0x6c
/* 404BC 800650BC 1062000B */  beq       $v1, $v0, .L800650EC
/* 404C0 800650C0 2402004C */   addiu    $v0, $zero, 0x4c
/* 404C4 800650C4 14620009 */  bne       $v1, $v0, .L800650EC
/* 404C8 800650C8 2403FFF8 */   addiu    $v1, $zero, -8
/* 404CC 800650CC 8D020000 */  lw        $v0, ($t0)
/* 404D0 800650D0 24420007 */  addiu     $v0, $v0, 7
/* 404D4 800650D4 00431024 */  and       $v0, $v0, $v1
/* 404D8 800650D8 24430008 */  addiu     $v1, $v0, 8
/* 404DC 800650DC AD030000 */  sw        $v1, ($t0)
/* 404E0 800650E0 8C430004 */  lw        $v1, 4($v0)
/* 404E4 800650E4 08019444 */  j         .L80065110
/* 404E8 800650E8 8C420000 */   lw       $v0, ($v0)
.L800650EC:
/* 404EC 800650EC 8D020000 */  lw        $v0, ($t0)
/* 404F0 800650F0 2403FFFC */  addiu     $v1, $zero, -4
/* 404F4 800650F4 24420003 */  addiu     $v0, $v0, 3
/* 404F8 800650F8 00431024 */  and       $v0, $v0, $v1
/* 404FC 800650FC 24430004 */  addiu     $v1, $v0, 4
/* 40500 80065100 AD030000 */  sw        $v1, ($t0)
/* 40504 80065104 8C420000 */  lw        $v0, ($v0)
/* 40508 80065108 00401821 */  addu      $v1, $v0, $zero
/* 4050C 8006510C 000217C3 */  sra       $v0, $v0, 0x1f
.L80065110:
/* 40510 80065110 AE020000 */  sw        $v0, ($s0)
/* 40514 80065114 AE030004 */  sw        $v1, 4($s0)
/* 40518 80065118 82030034 */  lb        $v1, 0x34($s0)
/* 4051C 8006511C 24020068 */  addiu     $v0, $zero, 0x68
/* 40520 80065120 14620008 */  bne       $v1, $v0, .L80065144
/* 40524 80065124 00000000 */   nop
/* 40528 80065128 8E020000 */  lw        $v0, ($s0)
/* 4052C 8006512C 8E030004 */  lw        $v1, 4($s0)
/* 40530 80065130 00031400 */  sll       $v0, $v1, 0x10
/* 40534 80065134 00022C03 */  sra       $a1, $v0, 0x10
/* 40538 80065138 000227C3 */  sra       $a0, $v0, 0x1f
/* 4053C 8006513C AE040000 */  sw        $a0, ($s0)
/* 40540 80065140 AE050004 */  sw        $a1, 4($s0)
.L80065144:
/* 40544 80065144 8E020000 */  lw        $v0, ($s0)
/* 40548 80065148 04410007 */  bgez      $v0, .L80065168
/* 4054C 8006514C 00000000 */   nop
/* 40550 80065150 8E02000C */  lw        $v0, 0xc($s0)
/* 40554 80065154 24430001 */  addiu     $v1, $v0, 1
/* 40558 80065158 01221021 */  addu      $v0, $t1, $v0
/* 4055C 8006515C AE03000C */  sw        $v1, 0xc($s0)
/* 40560 80065160 0801946B */  j         .L800651AC
/* 40564 80065164 2403002D */   addiu    $v1, $zero, 0x2d
.L80065168:
/* 40568 80065168 8E030030 */  lw        $v1, 0x30($s0)
/* 4056C 8006516C 30620002 */  andi      $v0, $v1, 2
/* 40570 80065170 10400007 */  beqz      $v0, .L80065190
/* 40574 80065174 30620001 */   andi     $v0, $v1, 1
/* 40578 80065178 8E02000C */  lw        $v0, 0xc($s0)
/* 4057C 8006517C 24430001 */  addiu     $v1, $v0, 1
/* 40580 80065180 01221021 */  addu      $v0, $t1, $v0
/* 40584 80065184 AE03000C */  sw        $v1, 0xc($s0)
/* 40588 80065188 0801946B */  j         .L800651AC
/* 4058C 8006518C 2403002B */   addiu    $v1, $zero, 0x2b
.L80065190:
/* 40590 80065190 10400046 */  beqz      $v0, .L800652AC
/* 40594 80065194 02002021 */   addu     $a0, $s0, $zero
/* 40598 80065198 8E02000C */  lw        $v0, 0xc($s0)
/* 4059C 8006519C 24430001 */  addiu     $v1, $v0, 1
/* 405A0 800651A0 01221021 */  addu      $v0, $t1, $v0
/* 405A4 800651A4 AE03000C */  sw        $v1, 0xc($s0)
/* 405A8 800651A8 24030020 */  addiu     $v1, $zero, 0x20
.L800651AC:
/* 405AC 800651AC 080194AA */  j         .L800652A8
/* 405B0 800651B0 A0430000 */   sb       $v1, ($v0)
.L800651B4_405B4:
/* 405B4 800651B4 82030034 */  lb        $v1, 0x34($s0)
/* 405B8 800651B8 2402006C */  addiu     $v0, $zero, 0x6c
/* 405BC 800651BC 1062000B */  beq       $v1, $v0, .L800651EC
/* 405C0 800651C0 2402004C */   addiu    $v0, $zero, 0x4c
/* 405C4 800651C4 14620009 */  bne       $v1, $v0, .L800651EC
/* 405C8 800651C8 2403FFF8 */   addiu    $v1, $zero, -8
/* 405CC 800651CC 8D020000 */  lw        $v0, ($t0)
/* 405D0 800651D0 24420007 */  addiu     $v0, $v0, 7
/* 405D4 800651D4 00431024 */  and       $v0, $v0, $v1
/* 405D8 800651D8 24430008 */  addiu     $v1, $v0, 8
/* 405DC 800651DC AD030000 */  sw        $v1, ($t0)
/* 405E0 800651E0 8C430004 */  lw        $v1, 4($v0)
/* 405E4 800651E4 08019484 */  j         .L80065210
/* 405E8 800651E8 8C420000 */   lw       $v0, ($v0)
.L800651EC:
/* 405EC 800651EC 8D020000 */  lw        $v0, ($t0)
/* 405F0 800651F0 2403FFFC */  addiu     $v1, $zero, -4
/* 405F4 800651F4 24420003 */  addiu     $v0, $v0, 3
/* 405F8 800651F8 00431024 */  and       $v0, $v0, $v1
/* 405FC 800651FC 24430004 */  addiu     $v1, $v0, 4
/* 40600 80065200 AD030000 */  sw        $v1, ($t0)
/* 40604 80065204 8C420000 */  lw        $v0, ($v0)
/* 40608 80065208 00401821 */  addu      $v1, $v0, $zero
/* 4060C 8006520C 000217C3 */  sra       $v0, $v0, 0x1f
.L80065210:
/* 40610 80065210 AE020000 */  sw        $v0, ($s0)
/* 40614 80065214 AE030004 */  sw        $v1, 4($s0)
/* 40618 80065218 82030034 */  lb        $v1, 0x34($s0)
/* 4061C 8006521C 24020068 */  addiu     $v0, $zero, 0x68
/* 40620 80065220 14620004 */  bne       $v1, $v0, .L80065234
/* 40624 80065224 00001021 */   addu     $v0, $zero, $zero
/* 40628 80065228 96030006 */  lhu       $v1, 6($s0)
/* 4062C 8006522C 08019490 */  j         .L80065240
/* 40630 80065230 00000000 */   nop
.L80065234:
/* 40634 80065234 14600004 */  bnez      $v1, .L80065248
/* 40638 80065238 00000000 */   nop
/* 4063C 8006523C 8E030004 */  lw        $v1, 4($s0)
.L80065240:
/* 40640 80065240 AE020000 */  sw        $v0, ($s0)
/* 40644 80065244 AE030004 */  sw        $v1, 4($s0)
.L80065248:
/* 40648 80065248 8E020030 */  lw        $v0, 0x30($s0)
/* 4064C 8006524C 30420008 */  andi      $v0, $v0, 8
/* 40650 80065250 10400016 */  beqz      $v0, .L800652AC
/* 40654 80065254 02002021 */   addu     $a0, $s0, $zero
/* 40658 80065258 8E02000C */  lw        $v0, 0xc($s0)
/* 4065C 8006525C 24430001 */  addiu     $v1, $v0, 1
/* 40660 80065260 01221021 */  addu      $v0, $t1, $v0
/* 40664 80065264 AE03000C */  sw        $v1, 0xc($s0)
/* 40668 80065268 24030030 */  addiu     $v1, $zero, 0x30
/* 4066C 8006526C A0430000 */  sb        $v1, ($v0)
/* 40670 80065270 00071600 */  sll       $v0, $a3, 0x18
/* 40674 80065274 00021603 */  sra       $v0, $v0, 0x18
/* 40678 80065278 38430078 */  xori      $v1, $v0, 0x78
/* 4067C 8006527C 2C630001 */  sltiu     $v1, $v1, 1
/* 40680 80065280 38420058 */  xori      $v0, $v0, 0x58
/* 40684 80065284 2C420001 */  sltiu     $v0, $v0, 1
/* 40688 80065288 00621825 */  or        $v1, $v1, $v0
/* 4068C 8006528C 10600007 */  beqz      $v1, .L800652AC
/* 40690 80065290 00000000 */   nop
/* 40694 80065294 8E02000C */  lw        $v0, 0xc($s0)
/* 40698 80065298 24430001 */  addiu     $v1, $v0, 1
/* 4069C 8006529C 01221021 */  addu      $v0, $t1, $v0
/* 406A0 800652A0 AE03000C */  sw        $v1, 0xc($s0)
/* 406A4 800652A4 A0470000 */  sb        $a3, ($v0)
.L800652A8:
/* 406A8 800652A8 02002021 */  addu      $a0, $s0, $zero
.L800652AC:
/* 406AC 800652AC 8C82000C */  lw        $v0, 0xc($a0)
/* 406B0 800652B0 00072E00 */  sll       $a1, $a3, 0x18
/* 406B4 800652B4 00052E03 */  sra       $a1, $a1, 0x18
/* 406B8 800652B8 01221021 */  addu      $v0, $t1, $v0
/* 406BC 800652BC 0C01AE60 */  jal       _Litob
/* 406C0 800652C0 AC820008 */   sw       $v0, 8($a0)
/* 406C4 800652C4 08019538 */  j         .L800654E0
/* 406C8 800652C8 00000000 */   nop
.L800652CC_406CC:
/* 406CC 800652CC 8D020000 */  lw        $v0, ($t0)
/* 406D0 800652D0 2403FFF8 */  addiu     $v1, $zero, -8
/* 406D4 800652D4 24420007 */  addiu     $v0, $v0, 7
/* 406D8 800652D8 00431024 */  and       $v0, $v0, $v1
/* 406DC 800652DC 24430008 */  addiu     $v1, $v0, 8
/* 406E0 800652E0 AD030000 */  sw        $v1, ($t0)
/* 406E4 800652E4 D4400000 */  ldc1      $f0, ($v0)
/* 406E8 800652E8 F6000000 */  sdc1      $f0, ($s0)
/* 406EC 800652EC 96020000 */  lhu       $v0, ($s0)
/* 406F0 800652F0 30428000 */  andi      $v0, $v0, 0x8000
/* 406F4 800652F4 10400007 */  beqz      $v0, .L80065314
/* 406F8 800652F8 00000000 */   nop
/* 406FC 800652FC 8E02000C */  lw        $v0, 0xc($s0)
/* 40700 80065300 24430001 */  addiu     $v1, $v0, 1
/* 40704 80065304 01221021 */  addu      $v0, $t1, $v0
/* 40708 80065308 AE03000C */  sw        $v1, 0xc($s0)
/* 4070C 8006530C 080194D6 */  j         .L80065358
/* 40710 80065310 2403002D */   addiu    $v1, $zero, 0x2d
.L80065314:
/* 40714 80065314 8E030030 */  lw        $v1, 0x30($s0)
/* 40718 80065318 30620002 */  andi      $v0, $v1, 2
/* 4071C 8006531C 10400007 */  beqz      $v0, .L8006533C
/* 40720 80065320 30620001 */   andi     $v0, $v1, 1
/* 40724 80065324 8E02000C */  lw        $v0, 0xc($s0)
/* 40728 80065328 24430001 */  addiu     $v1, $v0, 1
/* 4072C 8006532C 01221021 */  addu      $v0, $t1, $v0
/* 40730 80065330 AE03000C */  sw        $v1, 0xc($s0)
/* 40734 80065334 080194D6 */  j         .L80065358
/* 40738 80065338 2403002B */   addiu    $v1, $zero, 0x2b
.L8006533C:
/* 4073C 8006533C 10400008 */  beqz      $v0, .L80065360
/* 40740 80065340 02002021 */   addu     $a0, $s0, $zero
/* 40744 80065344 8E02000C */  lw        $v0, 0xc($s0)
/* 40748 80065348 24430001 */  addiu     $v1, $v0, 1
/* 4074C 8006534C 01221021 */  addu      $v0, $t1, $v0
/* 40750 80065350 AE03000C */  sw        $v1, 0xc($s0)
/* 40754 80065354 24030020 */  addiu     $v1, $zero, 0x20
.L80065358:
/* 40758 80065358 A0430000 */  sb        $v1, ($v0)
/* 4075C 8006535C 02002021 */  addu      $a0, $s0, $zero
.L80065360:
/* 40760 80065360 8C82000C */  lw        $v0, 0xc($a0)
/* 40764 80065364 00072E00 */  sll       $a1, $a3, 0x18
/* 40768 80065368 00052E03 */  sra       $a1, $a1, 0x18
/* 4076C 8006536C 01221021 */  addu      $v0, $t1, $v0
/* 40770 80065370 0C01AEF4 */  jal       _Ldtob
/* 40774 80065374 AC820008 */   sw       $v0, 8($a0)
/* 40778 80065378 08019538 */  j         .L800654E0
/* 4077C 8006537C 00000000 */   nop
.L80065380_40780:
/* 40780 80065380 82030034 */  lb        $v1, 0x34($s0)
/* 40784 80065384 24020068 */  addiu     $v0, $zero, 0x68
/* 40788 80065388 1462000B */  bne       $v1, $v0, .L800653B8
/* 4078C 8006538C 2402006C */   addiu    $v0, $zero, 0x6c
/* 40790 80065390 8D020000 */  lw        $v0, ($t0)
/* 40794 80065394 2403FFFC */  addiu     $v1, $zero, -4
/* 40798 80065398 24420003 */  addiu     $v0, $v0, 3
/* 4079C 8006539C 00431024 */  and       $v0, $v0, $v1
/* 407A0 800653A0 24430004 */  addiu     $v1, $v0, 4
/* 407A4 800653A4 AD030000 */  sw        $v1, ($t0)
/* 407A8 800653A8 8C430000 */  lw        $v1, ($v0)
/* 407AC 800653AC 8E02002C */  lw        $v0, 0x2c($s0)
/* 407B0 800653B0 08019538 */  j         .L800654E0
/* 407B4 800653B4 A4620000 */   sh       $v0, ($v1)
.L800653B8:
/* 407B8 800653B8 1062000F */  beq       $v1, $v0, .L800653F8
/* 407BC 800653BC 2402004C */   addiu    $v0, $zero, 0x4c
/* 407C0 800653C0 1462000D */  bne       $v1, $v0, .L800653F8
/* 407C4 800653C4 2402FFFC */   addiu    $v0, $zero, -4
/* 407C8 800653C8 8D040000 */  lw        $a0, ($t0)
/* 407CC 800653CC 24840003 */  addiu     $a0, $a0, 3
/* 407D0 800653D0 00822024 */  and       $a0, $a0, $v0
/* 407D4 800653D4 24820004 */  addiu     $v0, $a0, 4
/* 407D8 800653D8 AD020000 */  sw        $v0, ($t0)
/* 407DC 800653DC 8E02002C */  lw        $v0, 0x2c($s0)
/* 407E0 800653E0 8C840000 */  lw        $a0, ($a0)
/* 407E4 800653E4 00401821 */  addu      $v1, $v0, $zero
/* 407E8 800653E8 00001021 */  addu      $v0, $zero, $zero
/* 407EC 800653EC AC820000 */  sw        $v0, ($a0)
/* 407F0 800653F0 08019538 */  j         .L800654E0
/* 407F4 800653F4 AC830004 */   sw       $v1, 4($a0)
.L800653F8:
/* 407F8 800653F8 8D020000 */  lw        $v0, ($t0)
/* 407FC 800653FC 2403FFFC */  addiu     $v1, $zero, -4
/* 40800 80065400 24420003 */  addiu     $v0, $v0, 3
/* 40804 80065404 00431024 */  and       $v0, $v0, $v1
/* 40808 80065408 24430004 */  addiu     $v1, $v0, 4
/* 4080C 8006540C AD030000 */  sw        $v1, ($t0)
/* 40810 80065410 8C430000 */  lw        $v1, ($v0)
/* 40814 80065414 8E02002C */  lw        $v0, 0x2c($s0)
/* 40818 80065418 08019538 */  j         .L800654E0
/* 4081C 8006541C AC620000 */   sw       $v0, ($v1)
.L80065420_40820:
/* 40820 80065420 8D040000 */  lw        $a0, ($t0)
/* 40824 80065424 2405FFFC */  addiu     $a1, $zero, -4
/* 40828 80065428 24840003 */  addiu     $a0, $a0, 3
/* 4082C 8006542C 00852024 */  and       $a0, $a0, $a1
/* 40830 80065430 24850004 */  addiu     $a1, $a0, 4
/* 40834 80065434 AD050000 */  sw        $a1, ($t0)
/* 40838 80065438 8C870000 */  lw        $a3, ($a0)
/* 4083C 8006543C 02002021 */  addu      $a0, $s0, $zero
/* 40840 80065440 24050078 */  addiu     $a1, $zero, 0x78
/* 40844 80065444 8C86000C */  lw        $a2, 0xc($a0)
/* 40848 80065448 00E01821 */  addu      $v1, $a3, $zero
/* 4084C 8006544C 000717C3 */  sra       $v0, $a3, 0x1f
/* 40850 80065450 01263021 */  addu      $a2, $t1, $a2
/* 40854 80065454 AC820000 */  sw        $v0, ($a0)
/* 40858 80065458 AC830004 */  sw        $v1, 4($a0)
/* 4085C 8006545C 0C01AE60 */  jal       _Litob
/* 40860 80065460 AC860008 */   sw       $a2, 8($a0)
/* 40864 80065464 08019538 */  j         .L800654E0
/* 40868 80065468 00000000 */   nop
.L8006546C_4086C:
/* 4086C 8006546C 8D020000 */  lw        $v0, ($t0)
/* 40870 80065470 2403FFFC */  addiu     $v1, $zero, -4
/* 40874 80065474 24420003 */  addiu     $v0, $v0, 3
/* 40878 80065478 00431024 */  and       $v0, $v0, $v1
/* 4087C 8006547C 24430004 */  addiu     $v1, $v0, 4
/* 40880 80065480 AD030000 */  sw        $v1, ($t0)
/* 40884 80065484 8C440000 */  lw        $a0, ($v0)
/* 40888 80065488 0C019294 */  jal       strlen
/* 4088C 8006548C AE040008 */   sw       $a0, 8($s0)
/* 40890 80065490 8E030024 */  lw        $v1, 0x24($s0)
/* 40894 80065494 04600012 */  bltz      $v1, .L800654E0
/* 40898 80065498 AE020014 */   sw       $v0, 0x14($s0)
/* 4089C 8006549C 0062102A */  slt       $v0, $v1, $v0
/* 408A0 800654A0 5440000F */  bnel      $v0, $zero, .L800654E0
/* 408A4 800654A4 AE030014 */   sw       $v1, 0x14($s0)
/* 408A8 800654A8 08019538 */  j         .L800654E0
/* 408AC 800654AC 00000000 */   nop
.L800654B0_408B0:
/* 408B0 800654B0 8E02000C */  lw        $v0, 0xc($s0)
/* 408B4 800654B4 24430001 */  addiu     $v1, $v0, 1
/* 408B8 800654B8 01221021 */  addu      $v0, $t1, $v0
/* 408BC 800654BC AE03000C */  sw        $v1, 0xc($s0)
/* 408C0 800654C0 24030025 */  addiu     $v1, $zero, 0x25
/* 408C4 800654C4 08019538 */  j         .L800654E0
/* 408C8 800654C8 A0430000 */   sb       $v1, ($v0)
.L800654CC_408CC:
/* 408CC 800654CC 8E02000C */  lw        $v0, 0xc($s0)
/* 408D0 800654D0 24430001 */  addiu     $v1, $v0, 1
/* 408D4 800654D4 01221021 */  addu      $v0, $t1, $v0
/* 408D8 800654D8 AE03000C */  sw        $v1, 0xc($s0)
/* 408DC 800654DC A0470000 */  sb        $a3, ($v0)
.L800654E0:
/* 408E0 800654E0 8FBF0014 */  lw        $ra, 0x14($sp)
/* 408E4 800654E4 8FB00010 */  lw        $s0, 0x10($sp)
/* 408E8 800654E8 03E00008 */  jr        $ra
/* 408EC 800654EC 27BD0018 */   addiu    $sp, $sp, 0x18
