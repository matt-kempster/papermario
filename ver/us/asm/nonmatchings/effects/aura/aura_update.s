.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel aura_update
/* 3773E8 E0076378 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 3773EC E007637C AFBF0010 */  sw        $ra, 0x10($sp)
/* 3773F0 E0076380 8C830000 */  lw        $v1, ($a0)
/* 3773F4 E0076384 8C85000C */  lw        $a1, 0xc($a0)
/* 3773F8 E0076388 30620010 */  andi      $v0, $v1, 0x10
/* 3773FC E007638C 10400005 */  beqz      $v0, .LE00763A4
/* 377400 E0076390 2402FFEF */   addiu    $v0, $zero, -0x11
/* 377404 E0076394 00621024 */  and       $v0, $v1, $v0
/* 377408 E0076398 AC820000 */  sw        $v0, ($a0)
/* 37740C E007639C 24020005 */  addiu     $v0, $zero, 5
/* 377410 E00763A0 ACA2002C */  sw        $v0, 0x2c($a1)
.LE00763A4:
/* 377414 E00763A4 3C030004 */  lui       $v1, 4
/* 377418 E00763A8 8CA20030 */  lw        $v0, 0x30($a1)
/* 37741C E00763AC 3463F1A0 */  ori       $v1, $v1, 0xf1a0
/* 377420 E00763B0 24420001 */  addiu     $v0, $v0, 1
/* 377424 E00763B4 0062182A */  slt       $v1, $v1, $v0
/* 377428 E00763B8 10600003 */  beqz      $v1, .LE00763C8
/* 37742C E00763BC ACA20030 */   sw       $v0, 0x30($a1)
/* 377430 E00763C0 24020100 */  addiu     $v0, $zero, 0x100
/* 377434 E00763C4 ACA20030 */  sw        $v0, 0x30($a1)
.LE00763C8:
/* 377438 E00763C8 8CA3002C */  lw        $v1, 0x2c($a1)
/* 37743C E00763CC 2862000B */  slti      $v0, $v1, 0xb
/* 377440 E00763D0 10400002 */  beqz      $v0, .LE00763DC
/* 377444 E00763D4 2462FFFF */   addiu    $v0, $v1, -1
/* 377448 E00763D8 ACA2002C */  sw        $v0, 0x2c($a1)
.LE00763DC:
/* 37744C E00763DC 8CA2002C */  lw        $v0, 0x2c($a1)
/* 377450 E00763E0 04410005 */  bgez      $v0, .LE00763F8
/* 377454 E00763E4 0040382D */   daddu    $a3, $v0, $zero
/* 377458 E00763E8 0C080128 */  jal       shim_remove_effect
/* 37745C E00763EC 00000000 */   nop
/* 377460 E00763F0 0801D9FF */  j         .LE00767FC
/* 377464 E00763F4 00000000 */   nop
.LE00763F8:
/* 377468 E00763F8 8CA60000 */  lw        $a2, ($a1)
/* 37746C E00763FC 8CA40030 */  lw        $a0, 0x30($a1)
/* 377470 E0076400 28C20002 */  slti      $v0, $a2, 2
/* 377474 E0076404 10400015 */  beqz      $v0, .LE007645C
/* 377478 E0076408 2882000B */   slti     $v0, $a0, 0xb
/* 37747C E007640C 1040001E */  beqz      $v0, .LE0076488
/* 377480 E0076410 24020080 */   addiu    $v0, $zero, 0x80
/* 377484 E0076414 8CA30028 */  lw        $v1, 0x28($a1)
/* 377488 E0076418 3C013FE0 */  lui       $at, 0x3fe0
/* 37748C E007641C 44810800 */  mtc1      $at, $f1
/* 377490 E0076420 44800000 */  mtc1      $zero, $f0
/* 377494 E0076424 00431023 */  subu      $v0, $v0, $v1
/* 377498 E0076428 44821000 */  mtc1      $v0, $f2
/* 37749C E007642C 00000000 */  nop
/* 3774A0 E0076430 468010A1 */  cvt.d.w   $f2, $f2
/* 3774A4 E0076434 46201082 */  mul.d     $f2, $f2, $f0
/* 3774A8 E0076438 00000000 */  nop
/* 3774AC E007643C 44830000 */  mtc1      $v1, $f0
/* 3774B0 E0076440 00000000 */  nop
/* 3774B4 E0076444 46800021 */  cvt.d.w   $f0, $f0
/* 3774B8 E0076448 46220000 */  add.d     $f0, $f0, $f2
/* 3774BC E007644C 4620048D */  trunc.w.d $f18, $f0
/* 3774C0 E0076450 E4B20028 */  swc1      $f18, 0x28($a1)
/* 3774C4 E0076454 0801D923 */  j         .LE007648C
/* 3774C8 E0076458 28E2000A */   slti     $v0, $a3, 0xa
.LE007645C:
/* 3774CC E007645C 1040000A */  beqz      $v0, .LE0076488
/* 3774D0 E0076460 3C036666 */   lui      $v1, 0x6666
/* 3774D4 E0076464 34636667 */  ori       $v1, $v1, 0x6667
/* 3774D8 E0076468 00041200 */  sll       $v0, $a0, 8
/* 3774DC E007646C 00441023 */  subu      $v0, $v0, $a0
/* 3774E0 E0076470 00430018 */  mult      $v0, $v1
/* 3774E4 E0076474 000217C3 */  sra       $v0, $v0, 0x1f
/* 3774E8 E0076478 00004010 */  mfhi      $t0
/* 3774EC E007647C 00081883 */  sra       $v1, $t0, 2
/* 3774F0 E0076480 00621823 */  subu      $v1, $v1, $v0
/* 3774F4 E0076484 ACA30028 */  sw        $v1, 0x28($a1)
.LE0076488:
/* 3774F8 E0076488 28E2000A */  slti      $v0, $a3, 0xa
.LE007648C:
/* 3774FC E007648C 1040000A */  beqz      $v0, .LE00764B8
/* 377500 E0076490 00000000 */   nop
/* 377504 E0076494 3C013FE0 */  lui       $at, 0x3fe0
/* 377508 E0076498 44811800 */  mtc1      $at, $f3
/* 37750C E007649C 44801000 */  mtc1      $zero, $f2
/* 377510 E00764A0 C4A00028 */  lwc1      $f0, 0x28($a1)
/* 377514 E00764A4 46800021 */  cvt.d.w   $f0, $f0
/* 377518 E00764A8 46220002 */  mul.d     $f0, $f0, $f2
/* 37751C E00764AC 00000000 */  nop
/* 377520 E00764B0 4620048D */  trunc.w.d $f18, $f0
/* 377524 E00764B4 E4B20028 */  swc1      $f18, 0x28($a1)
.LE00764B8:
/* 377528 E00764B8 14C0002E */  bnez      $a2, .LE0076574
/* 37752C E00764BC 00000000 */   nop
/* 377530 E00764C0 C4AE0038 */  lwc1      $f14, 0x38($a1)
/* 377534 E00764C4 C4AA003C */  lwc1      $f10, 0x3c($a1)
/* 377538 E00764C8 460E5281 */  sub.s     $f10, $f10, $f14
/* 37753C E00764CC 3C01E007 */  lui       $at, %hi(D_E0076EE8)
/* 377540 E00764D0 D4206EE8 */  ldc1      $f0, %lo(D_E0076EE8)($at)
/* 377544 E00764D4 460052A1 */  cvt.d.s   $f10, $f10
/* 377548 E00764D8 46205282 */  mul.d     $f10, $f10, $f0
/* 37754C E00764DC 00000000 */  nop
/* 377550 E00764E0 C4AC0044 */  lwc1      $f12, 0x44($a1)
/* 377554 E00764E4 C4A40048 */  lwc1      $f4, 0x48($a1)
/* 377558 E00764E8 460C2101 */  sub.s     $f4, $f4, $f12
/* 37755C E00764EC 46002121 */  cvt.d.s   $f4, $f4
/* 377560 E00764F0 46202102 */  mul.d     $f4, $f4, $f0
/* 377564 E00764F4 00000000 */  nop
/* 377568 E00764F8 C4A8001C */  lwc1      $f8, 0x1c($a1)
/* 37756C E00764FC C4A60024 */  lwc1      $f6, 0x24($a1)
/* 377570 E0076500 46083181 */  sub.s     $f6, $f6, $f8
/* 377574 E0076504 3C01E007 */  lui       $at, %hi(D_E0076EF0)
/* 377578 E0076508 D4306EF0 */  ldc1      $f16, %lo(D_E0076EF0)($at)
/* 37757C E007650C 460031A1 */  cvt.d.s   $f6, $f6
/* 377580 E0076510 46303182 */  mul.d     $f6, $f6, $f16
/* 377584 E0076514 00000000 */  nop
/* 377588 E0076518 C4A20020 */  lwc1      $f2, 0x20($a1)
/* 37758C E007651C C4A00024 */  lwc1      $f0, 0x24($a1)
/* 377590 E0076520 46020001 */  sub.s     $f0, $f0, $f2
/* 377594 E0076524 46000021 */  cvt.d.s   $f0, $f0
/* 377598 E0076528 46300002 */  mul.d     $f0, $f0, $f16
/* 37759C E007652C 00000000 */  nop
/* 3775A0 E0076530 460073A1 */  cvt.d.s   $f14, $f14
/* 3775A4 E0076534 462A7380 */  add.d     $f14, $f14, $f10
/* 3775A8 E0076538 46006321 */  cvt.d.s   $f12, $f12
/* 3775AC E007653C 46246300 */  add.d     $f12, $f12, $f4
/* 3775B0 E0076540 46004221 */  cvt.d.s   $f8, $f8
/* 3775B4 E0076544 460010A1 */  cvt.d.s   $f2, $f2
/* 3775B8 E0076548 46264200 */  add.d     $f8, $f8, $f6
/* 3775BC E007654C 462073A0 */  cvt.s.d   $f14, $f14
/* 3775C0 E0076550 46206320 */  cvt.s.d   $f12, $f12
/* 3775C4 E0076554 46204220 */  cvt.s.d   $f8, $f8
/* 3775C8 E0076558 E4AE0038 */  swc1      $f14, 0x38($a1)
/* 3775CC E007655C 46201080 */  add.d     $f2, $f2, $f0
/* 3775D0 E0076560 E4AC0044 */  swc1      $f12, 0x44($a1)
/* 3775D4 E0076564 E4A8001C */  swc1      $f8, 0x1c($a1)
/* 3775D8 E0076568 462010A0 */  cvt.s.d   $f2, $f2
/* 3775DC E007656C 0801D987 */  j         .LE007661C
/* 3775E0 E0076570 E4A20020 */   swc1     $f2, 0x20($a1)
.LE0076574:
/* 3775E4 E0076574 C4AE0038 */  lwc1      $f14, 0x38($a1)
/* 3775E8 E0076578 C4AA003C */  lwc1      $f10, 0x3c($a1)
/* 3775EC E007657C 460E5281 */  sub.s     $f10, $f10, $f14
/* 3775F0 E0076580 3C01E007 */  lui       $at, %hi(D_E0076EF8)
/* 3775F4 E0076584 D4306EF8 */  ldc1      $f16, %lo(D_E0076EF8)($at)
/* 3775F8 E0076588 460052A1 */  cvt.d.s   $f10, $f10
/* 3775FC E007658C 46305282 */  mul.d     $f10, $f10, $f16
/* 377600 E0076590 00000000 */  nop
/* 377604 E0076594 C4AC0044 */  lwc1      $f12, 0x44($a1)
/* 377608 E0076598 C4A20048 */  lwc1      $f2, 0x48($a1)
/* 37760C E007659C 460C1081 */  sub.s     $f2, $f2, $f12
/* 377610 E00765A0 460010A1 */  cvt.d.s   $f2, $f2
/* 377614 E00765A4 46301082 */  mul.d     $f2, $f2, $f16
/* 377618 E00765A8 00000000 */  nop
/* 37761C E00765AC C4A80050 */  lwc1      $f8, 0x50($a1)
/* 377620 E00765B0 C4A40054 */  lwc1      $f4, 0x54($a1)
/* 377624 E00765B4 46082101 */  sub.s     $f4, $f4, $f8
/* 377628 E00765B8 46002121 */  cvt.d.s   $f4, $f4
/* 37762C E00765BC 46302102 */  mul.d     $f4, $f4, $f16
/* 377630 E00765C0 00000000 */  nop
/* 377634 E00765C4 C4A6005C */  lwc1      $f6, 0x5c($a1)
/* 377638 E00765C8 C4A00060 */  lwc1      $f0, 0x60($a1)
/* 37763C E00765CC 46060001 */  sub.s     $f0, $f0, $f6
/* 377640 E00765D0 46000021 */  cvt.d.s   $f0, $f0
/* 377644 E00765D4 46300002 */  mul.d     $f0, $f0, $f16
/* 377648 E00765D8 00000000 */  nop
/* 37764C E00765DC 460073A1 */  cvt.d.s   $f14, $f14
/* 377650 E00765E0 462A7380 */  add.d     $f14, $f14, $f10
/* 377654 E00765E4 46006321 */  cvt.d.s   $f12, $f12
/* 377658 E00765E8 46226300 */  add.d     $f12, $f12, $f2
/* 37765C E00765EC 46004221 */  cvt.d.s   $f8, $f8
/* 377660 E00765F0 46244200 */  add.d     $f8, $f8, $f4
/* 377664 E00765F4 460031A1 */  cvt.d.s   $f6, $f6
/* 377668 E00765F8 46203180 */  add.d     $f6, $f6, $f0
/* 37766C E00765FC 462073A0 */  cvt.s.d   $f14, $f14
/* 377670 E0076600 46206320 */  cvt.s.d   $f12, $f12
/* 377674 E0076604 46204220 */  cvt.s.d   $f8, $f8
/* 377678 E0076608 462031A0 */  cvt.s.d   $f6, $f6
/* 37767C E007660C E4AE0038 */  swc1      $f14, 0x38($a1)
/* 377680 E0076610 E4AC0044 */  swc1      $f12, 0x44($a1)
/* 377684 E0076614 E4A80050 */  swc1      $f8, 0x50($a1)
/* 377688 E0076618 E4A6005C */  swc1      $f6, 0x5c($a1)
.LE007661C:
/* 37768C E007661C C4A00034 */  lwc1      $f0, 0x34($a1)
/* 377690 E0076620 C4A20038 */  lwc1      $f2, 0x38($a1)
/* 377694 E0076624 46020080 */  add.s     $f2, $f0, $f2
/* 377698 E0076628 44800000 */  mtc1      $zero, $f0
/* 37769C E007662C 00000000 */  nop
/* 3776A0 E0076630 4600103C */  c.lt.s    $f2, $f0
/* 3776A4 E0076634 00000000 */  nop
/* 3776A8 E0076638 45000005 */  bc1f      .LE0076650
/* 3776AC E007663C E4A20034 */   swc1     $f2, 0x34($a1)
/* 3776B0 E0076640 3C014280 */  lui       $at, 0x4280
/* 3776B4 E0076644 44810000 */  mtc1      $at, $f0
/* 3776B8 E0076648 0801D99C */  j         .LE0076670
/* 3776BC E007664C 46001000 */   add.s    $f0, $f2, $f0
.LE0076650:
/* 3776C0 E0076650 3C014280 */  lui       $at, 0x4280
/* 3776C4 E0076654 44810000 */  mtc1      $at, $f0
/* 3776C8 E0076658 00000000 */  nop
/* 3776CC E007665C 4602003C */  c.lt.s    $f0, $f2
/* 3776D0 E0076660 00000000 */  nop
/* 3776D4 E0076664 45000003 */  bc1f      .LE0076674
/* 3776D8 E0076668 00000000 */   nop
/* 3776DC E007666C 46001001 */  sub.s     $f0, $f2, $f0
.LE0076670:
/* 3776E0 E0076670 E4A00034 */  swc1      $f0, 0x34($a1)
.LE0076674:
/* 3776E4 E0076674 C4A00040 */  lwc1      $f0, 0x40($a1)
/* 3776E8 E0076678 C4A20044 */  lwc1      $f2, 0x44($a1)
/* 3776EC E007667C 46020080 */  add.s     $f2, $f0, $f2
/* 3776F0 E0076680 44800000 */  mtc1      $zero, $f0
/* 3776F4 E0076684 00000000 */  nop
/* 3776F8 E0076688 4600103C */  c.lt.s    $f2, $f0
/* 3776FC E007668C 00000000 */  nop
/* 377700 E0076690 45000005 */  bc1f      .LE00766A8
/* 377704 E0076694 E4A20040 */   swc1     $f2, 0x40($a1)
/* 377708 E0076698 3C014300 */  lui       $at, 0x4300
/* 37770C E007669C 44810000 */  mtc1      $at, $f0
/* 377710 E00766A0 0801D9B2 */  j         .LE00766C8
/* 377714 E00766A4 46001000 */   add.s    $f0, $f2, $f0
.LE00766A8:
/* 377718 E00766A8 3C014300 */  lui       $at, 0x4300
/* 37771C E00766AC 44810000 */  mtc1      $at, $f0
/* 377720 E00766B0 00000000 */  nop
/* 377724 E00766B4 4602003C */  c.lt.s    $f0, $f2
/* 377728 E00766B8 00000000 */  nop
/* 37772C E00766BC 45000003 */  bc1f      .LE00766CC
/* 377730 E00766C0 00000000 */   nop
/* 377734 E00766C4 46001001 */  sub.s     $f0, $f2, $f0
.LE00766C8:
/* 377738 E00766C8 E4A00040 */  swc1      $f0, 0x40($a1)
.LE00766CC:
/* 37773C E00766CC C4A0004C */  lwc1      $f0, 0x4c($a1)
/* 377740 E00766D0 C4A20050 */  lwc1      $f2, 0x50($a1)
/* 377744 E00766D4 46020080 */  add.s     $f2, $f0, $f2
/* 377748 E00766D8 44800000 */  mtc1      $zero, $f0
/* 37774C E00766DC 00000000 */  nop
/* 377750 E00766E0 4600103C */  c.lt.s    $f2, $f0
/* 377754 E00766E4 00000000 */  nop
/* 377758 E00766E8 45000005 */  bc1f      .LE0076700
/* 37775C E00766EC E4A2004C */   swc1     $f2, 0x4c($a1)
/* 377760 E00766F0 3C014280 */  lui       $at, 0x4280
/* 377764 E00766F4 44810000 */  mtc1      $at, $f0
/* 377768 E00766F8 0801D9C8 */  j         .LE0076720
/* 37776C E00766FC 46001000 */   add.s    $f0, $f2, $f0
.LE0076700:
/* 377770 E0076700 3C014280 */  lui       $at, 0x4280
/* 377774 E0076704 44810000 */  mtc1      $at, $f0
/* 377778 E0076708 00000000 */  nop
/* 37777C E007670C 4602003C */  c.lt.s    $f0, $f2
/* 377780 E0076710 00000000 */  nop
/* 377784 E0076714 45000003 */  bc1f      .LE0076724
/* 377788 E0076718 00000000 */   nop
/* 37778C E007671C 46001001 */  sub.s     $f0, $f2, $f0
.LE0076720:
/* 377790 E0076720 E4A0004C */  swc1      $f0, 0x4c($a1)
.LE0076724:
/* 377794 E0076724 C4A00058 */  lwc1      $f0, 0x58($a1)
/* 377798 E0076728 C4A2005C */  lwc1      $f2, 0x5c($a1)
/* 37779C E007672C 46020080 */  add.s     $f2, $f0, $f2
/* 3777A0 E0076730 44800000 */  mtc1      $zero, $f0
/* 3777A4 E0076734 00000000 */  nop
/* 3777A8 E0076738 4600103C */  c.lt.s    $f2, $f0
/* 3777AC E007673C 00000000 */  nop
/* 3777B0 E0076740 45000005 */  bc1f      .LE0076758
/* 3777B4 E0076744 E4A20058 */   swc1     $f2, 0x58($a1)
/* 3777B8 E0076748 3C014300 */  lui       $at, 0x4300
/* 3777BC E007674C 44810000 */  mtc1      $at, $f0
/* 3777C0 E0076750 0801D9DE */  j         .LE0076778
/* 3777C4 E0076754 46001000 */   add.s    $f0, $f2, $f0
.LE0076758:
/* 3777C8 E0076758 3C014300 */  lui       $at, 0x4300
/* 3777CC E007675C 44810000 */  mtc1      $at, $f0
/* 3777D0 E0076760 00000000 */  nop
/* 3777D4 E0076764 4602003C */  c.lt.s    $f0, $f2
/* 3777D8 E0076768 00000000 */  nop
/* 3777DC E007676C 45000003 */  bc1f      .LE007677C
/* 3777E0 E0076770 00000000 */   nop
/* 3777E4 E0076774 46001001 */  sub.s     $f0, $f2, $f0
.LE0076778:
/* 3777E8 E0076778 E4A00058 */  swc1      $f0, 0x58($a1)
.LE007677C:
/* 3777EC E007677C C4AA0010 */  lwc1      $f10, 0x10($a1)
/* 3777F0 E0076780 C4A60004 */  lwc1      $f6, 4($a1)
/* 3777F4 E0076784 460A3181 */  sub.s     $f6, $f6, $f10
/* 3777F8 E0076788 3C01E007 */  lui       $at, %hi(D_E0076F00)
/* 3777FC E007678C D42C6F00 */  ldc1      $f12, %lo(D_E0076F00)($at)
/* 377800 E0076790 460031A1 */  cvt.d.s   $f6, $f6
/* 377804 E0076794 462C3182 */  mul.d     $f6, $f6, $f12
/* 377808 E0076798 00000000 */  nop
/* 37780C E007679C C4A80014 */  lwc1      $f8, 0x14($a1)
/* 377810 E00767A0 C4A20008 */  lwc1      $f2, 8($a1)
/* 377814 E00767A4 46081081 */  sub.s     $f2, $f2, $f8
/* 377818 E00767A8 460010A1 */  cvt.d.s   $f2, $f2
/* 37781C E00767AC 462C1082 */  mul.d     $f2, $f2, $f12
/* 377820 E00767B0 00000000 */  nop
/* 377824 E00767B4 C4A40018 */  lwc1      $f4, 0x18($a1)
/* 377828 E00767B8 C4A0000C */  lwc1      $f0, 0xc($a1)
/* 37782C E00767BC 46040001 */  sub.s     $f0, $f0, $f4
/* 377830 E00767C0 46000021 */  cvt.d.s   $f0, $f0
/* 377834 E00767C4 462C0002 */  mul.d     $f0, $f0, $f12
/* 377838 E00767C8 00000000 */  nop
/* 37783C E00767CC 460052A1 */  cvt.d.s   $f10, $f10
/* 377840 E00767D0 46265280 */  add.d     $f10, $f10, $f6
/* 377844 E00767D4 46004221 */  cvt.d.s   $f8, $f8
/* 377848 E00767D8 46224200 */  add.d     $f8, $f8, $f2
/* 37784C E00767DC 46002121 */  cvt.d.s   $f4, $f4
/* 377850 E00767E0 46202100 */  add.d     $f4, $f4, $f0
/* 377854 E00767E4 462052A0 */  cvt.s.d   $f10, $f10
/* 377858 E00767E8 46204220 */  cvt.s.d   $f8, $f8
/* 37785C E00767EC 46202120 */  cvt.s.d   $f4, $f4
/* 377860 E00767F0 E4AA0010 */  swc1      $f10, 0x10($a1)
/* 377864 E00767F4 E4A80014 */  swc1      $f8, 0x14($a1)
/* 377868 E00767F8 E4A40018 */  swc1      $f4, 0x18($a1)
.LE00767FC:
/* 37786C E00767FC 8FBF0010 */  lw        $ra, 0x10($sp)
/* 377870 E0076800 03E00008 */  jr        $ra
/* 377874 E0076804 27BD0018 */   addiu    $sp, $sp, 0x18
