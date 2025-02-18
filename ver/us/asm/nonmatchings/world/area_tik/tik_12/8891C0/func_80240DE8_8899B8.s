.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240DE8_8899B8
/* 8899B8 80240DE8 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 8899BC 80240DEC AFB5002C */  sw        $s5, 0x2c($sp)
/* 8899C0 80240DF0 0080A82D */  daddu     $s5, $a0, $zero
/* 8899C4 80240DF4 AFBE0038 */  sw        $fp, 0x38($sp)
/* 8899C8 80240DF8 3C1E8011 */  lui       $fp, %hi(gPlayerData)
/* 8899CC 80240DFC 27DEF290 */  addiu     $fp, $fp, %lo(gPlayerData)
/* 8899D0 80240E00 AFBF003C */  sw        $ra, 0x3c($sp)
/* 8899D4 80240E04 AFB70034 */  sw        $s7, 0x34($sp)
/* 8899D8 80240E08 AFB60030 */  sw        $s6, 0x30($sp)
/* 8899DC 80240E0C AFB40028 */  sw        $s4, 0x28($sp)
/* 8899E0 80240E10 AFB30024 */  sw        $s3, 0x24($sp)
/* 8899E4 80240E14 AFB20020 */  sw        $s2, 0x20($sp)
/* 8899E8 80240E18 AFB1001C */  sw        $s1, 0x1c($sp)
/* 8899EC 80240E1C 10A0004F */  beqz      $a1, .L80240F5C
/* 8899F0 80240E20 AFB00018 */   sw       $s0, 0x18($sp)
/* 8899F4 80240E24 0C00AB39 */  jal       heap_malloc
/* 8899F8 80240E28 24040330 */   addiu    $a0, $zero, 0x330
/* 8899FC 80240E2C 0040982D */  daddu     $s3, $v0, $zero
/* 889A00 80240E30 0000B02D */  daddu     $s6, $zero, $zero
/* 889A04 80240E34 02C0902D */  daddu     $s2, $s6, $zero
/* 889A08 80240E38 3C148024 */  lui       $s4, %hi(D_80243CB4_88C884)
/* 889A0C 80240E3C 26943CB4 */  addiu     $s4, $s4, %lo(D_80243CB4_88C884)
/* 889A10 80240E40 0260882D */  daddu     $s1, $s3, $zero
/* 889A14 80240E44 8EA200B4 */  lw        $v0, 0xb4($s5)
/* 889A18 80240E48 3C038024 */  lui       $v1, %hi(D_80243CAC_88C87C)
/* 889A1C 80240E4C 24633CAC */  addiu     $v1, $v1, %lo(D_80243CAC_88C87C)
/* 889A20 80240E50 AEB30078 */  sw        $s3, 0x78($s5)
/* 889A24 80240E54 00021027 */  nor       $v0, $zero, $v0
/* 889A28 80240E58 0002BFC2 */  srl       $s7, $v0, 0x1f
/* 889A2C 80240E5C 00171080 */  sll       $v0, $s7, 2
/* 889A30 80240E60 00431021 */  addu      $v0, $v0, $v1
/* 889A34 80240E64 AFA20010 */  sw        $v0, 0x10($sp)
.L80240E68:
/* 889A38 80240E68 86900000 */  lh        $s0, ($s4)
/* 889A3C 80240E6C 001010C0 */  sll       $v0, $s0, 3
/* 889A40 80240E70 03C21021 */  addu      $v0, $fp, $v0
/* 889A44 80240E74 90420014 */  lbu       $v0, 0x14($v0)
/* 889A48 80240E78 5040002E */  beql      $v0, $zero, .L80240F34
/* 889A4C 80240E7C 26520001 */   addiu    $s2, $s2, 1
/* 889A50 80240E80 00101100 */  sll       $v0, $s0, 4
/* 889A54 80240E84 3C068009 */  lui       $a2, %hi(gPartnerPopupProperties)
/* 889A58 80240E88 24C6EF20 */  addiu     $a2, $a2, %lo(gPartnerPopupProperties)
/* 889A5C 80240E8C 00461021 */  addu      $v0, $v0, $a2
/* 889A60 80240E90 0200202D */  daddu     $a0, $s0, $zero
/* 889A64 80240E94 AE300108 */  sw        $s0, 0x108($s1)
/* 889A68 80240E98 8C420000 */  lw        $v0, ($v0)
/* 889A6C 80240E9C 02E0282D */  daddu     $a1, $s7, $zero
/* 889A70 80240EA0 0C09033C */  jal       tik_12_UnkFunc37
/* 889A74 80240EA4 AE220084 */   sw       $v0, 0x84($s1)
/* 889A78 80240EA8 0040202D */  daddu     $a0, $v0, $zero
/* 889A7C 80240EAC 04800011 */  bltz      $a0, .L80240EF4
/* 889A80 80240EB0 00101080 */   sll      $v0, $s0, 2
/* 889A84 80240EB4 3C06800F */  lui       $a2, %hi(wPartnerHudScripts)
/* 889A88 80240EB8 24C67F00 */  addiu     $a2, $a2, %lo(wPartnerHudScripts)
/* 889A8C 80240EBC 00461021 */  addu      $v0, $v0, $a2
/* 889A90 80240EC0 8C430000 */  lw        $v1, ($v0)
/* 889A94 80240EC4 24020001 */  addiu     $v0, $zero, 1
/* 889A98 80240EC8 AE22018C */  sw        $v0, 0x18c($s1)
/* 889A9C 80240ECC 00041080 */  sll       $v0, $a0, 2
/* 889AA0 80240ED0 3C068024 */  lui       $a2, %hi(D_80243CC4_88C894)
/* 889AA4 80240ED4 24C63CC4 */  addiu     $a2, $a2, %lo(D_80243CC4_88C894)
/* 889AA8 80240ED8 AE230000 */  sw        $v1, ($s1)
/* 889AAC 80240EDC 001218C0 */  sll       $v1, $s2, 3
/* 889AB0 80240EE0 00431021 */  addu      $v0, $v0, $v1
/* 889AB4 80240EE4 00461021 */  addu      $v0, $v0, $a2
/* 889AB8 80240EE8 8C420000 */  lw        $v0, ($v0)
/* 889ABC 80240EEC 080903C6 */  j         .L80240F18
/* 889AC0 80240EF0 AE220294 */   sw       $v0, 0x294($s1)
.L80240EF4:
/* 889AC4 80240EF4 3C06800F */  lui       $a2, %hi(wDisabledPartnerHudScripts)
/* 889AC8 80240EF8 24C67F40 */  addiu     $a2, $a2, %lo(wDisabledPartnerHudScripts)
/* 889ACC 80240EFC 00461021 */  addu      $v0, $v0, $a2
/* 889AD0 80240F00 8C420000 */  lw        $v0, ($v0)
/* 889AD4 80240F04 AE20018C */  sw        $zero, 0x18c($s1)
/* 889AD8 80240F08 AE220000 */  sw        $v0, ($s1)
/* 889ADC 80240F0C 8FA60010 */  lw        $a2, 0x10($sp)
/* 889AE0 80240F10 8CC20000 */  lw        $v0, ($a2)
/* 889AE4 80240F14 AE220294 */  sw        $v0, 0x294($s1)
.L80240F18:
/* 889AE8 80240F18 001010C0 */  sll       $v0, $s0, 3
/* 889AEC 80240F1C 03C21021 */  addu      $v0, $fp, $v0
/* 889AF0 80240F20 80420015 */  lb        $v0, 0x15($v0)
/* 889AF4 80240F24 26D60001 */  addiu     $s6, $s6, 1
/* 889AF8 80240F28 AE220210 */  sw        $v0, 0x210($s1)
/* 889AFC 80240F2C 26310004 */  addiu     $s1, $s1, 4
/* 889B00 80240F30 26520001 */  addiu     $s2, $s2, 1
.L80240F34:
/* 889B04 80240F34 2A420008 */  slti      $v0, $s2, 8
/* 889B08 80240F38 1440FFCB */  bnez      $v0, .L80240E68
/* 889B0C 80240F3C 26940002 */   addiu    $s4, $s4, 2
/* 889B10 80240F40 0260202D */  daddu     $a0, $s3, $zero
/* 889B14 80240F44 24020004 */  addiu     $v0, $zero, 4
/* 889B18 80240F48 AC820318 */  sw        $v0, 0x318($a0)
/* 889B1C 80240F4C AC960324 */  sw        $s6, 0x324($a0)
/* 889B20 80240F50 0C03D390 */  jal       create_popup_menu
/* 889B24 80240F54 AC800328 */   sw       $zero, 0x328($a0)
/* 889B28 80240F58 AEA00070 */  sw        $zero, 0x70($s5)
.L80240F5C:
/* 889B2C 80240F5C 8EA20070 */  lw        $v0, 0x70($s5)
/* 889B30 80240F60 8EB30078 */  lw        $s3, 0x78($s5)
/* 889B34 80240F64 14400008 */  bnez      $v0, .L80240F88
/* 889B38 80240F68 24420001 */   addiu    $v0, $v0, 1
/* 889B3C 80240F6C 8662032C */  lh        $v0, 0x32c($s3)
/* 889B40 80240F70 10400009 */  beqz      $v0, .L80240F98
/* 889B44 80240F74 AEA20074 */   sw       $v0, 0x74($s5)
/* 889B48 80240F78 0C03C4EC */  jal       hide_popup_menu
/* 889B4C 80240F7C 00000000 */   nop
/* 889B50 80240F80 8EA20070 */  lw        $v0, 0x70($s5)
/* 889B54 80240F84 24420001 */  addiu     $v0, $v0, 1
.L80240F88:
/* 889B58 80240F88 AEA20070 */  sw        $v0, 0x70($s5)
/* 889B5C 80240F8C 2842000F */  slti      $v0, $v0, 0xf
/* 889B60 80240F90 10400003 */  beqz      $v0, .L80240FA0
/* 889B64 80240F94 00000000 */   nop
.L80240F98:
/* 889B68 80240F98 08090402 */  j         .L80241008
/* 889B6C 80240F9C 0000102D */   daddu    $v0, $zero, $zero
.L80240FA0:
/* 889B70 80240FA0 0C03C54E */  jal       destroy_popup_menu
/* 889B74 80240FA4 00000000 */   nop
/* 889B78 80240FA8 8EA30074 */  lw        $v1, 0x74($s5)
/* 889B7C 80240FAC 240200FF */  addiu     $v0, $zero, 0xff
/* 889B80 80240FB0 10620010 */  beq       $v1, $v0, .L80240FF4
/* 889B84 80240FB4 2462FFFF */   addiu    $v0, $v1, -1
/* 889B88 80240FB8 00021080 */  sll       $v0, $v0, 2
/* 889B8C 80240FBC 02621021 */  addu      $v0, $s3, $v0
/* 889B90 80240FC0 8C420108 */  lw        $v0, 0x108($v0)
/* 889B94 80240FC4 00021100 */  sll       $v0, $v0, 4
/* 889B98 80240FC8 3C038009 */  lui       $v1, %hi(gPartnerPopupProperties)
/* 889B9C 80240FCC 00621821 */  addu      $v1, $v1, $v0
/* 889BA0 80240FD0 8C63EF20 */  lw        $v1, %lo(gPartnerPopupProperties)($v1)
/* 889BA4 80240FD4 8EA20074 */  lw        $v0, 0x74($s5)
/* 889BA8 80240FD8 2442FFFF */  addiu     $v0, $v0, -1
/* 889BAC 80240FDC 00021080 */  sll       $v0, $v0, 2
/* 889BB0 80240FE0 02621021 */  addu      $v0, $s3, $v0
/* 889BB4 80240FE4 AEA30084 */  sw        $v1, 0x84($s5)
/* 889BB8 80240FE8 8C420108 */  lw        $v0, 0x108($v0)
/* 889BBC 80240FEC 080903FF */  j         .L80240FFC
/* 889BC0 80240FF0 AEA20088 */   sw       $v0, 0x88($s5)
.L80240FF4:
/* 889BC4 80240FF4 2402FFFF */  addiu     $v0, $zero, -1
/* 889BC8 80240FF8 AEA20084 */  sw        $v0, 0x84($s5)
.L80240FFC:
/* 889BCC 80240FFC 0C00AB4B */  jal       heap_free
/* 889BD0 80241000 8EA40078 */   lw       $a0, 0x78($s5)
/* 889BD4 80241004 24020002 */  addiu     $v0, $zero, 2
.L80241008:
/* 889BD8 80241008 8FBF003C */  lw        $ra, 0x3c($sp)
/* 889BDC 8024100C 8FBE0038 */  lw        $fp, 0x38($sp)
/* 889BE0 80241010 8FB70034 */  lw        $s7, 0x34($sp)
/* 889BE4 80241014 8FB60030 */  lw        $s6, 0x30($sp)
/* 889BE8 80241018 8FB5002C */  lw        $s5, 0x2c($sp)
/* 889BEC 8024101C 8FB40028 */  lw        $s4, 0x28($sp)
/* 889BF0 80241020 8FB30024 */  lw        $s3, 0x24($sp)
/* 889BF4 80241024 8FB20020 */  lw        $s2, 0x20($sp)
/* 889BF8 80241028 8FB1001C */  lw        $s1, 0x1c($sp)
/* 889BFC 8024102C 8FB00018 */  lw        $s0, 0x18($sp)
/* 889C00 80241030 03E00008 */  jr        $ra
/* 889C04 80241034 27BD0040 */   addiu    $sp, $sp, 0x40
