.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel __osPfsRWInode
/* 4528C 80069E8C 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 45290 80069E90 AFB20030 */  sw        $s2, 0x30($sp)
/* 45294 80069E94 00809021 */  addu      $s2, $a0, $zero
/* 45298 80069E98 AFB40038 */  sw        $s4, 0x38($sp)
/* 4529C 80069E9C 00A0A021 */  addu      $s4, $a1, $zero
/* 452A0 80069EA0 AFB60040 */  sw        $s6, 0x40($sp)
/* 452A4 80069EA4 00C0B021 */  addu      $s6, $a2, $zero
/* 452A8 80069EA8 AFB70044 */  sw        $s7, 0x44($sp)
/* 452AC 80069EAC 00E0B821 */  addu      $s7, $a3, $zero
/* 452B0 80069EB0 32C200FF */  andi      $v0, $s6, 0xff
/* 452B4 80069EB4 AFBF004C */  sw        $ra, 0x4c($sp)
/* 452B8 80069EB8 AFBE0048 */  sw        $fp, 0x48($sp)
/* 452BC 80069EBC AFB5003C */  sw        $s5, 0x3c($sp)
/* 452C0 80069EC0 AFB30034 */  sw        $s3, 0x34($sp)
/* 452C4 80069EC4 AFB1002C */  sw        $s1, 0x2c($sp)
/* 452C8 80069EC8 14400011 */  bnez      $v0, .L80069F10
/* 452CC 80069ECC AFB00028 */   sw       $s0, 0x28($sp)
/* 452D0 80069ED0 3C038009 */  lui       $v1, %hi(D_800958D4)
/* 452D4 80069ED4 906358D4 */  lbu       $v1, %lo(D_800958D4)($v1)
/* 452D8 80069ED8 32E200FF */  andi      $v0, $s7, 0xff
/* 452DC 80069EDC 1443000C */  bne       $v0, $v1, .L80069F10
/* 452E0 80069EE0 00000000 */   nop
/* 452E4 80069EE4 8E430008 */  lw        $v1, 8($s2)
/* 452E8 80069EE8 3C028009 */  lui       $v0, %hi(D_800958D0)
/* 452EC 80069EEC 8C4258D0 */  lw        $v0, %lo(D_800958D0)($v0)
/* 452F0 80069EF0 14620007 */  bne       $v1, $v0, .L80069F10
/* 452F4 80069EF4 00000000 */   nop
/* 452F8 80069EF8 3C04800E */  lui       $a0, %hi(D_800D9680)
/* 452FC 80069EFC 24849680 */  addiu     $a0, $a0, %lo(D_800D9680)
/* 45300 80069F00 0C019194 */  jal       bcopy
/* 45304 80069F04 24060100 */   addiu    $a2, $zero, 0x100
/* 45308 80069F08 0801A865 */  j         .L8006A194
/* 4530C 80069F0C 00001021 */   addu     $v0, $zero, $zero
.L80069F10:
/* 45310 80069F10 92420065 */  lbu       $v0, 0x65($s2)
/* 45314 80069F14 10400006 */  beqz      $v0, .L80069F30
/* 45318 80069F18 02402021 */   addu     $a0, $s2, $zero
/* 4531C 80069F1C 0C01A5B4 */  jal       osPfsSelectBank
/* 45320 80069F20 00002821 */   addu     $a1, $zero, $zero
/* 45324 80069F24 00401821 */  addu      $v1, $v0, $zero
/* 45328 80069F28 1460009A */  bnez      $v1, .L8006A194
/* 4532C 80069F2C 00000000 */   nop
.L80069F30:
/* 45330 80069F30 32E200FF */  andi      $v0, $s7, 0xff
/* 45334 80069F34 14400002 */  bnez      $v0, .L80069F40
/* 45338 80069F38 24150001 */   addiu    $s5, $zero, 1
/* 4533C 80069F3C 8E550060 */  lw        $s5, 0x60($s2)
.L80069F40:
/* 45340 80069F40 32C300FF */  andi      $v1, $s6, 0xff
/* 45344 80069F44 24020001 */  addiu     $v0, $zero, 1
/* 45348 80069F48 14620011 */  bne       $v1, $v0, .L80069F90
/* 4534C 80069F4C 00008021 */   addu     $s0, $zero, $zero
/* 45350 80069F50 00151040 */  sll       $v0, $s5, 1
/* 45354 80069F54 00542821 */  addu      $a1, $v0, $s4
/* 45358 80069F58 00002021 */  addu      $a0, $zero, $zero
/* 4535C 80069F5C 24020080 */  addiu     $v0, $zero, 0x80
/* 45360 80069F60 00551023 */  subu      $v0, $v0, $s5
/* 45364 80069F64 00023040 */  sll       $a2, $v0, 1
/* 45368 80069F68 18C00007 */  blez      $a2, .L80069F88
/* 4536C 80069F6C 00001821 */   addu     $v1, $zero, $zero
.L80069F70:
/* 45370 80069F70 90A20000 */  lbu       $v0, ($a1)
/* 45374 80069F74 24840001 */  addiu     $a0, $a0, 1
/* 45378 80069F78 00621821 */  addu      $v1, $v1, $v0
/* 4537C 80069F7C 0086102A */  slt       $v0, $a0, $a2
/* 45380 80069F80 1440FFFB */  bnez      $v0, .L80069F70
/* 45384 80069F84 24A50001 */   addiu    $a1, $a1, 1
.L80069F88:
/* 45388 80069F88 A2830001 */  sb        $v1, 1($s4)
/* 4538C 80069F8C 00008021 */  addu      $s0, $zero, $zero
.L80069F90:
/* 45390 80069F90 32DE00FF */  andi      $fp, $s6, 0xff
/* 45394 80069F94 32E200FF */  andi      $v0, $s7, 0xff
/* 45398 80069F98 000298C0 */  sll       $s3, $v0, 3
/* 4539C 80069F9C 00101140 */  sll       $v0, $s0, 5
.L80069FA0:
/* 453A0 80069FA0 24080001 */  addiu     $t0, $zero, 1
/* 453A4 80069FA4 17C80015 */  bne       $fp, $t0, .L80069FFC
/* 453A8 80069FA8 02828821 */   addu     $s1, $s4, $v0
/* 453AC 80069FAC 8E460054 */  lw        $a2, 0x54($s2)
/* 453B0 80069FB0 AFA00010 */  sw        $zero, 0x10($sp)
/* 453B4 80069FB4 8E440004 */  lw        $a0, 4($s2)
/* 453B8 80069FB8 8E450008 */  lw        $a1, 8($s2)
/* 453BC 80069FBC 02203821 */  addu      $a3, $s1, $zero
/* 453C0 80069FC0 00D33021 */  addu      $a2, $a2, $s3
/* 453C4 80069FC4 00D03021 */  addu      $a2, $a2, $s0
/* 453C8 80069FC8 0C01A8F0 */  jal       osContRamWrite
/* 453CC 80069FCC 30C6FFFF */   andi     $a2, $a2, 0xffff
/* 453D0 80069FD0 8E460058 */  lw        $a2, 0x58($s2)
/* 453D4 80069FD4 AFA00010 */  sw        $zero, 0x10($sp)
/* 453D8 80069FD8 8E440004 */  lw        $a0, 4($s2)
/* 453DC 80069FDC 8E450008 */  lw        $a1, 8($s2)
/* 453E0 80069FE0 02203821 */  addu      $a3, $s1, $zero
/* 453E4 80069FE4 00D33021 */  addu      $a2, $a2, $s3
/* 453E8 80069FE8 00D03021 */  addu      $a2, $a2, $s0
/* 453EC 80069FEC 0C01A8F0 */  jal       osContRamWrite
/* 453F0 80069FF0 30C6FFFF */   andi     $a2, $a2, 0xffff
/* 453F4 80069FF4 0801A808 */  j         .L8006A020
/* 453F8 80069FF8 00401821 */   addu     $v1, $v0, $zero
.L80069FFC:
/* 453FC 80069FFC 8E440004 */  lw        $a0, 4($s2)
/* 45400 8006A000 8E460054 */  lw        $a2, 0x54($s2)
/* 45404 8006A004 8E450008 */  lw        $a1, 8($s2)
/* 45408 8006A008 02203821 */  addu      $a3, $s1, $zero
/* 4540C 8006A00C 00D33021 */  addu      $a2, $a2, $s3
/* 45410 8006A010 00D03021 */  addu      $a2, $a2, $s0
/* 45414 8006A014 0C01A874 */  jal       osContRamRead
/* 45418 8006A018 30C6FFFF */   andi     $a2, $a2, 0xffff
/* 4541C 8006A01C 00401821 */  addu      $v1, $v0, $zero
.L8006A020:
/* 45420 8006A020 1460003D */  bnez      $v1, .L8006A118
/* 45424 8006A024 26100001 */   addiu    $s0, $s0, 1
/* 45428 8006A028 2A020008 */  slti      $v0, $s0, 8
/* 4542C 8006A02C 1440FFDC */  bnez      $v0, .L80069FA0
/* 45430 8006A030 00101140 */   sll      $v0, $s0, 5
/* 45434 8006A034 32C200FF */  andi      $v0, $s6, 0xff
/* 45438 8006A038 5440004C */  bnel      $v0, $zero, .L8006A16C
/* 4543C 8006A03C 02802021 */   addu     $a0, $s4, $zero
/* 45440 8006A040 00003821 */  addu      $a3, $zero, $zero
/* 45444 8006A044 00151040 */  sll       $v0, $s5, 1
/* 45448 8006A048 00542821 */  addu      $a1, $v0, $s4
/* 4544C 8006A04C 24020080 */  addiu     $v0, $zero, 0x80
/* 45450 8006A050 00551023 */  subu      $v0, $v0, $s5
/* 45454 8006A054 00023040 */  sll       $a2, $v0, 1
/* 45458 8006A058 0066102A */  slt       $v0, $v1, $a2
/* 4545C 8006A05C 10400007 */  beqz      $v0, .L8006A07C
/* 45460 8006A060 00002021 */   addu     $a0, $zero, $zero
.L8006A064:
/* 45464 8006A064 90A20000 */  lbu       $v0, ($a1)
/* 45468 8006A068 24840001 */  addiu     $a0, $a0, 1
/* 4546C 8006A06C 00E23821 */  addu      $a3, $a3, $v0
/* 45470 8006A070 0086102A */  slt       $v0, $a0, $a2
/* 45474 8006A074 1440FFFB */  bnez      $v0, .L8006A064
/* 45478 8006A078 24A50001 */   addiu    $a1, $a1, 1
.L8006A07C:
/* 4547C 8006A07C 92830001 */  lbu       $v1, 1($s4)
/* 45480 8006A080 30E200FF */  andi      $v0, $a3, 0xff
/* 45484 8006A084 10430038 */  beq       $v0, $v1, .L8006A168
/* 45488 8006A088 32E200FF */   andi     $v0, $s7, 0xff
/* 4548C 8006A08C 00008021 */  addu      $s0, $zero, $zero
/* 45490 8006A090 000298C0 */  sll       $s3, $v0, 3
/* 45494 8006A094 02808821 */  addu      $s1, $s4, $zero
.L8006A098:
/* 45498 8006A098 8E440004 */  lw        $a0, 4($s2)
/* 4549C 8006A09C 8E450008 */  lw        $a1, 8($s2)
/* 454A0 8006A0A0 8E460058 */  lw        $a2, 0x58($s2)
/* 454A4 8006A0A4 02203821 */  addu      $a3, $s1, $zero
/* 454A8 8006A0A8 26310020 */  addiu     $s1, $s1, 0x20
/* 454AC 8006A0AC 00D33021 */  addu      $a2, $a2, $s3
/* 454B0 8006A0B0 00D03021 */  addu      $a2, $a2, $s0
/* 454B4 8006A0B4 0C01A874 */  jal       osContRamRead
/* 454B8 8006A0B8 30C6FFFF */   andi     $a2, $a2, 0xffff
/* 454BC 8006A0BC 26100001 */  addiu     $s0, $s0, 1
/* 454C0 8006A0C0 2A020008 */  slti      $v0, $s0, 8
/* 454C4 8006A0C4 1440FFF4 */  bnez      $v0, .L8006A098
/* 454C8 8006A0C8 24030080 */   addiu    $v1, $zero, 0x80
/* 454CC 8006A0CC 00151040 */  sll       $v0, $s5, 1
/* 454D0 8006A0D0 00543021 */  addu      $a2, $v0, $s4
/* 454D4 8006A0D4 00002021 */  addu      $a0, $zero, $zero
/* 454D8 8006A0D8 00751823 */  subu      $v1, $v1, $s5
/* 454DC 8006A0DC 00031840 */  sll       $v1, $v1, 1
/* 454E0 8006A0E0 18600007 */  blez      $v1, .L8006A100
/* 454E4 8006A0E4 00002821 */   addu     $a1, $zero, $zero
.L8006A0E8:
/* 454E8 8006A0E8 90C20000 */  lbu       $v0, ($a2)
/* 454EC 8006A0EC 24840001 */  addiu     $a0, $a0, 1
/* 454F0 8006A0F0 00A22821 */  addu      $a1, $a1, $v0
/* 454F4 8006A0F4 0083102A */  slt       $v0, $a0, $v1
/* 454F8 8006A0F8 1440FFFB */  bnez      $v0, .L8006A0E8
/* 454FC 8006A0FC 24C60001 */   addiu    $a2, $a2, 1
.L8006A100:
/* 45500 8006A100 92830001 */  lbu       $v1, 1($s4)
/* 45504 8006A104 30A200FF */  andi      $v0, $a1, 0xff
/* 45508 8006A108 10430005 */  beq       $v0, $v1, .L8006A120
/* 4550C 8006A10C 24020003 */   addiu    $v0, $zero, 3
/* 45510 8006A110 0801A865 */  j         .L8006A194
/* 45514 8006A114 00000000 */   nop
.L8006A118:
/* 45518 8006A118 0801A865 */  j         .L8006A194
/* 4551C 8006A11C 00601021 */   addu     $v0, $v1, $zero
.L8006A120:
/* 45520 8006A120 00008021 */  addu      $s0, $zero, $zero
/* 45524 8006A124 32E200FF */  andi      $v0, $s7, 0xff
/* 45528 8006A128 000298C0 */  sll       $s3, $v0, 3
/* 4552C 8006A12C 02808821 */  addu      $s1, $s4, $zero
.L8006A130:
/* 45530 8006A130 8E460054 */  lw        $a2, 0x54($s2)
/* 45534 8006A134 AFA00010 */  sw        $zero, 0x10($sp)
/* 45538 8006A138 8E440004 */  lw        $a0, 4($s2)
/* 4553C 8006A13C 8E450008 */  lw        $a1, 8($s2)
/* 45540 8006A140 02203821 */  addu      $a3, $s1, $zero
/* 45544 8006A144 26310020 */  addiu     $s1, $s1, 0x20
/* 45548 8006A148 00D33021 */  addu      $a2, $a2, $s3
/* 4554C 8006A14C 00D03021 */  addu      $a2, $a2, $s0
/* 45550 8006A150 0C01A8F0 */  jal       osContRamWrite
/* 45554 8006A154 30C6FFFF */   andi     $a2, $a2, 0xffff
/* 45558 8006A158 26100001 */  addiu     $s0, $s0, 1
/* 4555C 8006A15C 2A020008 */  slti      $v0, $s0, 8
/* 45560 8006A160 1440FFF3 */  bnez      $v0, .L8006A130
/* 45564 8006A164 00000000 */   nop
.L8006A168:
/* 45568 8006A168 02802021 */  addu      $a0, $s4, $zero
.L8006A16C:
/* 4556C 8006A16C 3C05800E */  lui       $a1, %hi(D_800D9680)
/* 45570 8006A170 24A59680 */  addiu     $a1, $a1, %lo(D_800D9680)
/* 45574 8006A174 3C018009 */  lui       $at, %hi(D_800958D4)
/* 45578 8006A178 A03758D4 */  sb        $s7, %lo(D_800958D4)($at)
/* 4557C 8006A17C 0C019194 */  jal       bcopy
/* 45580 8006A180 24060100 */   addiu    $a2, $zero, 0x100
/* 45584 8006A184 8E430008 */  lw        $v1, 8($s2)
/* 45588 8006A188 00001021 */  addu      $v0, $zero, $zero
/* 4558C 8006A18C 3C018009 */  lui       $at, %hi(D_800958D0)
/* 45590 8006A190 AC2358D0 */  sw        $v1, %lo(D_800958D0)($at)
.L8006A194:
/* 45594 8006A194 8FBF004C */  lw        $ra, 0x4c($sp)
/* 45598 8006A198 8FBE0048 */  lw        $fp, 0x48($sp)
/* 4559C 8006A19C 8FB70044 */  lw        $s7, 0x44($sp)
/* 455A0 8006A1A0 8FB60040 */  lw        $s6, 0x40($sp)
/* 455A4 8006A1A4 8FB5003C */  lw        $s5, 0x3c($sp)
/* 455A8 8006A1A8 8FB40038 */  lw        $s4, 0x38($sp)
/* 455AC 8006A1AC 8FB30034 */  lw        $s3, 0x34($sp)
/* 455B0 8006A1B0 8FB20030 */  lw        $s2, 0x30($sp)
/* 455B4 8006A1B4 8FB1002C */  lw        $s1, 0x2c($sp)
/* 455B8 8006A1B8 8FB00028 */  lw        $s0, 0x28($sp)
/* 455BC 8006A1BC 03E00008 */  jr        $ra
/* 455C0 8006A1C0 27BD0050 */   addiu    $sp, $sp, 0x50
/* 455C4 8006A1C4 00000000 */  nop
/* 455C8 8006A1C8 00000000 */  nop
/* 455CC 8006A1CC 00000000 */  nop
