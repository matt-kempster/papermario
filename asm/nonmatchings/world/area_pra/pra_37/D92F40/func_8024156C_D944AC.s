.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024156C_D944AC
/* D944AC 8024156C 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* D944B0 80241570 AFB20038 */  sw        $s2, 0x38($sp)
/* D944B4 80241574 0080902D */  daddu     $s2, $a0, $zero
/* D944B8 80241578 AFBF0048 */  sw        $ra, 0x48($sp)
/* D944BC 8024157C AFB50044 */  sw        $s5, 0x44($sp)
/* D944C0 80241580 AFB40040 */  sw        $s4, 0x40($sp)
/* D944C4 80241584 AFB3003C */  sw        $s3, 0x3c($sp)
/* D944C8 80241588 AFB10034 */  sw        $s1, 0x34($sp)
/* D944CC 8024158C AFB00030 */  sw        $s0, 0x30($sp)
/* D944D0 80241590 8E510148 */  lw        $s1, 0x148($s2)
/* D944D4 80241594 86240008 */  lh        $a0, 8($s1)
/* D944D8 80241598 0C00EABB */  jal       get_npc_unsafe
/* D944DC 8024159C 00A0802D */   daddu    $s0, $a1, $zero
/* D944E0 802415A0 8E43000C */  lw        $v1, 0xc($s2)
/* D944E4 802415A4 0240202D */  daddu     $a0, $s2, $zero
/* D944E8 802415A8 8C650000 */  lw        $a1, ($v1)
/* D944EC 802415AC 0C0B1EAF */  jal       get_variable
/* D944F0 802415B0 0040A82D */   daddu    $s5, $v0, $zero
/* D944F4 802415B4 AFA00010 */  sw        $zero, 0x10($sp)
/* D944F8 802415B8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* D944FC 802415BC 8C630030 */  lw        $v1, 0x30($v1)
/* D94500 802415C0 AFA30014 */  sw        $v1, 0x14($sp)
/* D94504 802415C4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* D94508 802415C8 8C63001C */  lw        $v1, 0x1c($v1)
/* D9450C 802415CC AFA30018 */  sw        $v1, 0x18($sp)
/* D94510 802415D0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* D94514 802415D4 8C630024 */  lw        $v1, 0x24($v1)
/* D94518 802415D8 AFA3001C */  sw        $v1, 0x1c($sp)
/* D9451C 802415DC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* D94520 802415E0 8C630028 */  lw        $v1, 0x28($v1)
/* D94524 802415E4 27B40010 */  addiu     $s4, $sp, 0x10
/* D94528 802415E8 AFA30020 */  sw        $v1, 0x20($sp)
/* D9452C 802415EC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* D94530 802415F0 3C014282 */  lui       $at, 0x4282
/* D94534 802415F4 44810000 */  mtc1      $at, $f0
/* D94538 802415F8 8C63002C */  lw        $v1, 0x2c($v1)
/* D9453C 802415FC 0040982D */  daddu     $s3, $v0, $zero
/* D94540 80241600 E7A00028 */  swc1      $f0, 0x28($sp)
/* D94544 80241604 A7A0002C */  sh        $zero, 0x2c($sp)
/* D94548 80241608 16000005 */  bnez      $s0, .L80241620
/* D9454C 8024160C AFA30024 */   sw       $v1, 0x24($sp)
/* D94550 80241610 8E2200B0 */  lw        $v0, 0xb0($s1)
/* D94554 80241614 30420004 */  andi      $v0, $v0, 4
/* D94558 80241618 10400020 */  beqz      $v0, .L8024169C
/* D9455C 8024161C 00000000 */   nop
.L80241620:
/* D94560 80241620 2404F7FF */  addiu     $a0, $zero, -0x801
/* D94564 80241624 AE400070 */  sw        $zero, 0x70($s2)
/* D94568 80241628 A6A0008E */  sh        $zero, 0x8e($s5)
/* D9456C 8024162C 8E2200CC */  lw        $v0, 0xcc($s1)
/* D94570 80241630 8EA30000 */  lw        $v1, ($s5)
/* D94574 80241634 8C420000 */  lw        $v0, ($v0)
/* D94578 80241638 00641824 */  and       $v1, $v1, $a0
/* D9457C 8024163C AEA30000 */  sw        $v1, ($s5)
/* D94580 80241640 AEA20028 */  sw        $v0, 0x28($s5)
/* D94584 80241644 8E2200D0 */  lw        $v0, 0xd0($s1)
/* D94588 80241648 8C420034 */  lw        $v0, 0x34($v0)
/* D9458C 8024164C 54400005 */  bnel      $v0, $zero, .L80241664
/* D94590 80241650 2402FDFF */   addiu    $v0, $zero, -0x201
/* D94594 80241654 34620200 */  ori       $v0, $v1, 0x200
/* D94598 80241658 2403FFF7 */  addiu     $v1, $zero, -9
/* D9459C 8024165C 0809059B */  j         .L8024166C
/* D945A0 80241660 00431024 */   and      $v0, $v0, $v1
.L80241664:
/* D945A4 80241664 00621024 */  and       $v0, $v1, $v0
/* D945A8 80241668 34420008 */  ori       $v0, $v0, 8
.L8024166C:
/* D945AC 8024166C AEA20000 */  sw        $v0, ($s5)
/* D945B0 80241670 8E2200B0 */  lw        $v0, 0xb0($s1)
/* D945B4 80241674 30420004 */  andi      $v0, $v0, 4
/* D945B8 80241678 10400007 */  beqz      $v0, .L80241698
/* D945BC 8024167C 24020063 */   addiu    $v0, $zero, 0x63
/* D945C0 80241680 AE420070 */  sw        $v0, 0x70($s2)
/* D945C4 80241684 AE400074 */  sw        $zero, 0x74($s2)
/* D945C8 80241688 8E2200B0 */  lw        $v0, 0xb0($s1)
/* D945CC 8024168C 2403FFFB */  addiu     $v1, $zero, -5
/* D945D0 80241690 00431024 */  and       $v0, $v0, $v1
/* D945D4 80241694 AE2200B0 */  sw        $v0, 0xb0($s1)
.L80241698:
/* D945D8 80241698 AE20006C */  sw        $zero, 0x6c($s1)
.L8024169C:
/* D945DC 8024169C 8E420070 */  lw        $v0, 0x70($s2)
/* D945E0 802416A0 2842001E */  slti      $v0, $v0, 0x1e
/* D945E4 802416A4 10400009 */  beqz      $v0, .L802416CC
/* D945E8 802416A8 00000000 */   nop
/* D945EC 802416AC 8E22006C */  lw        $v0, 0x6c($s1)
/* D945F0 802416B0 14400006 */  bnez      $v0, .L802416CC
/* D945F4 802416B4 00000000 */   nop
/* D945F8 802416B8 0C090456 */  jal       func_80241158_D94098
/* D945FC 802416BC 0240202D */   daddu    $a0, $s2, $zero
/* D94600 802416C0 10400002 */  beqz      $v0, .L802416CC
/* D94604 802416C4 2402001E */   addiu    $v0, $zero, 0x1e
/* D94608 802416C8 AE420070 */  sw        $v0, 0x70($s2)
.L802416CC:
/* D9460C 802416CC 8E430070 */  lw        $v1, 0x70($s2)
/* D94610 802416D0 2C620064 */  sltiu     $v0, $v1, 0x64
/* D94614 802416D4 10400048 */  beqz      $v0, .L802417F8
/* D94618 802416D8 00031080 */   sll      $v0, $v1, 2
/* D9461C 802416DC 3C018024 */  lui       $at, %hi(D_80242518)
/* D94620 802416E0 00220821 */  addu      $at, $at, $v0
/* D94624 802416E4 8C222518 */  lw        $v0, %lo(D_80242518)($at)
/* D94628 802416E8 00400008 */  jr        $v0
/* D9462C 802416EC 00000000 */   nop
/* D94630 802416F0 0240202D */  daddu     $a0, $s2, $zero
/* D94634 802416F4 0260282D */  daddu     $a1, $s3, $zero
/* D94638 802416F8 0C012568 */  jal       func_800495A0
/* D9463C 802416FC 0280302D */   daddu    $a2, $s4, $zero
/* D94640 80241700 0240202D */  daddu     $a0, $s2, $zero
/* D94644 80241704 0260282D */  daddu     $a1, $s3, $zero
/* D94648 80241708 0C0125AE */  jal       func_800496B8
/* D9464C 8024170C 0280302D */   daddu    $a2, $s4, $zero
/* D94650 80241710 080905FE */  j         .L802417F8
/* D94654 80241714 00000000 */   nop
/* D94658 80241718 0240202D */  daddu     $a0, $s2, $zero
/* D9465C 8024171C 0260282D */  daddu     $a1, $s3, $zero
/* D94660 80241720 0C0126D1 */  jal       func_80049B44
/* D94664 80241724 0280302D */   daddu    $a2, $s4, $zero
/* D94668 80241728 0240202D */  daddu     $a0, $s2, $zero
/* D9466C 8024172C 0260282D */  daddu     $a1, $s3, $zero
/* D94670 80241730 0C012701 */  jal       func_80049C04
/* D94674 80241734 0280302D */   daddu    $a2, $s4, $zero
/* D94678 80241738 080905FE */  j         .L802417F8
/* D9467C 8024173C 00000000 */   nop
/* D94680 80241740 0240202D */  daddu     $a0, $s2, $zero
/* D94684 80241744 0260282D */  daddu     $a1, $s3, $zero
/* D94688 80241748 0C01278F */  jal       func_80049E3C
/* D9468C 8024174C 0280302D */   daddu    $a2, $s4, $zero
/* D94690 80241750 0240202D */  daddu     $a0, $s2, $zero
/* D94694 80241754 0260282D */  daddu     $a1, $s3, $zero
/* D94698 80241758 0C0127B3 */  jal       func_80049ECC
/* D9469C 8024175C 0280302D */   daddu    $a2, $s4, $zero
/* D946A0 80241760 080905FE */  j         .L802417F8
/* D946A4 80241764 00000000 */   nop
/* D946A8 80241768 0240202D */  daddu     $a0, $s2, $zero
/* D946AC 8024176C 0260282D */  daddu     $a1, $s3, $zero
/* D946B0 80241770 0C0127DF */  jal       func_80049F7C
/* D946B4 80241774 0280302D */   daddu    $a2, $s4, $zero
/* D946B8 80241778 0240202D */  daddu     $a0, $s2, $zero
/* D946BC 8024177C 0260282D */  daddu     $a1, $s3, $zero
/* D946C0 80241780 0C012849 */  jal       func_8004A124
/* D946C4 80241784 0280302D */   daddu    $a2, $s4, $zero
/* D946C8 80241788 080905FE */  j         .L802417F8
/* D946CC 8024178C 00000000 */   nop
/* D946D0 80241790 0240202D */  daddu     $a0, $s2, $zero
/* D946D4 80241794 0260282D */  daddu     $a1, $s3, $zero
/* D946D8 80241798 0C0128FA */  jal       func_8004A3E8
/* D946DC 8024179C 0280302D */   daddu    $a2, $s4, $zero
/* D946E0 802417A0 080905FE */  j         .L802417F8
/* D946E4 802417A4 00000000 */   nop
/* D946E8 802417A8 0C0903D4 */  jal       pra_37_UnkNpcAIFunc6
/* D946EC 802417AC 0240202D */   daddu    $a0, $s2, $zero
/* D946F0 802417B0 0C0903EF */  jal       pra_37_UnkNpcAIFunc7
/* D946F4 802417B4 0240202D */   daddu    $a0, $s2, $zero
/* D946F8 802417B8 8E430070 */  lw        $v1, 0x70($s2)
/* D946FC 802417BC 24020020 */  addiu     $v0, $zero, 0x20
/* D94700 802417C0 1462000D */  bne       $v1, $v0, .L802417F8
/* D94704 802417C4 00000000 */   nop
/* D94708 802417C8 0C09040B */  jal       pra_37_UnkNpcAIFunc8
/* D9470C 802417CC 0240202D */   daddu    $a0, $s2, $zero
/* D94710 802417D0 8E430070 */  lw        $v1, 0x70($s2)
/* D94714 802417D4 24020021 */  addiu     $v0, $zero, 0x21
/* D94718 802417D8 14620007 */  bne       $v1, $v0, .L802417F8
/* D9471C 802417DC 00000000 */   nop
/* D94720 802417E0 0C090441 */  jal       pra_37_UnkNpcAIFunc5
/* D94724 802417E4 0240202D */   daddu    $a0, $s2, $zero
/* D94728 802417E8 080905FE */  j         .L802417F8
/* D9472C 802417EC 00000000 */   nop
/* D94730 802417F0 0C0129CF */  jal       func_8004A73C
/* D94734 802417F4 0240202D */   daddu    $a0, $s2, $zero
.L802417F8:
/* D94738 802417F8 8FBF0048 */  lw        $ra, 0x48($sp)
/* D9473C 802417FC 8FB50044 */  lw        $s5, 0x44($sp)
/* D94740 80241800 8FB40040 */  lw        $s4, 0x40($sp)
/* D94744 80241804 8FB3003C */  lw        $s3, 0x3c($sp)
/* D94748 80241808 8FB20038 */  lw        $s2, 0x38($sp)
/* D9474C 8024180C 8FB10034 */  lw        $s1, 0x34($sp)
/* D94750 80241810 8FB00030 */  lw        $s0, 0x30($sp)
/* D94754 80241814 0000102D */  daddu     $v0, $zero, $zero
/* D94758 80241818 03E00008 */  jr        $ra
/* D9475C 8024181C 27BD0050 */   addiu    $sp, $sp, 0x50
