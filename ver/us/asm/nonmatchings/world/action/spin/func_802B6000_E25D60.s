.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

dlabel D_802B69A0_E26700
.double 0.9

dlabel D_802B69A8_E26708
.double 0.1

.section .text

glabel func_802B6000_E25D60
/* E25D60 802B6000 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* E25D64 802B6004 AFB5002C */  sw        $s5, 0x2c($sp)
/* E25D68 802B6008 AFB1001C */  sw        $s1, 0x1c($sp)
/* E25D6C 802B600C 3C118011 */  lui       $s1, %hi(gPlayerStatus)
/* E25D70 802B6010 2631EFC8 */  addiu     $s1, $s1, %lo(gPlayerStatus)
/* E25D74 802B6014 AFBF0030 */  sw        $ra, 0x30($sp)
/* E25D78 802B6018 AFB40028 */  sw        $s4, 0x28($sp)
/* E25D7C 802B601C AFB30024 */  sw        $s3, 0x24($sp)
/* E25D80 802B6020 AFB20020 */  sw        $s2, 0x20($sp)
/* E25D84 802B6024 AFB00018 */  sw        $s0, 0x18($sp)
/* E25D88 802B6028 F7B80048 */  sdc1      $f24, 0x48($sp)
/* E25D8C 802B602C F7B60040 */  sdc1      $f22, 0x40($sp)
/* E25D90 802B6030 F7B40038 */  sdc1      $f20, 0x38($sp)
/* E25D94 802B6034 8E220000 */  lw        $v0, ($s1)
/* E25D98 802B6038 3C108011 */  lui       $s0, %hi(gPlayerSpinState)
/* E25D9C 802B603C 2610F250 */  addiu     $s0, $s0, %lo(gPlayerSpinState)
/* E25DA0 802B6040 0441009D */  bgez      $v0, .L802B62B8
/* E25DA4 802B6044 0000A82D */   daddu    $s5, $zero, $zero
/* E25DA8 802B6048 3C037FF7 */  lui       $v1, 0x7ff7
/* E25DAC 802B604C 3463FFFF */  ori       $v1, $v1, 0xffff
/* E25DB0 802B6050 3C05FFFB */  lui       $a1, 0xfffb
/* E25DB4 802B6054 34A5FFFF */  ori       $a1, $a1, 0xffff
/* E25DB8 802B6058 24150001 */  addiu     $s5, $zero, 1
/* E25DBC 802B605C 24040028 */  addiu     $a0, $zero, 0x28
/* E25DC0 802B6060 00431824 */  and       $v1, $v0, $v1
/* E25DC4 802B6064 3C020002 */  lui       $v0, 2
/* E25DC8 802B6068 AE230000 */  sw        $v1, ($s1)
/* E25DCC 802B606C 00621825 */  or        $v1, $v1, $v0
/* E25DD0 802B6070 24020019 */  addiu     $v0, $zero, 0x19
/* E25DD4 802B6074 AE230000 */  sw        $v1, ($s1)
/* E25DD8 802B6078 A6200008 */  sh        $zero, 8($s1)
/* E25DDC 802B607C A22000B6 */  sb        $zero, 0xb6($s1)
/* E25DE0 802B6080 A2000000 */  sb        $zero, ($s0)
/* E25DE4 802B6084 A2000001 */  sb        $zero, 1($s0)
/* E25DE8 802B6088 AE000010 */  sw        $zero, 0x10($s0)
/* E25DEC 802B608C AE000014 */  sw        $zero, 0x14($s0)
/* E25DF0 802B6090 AE000018 */  sw        $zero, 0x18($s0)
/* E25DF4 802B6094 A2000002 */  sb        $zero, 2($s0)
/* E25DF8 802B6098 AE000008 */  sw        $zero, 8($s0)
/* E25DFC 802B609C AE00000C */  sw        $zero, 0xc($s0)
/* E25E00 802B60A0 AE000030 */  sw        $zero, 0x30($s0)
/* E25E04 802B60A4 AE2000D8 */  sw        $zero, 0xd8($s1)
/* E25E08 802B60A8 A602002C */  sh        $v0, 0x2c($s0)
/* E25E0C 802B60AC 8E230004 */  lw        $v1, 4($s1)
/* E25E10 802B60B0 2402000F */  addiu     $v0, $zero, 0xf
/* E25E14 802B60B4 A602002E */  sh        $v0, 0x2e($s0)
/* E25E18 802B60B8 3C020001 */  lui       $v0, 1
/* E25E1C 802B60BC 3C014220 */  lui       $at, 0x4220
/* E25E20 802B60C0 4481A000 */  mtc1      $at, $f20
/* E25E24 802B60C4 3C014000 */  lui       $at, 0x4000
/* E25E28 802B60C8 44810000 */  mtc1      $at, $f0
/* E25E2C 802B60CC 3C013F00 */  lui       $at, 0x3f00
/* E25E30 802B60D0 44811000 */  mtc1      $at, $f2
/* E25E34 802B60D4 00651824 */  and       $v1, $v1, $a1
/* E25E38 802B60D8 9205002D */  lbu       $a1, 0x2d($s0)
/* E25E3C 802B60DC 00621825 */  or        $v1, $v1, $v0
/* E25E40 802B60E0 AE230004 */  sw        $v1, 4($s1)
/* E25E44 802B60E4 E6140020 */  swc1      $f20, 0x20($s0)
/* E25E48 802B60E8 E6000024 */  swc1      $f0, 0x24($s0)
/* E25E4C 802B60EC E6020028 */  swc1      $f2, 0x28($s0)
/* E25E50 802B60F0 0C03A752 */  jal       is_ability_active
/* E25E54 802B60F4 A2050003 */   sb       $a1, 3($s0)
/* E25E58 802B60F8 0002102B */  sltu      $v0, $zero, $v0
/* E25E5C 802B60FC 00029080 */  sll       $s2, $v0, 2
/* E25E60 802B6100 0C03A752 */  jal       is_ability_active
/* E25E64 802B6104 2404002D */   addiu    $a0, $zero, 0x2d
/* E25E68 802B6108 54400001 */  bnel      $v0, $zero, .L802B6110
/* E25E6C 802B610C 36520002 */   ori      $s2, $s2, 2
.L802B6110:
/* E25E70 802B6110 0C03A752 */  jal       is_ability_active
/* E25E74 802B6114 24040027 */   addiu    $a0, $zero, 0x27
/* E25E78 802B6118 10400010 */  beqz      $v0, .L802B615C
/* E25E7C 802B611C 2402001E */   addiu    $v0, $zero, 0x1e
/* E25E80 802B6120 36520001 */  ori       $s2, $s2, 1
/* E25E84 802B6124 A602002C */  sh        $v0, 0x2c($s0)
/* E25E88 802B6128 9203002D */  lbu       $v1, 0x2d($s0)
/* E25E8C 802B612C 3C01402C */  lui       $at, 0x402c
/* E25E90 802B6130 3421CCCD */  ori       $at, $at, 0xcccd
/* E25E94 802B6134 44810000 */  mtc1      $at, $f0
/* E25E98 802B6138 3C013F66 */  lui       $at, 0x3f66
/* E25E9C 802B613C 34216666 */  ori       $at, $at, 0x6666
/* E25EA0 802B6140 44811000 */  mtc1      $at, $f2
/* E25EA4 802B6144 24020014 */  addiu     $v0, $zero, 0x14
/* E25EA8 802B6148 E6140020 */  swc1      $f20, 0x20($s0)
/* E25EAC 802B614C A602002E */  sh        $v0, 0x2e($s0)
/* E25EB0 802B6150 A2030003 */  sb        $v1, 3($s0)
/* E25EB4 802B6154 E6000024 */  swc1      $f0, 0x24($s0)
/* E25EB8 802B6158 E6020028 */  swc1      $f2, 0x28($s0)
.L802B615C:
/* E25EBC 802B615C 2414FFFF */  addiu     $s4, $zero, -1
/* E25EC0 802B6160 3C130001 */  lui       $s3, 1
/* E25EC4 802B6164 12400011 */  beqz      $s2, .L802B61AC
/* E25EC8 802B6168 36730010 */   ori      $s3, $s3, 0x10
/* E25ECC 802B616C 32420004 */  andi      $v0, $s2, 4
/* E25ED0 802B6170 10400005 */  beqz      $v0, .L802B6188
/* E25ED4 802B6174 32420002 */   andi     $v0, $s2, 2
/* E25ED8 802B6178 24140002 */  addiu     $s4, $zero, 2
/* E25EDC 802B617C 3C130001 */  lui       $s3, 1
/* E25EE0 802B6180 080AD86B */  j         .L802B61AC
/* E25EE4 802B6184 36730012 */   ori      $s3, $s3, 0x12
.L802B6188:
/* E25EE8 802B6188 10400003 */  beqz      $v0, .L802B6198
/* E25EEC 802B618C 32420001 */   andi     $v0, $s2, 1
/* E25EF0 802B6190 080AD86B */  j         .L802B61AC
/* E25EF4 802B6194 24140004 */   addiu    $s4, $zero, 4
.L802B6198:
/* E25EF8 802B6198 10400005 */  beqz      $v0, .L802B61B0
/* E25EFC 802B619C 24022111 */   addiu    $v0, $zero, 0x2111
/* E25F00 802B61A0 0000A02D */  daddu     $s4, $zero, $zero
/* E25F04 802B61A4 3C130001 */  lui       $s3, 1
/* E25F08 802B61A8 36730011 */  ori       $s3, $s3, 0x11
.L802B61AC:
/* E25F0C 802B61AC 24022111 */  addiu     $v0, $zero, 0x2111
.L802B61B0:
/* E25F10 802B61B0 AE020030 */  sw        $v0, 0x30($s0)
/* E25F14 802B61B4 2402FFFD */  addiu     $v0, $zero, -3
/* E25F18 802B61B8 02421824 */  and       $v1, $s2, $v0
/* E25F1C 802B61BC 24020004 */  addiu     $v0, $zero, 4
/* E25F20 802B61C0 14620004 */  bne       $v1, $v0, .L802B61D4
/* E25F24 802B61C4 24020001 */   addiu    $v0, $zero, 1
/* E25F28 802B61C8 24022113 */  addiu     $v0, $zero, 0x2113
/* E25F2C 802B61CC AE020030 */  sw        $v0, 0x30($s0)
/* E25F30 802B61D0 24020001 */  addiu     $v0, $zero, 1
.L802B61D4:
/* E25F34 802B61D4 14620004 */  bne       $v1, $v0, .L802B61E8
/* E25F38 802B61D8 24020005 */   addiu    $v0, $zero, 5
/* E25F3C 802B61DC 24022112 */  addiu     $v0, $zero, 0x2112
/* E25F40 802B61E0 AE020030 */  sw        $v0, 0x30($s0)
/* E25F44 802B61E4 24020005 */  addiu     $v0, $zero, 5
.L802B61E8:
/* E25F48 802B61E8 14620002 */  bne       $v1, $v0, .L802B61F4
/* E25F4C 802B61EC 24022114 */   addiu    $v0, $zero, 0x2114
/* E25F50 802B61F0 AE020030 */  sw        $v0, 0x30($s0)
.L802B61F4:
/* E25F54 802B61F4 8E040030 */  lw        $a0, 0x30($s0)
/* E25F58 802B61F8 0C052736 */  jal       sfx_play_sound_at_player
/* E25F5C 802B61FC 0000282D */   daddu    $a1, $zero, $zero
/* E25F60 802B6200 0C037FDE */  jal       suggest_player_anim_setUnkFlag
/* E25F64 802B6204 0260202D */   daddu    $a0, $s3, $zero
/* E25F68 802B6208 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* E25F6C 802B620C 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* E25F70 802B6210 C6200080 */  lwc1      $f0, 0x80($s1)
/* E25F74 802B6214 00031080 */  sll       $v0, $v1, 2
/* E25F78 802B6218 00431021 */  addu      $v0, $v0, $v1
/* E25F7C 802B621C 00021080 */  sll       $v0, $v0, 2
/* E25F80 802B6220 00431023 */  subu      $v0, $v0, $v1
/* E25F84 802B6224 000218C0 */  sll       $v1, $v0, 3
/* E25F88 802B6228 00431021 */  addu      $v0, $v0, $v1
/* E25F8C 802B622C 000210C0 */  sll       $v0, $v0, 3
/* E25F90 802B6230 3C01800B */  lui       $at, %hi(gCameras+0x6C)
/* E25F94 802B6234 00220821 */  addu      $at, $at, $v0
/* E25F98 802B6238 C42C1DEC */  lwc1      $f12, %lo(gCameras+0x6C)($at)
/* E25F9C 802B623C 0C00A6C9 */  jal       clamp_angle
/* E25FA0 802B6240 460C0301 */   sub.s    $f12, $f0, $f12
/* E25FA4 802B6244 3C014334 */  lui       $at, 0x4334
/* E25FA8 802B6248 44811000 */  mtc1      $at, $f2
/* E25FAC 802B624C 00000000 */  nop
/* E25FB0 802B6250 4602003E */  c.le.s    $f0, $f2
/* E25FB4 802B6254 00000000 */  nop
/* E25FB8 802B6258 45020004 */  bc1fl     .L802B626C
/* E25FBC 802B625C 26940001 */   addiu    $s4, $s4, 1
/* E25FC0 802B6260 C6000020 */  lwc1      $f0, 0x20($s0)
/* E25FC4 802B6264 080AD89E */  j         .L802B6278
/* E25FC8 802B6268 E62000D4 */   swc1     $f0, 0xd4($s1)
.L802B626C:
/* E25FCC 802B626C C6000020 */  lwc1      $f0, 0x20($s0)
/* E25FD0 802B6270 46000007 */  neg.s     $f0, $f0
/* E25FD4 802B6274 E62000D4 */  swc1      $f0, 0xd4($s1)
.L802B6278:
/* E25FD8 802B6278 12400006 */  beqz      $s2, .L802B6294
/* E25FDC 802B627C 0280202D */   daddu    $a0, $s4, $zero
/* E25FE0 802B6280 0220282D */  daddu     $a1, $s1, $zero
/* E25FE4 802B6284 3C063F80 */  lui       $a2, 0x3f80
/* E25FE8 802B6288 0C01C4B4 */  jal       fx_46
/* E25FEC 802B628C 240703E8 */   addiu    $a3, $zero, 0x3e8
/* E25FF0 802B6290 AE2200D8 */  sw        $v0, 0xd8($s1)
.L802B6294:
/* E25FF4 802B6294 0C03963C */  jal       phys_clear_spin_history
/* E25FF8 802B6298 00000000 */   nop
/* E25FFC 802B629C 27A40010 */  addiu     $a0, $sp, 0x10
/* E26000 802B62A0 0C0388C1 */  jal       player_input_to_move_vector
/* E26004 802B62A4 27A50014 */   addiu    $a1, $sp, 0x14
/* E26008 802B62A8 C7A00010 */  lwc1      $f0, 0x10($sp)
/* E2600C 802B62AC C7A20014 */  lwc1      $f2, 0x14($sp)
/* E26010 802B62B0 E6200080 */  swc1      $f0, 0x80($s1)
/* E26014 802B62B4 E602001C */  swc1      $f2, 0x1c($s0)
.L802B62B8:
/* E26018 802B62B8 3C058011 */  lui       $a1, %hi(gSpinHistoryBufferPos)
/* E2601C 802B62BC 24A5C944 */  addiu     $a1, $a1, %lo(gSpinHistoryBufferPos)
/* E26020 802B62C0 3C068011 */  lui       $a2, %hi(gSpinHistoryPosAngle)
/* E26024 802B62C4 24C6F6B8 */  addiu     $a2, $a2, %lo(gSpinHistoryPosAngle)
/* E26028 802B62C8 8CA20000 */  lw        $v0, ($a1)
/* E2602C 802B62CC C62000A8 */  lwc1      $f0, 0xa8($s1)
/* E26030 802B62D0 00022040 */  sll       $a0, $v0, 1
/* E26034 802B62D4 24420001 */  addiu     $v0, $v0, 1
/* E26038 802B62D8 4600018D */  trunc.w.s $f6, $f0
/* E2603C 802B62DC 44033000 */  mfc1      $v1, $f6
/* E26040 802B62E0 3C018011 */  lui       $at, %hi(gSpinHistoryPosAngle)
/* E26044 802B62E4 00240821 */  addu      $at, $at, $a0
/* E26048 802B62E8 A423F6B8 */  sh        $v1, %lo(gSpinHistoryPosAngle)($at)
/* E2604C 802B62EC ACA20000 */  sw        $v0, ($a1)
/* E26050 802B62F0 28420006 */  slti      $v0, $v0, 6
/* E26054 802B62F4 50400001 */  beql      $v0, $zero, .L802B62FC
/* E26058 802B62F8 ACA00000 */   sw       $zero, ($a1)
.L802B62FC:
/* E2605C 802B62FC 8CA30000 */  lw        $v1, ($a1)
/* E26060 802B6300 C6200028 */  lwc1      $f0, 0x28($s1)
/* E26064 802B6304 00031080 */  sll       $v0, $v1, 2
/* E26068 802B6308 4600018D */  trunc.w.s $f6, $f0
/* E2606C 802B630C 3C018011 */  lui       $at, %hi(gSpinHistoryPosX)
/* E26070 802B6310 00220821 */  addu      $at, $at, $v0
/* E26074 802B6314 E426EF28 */  swc1      $f6, %lo(gSpinHistoryPosX)($at)
/* E26078 802B6318 24640001 */  addiu     $a0, $v1, 1
/* E2607C 802B631C C620002C */  lwc1      $f0, 0x2c($s1)
/* E26080 802B6320 00031840 */  sll       $v1, $v1, 1
/* E26084 802B6324 4600018D */  trunc.w.s $f6, $f0
/* E26088 802B6328 3C018011 */  lui       $at, %hi(gSpinHistoryPosY)
/* E2608C 802B632C 00220821 */  addu      $at, $at, $v0
/* E26090 802B6330 E426EF10 */  swc1      $f6, %lo(gSpinHistoryPosY)($at)
/* E26094 802B6334 C6200030 */  lwc1      $f0, 0x30($s1)
/* E26098 802B6338 00661821 */  addu      $v1, $v1, $a2
/* E2609C 802B633C ACA40000 */  sw        $a0, ($a1)
/* E260A0 802B6340 4600018D */  trunc.w.s $f6, $f0
/* E260A4 802B6344 3C018011 */  lui       $at, %hi(gSpinHistoryPosZ)
/* E260A8 802B6348 00220821 */  addu      $at, $at, $v0
/* E260AC 802B634C E426EF40 */  swc1      $f6, %lo(gSpinHistoryPosZ)($at)
/* E260B0 802B6350 C62000A8 */  lwc1      $f0, 0xa8($s1)
/* E260B4 802B6354 28840006 */  slti      $a0, $a0, 6
/* E260B8 802B6358 4600018D */  trunc.w.s $f6, $f0
/* E260BC 802B635C 44023000 */  mfc1      $v0, $f6
/* E260C0 802B6360 14800002 */  bnez      $a0, .L802B636C
/* E260C4 802B6364 A4620000 */   sh       $v0, ($v1)
/* E260C8 802B6368 ACA00000 */  sw        $zero, ($a1)
.L802B636C:
/* E260CC 802B636C 16A0001A */  bnez      $s5, .L802B63D8
/* E260D0 802B6370 00000000 */   nop
/* E260D4 802B6374 0C039838 */  jal       check_input_hammer
/* E260D8 802B6378 00000000 */   nop
/* E260DC 802B637C 14400005 */  bnez      $v0, .L802B6394
/* E260E0 802B6380 3C05FFFE */   lui      $a1, 0xfffe
/* E260E4 802B6384 0C039858 */  jal       check_input_jump
/* E260E8 802B6388 00000000 */   nop
/* E260EC 802B638C 10400012 */  beqz      $v0, .L802B63D8
/* E260F0 802B6390 3C05FFFE */   lui      $a1, 0xfffe
.L802B6394:
/* E260F4 802B6394 34A5FFFF */  ori       $a1, $a1, 0xffff
/* E260F8 802B6398 3C06FFFD */  lui       $a2, 0xfffd
/* E260FC 802B639C 34C6FFFF */  ori       $a2, $a2, 0xffff
/* E26100 802B63A0 8E040030 */  lw        $a0, 0x30($s0)
/* E26104 802B63A4 8E220004 */  lw        $v0, 4($s1)
/* E26108 802B63A8 8E230000 */  lw        $v1, ($s1)
/* E2610C 802B63AC 00451024 */  and       $v0, $v0, $a1
/* E26110 802B63B0 00661824 */  and       $v1, $v1, $a2
/* E26114 802B63B4 AE220004 */  sw        $v0, 4($s1)
/* E26118 802B63B8 0C05271B */  jal       sfx_stop_sound
/* E2611C 802B63BC AE230000 */   sw       $v1, ($s1)
/* E26120 802B63C0 27A40010 */  addiu     $a0, $sp, 0x10
/* E26124 802B63C4 0C0388C1 */  jal       player_input_to_move_vector
/* E26128 802B63C8 27A50014 */   addiu    $a1, $sp, 0x14
/* E2612C 802B63CC C7A00010 */  lwc1      $f0, 0x10($sp)
/* E26130 802B63D0 080ADA5B */  j         .L802B696C
/* E26134 802B63D4 E6200080 */   swc1     $f0, 0x80($s1)
.L802B63D8:
/* E26138 802B63D8 82020003 */  lb        $v0, 3($s0)
/* E2613C 802B63DC 2842000B */  slti      $v0, $v0, 0xb
/* E26140 802B63E0 1040000C */  beqz      $v0, .L802B6414
/* E26144 802B63E4 00000000 */   nop
/* E26148 802B63E8 8E2200E0 */  lw        $v0, 0xe0($s1)
/* E2614C 802B63EC 30422000 */  andi      $v0, $v0, 0x2000
/* E26150 802B63F0 10400008 */  beqz      $v0, .L802B6414
/* E26154 802B63F4 24020001 */   addiu    $v0, $zero, 1
/* E26158 802B63F8 822300B5 */  lb        $v1, 0xb5($s1)
/* E2615C 802B63FC 8E2400E8 */  lw        $a0, 0xe8($s1)
/* E26160 802B6400 8E2500EC */  lw        $a1, 0xec($s1)
/* E26164 802B6404 A2020001 */  sb        $v0, 1($s0)
/* E26168 802B6408 AE030004 */  sw        $v1, 4($s0)
/* E2616C 802B640C AE040008 */  sw        $a0, 8($s0)
/* E26170 802B6410 AE05000C */  sw        $a1, 0xc($s0)
.L802B6414:
/* E26174 802B6414 822300B6 */  lb        $v1, 0xb6($s1)
/* E26178 802B6418 28620002 */  slti      $v0, $v1, 2
/* E2617C 802B641C 1440004C */  bnez      $v0, .L802B6550
/* E26180 802B6420 00000000 */   nop
/* E26184 802B6424 C6000010 */  lwc1      $f0, 0x10($s0)
/* E26188 802B6428 3C013F80 */  lui       $at, 0x3f80
/* E2618C 802B642C 44811000 */  mtc1      $at, $f2
/* E26190 802B6430 00000000 */  nop
/* E26194 802B6434 46020001 */  sub.s     $f0, $f0, $f2
/* E26198 802B6438 4480C000 */  mtc1      $zero, $f24
/* E2619C 802B643C 00000000 */  nop
/* E261A0 802B6440 4618003C */  c.lt.s    $f0, $f24
/* E261A4 802B6444 00000000 */  nop
/* E261A8 802B6448 45000002 */  bc1f      .L802B6454
/* E261AC 802B644C E6000010 */   swc1     $f0, 0x10($s0)
/* E261B0 802B6450 E6180010 */  swc1      $f24, 0x10($s0)
.L802B6454:
/* E261B4 802B6454 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* E261B8 802B6458 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* E261BC 802B645C C6200080 */  lwc1      $f0, 0x80($s1)
/* E261C0 802B6460 00031080 */  sll       $v0, $v1, 2
/* E261C4 802B6464 00431021 */  addu      $v0, $v0, $v1
/* E261C8 802B6468 00021080 */  sll       $v0, $v0, 2
/* E261CC 802B646C 00431023 */  subu      $v0, $v0, $v1
/* E261D0 802B6470 000218C0 */  sll       $v1, $v0, 3
/* E261D4 802B6474 00431021 */  addu      $v0, $v0, $v1
/* E261D8 802B6478 000210C0 */  sll       $v0, $v0, 3
/* E261DC 802B647C 3C01800B */  lui       $at, %hi(gCameras+0x6C)
/* E261E0 802B6480 00220821 */  addu      $at, $at, $v0
/* E261E4 802B6484 C42C1DEC */  lwc1      $f12, %lo(gCameras+0x6C)($at)
/* E261E8 802B6488 0C00A6C9 */  jal       clamp_angle
/* E261EC 802B648C 460C0301 */   sub.s    $f12, $f0, $f12
/* E261F0 802B6490 3C0140C9 */  lui       $at, 0x40c9
/* E261F4 802B6494 34210FD0 */  ori       $at, $at, 0xfd0
/* E261F8 802B6498 4481A000 */  mtc1      $at, $f20
/* E261FC 802B649C 00000000 */  nop
/* E26200 802B64A0 46140302 */  mul.s     $f12, $f0, $f20
/* E26204 802B64A4 00000000 */  nop
/* E26208 802B64A8 3C0143B4 */  lui       $at, 0x43b4
/* E2620C 802B64AC 4481B000 */  mtc1      $at, $f22
/* E26210 802B64B0 E7A00010 */  swc1      $f0, 0x10($sp)
/* E26214 802B64B4 0C00A85B */  jal       sin_rad
/* E26218 802B64B8 46166303 */   div.s    $f12, $f12, $f22
/* E2621C 802B64BC C7AC0010 */  lwc1      $f12, 0x10($sp)
/* E26220 802B64C0 46146302 */  mul.s     $f12, $f12, $f20
/* E26224 802B64C4 00000000 */  nop
/* E26228 802B64C8 C6020010 */  lwc1      $f2, 0x10($s0)
/* E2622C 802B64CC 46020002 */  mul.s     $f0, $f0, $f2
/* E26230 802B64D0 00000000 */  nop
/* E26234 802B64D4 46166303 */  div.s     $f12, $f12, $f22
/* E26238 802B64D8 0C00A874 */  jal       cos_rad
/* E2623C 802B64DC E6000014 */   swc1     $f0, 0x14($s0)
/* E26240 802B64E0 46000007 */  neg.s     $f0, $f0
/* E26244 802B64E4 C6020010 */  lwc1      $f2, 0x10($s0)
/* E26248 802B64E8 96220008 */  lhu       $v0, 8($s1)
/* E2624C 802B64EC 46020002 */  mul.s     $f0, $f0, $f2
/* E26250 802B64F0 00000000 */  nop
/* E26254 802B64F4 2442FFFF */  addiu     $v0, $v0, -1
/* E26258 802B64F8 A6220008 */  sh        $v0, 8($s1)
/* E2625C 802B64FC 00021400 */  sll       $v0, $v0, 0x10
/* E26260 802B6500 14400011 */  bnez      $v0, .L802B6548
/* E26264 802B6504 E6000018 */   swc1     $f0, 0x18($s0)
/* E26268 802B6508 0000202D */  daddu     $a0, $zero, $zero
/* E2626C 802B650C 24020004 */  addiu     $v0, $zero, 4
/* E26270 802B6510 0C039769 */  jal       set_action_state
/* E26274 802B6514 A2020000 */   sb       $v0, ($s0)
/* E26278 802B6518 3C05FFFD */  lui       $a1, 0xfffd
/* E2627C 802B651C 34A5FFFF */  ori       $a1, $a1, 0xffff
/* E26280 802B6520 3C06FFFE */  lui       $a2, 0xfffe
/* E26284 802B6524 34C6FFFF */  ori       $a2, $a2, 0xffff
/* E26288 802B6528 8E040030 */  lw        $a0, 0x30($s0)
/* E2628C 802B652C 8E220000 */  lw        $v0, ($s1)
/* E26290 802B6530 8E230004 */  lw        $v1, 4($s1)
/* E26294 802B6534 00451024 */  and       $v0, $v0, $a1
/* E26298 802B6538 00661824 */  and       $v1, $v1, $a2
/* E2629C 802B653C AE220000 */  sw        $v0, ($s1)
/* E262A0 802B6540 0C05271B */  jal       sfx_stop_sound
/* E262A4 802B6544 AE230004 */   sw       $v1, 4($s1)
.L802B6548:
/* E262A8 802B6548 080ADA5B */  j         .L802B696C
/* E262AC 802B654C E6380054 */   swc1     $f24, 0x54($s1)
.L802B6550:
/* E262B0 802B6550 14600012 */  bnez      $v1, .L802B659C
/* E262B4 802B6554 3C030004 */   lui      $v1, 4
/* E262B8 802B6558 8E220004 */  lw        $v0, 4($s1)
/* E262BC 802B655C 00431024 */  and       $v0, $v0, $v1
/* E262C0 802B6560 1440000D */  bnez      $v0, .L802B6598
/* E262C4 802B6564 24020001 */   addiu    $v0, $zero, 1
/* E262C8 802B6568 3C028016 */  lui       $v0, %hi(gCollisionStatus)
/* E262CC 802B656C 8442A550 */  lh        $v0, %lo(gCollisionStatus)($v0)
/* E262D0 802B6570 0440000A */  bltz      $v0, .L802B659C
/* E262D4 802B6574 00000000 */   nop
/* E262D8 802B6578 92020002 */  lbu       $v0, 2($s0)
/* E262DC 802B657C 24420001 */  addiu     $v0, $v0, 1
/* E262E0 802B6580 A2020002 */  sb        $v0, 2($s0)
/* E262E4 802B6584 00021600 */  sll       $v0, $v0, 0x18
/* E262E8 802B6588 00021603 */  sra       $v0, $v0, 0x18
/* E262EC 802B658C 2842000A */  slti      $v0, $v0, 0xa
/* E262F0 802B6590 14400002 */  bnez      $v0, .L802B659C
/* E262F4 802B6594 24020001 */   addiu    $v0, $zero, 1
.L802B6598:
/* E262F8 802B6598 A22200B6 */  sb        $v0, 0xb6($s1)
.L802B659C:
/* E262FC 802B659C 86240008 */  lh        $a0, 8($s1)
/* E26300 802B65A0 8603002E */  lh        $v1, 0x2e($s0)
/* E26304 802B65A4 0064102A */  slt       $v0, $v1, $a0
/* E26308 802B65A8 5440003F */  bnel      $v0, $zero, .L802B66A8
/* E2630C 802B65AC 00831023 */   subu     $v0, $a0, $v1
/* E26310 802B65B0 C600001C */  lwc1      $f0, 0x1c($s0)
/* E26314 802B65B4 44801000 */  mtc1      $zero, $f2
/* E26318 802B65B8 00000000 */  nop
/* E2631C 802B65BC 46020032 */  c.eq.s    $f0, $f2
/* E26320 802B65C0 00000000 */  nop
/* E26324 802B65C4 45010002 */  bc1t      .L802B65D0
/* E26328 802B65C8 46001606 */   mov.s    $f24, $f2
/* E2632C 802B65CC C6180024 */  lwc1      $f24, 0x24($s0)
.L802B65D0:
/* E26330 802B65D0 C6000010 */  lwc1      $f0, 0x10($s0)
/* E26334 802B65D4 3C01802B */  lui       $at, %hi(D_802B69A0_E26700)
/* E26338 802B65D8 D42269A0 */  ldc1      $f2, %lo(D_802B69A0_E26700)($at)
/* E2633C 802B65DC 46000021 */  cvt.d.s   $f0, $f0
/* E26340 802B65E0 46220000 */  add.d     $f0, $f0, $f2
/* E26344 802B65E4 3C014110 */  lui       $at, 0x4110
/* E26348 802B65E8 44811000 */  mtc1      $at, $f2
/* E2634C 802B65EC 46200020 */  cvt.s.d   $f0, $f0
/* E26350 802B65F0 4600103C */  c.lt.s    $f2, $f0
/* E26354 802B65F4 00000000 */  nop
/* E26358 802B65F8 45000002 */  bc1f      .L802B6604
/* E2635C 802B65FC E6000010 */   swc1     $f0, 0x10($s0)
/* E26360 802B6600 E6020010 */  swc1      $f2, 0x10($s0)
.L802B6604:
/* E26364 802B6604 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* E26368 802B6608 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* E2636C 802B660C C6200080 */  lwc1      $f0, 0x80($s1)
/* E26370 802B6610 00031080 */  sll       $v0, $v1, 2
/* E26374 802B6614 00431021 */  addu      $v0, $v0, $v1
/* E26378 802B6618 00021080 */  sll       $v0, $v0, 2
/* E2637C 802B661C 00431023 */  subu      $v0, $v0, $v1
/* E26380 802B6620 000218C0 */  sll       $v1, $v0, 3
/* E26384 802B6624 00431021 */  addu      $v0, $v0, $v1
/* E26388 802B6628 000210C0 */  sll       $v0, $v0, 3
/* E2638C 802B662C 3C01800B */  lui       $at, %hi(gCameras+0x6C)
/* E26390 802B6630 00220821 */  addu      $at, $at, $v0
/* E26394 802B6634 C42C1DEC */  lwc1      $f12, %lo(gCameras+0x6C)($at)
/* E26398 802B6638 0C00A6C9 */  jal       clamp_angle
/* E2639C 802B663C 460C0301 */   sub.s    $f12, $f0, $f12
/* E263A0 802B6640 3C0140C9 */  lui       $at, 0x40c9
/* E263A4 802B6644 34210FD0 */  ori       $at, $at, 0xfd0
/* E263A8 802B6648 4481A000 */  mtc1      $at, $f20
/* E263AC 802B664C 00000000 */  nop
/* E263B0 802B6650 46140302 */  mul.s     $f12, $f0, $f20
/* E263B4 802B6654 00000000 */  nop
/* E263B8 802B6658 3C0143B4 */  lui       $at, 0x43b4
/* E263BC 802B665C 4481B000 */  mtc1      $at, $f22
/* E263C0 802B6660 E7A00010 */  swc1      $f0, 0x10($sp)
/* E263C4 802B6664 0C00A85B */  jal       sin_rad
/* E263C8 802B6668 46166303 */   div.s    $f12, $f12, $f22
/* E263CC 802B666C C7AC0010 */  lwc1      $f12, 0x10($sp)
/* E263D0 802B6670 46146302 */  mul.s     $f12, $f12, $f20
/* E263D4 802B6674 00000000 */  nop
/* E263D8 802B6678 C6020010 */  lwc1      $f2, 0x10($s0)
/* E263DC 802B667C 46020002 */  mul.s     $f0, $f0, $f2
/* E263E0 802B6680 00000000 */  nop
/* E263E4 802B6684 46166303 */  div.s     $f12, $f12, $f22
/* E263E8 802B6688 0C00A874 */  jal       cos_rad
/* E263EC 802B668C E6000014 */   swc1     $f0, 0x14($s0)
/* E263F0 802B6690 C6020010 */  lwc1      $f2, 0x10($s0)
/* E263F4 802B6694 46000007 */  neg.s     $f0, $f0
/* E263F8 802B6698 46020002 */  mul.s     $f0, $f0, $f2
/* E263FC 802B669C 00000000 */  nop
/* E26400 802B66A0 080AD9CE */  j         .L802B6738
/* E26404 802B66A4 E6000018 */   swc1     $f0, 0x18($s0)
.L802B66A8:
/* E26408 802B66A8 2442FFFF */  addiu     $v0, $v0, -1
/* E2640C 802B66AC C6020028 */  lwc1      $f2, 0x28($s0)
/* E26410 802B66B0 44820000 */  mtc1      $v0, $f0
/* E26414 802B66B4 00000000 */  nop
/* E26418 802B66B8 46800020 */  cvt.s.w   $f0, $f0
/* E2641C 802B66BC 46020002 */  mul.s     $f0, $f0, $f2
/* E26420 802B66C0 00000000 */  nop
/* E26424 802B66C4 C6020024 */  lwc1      $f2, 0x24($s0)
/* E26428 802B66C8 46001601 */  sub.s     $f24, $f2, $f0
/* E2642C 802B66CC 3C01802B */  lui       $at, %hi(D_802B69A8_E26708)
/* E26430 802B66D0 D42269A8 */  ldc1      $f2, %lo(D_802B69A8_E26708)($at)
/* E26434 802B66D4 4600C021 */  cvt.d.s   $f0, $f24
/* E26438 802B66D8 4622003C */  c.lt.d    $f0, $f2
/* E2643C 802B66DC 00000000 */  nop
/* E26440 802B66E0 45000004 */  bc1f      .L802B66F4
/* E26444 802B66E4 00000000 */   nop
/* E26448 802B66E8 3C013DCC */  lui       $at, 0x3dcc
/* E2644C 802B66EC 3421CCCD */  ori       $at, $at, 0xcccd
/* E26450 802B66F0 4481C000 */  mtc1      $at, $f24
.L802B66F4:
/* E26454 802B66F4 C600001C */  lwc1      $f0, 0x1c($s0)
/* E26458 802B66F8 44802000 */  mtc1      $zero, $f4
/* E2645C 802B66FC 00000000 */  nop
/* E26460 802B6700 46040032 */  c.eq.s    $f0, $f4
/* E26464 802B6704 00000000 */  nop
/* E26468 802B6708 45030001 */  bc1tl     .L802B6710
/* E2646C 802B670C 46002606 */   mov.s    $f24, $f4
.L802B6710:
/* E26470 802B6710 C6000010 */  lwc1      $f0, 0x10($s0)
/* E26474 802B6714 3C013F80 */  lui       $at, 0x3f80
/* E26478 802B6718 44811000 */  mtc1      $at, $f2
/* E2647C 802B671C 00000000 */  nop
/* E26480 802B6720 46020001 */  sub.s     $f0, $f0, $f2
/* E26484 802B6724 4604003C */  c.lt.s    $f0, $f4
/* E26488 802B6728 00000000 */  nop
/* E2648C 802B672C 45000002 */  bc1f      .L802B6738
/* E26490 802B6730 E6000010 */   swc1     $f0, 0x10($s0)
/* E26494 802B6734 E6040010 */  swc1      $f4, 0x10($s0)
.L802B6738:
/* E26498 802B6738 96220008 */  lhu       $v0, 8($s1)
/* E2649C 802B673C 822300B5 */  lb        $v1, 0xb5($s1)
/* E264A0 802B6740 24420001 */  addiu     $v0, $v0, 1
/* E264A4 802B6744 10600007 */  beqz      $v1, .L802B6764
/* E264A8 802B6748 A6220008 */   sh       $v0, 8($s1)
/* E264AC 802B674C 04600030 */  bltz      $v1, .L802B6810
/* E264B0 802B6750 28620003 */   slti     $v0, $v1, 3
/* E264B4 802B6754 1040002E */  beqz      $v0, .L802B6810
/* E264B8 802B6758 00000000 */   nop
/* E264BC 802B675C 080ADA00 */  j         .L802B6800
/* E264C0 802B6760 00000000 */   nop
.L802B6764:
/* E264C4 802B6764 27A40010 */  addiu     $a0, $sp, 0x10
/* E264C8 802B6768 0C0388C1 */  jal       player_input_to_move_vector
/* E264CC 802B676C 27A50014 */   addiu    $a1, $sp, 0x14
/* E264D0 802B6770 0C039454 */  jal       phys_update_interact_collider
/* E264D4 802B6774 00000000 */   nop
/* E264D8 802B6778 0C039858 */  jal       check_input_jump
/* E264DC 802B677C 00000000 */   nop
/* E264E0 802B6780 10400010 */  beqz      $v0, .L802B67C4
/* E264E4 802B6784 00000000 */   nop
/* E264E8 802B6788 C7A20014 */  lwc1      $f2, 0x14($sp)
/* E264EC 802B678C 44800000 */  mtc1      $zero, $f0
/* E264F0 802B6790 00000000 */  nop
/* E264F4 802B6794 46001032 */  c.eq.s    $f2, $f0
/* E264F8 802B6798 00000000 */  nop
/* E264FC 802B679C 45000007 */  bc1f      .L802B67BC
/* E26500 802B67A0 00000000 */   nop
/* E26504 802B67A4 C6220080 */  lwc1      $f2, 0x80($s1)
/* E26508 802B67A8 C7A00010 */  lwc1      $f0, 0x10($sp)
/* E2650C 802B67AC 46001032 */  c.eq.s    $f2, $f0
/* E26510 802B67B0 00000000 */  nop
/* E26514 802B67B4 45010003 */  bc1t      .L802B67C4
/* E26518 802B67B8 00000000 */   nop
.L802B67BC:
/* E2651C 802B67BC C7A00010 */  lwc1      $f0, 0x10($sp)
/* E26520 802B67C0 E6200080 */  swc1      $f0, 0x80($s1)
.L802B67C4:
/* E26524 802B67C4 C7A00014 */  lwc1      $f0, 0x14($sp)
/* E26528 802B67C8 44801000 */  mtc1      $zero, $f2
/* E2652C 802B67CC 00000000 */  nop
/* E26530 802B67D0 46020032 */  c.eq.s    $f0, $f2
/* E26534 802B67D4 00000000 */  nop
/* E26538 802B67D8 45010006 */  bc1t      .L802B67F4
/* E2653C 802B67DC 26220054 */   addiu    $v0, $s1, 0x54
/* E26540 802B67E0 C620005C */  lwc1      $f0, 0x5c($s1)
/* E26544 802B67E4 46180002 */  mul.s     $f0, $f0, $f24
/* E26548 802B67E8 00000000 */  nop
/* E2654C 802B67EC 080ADA04 */  j         .L802B6810
/* E26550 802B67F0 E4400000 */   swc1     $f0, ($v0)
.L802B67F4:
/* E26554 802B67F4 46001006 */  mov.s     $f0, $f2
/* E26558 802B67F8 080ADA04 */  j         .L802B6810
/* E2655C 802B67FC E4400000 */   swc1     $f0, ($v0)
.L802B6800:
/* E26560 802B6800 C620005C */  lwc1      $f0, 0x5c($s1)
/* E26564 802B6804 46180002 */  mul.s     $f0, $f0, $f24
/* E26568 802B6808 00000000 */  nop
/* E2656C 802B680C E6200054 */  swc1      $f0, 0x54($s1)
.L802B6810:
/* E26570 802B6810 822200B6 */  lb        $v0, 0xb6($s1)
/* E26574 802B6814 14400010 */  bnez      $v0, .L802B6858
/* E26578 802B6818 00000000 */   nop
/* E2657C 802B681C 92020003 */  lbu       $v0, 3($s0)
/* E26580 802B6820 2442FFFF */  addiu     $v0, $v0, -1
/* E26584 802B6824 A2020003 */  sb        $v0, 3($s0)
/* E26588 802B6828 00021600 */  sll       $v0, $v0, 0x18
/* E2658C 802B682C 18400009 */  blez      $v0, .L802B6854
/* E26590 802B6830 24020001 */   addiu    $v0, $zero, 1
/* E26594 802B6834 86220008 */  lh        $v0, 8($s1)
/* E26598 802B6838 28420002 */  slti      $v0, $v0, 2
/* E2659C 802B683C 1440004B */  bnez      $v0, .L802B696C
/* E265A0 802B6840 00000000 */   nop
/* E265A4 802B6844 C62000A8 */  lwc1      $f0, 0xa8($s1)
/* E265A8 802B6848 C62C00D4 */  lwc1      $f12, 0xd4($s1)
/* E265AC 802B684C 080ADA58 */  j         .L802B6960
/* E265B0 802B6850 460C0300 */   add.s    $f12, $f0, $f12
.L802B6854:
/* E265B4 802B6854 A22200B6 */  sb        $v0, 0xb6($s1)
.L802B6858:
/* E265B8 802B6858 822300B6 */  lb        $v1, 0xb6($s1)
/* E265BC 802B685C 24020001 */  addiu     $v0, $zero, 1
/* E265C0 802B6860 14620042 */  bne       $v1, $v0, .L802B696C
/* E265C4 802B6864 00000000 */   nop
/* E265C8 802B6868 C62200A8 */  lwc1      $f2, 0xa8($s1)
/* E265CC 802B686C C62000D4 */  lwc1      $f0, 0xd4($s1)
/* E265D0 802B6870 82020001 */  lb        $v0, 1($s0)
/* E265D4 802B6874 46001000 */  add.s     $f0, $f2, $f0
/* E265D8 802B6878 E7A20010 */  swc1      $f2, 0x10($sp)
/* E265DC 802B687C 10400008 */  beqz      $v0, .L802B68A0
/* E265E0 802B6880 E62000A8 */   swc1     $f0, 0xa8($s1)
/* E265E4 802B6884 3C02FFFD */  lui       $v0, 0xfffd
/* E265E8 802B6888 3442FFFF */  ori       $v0, $v0, 0xffff
/* E265EC 802B688C 3C040001 */  lui       $a0, 1
/* E265F0 802B6890 34840002 */  ori       $a0, $a0, 2
/* E265F4 802B6894 8E230000 */  lw        $v1, ($s1)
/* E265F8 802B6898 080ADA52 */  j         .L802B6948
/* E265FC 802B689C 24050002 */   addiu    $a1, $zero, 2
.L802B68A0:
/* E26600 802B68A0 46001106 */  mov.s     $f4, $f2
/* E26604 802B68A4 4600203C */  c.lt.s    $f4, $f0
/* E26608 802B68A8 00000000 */  nop
/* E2660C 802B68AC 45000013 */  bc1f      .L802B68FC
/* E26610 802B68B0 00000000 */   nop
/* E26614 802B68B4 3C014334 */  lui       $at, 0x4334
/* E26618 802B68B8 44811000 */  mtc1      $at, $f2
/* E2661C 802B68BC 00000000 */  nop
/* E26620 802B68C0 4600103E */  c.le.s    $f2, $f0
/* E26624 802B68C4 00000000 */  nop
/* E26628 802B68C8 45000024 */  bc1f      .L802B695C
/* E2662C 802B68CC 00000000 */   nop
/* E26630 802B68D0 4602203C */  c.lt.s    $f4, $f2
/* E26634 802B68D4 00000000 */  nop
/* E26638 802B68D8 45000020 */  bc1f      .L802B695C
/* E2663C 802B68DC 3C02FFFD */   lui      $v0, 0xfffd
/* E26640 802B68E0 3442FFFF */  ori       $v0, $v0, 0xffff
/* E26644 802B68E4 3C040001 */  lui       $a0, 1
/* E26648 802B68E8 34840002 */  ori       $a0, $a0, 2
/* E2664C 802B68EC 8E230000 */  lw        $v1, ($s1)
/* E26650 802B68F0 24050002 */  addiu     $a1, $zero, 2
/* E26654 802B68F4 080ADA52 */  j         .L802B6948
/* E26658 802B68F8 E62200A8 */   swc1     $f2, 0xa8($s1)
.L802B68FC:
/* E2665C 802B68FC 44802000 */  mtc1      $zero, $f4
/* E26660 802B6900 00000000 */  nop
/* E26664 802B6904 4604003E */  c.le.s    $f0, $f4
/* E26668 802B6908 00000000 */  nop
/* E2666C 802B690C 45000013 */  bc1f      .L802B695C
/* E26670 802B6910 00000000 */   nop
/* E26674 802B6914 3C0142B4 */  lui       $at, 0x42b4
/* E26678 802B6918 44810000 */  mtc1      $at, $f0
/* E2667C 802B691C 00000000 */  nop
/* E26680 802B6920 4600103C */  c.lt.s    $f2, $f0
/* E26684 802B6924 00000000 */  nop
/* E26688 802B6928 4500000C */  bc1f      .L802B695C
/* E2668C 802B692C 3C02FFFD */   lui      $v0, 0xfffd
/* E26690 802B6930 3442FFFF */  ori       $v0, $v0, 0xffff
/* E26694 802B6934 3C040001 */  lui       $a0, 1
/* E26698 802B6938 34840002 */  ori       $a0, $a0, 2
/* E2669C 802B693C 8E230000 */  lw        $v1, ($s1)
/* E266A0 802B6940 24050002 */  addiu     $a1, $zero, 2
/* E266A4 802B6944 E62400A8 */  swc1      $f4, 0xa8($s1)
.L802B6948:
/* E266A8 802B6948 A6250008 */  sh        $a1, 8($s1)
/* E266AC 802B694C A22500B6 */  sb        $a1, 0xb6($s1)
/* E266B0 802B6950 00621824 */  and       $v1, $v1, $v0
/* E266B4 802B6954 0C037FBF */  jal       suggest_player_anim_clearUnkFlag
/* E266B8 802B6958 AE230000 */   sw       $v1, ($s1)
.L802B695C:
/* E266BC 802B695C C62C00A8 */  lwc1      $f12, 0xa8($s1)
.L802B6960:
/* E266C0 802B6960 0C00A6C9 */  jal       clamp_angle
/* E266C4 802B6964 00000000 */   nop
/* E266C8 802B6968 E62000A8 */  swc1      $f0, 0xa8($s1)
.L802B696C:
/* E266CC 802B696C 8FBF0030 */  lw        $ra, 0x30($sp)
/* E266D0 802B6970 8FB5002C */  lw        $s5, 0x2c($sp)
/* E266D4 802B6974 8FB40028 */  lw        $s4, 0x28($sp)
/* E266D8 802B6978 8FB30024 */  lw        $s3, 0x24($sp)
/* E266DC 802B697C 8FB20020 */  lw        $s2, 0x20($sp)
/* E266E0 802B6980 8FB1001C */  lw        $s1, 0x1c($sp)
/* E266E4 802B6984 8FB00018 */  lw        $s0, 0x18($sp)
/* E266E8 802B6988 D7B80048 */  ldc1      $f24, 0x48($sp)
/* E266EC 802B698C D7B60040 */  ldc1      $f22, 0x40($sp)
/* E266F0 802B6990 D7B40038 */  ldc1      $f20, 0x38($sp)
/* E266F4 802B6994 03E00008 */  jr        $ra
/* E266F8 802B6998 27BD0050 */   addiu    $sp, $sp, 0x50
/* E266FC 802B699C 00000000 */  nop
