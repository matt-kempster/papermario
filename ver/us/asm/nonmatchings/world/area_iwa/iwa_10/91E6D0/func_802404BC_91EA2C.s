.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802404BC_91EA2C
/* 91EA2C 802404BC 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 91EA30 802404C0 AFB5002C */  sw        $s5, 0x2c($sp)
/* 91EA34 802404C4 0080A82D */  daddu     $s5, $a0, $zero
/* 91EA38 802404C8 AFBE0038 */  sw        $fp, 0x38($sp)
/* 91EA3C 802404CC 3C1E8011 */  lui       $fp, %hi(gPlayerData)
/* 91EA40 802404D0 27DEF290 */  addiu     $fp, $fp, %lo(gPlayerData)
/* 91EA44 802404D4 AFBF003C */  sw        $ra, 0x3c($sp)
/* 91EA48 802404D8 AFB70034 */  sw        $s7, 0x34($sp)
/* 91EA4C 802404DC AFB60030 */  sw        $s6, 0x30($sp)
/* 91EA50 802404E0 AFB40028 */  sw        $s4, 0x28($sp)
/* 91EA54 802404E4 AFB30024 */  sw        $s3, 0x24($sp)
/* 91EA58 802404E8 AFB20020 */  sw        $s2, 0x20($sp)
/* 91EA5C 802404EC AFB1001C */  sw        $s1, 0x1c($sp)
/* 91EA60 802404F0 10A0004F */  beqz      $a1, .L80240630
/* 91EA64 802404F4 AFB00018 */   sw       $s0, 0x18($sp)
/* 91EA68 802404F8 0C00AB39 */  jal       heap_malloc
/* 91EA6C 802404FC 24040330 */   addiu    $a0, $zero, 0x330
/* 91EA70 80240500 0040982D */  daddu     $s3, $v0, $zero
/* 91EA74 80240504 0000B02D */  daddu     $s6, $zero, $zero
/* 91EA78 80240508 02C0902D */  daddu     $s2, $s6, $zero
/* 91EA7C 8024050C 3C148024 */  lui       $s4, %hi(D_80245A68_923FD8)
/* 91EA80 80240510 26945A68 */  addiu     $s4, $s4, %lo(D_80245A68_923FD8)
/* 91EA84 80240514 0260882D */  daddu     $s1, $s3, $zero
/* 91EA88 80240518 8EA200B4 */  lw        $v0, 0xb4($s5)
/* 91EA8C 8024051C 3C038024 */  lui       $v1, %hi(D_80245A60_923FD0)
/* 91EA90 80240520 24635A60 */  addiu     $v1, $v1, %lo(D_80245A60_923FD0)
/* 91EA94 80240524 AEB30078 */  sw        $s3, 0x78($s5)
/* 91EA98 80240528 00021027 */  nor       $v0, $zero, $v0
/* 91EA9C 8024052C 0002BFC2 */  srl       $s7, $v0, 0x1f
/* 91EAA0 80240530 00171080 */  sll       $v0, $s7, 2
/* 91EAA4 80240534 00431021 */  addu      $v0, $v0, $v1
/* 91EAA8 80240538 AFA20010 */  sw        $v0, 0x10($sp)
.L8024053C:
/* 91EAAC 8024053C 86900000 */  lh        $s0, ($s4)
/* 91EAB0 80240540 001010C0 */  sll       $v0, $s0, 3
/* 91EAB4 80240544 03C21021 */  addu      $v0, $fp, $v0
/* 91EAB8 80240548 90420014 */  lbu       $v0, 0x14($v0)
/* 91EABC 8024054C 5040002E */  beql      $v0, $zero, .L80240608
/* 91EAC0 80240550 26520001 */   addiu    $s2, $s2, 1
/* 91EAC4 80240554 00101100 */  sll       $v0, $s0, 4
/* 91EAC8 80240558 3C068009 */  lui       $a2, %hi(gPartnerPopupProperties)
/* 91EACC 8024055C 24C6EF20 */  addiu     $a2, $a2, %lo(gPartnerPopupProperties)
/* 91EAD0 80240560 00461021 */  addu      $v0, $v0, $a2
/* 91EAD4 80240564 0200202D */  daddu     $a0, $s0, $zero
/* 91EAD8 80240568 AE300108 */  sw        $s0, 0x108($s1)
/* 91EADC 8024056C 8C420000 */  lw        $v0, ($v0)
/* 91EAE0 80240570 02E0282D */  daddu     $a1, $s7, $zero
/* 91EAE4 80240574 0C0900F1 */  jal       iwa_10_UnkFunc37
/* 91EAE8 80240578 AE220084 */   sw       $v0, 0x84($s1)
/* 91EAEC 8024057C 0040202D */  daddu     $a0, $v0, $zero
/* 91EAF0 80240580 04800011 */  bltz      $a0, .L802405C8
/* 91EAF4 80240584 00101080 */   sll      $v0, $s0, 2
/* 91EAF8 80240588 3C06800F */  lui       $a2, %hi(wPartnerHudScripts)
/* 91EAFC 8024058C 24C67F00 */  addiu     $a2, $a2, %lo(wPartnerHudScripts)
/* 91EB00 80240590 00461021 */  addu      $v0, $v0, $a2
/* 91EB04 80240594 8C430000 */  lw        $v1, ($v0)
/* 91EB08 80240598 24020001 */  addiu     $v0, $zero, 1
/* 91EB0C 8024059C AE22018C */  sw        $v0, 0x18c($s1)
/* 91EB10 802405A0 00041080 */  sll       $v0, $a0, 2
/* 91EB14 802405A4 3C068024 */  lui       $a2, %hi(D_80245A78_923FE8)
/* 91EB18 802405A8 24C65A78 */  addiu     $a2, $a2, %lo(D_80245A78_923FE8)
/* 91EB1C 802405AC AE230000 */  sw        $v1, ($s1)
/* 91EB20 802405B0 001218C0 */  sll       $v1, $s2, 3
/* 91EB24 802405B4 00431021 */  addu      $v0, $v0, $v1
/* 91EB28 802405B8 00461021 */  addu      $v0, $v0, $a2
/* 91EB2C 802405BC 8C420000 */  lw        $v0, ($v0)
/* 91EB30 802405C0 0809017B */  j         .L802405EC
/* 91EB34 802405C4 AE220294 */   sw       $v0, 0x294($s1)
.L802405C8:
/* 91EB38 802405C8 3C06800F */  lui       $a2, %hi(wDisabledPartnerHudScripts)
/* 91EB3C 802405CC 24C67F40 */  addiu     $a2, $a2, %lo(wDisabledPartnerHudScripts)
/* 91EB40 802405D0 00461021 */  addu      $v0, $v0, $a2
/* 91EB44 802405D4 8C420000 */  lw        $v0, ($v0)
/* 91EB48 802405D8 AE20018C */  sw        $zero, 0x18c($s1)
/* 91EB4C 802405DC AE220000 */  sw        $v0, ($s1)
/* 91EB50 802405E0 8FA60010 */  lw        $a2, 0x10($sp)
/* 91EB54 802405E4 8CC20000 */  lw        $v0, ($a2)
/* 91EB58 802405E8 AE220294 */  sw        $v0, 0x294($s1)
.L802405EC:
/* 91EB5C 802405EC 001010C0 */  sll       $v0, $s0, 3
/* 91EB60 802405F0 03C21021 */  addu      $v0, $fp, $v0
/* 91EB64 802405F4 80420015 */  lb        $v0, 0x15($v0)
/* 91EB68 802405F8 26D60001 */  addiu     $s6, $s6, 1
/* 91EB6C 802405FC AE220210 */  sw        $v0, 0x210($s1)
/* 91EB70 80240600 26310004 */  addiu     $s1, $s1, 4
/* 91EB74 80240604 26520001 */  addiu     $s2, $s2, 1
.L80240608:
/* 91EB78 80240608 2A420008 */  slti      $v0, $s2, 8
/* 91EB7C 8024060C 1440FFCB */  bnez      $v0, .L8024053C
/* 91EB80 80240610 26940002 */   addiu    $s4, $s4, 2
/* 91EB84 80240614 0260202D */  daddu     $a0, $s3, $zero
/* 91EB88 80240618 24020004 */  addiu     $v0, $zero, 4
/* 91EB8C 8024061C AC820318 */  sw        $v0, 0x318($a0)
/* 91EB90 80240620 AC960324 */  sw        $s6, 0x324($a0)
/* 91EB94 80240624 0C03D390 */  jal       create_popup_menu
/* 91EB98 80240628 AC800328 */   sw       $zero, 0x328($a0)
/* 91EB9C 8024062C AEA00070 */  sw        $zero, 0x70($s5)
.L80240630:
/* 91EBA0 80240630 8EA20070 */  lw        $v0, 0x70($s5)
/* 91EBA4 80240634 8EB30078 */  lw        $s3, 0x78($s5)
/* 91EBA8 80240638 14400008 */  bnez      $v0, .L8024065C
/* 91EBAC 8024063C 24420001 */   addiu    $v0, $v0, 1
/* 91EBB0 80240640 8662032C */  lh        $v0, 0x32c($s3)
/* 91EBB4 80240644 10400009 */  beqz      $v0, .L8024066C
/* 91EBB8 80240648 AEA20074 */   sw       $v0, 0x74($s5)
/* 91EBBC 8024064C 0C03C4EC */  jal       hide_popup_menu
/* 91EBC0 80240650 00000000 */   nop
/* 91EBC4 80240654 8EA20070 */  lw        $v0, 0x70($s5)
/* 91EBC8 80240658 24420001 */  addiu     $v0, $v0, 1
.L8024065C:
/* 91EBCC 8024065C AEA20070 */  sw        $v0, 0x70($s5)
/* 91EBD0 80240660 2842000F */  slti      $v0, $v0, 0xf
/* 91EBD4 80240664 10400003 */  beqz      $v0, .L80240674
/* 91EBD8 80240668 00000000 */   nop
.L8024066C:
/* 91EBDC 8024066C 080901B7 */  j         .L802406DC
/* 91EBE0 80240670 0000102D */   daddu    $v0, $zero, $zero
.L80240674:
/* 91EBE4 80240674 0C03C54E */  jal       destroy_popup_menu
/* 91EBE8 80240678 00000000 */   nop
/* 91EBEC 8024067C 8EA30074 */  lw        $v1, 0x74($s5)
/* 91EBF0 80240680 240200FF */  addiu     $v0, $zero, 0xff
/* 91EBF4 80240684 10620010 */  beq       $v1, $v0, .L802406C8
/* 91EBF8 80240688 2462FFFF */   addiu    $v0, $v1, -1
/* 91EBFC 8024068C 00021080 */  sll       $v0, $v0, 2
/* 91EC00 80240690 02621021 */  addu      $v0, $s3, $v0
/* 91EC04 80240694 8C420108 */  lw        $v0, 0x108($v0)
/* 91EC08 80240698 00021100 */  sll       $v0, $v0, 4
/* 91EC0C 8024069C 3C038009 */  lui       $v1, %hi(gPartnerPopupProperties)
/* 91EC10 802406A0 00621821 */  addu      $v1, $v1, $v0
/* 91EC14 802406A4 8C63EF20 */  lw        $v1, %lo(gPartnerPopupProperties)($v1)
/* 91EC18 802406A8 8EA20074 */  lw        $v0, 0x74($s5)
/* 91EC1C 802406AC 2442FFFF */  addiu     $v0, $v0, -1
/* 91EC20 802406B0 00021080 */  sll       $v0, $v0, 2
/* 91EC24 802406B4 02621021 */  addu      $v0, $s3, $v0
/* 91EC28 802406B8 AEA30084 */  sw        $v1, 0x84($s5)
/* 91EC2C 802406BC 8C420108 */  lw        $v0, 0x108($v0)
/* 91EC30 802406C0 080901B4 */  j         .L802406D0
/* 91EC34 802406C4 AEA20088 */   sw       $v0, 0x88($s5)
.L802406C8:
/* 91EC38 802406C8 2402FFFF */  addiu     $v0, $zero, -1
/* 91EC3C 802406CC AEA20084 */  sw        $v0, 0x84($s5)
.L802406D0:
/* 91EC40 802406D0 0C00AB4B */  jal       heap_free
/* 91EC44 802406D4 8EA40078 */   lw       $a0, 0x78($s5)
/* 91EC48 802406D8 24020002 */  addiu     $v0, $zero, 2
.L802406DC:
/* 91EC4C 802406DC 8FBF003C */  lw        $ra, 0x3c($sp)
/* 91EC50 802406E0 8FBE0038 */  lw        $fp, 0x38($sp)
/* 91EC54 802406E4 8FB70034 */  lw        $s7, 0x34($sp)
/* 91EC58 802406E8 8FB60030 */  lw        $s6, 0x30($sp)
/* 91EC5C 802406EC 8FB5002C */  lw        $s5, 0x2c($sp)
/* 91EC60 802406F0 8FB40028 */  lw        $s4, 0x28($sp)
/* 91EC64 802406F4 8FB30024 */  lw        $s3, 0x24($sp)
/* 91EC68 802406F8 8FB20020 */  lw        $s2, 0x20($sp)
/* 91EC6C 802406FC 8FB1001C */  lw        $s1, 0x1c($sp)
/* 91EC70 80240700 8FB00018 */  lw        $s0, 0x18($sp)
/* 91EC74 80240704 03E00008 */  jr        $ra
/* 91EC78 80240708 27BD0040 */   addiu    $sp, $sp, 0x40
