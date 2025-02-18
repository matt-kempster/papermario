.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802430B4_855224
/* 855224 802430B4 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 855228 802430B8 AFB20038 */  sw        $s2, 0x38($sp)
/* 85522C 802430BC 0080902D */  daddu     $s2, $a0, $zero
/* 855230 802430C0 AFBF003C */  sw        $ra, 0x3c($sp)
/* 855234 802430C4 AFB10034 */  sw        $s1, 0x34($sp)
/* 855238 802430C8 AFB00030 */  sw        $s0, 0x30($sp)
/* 85523C 802430CC F7B40040 */  sdc1      $f20, 0x40($sp)
/* 855240 802430D0 8E51000C */  lw        $s1, 0xc($s2)
/* 855244 802430D4 0C00EAD2 */  jal       get_npc_safe
/* 855248 802430D8 2404FFFC */   addiu    $a0, $zero, -4
/* 85524C 802430DC 2410FFFF */  addiu     $s0, $zero, -1
/* 855250 802430E0 3C038016 */  lui       $v1, %hi(gCollisionStatus+0x18)
/* 855254 802430E4 8463A568 */  lh        $v1, %lo(gCollisionStatus+0x18)($v1)
/* 855258 802430E8 04600025 */  bltz      $v1, .L80243180
/* 85525C 802430EC 0040202D */   daddu    $a0, $v0, $zero
/* 855260 802430F0 3C014130 */  lui       $at, 0x4130
/* 855264 802430F4 44812000 */  mtc1      $at, $f4
/* 855268 802430F8 C4800038 */  lwc1      $f0, 0x38($a0)
/* 85526C 802430FC 3C014140 */  lui       $at, 0x4140
/* 855270 80243100 4481A000 */  mtc1      $at, $f20
/* 855274 80243104 27A2002C */  addiu     $v0, $sp, 0x2c
/* 855278 80243108 E7A4002C */  swc1      $f4, 0x2c($sp)
/* 85527C 8024310C E7A00020 */  swc1      $f0, 0x20($sp)
/* 855280 80243110 C480003C */  lwc1      $f0, 0x3c($a0)
/* 855284 80243114 C4820040 */  lwc1      $f2, 0x40($a0)
/* 855288 80243118 46040000 */  add.s     $f0, $f0, $f4
/* 85528C 8024311C E7B4002C */  swc1      $f20, 0x2c($sp)
/* 855290 80243120 E7A20028 */  swc1      $f2, 0x28($sp)
/* 855294 80243124 E7A00024 */  swc1      $f0, 0x24($sp)
/* 855298 80243128 AFA20010 */  sw        $v0, 0x10($sp)
/* 85529C 8024312C C480000C */  lwc1      $f0, 0xc($a0)
/* 8552A0 80243130 27A50020 */  addiu     $a1, $sp, 0x20
/* 8552A4 80243134 E7A00014 */  swc1      $f0, 0x14($sp)
/* 8552A8 80243138 848200A6 */  lh        $v0, 0xa6($a0)
/* 8552AC 8024313C 27A60024 */  addiu     $a2, $sp, 0x24
/* 8552B0 80243140 44820000 */  mtc1      $v0, $f0
/* 8552B4 80243144 00000000 */  nop
/* 8552B8 80243148 46800020 */  cvt.s.w   $f0, $f0
/* 8552BC 8024314C E7A00018 */  swc1      $f0, 0x18($sp)
/* 8552C0 80243150 8C840080 */  lw        $a0, 0x80($a0)
/* 8552C4 80243154 0C0371DE */  jal       npc_raycast_down_around
/* 8552C8 80243158 27A70028 */   addiu    $a3, $sp, 0x28
/* 8552CC 8024315C 10400009 */  beqz      $v0, .L80243184
/* 8552D0 80243160 0240202D */   daddu    $a0, $s2, $zero
/* 8552D4 80243164 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* 8552D8 80243168 4614003E */  c.le.s    $f0, $f20
/* 8552DC 8024316C 00000000 */  nop
/* 8552E0 80243170 45000004 */  bc1f      .L80243184
/* 8552E4 80243174 00000000 */   nop
/* 8552E8 80243178 3C108011 */  lui       $s0, %hi(D_8010C978)
/* 8552EC 8024317C 8E10C978 */  lw        $s0, %lo(D_8010C978)($s0)
.L80243180:
/* 8552F0 80243180 0240202D */  daddu     $a0, $s2, $zero
.L80243184:
/* 8552F4 80243184 8E250000 */  lw        $a1, ($s1)
/* 8552F8 80243188 0C0B2026 */  jal       evt_set_variable
/* 8552FC 8024318C 0200302D */   daddu    $a2, $s0, $zero
/* 855300 80243190 8FBF003C */  lw        $ra, 0x3c($sp)
/* 855304 80243194 8FB20038 */  lw        $s2, 0x38($sp)
/* 855308 80243198 8FB10034 */  lw        $s1, 0x34($sp)
/* 85530C 8024319C 8FB00030 */  lw        $s0, 0x30($sp)
/* 855310 802431A0 D7B40040 */  ldc1      $f20, 0x40($sp)
/* 855314 802431A4 24020002 */  addiu     $v0, $zero, 2
/* 855318 802431A8 03E00008 */  jr        $ra
/* 85531C 802431AC 27BD0048 */   addiu    $sp, $sp, 0x48
