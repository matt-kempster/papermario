.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240C6C_D2C99C
/* D2C99C 80240C6C 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* D2C9A0 80240C70 AFB20038 */  sw        $s2, 0x38($sp)
/* D2C9A4 80240C74 0080902D */  daddu     $s2, $a0, $zero
/* D2C9A8 80240C78 AFBF0048 */  sw        $ra, 0x48($sp)
/* D2C9AC 80240C7C AFB50044 */  sw        $s5, 0x44($sp)
/* D2C9B0 80240C80 AFB40040 */  sw        $s4, 0x40($sp)
/* D2C9B4 80240C84 AFB3003C */  sw        $s3, 0x3c($sp)
/* D2C9B8 80240C88 AFB10034 */  sw        $s1, 0x34($sp)
/* D2C9BC 80240C8C AFB00030 */  sw        $s0, 0x30($sp)
/* D2C9C0 80240C90 8E510148 */  lw        $s1, 0x148($s2)
/* D2C9C4 80240C94 86240008 */  lh        $a0, 8($s1)
/* D2C9C8 80240C98 0C00EABB */  jal       get_npc_unsafe
/* D2C9CC 80240C9C 00A0802D */   daddu    $s0, $a1, $zero
/* D2C9D0 80240CA0 8E43000C */  lw        $v1, 0xc($s2)
/* D2C9D4 80240CA4 0240202D */  daddu     $a0, $s2, $zero
/* D2C9D8 80240CA8 8C650000 */  lw        $a1, ($v1)
/* D2C9DC 80240CAC 0C0B1EAF */  jal       get_variable
/* D2C9E0 80240CB0 0040A82D */   daddu    $s5, $v0, $zero
/* D2C9E4 80240CB4 AFA00010 */  sw        $zero, 0x10($sp)
/* D2C9E8 80240CB8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* D2C9EC 80240CBC 8C630030 */  lw        $v1, 0x30($v1)
/* D2C9F0 80240CC0 AFA30014 */  sw        $v1, 0x14($sp)
/* D2C9F4 80240CC4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* D2C9F8 80240CC8 8C63001C */  lw        $v1, 0x1c($v1)
/* D2C9FC 80240CCC AFA30018 */  sw        $v1, 0x18($sp)
/* D2CA00 80240CD0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* D2CA04 80240CD4 8C630024 */  lw        $v1, 0x24($v1)
/* D2CA08 80240CD8 AFA3001C */  sw        $v1, 0x1c($sp)
/* D2CA0C 80240CDC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* D2CA10 80240CE0 8C630028 */  lw        $v1, 0x28($v1)
/* D2CA14 80240CE4 27B40010 */  addiu     $s4, $sp, 0x10
/* D2CA18 80240CE8 AFA30020 */  sw        $v1, 0x20($sp)
/* D2CA1C 80240CEC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* D2CA20 80240CF0 3C014282 */  lui       $at, 0x4282
/* D2CA24 80240CF4 44810000 */  mtc1      $at, $f0
/* D2CA28 80240CF8 8C63002C */  lw        $v1, 0x2c($v1)
/* D2CA2C 80240CFC 0040982D */  daddu     $s3, $v0, $zero
/* D2CA30 80240D00 E7A00028 */  swc1      $f0, 0x28($sp)
/* D2CA34 80240D04 A7A0002C */  sh        $zero, 0x2c($sp)
/* D2CA38 80240D08 16000005 */  bnez      $s0, .L80240D20
/* D2CA3C 80240D0C AFA30024 */   sw       $v1, 0x24($sp)
/* D2CA40 80240D10 8E2200B0 */  lw        $v0, 0xb0($s1)
/* D2CA44 80240D14 30420004 */  andi      $v0, $v0, 4
/* D2CA48 80240D18 10400020 */  beqz      $v0, .L80240D9C
/* D2CA4C 80240D1C 00000000 */   nop
.L80240D20:
/* D2CA50 80240D20 2404F7FF */  addiu     $a0, $zero, -0x801
/* D2CA54 80240D24 AE400070 */  sw        $zero, 0x70($s2)
/* D2CA58 80240D28 A6A0008E */  sh        $zero, 0x8e($s5)
/* D2CA5C 80240D2C 8E2200CC */  lw        $v0, 0xcc($s1)
/* D2CA60 80240D30 8EA30000 */  lw        $v1, ($s5)
/* D2CA64 80240D34 8C420000 */  lw        $v0, ($v0)
/* D2CA68 80240D38 00641824 */  and       $v1, $v1, $a0
/* D2CA6C 80240D3C AEA30000 */  sw        $v1, ($s5)
/* D2CA70 80240D40 AEA20028 */  sw        $v0, 0x28($s5)
/* D2CA74 80240D44 8E2200D0 */  lw        $v0, 0xd0($s1)
/* D2CA78 80240D48 8C420034 */  lw        $v0, 0x34($v0)
/* D2CA7C 80240D4C 54400005 */  bnel      $v0, $zero, .L80240D64
/* D2CA80 80240D50 2402FDFF */   addiu    $v0, $zero, -0x201
/* D2CA84 80240D54 34620200 */  ori       $v0, $v1, 0x200
/* D2CA88 80240D58 2403FFF7 */  addiu     $v1, $zero, -9
/* D2CA8C 80240D5C 0809035B */  j         .L80240D6C
/* D2CA90 80240D60 00431024 */   and      $v0, $v0, $v1
.L80240D64:
/* D2CA94 80240D64 00621024 */  and       $v0, $v1, $v0
/* D2CA98 80240D68 34420008 */  ori       $v0, $v0, 8
.L80240D6C:
/* D2CA9C 80240D6C AEA20000 */  sw        $v0, ($s5)
/* D2CAA0 80240D70 8E2200B0 */  lw        $v0, 0xb0($s1)
/* D2CAA4 80240D74 30420004 */  andi      $v0, $v0, 4
/* D2CAA8 80240D78 10400007 */  beqz      $v0, .L80240D98
/* D2CAAC 80240D7C 24020063 */   addiu    $v0, $zero, 0x63
/* D2CAB0 80240D80 AE420070 */  sw        $v0, 0x70($s2)
/* D2CAB4 80240D84 AE400074 */  sw        $zero, 0x74($s2)
/* D2CAB8 80240D88 8E2200B0 */  lw        $v0, 0xb0($s1)
/* D2CABC 80240D8C 2403FFFB */  addiu     $v1, $zero, -5
/* D2CAC0 80240D90 00431024 */  and       $v0, $v0, $v1
/* D2CAC4 80240D94 AE2200B0 */  sw        $v0, 0xb0($s1)
.L80240D98:
/* D2CAC8 80240D98 AE20006C */  sw        $zero, 0x6c($s1)
.L80240D9C:
/* D2CACC 80240D9C 8E420070 */  lw        $v0, 0x70($s2)
/* D2CAD0 80240DA0 2842001E */  slti      $v0, $v0, 0x1e
/* D2CAD4 80240DA4 10400009 */  beqz      $v0, .L80240DCC
/* D2CAD8 80240DA8 00000000 */   nop
/* D2CADC 80240DAC 8E22006C */  lw        $v0, 0x6c($s1)
/* D2CAE0 80240DB0 14400006 */  bnez      $v0, .L80240DCC
/* D2CAE4 80240DB4 00000000 */   nop
/* D2CAE8 80240DB8 0C090216 */  jal       func_80240858_D2C588
/* D2CAEC 80240DBC 0240202D */   daddu    $a0, $s2, $zero
/* D2CAF0 80240DC0 10400002 */  beqz      $v0, .L80240DCC
/* D2CAF4 80240DC4 2402001E */   addiu    $v0, $zero, 0x1e
/* D2CAF8 80240DC8 AE420070 */  sw        $v0, 0x70($s2)
.L80240DCC:
/* D2CAFC 80240DCC 8E430070 */  lw        $v1, 0x70($s2)
/* D2CB00 80240DD0 2C620064 */  sltiu     $v0, $v1, 0x64
/* D2CB04 80240DD4 10400048 */  beqz      $v0, .L80240EF8
/* D2CB08 80240DD8 00031080 */   sll      $v0, $v1, 2
/* D2CB0C 80240DDC 3C018024 */  lui       $at, %hi(D_80243D88)
/* D2CB10 80240DE0 00220821 */  addu      $at, $at, $v0
/* D2CB14 80240DE4 8C223D88 */  lw        $v0, %lo(D_80243D88)($at)
/* D2CB18 80240DE8 00400008 */  jr        $v0
/* D2CB1C 80240DEC 00000000 */   nop
/* D2CB20 80240DF0 0240202D */  daddu     $a0, $s2, $zero
/* D2CB24 80240DF4 0260282D */  daddu     $a1, $s3, $zero
/* D2CB28 80240DF8 0C012568 */  jal       func_800495A0
/* D2CB2C 80240DFC 0280302D */   daddu    $a2, $s4, $zero
/* D2CB30 80240E00 0240202D */  daddu     $a0, $s2, $zero
/* D2CB34 80240E04 0260282D */  daddu     $a1, $s3, $zero
/* D2CB38 80240E08 0C0125AE */  jal       func_800496B8
/* D2CB3C 80240E0C 0280302D */   daddu    $a2, $s4, $zero
/* D2CB40 80240E10 080903BE */  j         .L80240EF8
/* D2CB44 80240E14 00000000 */   nop
/* D2CB48 80240E18 0240202D */  daddu     $a0, $s2, $zero
/* D2CB4C 80240E1C 0260282D */  daddu     $a1, $s3, $zero
/* D2CB50 80240E20 0C0126D1 */  jal       func_80049B44
/* D2CB54 80240E24 0280302D */   daddu    $a2, $s4, $zero
/* D2CB58 80240E28 0240202D */  daddu     $a0, $s2, $zero
/* D2CB5C 80240E2C 0260282D */  daddu     $a1, $s3, $zero
/* D2CB60 80240E30 0C012701 */  jal       func_80049C04
/* D2CB64 80240E34 0280302D */   daddu    $a2, $s4, $zero
/* D2CB68 80240E38 080903BE */  j         .L80240EF8
/* D2CB6C 80240E3C 00000000 */   nop
/* D2CB70 80240E40 0240202D */  daddu     $a0, $s2, $zero
/* D2CB74 80240E44 0260282D */  daddu     $a1, $s3, $zero
/* D2CB78 80240E48 0C01278F */  jal       func_80049E3C
/* D2CB7C 80240E4C 0280302D */   daddu    $a2, $s4, $zero
/* D2CB80 80240E50 0240202D */  daddu     $a0, $s2, $zero
/* D2CB84 80240E54 0260282D */  daddu     $a1, $s3, $zero
/* D2CB88 80240E58 0C0127B3 */  jal       func_80049ECC
/* D2CB8C 80240E5C 0280302D */   daddu    $a2, $s4, $zero
/* D2CB90 80240E60 080903BE */  j         .L80240EF8
/* D2CB94 80240E64 00000000 */   nop
/* D2CB98 80240E68 0240202D */  daddu     $a0, $s2, $zero
/* D2CB9C 80240E6C 0260282D */  daddu     $a1, $s3, $zero
/* D2CBA0 80240E70 0C0127DF */  jal       func_80049F7C
/* D2CBA4 80240E74 0280302D */   daddu    $a2, $s4, $zero
/* D2CBA8 80240E78 0240202D */  daddu     $a0, $s2, $zero
/* D2CBAC 80240E7C 0260282D */  daddu     $a1, $s3, $zero
/* D2CBB0 80240E80 0C012849 */  jal       func_8004A124
/* D2CBB4 80240E84 0280302D */   daddu    $a2, $s4, $zero
/* D2CBB8 80240E88 080903BE */  j         .L80240EF8
/* D2CBBC 80240E8C 00000000 */   nop
/* D2CBC0 80240E90 0240202D */  daddu     $a0, $s2, $zero
/* D2CBC4 80240E94 0260282D */  daddu     $a1, $s3, $zero
/* D2CBC8 80240E98 0C0128FA */  jal       func_8004A3E8
/* D2CBCC 80240E9C 0280302D */   daddu    $a2, $s4, $zero
/* D2CBD0 80240EA0 080903BE */  j         .L80240EF8
/* D2CBD4 80240EA4 00000000 */   nop
/* D2CBD8 80240EA8 0C090194 */  jal       sam_07_UnkNpcAIFunc6
/* D2CBDC 80240EAC 0240202D */   daddu    $a0, $s2, $zero
/* D2CBE0 80240EB0 0C0901AF */  jal       sam_07_UnkNpcAIFunc7
/* D2CBE4 80240EB4 0240202D */   daddu    $a0, $s2, $zero
/* D2CBE8 80240EB8 8E430070 */  lw        $v1, 0x70($s2)
/* D2CBEC 80240EBC 24020020 */  addiu     $v0, $zero, 0x20
/* D2CBF0 80240EC0 1462000D */  bne       $v1, $v0, .L80240EF8
/* D2CBF4 80240EC4 00000000 */   nop
/* D2CBF8 80240EC8 0C0901CB */  jal       sam_07_UnkNpcAIFunc8
/* D2CBFC 80240ECC 0240202D */   daddu    $a0, $s2, $zero
/* D2CC00 80240ED0 8E430070 */  lw        $v1, 0x70($s2)
/* D2CC04 80240ED4 24020021 */  addiu     $v0, $zero, 0x21
/* D2CC08 80240ED8 14620007 */  bne       $v1, $v0, .L80240EF8
/* D2CC0C 80240EDC 00000000 */   nop
/* D2CC10 80240EE0 0C090201 */  jal       sam_07_UnkNpcAIFunc5
/* D2CC14 80240EE4 0240202D */   daddu    $a0, $s2, $zero
/* D2CC18 80240EE8 080903BE */  j         .L80240EF8
/* D2CC1C 80240EEC 00000000 */   nop
/* D2CC20 80240EF0 0C0129CF */  jal       func_8004A73C
/* D2CC24 80240EF4 0240202D */   daddu    $a0, $s2, $zero
.L80240EF8:
/* D2CC28 80240EF8 8FBF0048 */  lw        $ra, 0x48($sp)
/* D2CC2C 80240EFC 8FB50044 */  lw        $s5, 0x44($sp)
/* D2CC30 80240F00 8FB40040 */  lw        $s4, 0x40($sp)
/* D2CC34 80240F04 8FB3003C */  lw        $s3, 0x3c($sp)
/* D2CC38 80240F08 8FB20038 */  lw        $s2, 0x38($sp)
/* D2CC3C 80240F0C 8FB10034 */  lw        $s1, 0x34($sp)
/* D2CC40 80240F10 8FB00030 */  lw        $s0, 0x30($sp)
/* D2CC44 80240F14 0000102D */  daddu     $v0, $zero, $zero
/* D2CC48 80240F18 03E00008 */  jr        $ra
/* D2CC4C 80240F1C 27BD0050 */   addiu    $sp, $sp, 0x50
