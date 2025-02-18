.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800F0864
/* 89D14 800F0864 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 89D18 800F0868 AFB10024 */  sw        $s1, 0x24($sp)
/* 89D1C 800F086C 3C118011 */  lui       $s1, %hi(gPlayerStatus)
/* 89D20 800F0870 2631EFC8 */  addiu     $s1, $s1, %lo(gPlayerStatus)
/* 89D24 800F0874 AFBF0028 */  sw        $ra, 0x28($sp)
/* 89D28 800F0878 AFB00020 */  sw        $s0, 0x20($sp)
/* 89D2C 800F087C 922400B4 */  lbu       $a0, 0xb4($s1)
/* 89D30 800F0880 2482FFFF */  addiu     $v0, $a0, -1
/* 89D34 800F0884 2C420002 */  sltiu     $v0, $v0, 2
/* 89D38 800F0888 14400013 */  bnez      $v0, .L800F08D8
/* 89D3C 800F088C 3C02FF00 */   lui      $v0, 0xff00
/* 89D40 800F0890 8E2300B4 */  lw        $v1, 0xb4($s1)
/* 89D44 800F0894 3442FF00 */  ori       $v0, $v0, 0xff00
/* 89D48 800F0898 00621824 */  and       $v1, $v1, $v0
/* 89D4C 800F089C 3C021A00 */  lui       $v0, 0x1a00
/* 89D50 800F08A0 1062000D */  beq       $v1, $v0, .L800F08D8
/* 89D54 800F08A4 00041600 */   sll      $v0, $a0, 0x18
/* 89D58 800F08A8 00021E03 */  sra       $v1, $v0, 0x18
/* 89D5C 800F08AC 2402000A */  addiu     $v0, $zero, 0xa
/* 89D60 800F08B0 10620003 */  beq       $v1, $v0, .L800F08C0
/* 89D64 800F08B4 00000000 */   nop
/* 89D68 800F08B8 14600004 */  bnez      $v1, .L800F08CC
/* 89D6C 800F08BC 24020004 */   addiu    $v0, $zero, 4
.L800F08C0:
/* 89D70 800F08C0 8E220000 */  lw        $v0, ($s1)
/* 89D74 800F08C4 04400004 */  bltz      $v0, .L800F08D8
/* 89D78 800F08C8 24020004 */   addiu    $v0, $zero, 4
.L800F08CC:
/* 89D7C 800F08CC 3C018011 */  lui       $at, %hi(D_801094A4)
/* 89D80 800F08D0 0803C276 */  j         .L800F09D8
/* 89D84 800F08D4 A42294A4 */   sh       $v0, %lo(D_801094A4)($at)
.L800F08D8:
/* 89D88 800F08D8 3C048011 */  lui       $a0, %hi(D_801094A4)
/* 89D8C 800F08DC 248494A4 */  addiu     $a0, $a0, %lo(D_801094A4)
/* 89D90 800F08E0 94820000 */  lhu       $v0, ($a0)
/* 89D94 800F08E4 24430001 */  addiu     $v1, $v0, 1
/* 89D98 800F08E8 00021400 */  sll       $v0, $v0, 0x10
/* 89D9C 800F08EC 00021403 */  sra       $v0, $v0, 0x10
/* 89DA0 800F08F0 28420004 */  slti      $v0, $v0, 4
/* 89DA4 800F08F4 14400038 */  bnez      $v0, .L800F09D8
/* 89DA8 800F08F8 A4830000 */   sh       $v1, ($a0)
/* 89DAC 800F08FC C62C0084 */  lwc1      $f12, 0x84($s1)
/* 89DB0 800F0900 A4800000 */  sh        $zero, ($a0)
/* 89DB4 800F0904 0C00A6C9 */  jal       clamp_angle
/* 89DB8 800F0908 46006307 */   neg.s    $f12, $f12
/* 89DBC 800F090C 3C0140C9 */  lui       $at, 0x40c9
/* 89DC0 800F0910 34210FD0 */  ori       $at, $at, 0xfd0
/* 89DC4 800F0914 44811000 */  mtc1      $at, $f2
/* 89DC8 800F0918 00000000 */  nop
/* 89DCC 800F091C 46020002 */  mul.s     $f0, $f0, $f2
/* 89DD0 800F0920 00000000 */  nop
/* 89DD4 800F0924 27A6001C */  addiu     $a2, $sp, 0x1c
/* 89DD8 800F0928 3C0143B4 */  lui       $at, 0x43b4
/* 89DDC 800F092C 44816000 */  mtc1      $at, $f12
/* 89DE0 800F0930 27A50018 */  addiu     $a1, $sp, 0x18
/* 89DE4 800F0934 0C00A82D */  jal       sin_cos_rad
/* 89DE8 800F0938 460C0303 */   div.s    $f12, $f0, $f12
/* 89DEC 800F093C 862200B2 */  lh        $v0, 0xb2($s1)
/* 89DF0 800F0940 C7A40018 */  lwc1      $f4, 0x18($sp)
/* 89DF4 800F0944 44821000 */  mtc1      $v0, $f2
/* 89DF8 800F0948 00000000 */  nop
/* 89DFC 800F094C 468010A0 */  cvt.s.w   $f2, $f2
/* 89E00 800F0950 46041102 */  mul.s     $f4, $f2, $f4
/* 89E04 800F0954 00000000 */  nop
/* 89E08 800F0958 C7A0001C */  lwc1      $f0, 0x1c($sp)
/* 89E0C 800F095C 46001082 */  mul.s     $f2, $f2, $f0
/* 89E10 800F0960 00000000 */  nop
/* 89E14 800F0964 3C013E4C */  lui       $at, 0x3e4c
/* 89E18 800F0968 3421CCCD */  ori       $at, $at, 0xcccd
/* 89E1C 800F096C 44810000 */  mtc1      $at, $f0
/* 89E20 800F0970 00000000 */  nop
/* 89E24 800F0974 46002102 */  mul.s     $f4, $f4, $f0
/* 89E28 800F0978 00000000 */  nop
/* 89E2C 800F097C 46001082 */  mul.s     $f2, $f2, $f0
/* 89E30 800F0980 00000000 */  nop
/* 89E34 800F0984 C62C0028 */  lwc1      $f12, 0x28($s1)
/* 89E38 800F0988 46046300 */  add.s     $f12, $f12, $f4
/* 89E3C 800F098C C6200030 */  lwc1      $f0, 0x30($s1)
/* 89E40 800F0990 3C108011 */  lui       $s0, %hi(D_801094A8)
/* 89E44 800F0994 261094A8 */  addiu     $s0, $s0, %lo(D_801094A8)
/* 89E48 800F0998 46020000 */  add.s     $f0, $f0, $f2
/* 89E4C 800F099C C6220084 */  lwc1      $f2, 0x84($s1)
/* 89E50 800F09A0 3C013FC0 */  lui       $at, 0x3fc0
/* 89E54 800F09A4 44817000 */  mtc1      $at, $f14
/* 89E58 800F09A8 46001087 */  neg.s     $f2, $f2
/* 89E5C 800F09AC 44060000 */  mfc1      $a2, $f0
/* 89E60 800F09B0 C620002C */  lwc1      $f0, 0x2c($s1)
/* 89E64 800F09B4 44071000 */  mfc1      $a3, $f2
/* 89E68 800F09B8 460E0380 */  add.s     $f14, $f0, $f14
/* 89E6C 800F09BC C6000000 */  lwc1      $f0, ($s0)
/* 89E70 800F09C0 46800020 */  cvt.s.w   $f0, $f0
/* 89E74 800F09C4 0C01BF44 */  jal       fx_footprint
/* 89E78 800F09C8 E7A00010 */   swc1     $f0, 0x10($sp)
/* 89E7C 800F09CC 8E020000 */  lw        $v0, ($s0)
/* 89E80 800F09D0 2C420001 */  sltiu     $v0, $v0, 1
/* 89E84 800F09D4 AE020000 */  sw        $v0, ($s0)
.L800F09D8:
/* 89E88 800F09D8 8FBF0028 */  lw        $ra, 0x28($sp)
/* 89E8C 800F09DC 8FB10024 */  lw        $s1, 0x24($sp)
/* 89E90 800F09E0 8FB00020 */  lw        $s0, 0x20($sp)
/* 89E94 800F09E4 03E00008 */  jr        $ra
/* 89E98 800F09E8 27BD0030 */   addiu    $sp, $sp, 0x30
