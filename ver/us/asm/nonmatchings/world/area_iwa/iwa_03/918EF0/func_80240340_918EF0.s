.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

dlabel D_80242C30_91B7E0
.double 180.0

dlabel D_80242C38_91B7E8
.double 75.0

.section .text

glabel func_80240340_918EF0
/* 918EF0 80240340 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 918EF4 80240344 AFBF001C */  sw        $ra, 0x1c($sp)
/* 918EF8 80240348 AFB20018 */  sw        $s2, 0x18($sp)
/* 918EFC 8024034C AFB10014 */  sw        $s1, 0x14($sp)
/* 918F00 80240350 AFB00010 */  sw        $s0, 0x10($sp)
/* 918F04 80240354 F7B40020 */  sdc1      $f20, 0x20($sp)
/* 918F08 80240358 8C900148 */  lw        $s0, 0x148($a0)
/* 918F0C 8024035C 86040008 */  lh        $a0, 8($s0)
/* 918F10 80240360 3C014387 */  lui       $at, 0x4387
/* 918F14 80240364 4481A000 */  mtc1      $at, $f20
/* 918F18 80240368 0C00EABB */  jal       get_npc_unsafe
/* 918F1C 8024036C 00A0882D */   daddu    $s1, $a1, $zero
/* 918F20 80240370 0200202D */  daddu     $a0, $s0, $zero
/* 918F24 80240374 8E26000C */  lw        $a2, 0xc($s1)
/* 918F28 80240378 8E270010 */  lw        $a3, 0x10($s1)
/* 918F2C 8024037C 0040882D */  daddu     $s1, $v0, $zero
/* 918F30 80240380 3C03800B */  lui       $v1, %hi(gCameras)
/* 918F34 80240384 24631D80 */  addiu     $v1, $v1, %lo(gCameras)
/* 918F38 80240388 3C02800A */  lui       $v0, %hi(gCurrentCamID)
/* 918F3C 8024038C 8442A634 */  lh        $v0, %lo(gCurrentCamID)($v0)
/* 918F40 80240390 0000282D */  daddu     $a1, $zero, $zero
/* 918F44 80240394 00028080 */  sll       $s0, $v0, 2
/* 918F48 80240398 02028021 */  addu      $s0, $s0, $v0
/* 918F4C 8024039C 00108080 */  sll       $s0, $s0, 2
/* 918F50 802403A0 02028023 */  subu      $s0, $s0, $v0
/* 918F54 802403A4 001010C0 */  sll       $v0, $s0, 3
/* 918F58 802403A8 02028021 */  addu      $s0, $s0, $v0
/* 918F5C 802403AC 001080C0 */  sll       $s0, $s0, 3
/* 918F60 802403B0 0C0124FB */  jal       func_800493EC
/* 918F64 802403B4 02038021 */   addu     $s0, $s0, $v1
/* 918F68 802403B8 C60C006C */  lwc1      $f12, 0x6c($s0)
/* 918F6C 802403BC C62E000C */  lwc1      $f14, 0xc($s1)
/* 918F70 802403C0 0C00A70A */  jal       get_clamped_angle_diff
/* 918F74 802403C4 0002802B */   sltu     $s0, $zero, $v0
/* 918F78 802403C8 0C00A6C9 */  jal       clamp_angle
/* 918F7C 802403CC 46000306 */   mov.s    $f12, $f0
/* 918F80 802403D0 3C018024 */  lui       $at, %hi(D_80242C30_91B7E0)
/* 918F84 802403D4 D4222C30 */  ldc1      $f2, %lo(D_80242C30_91B7E0)($at)
/* 918F88 802403D8 46000021 */  cvt.d.s   $f0, $f0
/* 918F8C 802403DC 4622003C */  c.lt.d    $f0, $f2
/* 918F90 802403E0 00000000 */  nop
/* 918F94 802403E4 45000003 */  bc1f      .L802403F4
/* 918F98 802403E8 00000000 */   nop
/* 918F9C 802403EC 3C0142B4 */  lui       $at, 0x42b4
/* 918FA0 802403F0 4481A000 */  mtc1      $at, $f20
.L802403F4:
/* 918FA4 802403F4 3C12800F */  lui       $s2, %hi(gPlayerStatusPtr)
/* 918FA8 802403F8 26527B30 */  addiu     $s2, $s2, %lo(gPlayerStatusPtr)
/* 918FAC 802403FC C62C0038 */  lwc1      $f12, 0x38($s1)
/* 918FB0 80240400 8E420000 */  lw        $v0, ($s2)
/* 918FB4 80240404 C62E0040 */  lwc1      $f14, 0x40($s1)
/* 918FB8 80240408 8C460028 */  lw        $a2, 0x28($v0)
/* 918FBC 8024040C 0C00A720 */  jal       atan2
/* 918FC0 80240410 8C470030 */   lw       $a3, 0x30($v0)
/* 918FC4 80240414 4600A306 */  mov.s     $f12, $f20
/* 918FC8 80240418 0C00A70A */  jal       get_clamped_angle_diff
/* 918FCC 8024041C 46000386 */   mov.s    $f14, $f0
/* 918FD0 80240420 46000005 */  abs.s     $f0, $f0
/* 918FD4 80240424 3C018024 */  lui       $at, %hi(D_80242C38_91B7E8)
/* 918FD8 80240428 D4222C38 */  ldc1      $f2, %lo(D_80242C38_91B7E8)($at)
/* 918FDC 8024042C 46000021 */  cvt.d.s   $f0, $f0
/* 918FE0 80240430 4620103C */  c.lt.d    $f2, $f0
/* 918FE4 80240434 00000000 */  nop
/* 918FE8 80240438 45030001 */  bc1tl     .L80240440
/* 918FEC 8024043C 0000802D */   daddu    $s0, $zero, $zero
.L80240440:
/* 918FF0 80240440 8E420000 */  lw        $v0, ($s2)
/* 918FF4 80240444 C620003C */  lwc1      $f0, 0x3c($s1)
/* 918FF8 80240448 C442002C */  lwc1      $f2, 0x2c($v0)
/* 918FFC 8024044C 46020001 */  sub.s     $f0, $f0, $f2
/* 919000 80240450 3C014220 */  lui       $at, 0x4220
/* 919004 80240454 44811000 */  mtc1      $at, $f2
/* 919008 80240458 46000005 */  abs.s     $f0, $f0
/* 91900C 8024045C 4600103E */  c.le.s    $f2, $f0
/* 919010 80240460 00000000 */  nop
/* 919014 80240464 45030001 */  bc1tl     .L8024046C
/* 919018 80240468 0000802D */   daddu    $s0, $zero, $zero
.L8024046C:
/* 91901C 8024046C 3C038011 */  lui       $v1, %hi(gPartnerActionStatus+0x3)
/* 919020 80240470 8063EBB3 */  lb        $v1, %lo(gPartnerActionStatus+0x3)($v1)
/* 919024 80240474 24020009 */  addiu     $v0, $zero, 9
/* 919028 80240478 50620001 */  beql      $v1, $v0, .L80240480
/* 91902C 8024047C 0000802D */   daddu    $s0, $zero, $zero
.L80240480:
/* 919030 80240480 0200102D */  daddu     $v0, $s0, $zero
/* 919034 80240484 8FBF001C */  lw        $ra, 0x1c($sp)
/* 919038 80240488 8FB20018 */  lw        $s2, 0x18($sp)
/* 91903C 8024048C 8FB10014 */  lw        $s1, 0x14($sp)
/* 919040 80240490 8FB00010 */  lw        $s0, 0x10($sp)
/* 919044 80240494 D7B40020 */  ldc1      $f20, 0x20($sp)
/* 919048 80240498 03E00008 */  jr        $ra
/* 91904C 8024049C 27BD0028 */   addiu    $sp, $sp, 0x28
