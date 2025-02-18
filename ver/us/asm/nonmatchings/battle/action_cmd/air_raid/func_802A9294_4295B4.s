.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802A9294_4295B4
/* 4295B4 802A9294 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 4295B8 802A9298 AFB10014 */  sw        $s1, 0x14($sp)
/* 4295BC 802A929C 3C11802A */  lui       $s1, %hi(gActionCommandStatus)
/* 4295C0 802A92A0 2631FBE0 */  addiu     $s1, $s1, %lo(gActionCommandStatus)
/* 4295C4 802A92A4 AFB20018 */  sw        $s2, 0x18($sp)
/* 4295C8 802A92A8 3C12800E */  lui       $s2, %hi(gBattleStatus)
/* 4295CC 802A92AC 2652C070 */  addiu     $s2, $s2, %lo(gBattleStatus)
/* 4295D0 802A92B0 AFBF0020 */  sw        $ra, 0x20($sp)
/* 4295D4 802A92B4 AFB3001C */  sw        $s3, 0x1c($sp)
/* 4295D8 802A92B8 AFB00010 */  sw        $s0, 0x10($sp)
/* 4295DC 802A92BC 8623004C */  lh        $v1, 0x4c($s1)
/* 4295E0 802A92C0 8E5300DC */  lw        $s3, 0xdc($s2)
/* 4295E4 802A92C4 2C62000D */  sltiu     $v0, $v1, 0xd
/* 4295E8 802A92C8 10400159 */  beqz      $v0, L802A9830_429B50
/* 4295EC 802A92CC 00031080 */   sll      $v0, $v1, 2
/* 4295F0 802A92D0 3C01802B */  lui       $at, %hi(jtbl_802A99C0_429CE0)
/* 4295F4 802A92D4 00220821 */  addu      $at, $at, $v0
/* 4295F8 802A92D8 8C2299C0 */  lw        $v0, %lo(jtbl_802A99C0_429CE0)($at)
/* 4295FC 802A92DC 00400008 */  jr        $v0
/* 429600 802A92E0 00000000 */   nop
dlabel L802A92E4_429604
/* 429604 802A92E4 0C093EB1 */  jal       btl_set_popup_duration
/* 429608 802A92E8 24040063 */   addiu    $a0, $zero, 0x63
/* 42960C 802A92EC 8E300004 */  lw        $s0, 4($s1)
/* 429610 802A92F0 240500FF */  addiu     $a1, $zero, 0xff
/* 429614 802A92F4 0C0513AC */  jal       set_hud_element_alpha
/* 429618 802A92F8 0200202D */   daddu    $a0, $s0, $zero
/* 42961C 802A92FC 82220061 */  lb        $v0, 0x61($s1)
/* 429620 802A9300 10400003 */  beqz      $v0, .L802A9310
/* 429624 802A9304 0200202D */   daddu    $a0, $s0, $zero
/* 429628 802A9308 0C05128B */  jal       clear_hud_element_flags
/* 42962C 802A930C 24050002 */   addiu    $a1, $zero, 2
.L802A9310:
/* 429630 802A9310 8E300008 */  lw        $s0, 8($s1)
/* 429634 802A9314 240500FF */  addiu     $a1, $zero, 0xff
/* 429638 802A9318 0C0513AC */  jal       set_hud_element_alpha
/* 42963C 802A931C 0200202D */   daddu    $a0, $s0, $zero
/* 429640 802A9320 82220061 */  lb        $v0, 0x61($s1)
/* 429644 802A9324 10400003 */  beqz      $v0, .L802A9334
/* 429648 802A9328 0200202D */   daddu    $a0, $s0, $zero
/* 42964C 802A932C 0C05128B */  jal       clear_hud_element_flags
/* 429650 802A9330 24050002 */   addiu    $a1, $zero, 2
.L802A9334:
/* 429654 802A9334 24020001 */  addiu     $v0, $zero, 1
/* 429658 802A9338 080AA60C */  j         L802A9830_429B50
/* 42965C 802A933C A622004C */   sh       $v0, 0x4c($s1)
dlabel L802A9340_429660
/* 429660 802A9340 0C093EB1 */  jal       btl_set_popup_duration
/* 429664 802A9344 24040063 */   addiu    $a0, $zero, 0x63
/* 429668 802A9348 8622006C */  lh        $v0, 0x6c($s1)
/* 42966C 802A934C 9623006C */  lhu       $v1, 0x6c($s1)
/* 429670 802A9350 10400003 */  beqz      $v0, .L802A9360
/* 429674 802A9354 2462FFFF */   addiu    $v0, $v1, -1
/* 429678 802A9358 080AA60C */  j         L802A9830_429B50
/* 42967C 802A935C A622006C */   sh       $v0, 0x6c($s1)
.L802A9360:
/* 429680 802A9360 96220056 */  lhu       $v0, 0x56($s1)
/* 429684 802A9364 24420014 */  addiu     $v0, $v0, 0x14
/* 429688 802A9368 A6220056 */  sh        $v0, 0x56($s1)
/* 42968C 802A936C 00021400 */  sll       $v0, $v0, 0x10
/* 429690 802A9370 00021403 */  sra       $v0, $v0, 0x10
/* 429694 802A9374 28420033 */  slti      $v0, $v0, 0x33
/* 429698 802A9378 14400002 */  bnez      $v0, .L802A9384
/* 42969C 802A937C 24020032 */   addiu    $v0, $zero, 0x32
/* 4296A0 802A9380 A6220056 */  sh        $v0, 0x56($s1)
.L802A9384:
/* 4296A4 802A9384 8E240004 */  lw        $a0, 4($s1)
/* 4296A8 802A9388 86250056 */  lh        $a1, 0x56($s1)
/* 4296AC 802A938C 0C051261 */  jal       set_hud_element_render_pos
/* 4296B0 802A9390 86260058 */   lh       $a2, 0x58($s1)
/* 4296B4 802A9394 8E240008 */  lw        $a0, 8($s1)
/* 4296B8 802A9398 86260058 */  lh        $a2, 0x58($s1)
/* 4296BC 802A939C 86250056 */  lh        $a1, 0x56($s1)
/* 4296C0 802A93A0 0C051261 */  jal       set_hud_element_render_pos
/* 4296C4 802A93A4 24C6001C */   addiu    $a2, $a2, 0x1c
/* 4296C8 802A93A8 080AA60C */  j         L802A9830_429B50
/* 4296CC 802A93AC 00000000 */   nop
dlabel L802A93B0_4296D0
/* 4296D0 802A93B0 0C093EB1 */  jal       btl_set_popup_duration
/* 4296D4 802A93B4 24040063 */   addiu    $a0, $zero, 0x63
/* 4296D8 802A93B8 8622004E */  lh        $v0, 0x4e($s1)
/* 4296DC 802A93BC 9623004E */  lhu       $v1, 0x4e($s1)
/* 4296E0 802A93C0 10400003 */  beqz      $v0, .L802A93D0
/* 4296E4 802A93C4 2462FFFF */   addiu    $v0, $v1, -1
/* 4296E8 802A93C8 080AA60C */  j         L802A9830_429B50
/* 4296EC 802A93CC A622004E */   sh       $v0, 0x4e($s1)
.L802A93D0:
/* 4296F0 802A93D0 8E240004 */  lw        $a0, 4($s1)
/* 4296F4 802A93D4 3C058011 */  lui       $a1, %hi(HudScript_StickMashLeft)
/* 4296F8 802A93D8 24A58F30 */  addiu     $a1, $a1, %lo(HudScript_StickMashLeft)
/* 4296FC 802A93DC 0C0511FF */  jal       set_hud_element_anim
/* 429700 802A93E0 00000000 */   nop
/* 429704 802A93E4 3C048000 */  lui       $a0, 0x8000
/* 429708 802A93E8 34840041 */  ori       $a0, $a0, 0x41
/* 42970C 802A93EC 0000282D */  daddu     $a1, $zero, $zero
/* 429710 802A93F0 00A0302D */  daddu     $a2, $a1, $zero
/* 429714 802A93F4 96220052 */  lhu       $v0, 0x52($s1)
/* 429718 802A93F8 00A0382D */  daddu     $a3, $a1, $zero
/* 42971C 802A93FC A6200044 */  sh        $zero, 0x44($s1)
/* 429720 802A9400 A2400085 */  sb        $zero, 0x85($s2)
/* 429724 802A9404 A220005C */  sb        $zero, 0x5c($s1)
/* 429728 802A9408 0C0526AE */  jal       sfx_play_sound_with_params
/* 42972C 802A940C A6220054 */   sh       $v0, 0x54($s1)
/* 429730 802A9410 2402000B */  addiu     $v0, $zero, 0xb
/* 429734 802A9414 A622004C */  sh        $v0, 0x4c($s1)
dlabel L802A9418_429738
/* 429738 802A9418 0C093EB1 */  jal       btl_set_popup_duration
/* 42973C 802A941C 24040063 */   addiu    $a0, $zero, 0x63
/* 429740 802A9420 86220068 */  lh        $v0, 0x68($s1)
/* 429744 802A9424 1440005F */  bnez      $v0, .L802A95A4
/* 429748 802A9428 00000000 */   nop
/* 42974C 802A942C 82220080 */  lb        $v0, 0x80($s1)
/* 429750 802A9430 00021040 */  sll       $v0, $v0, 1
/* 429754 802A9434 02221021 */  addu      $v0, $s1, $v0
/* 429758 802A9438 84430074 */  lh        $v1, 0x74($v0)
/* 42975C 802A943C 86220044 */  lh        $v0, 0x44($s1)
/* 429760 802A9440 14600002 */  bnez      $v1, .L802A944C
/* 429764 802A9444 0043001A */   div      $zero, $v0, $v1
/* 429768 802A9448 0007000D */  break     7
.L802A944C:
/* 42976C 802A944C 2401FFFF */   addiu    $at, $zero, -1
/* 429770 802A9450 14610004 */  bne       $v1, $at, .L802A9464
/* 429774 802A9454 3C018000 */   lui      $at, 0x8000
/* 429778 802A9458 14410002 */  bne       $v0, $at, .L802A9464
/* 42977C 802A945C 00000000 */   nop
/* 429780 802A9460 0006000D */  break     6
.L802A9464:
/* 429784 802A9464 00001012 */   mflo     $v0
/* 429788 802A9468 3C036666 */  lui       $v1, 0x6666
/* 42978C 802A946C 34636667 */  ori       $v1, $v1, 0x6667
/* 429790 802A9470 00430018 */  mult      $v0, $v1
/* 429794 802A9474 000217C3 */  sra       $v0, $v0, 0x1f
/* 429798 802A9478 00001810 */  mfhi      $v1
/* 42979C 802A947C 000318C3 */  sra       $v1, $v1, 3
/* 4297A0 802A9480 00621823 */  subu      $v1, $v1, $v0
/* 4297A4 802A9484 00031880 */  sll       $v1, $v1, 2
/* 4297A8 802A9488 96220044 */  lhu       $v0, 0x44($s1)
/* 4297AC 802A948C 3C01802B */  lui       $at, %hi(D_802A9972_429C92)
/* 4297B0 802A9490 00230821 */  addu      $at, $at, $v1
/* 4297B4 802A9494 94239972 */  lhu       $v1, %lo(D_802A9972_429C92)($at)
/* 4297B8 802A9498 00431023 */  subu      $v0, $v0, $v1
/* 4297BC 802A949C A6220044 */  sh        $v0, 0x44($s1)
/* 4297C0 802A94A0 00021400 */  sll       $v0, $v0, 0x10
/* 4297C4 802A94A4 04420001 */  bltzl     $v0, .L802A94AC
/* 4297C8 802A94A8 A6200044 */   sh       $zero, 0x44($s1)
.L802A94AC:
/* 4297CC 802A94AC 86220068 */  lh        $v0, 0x68($s1)
/* 4297D0 802A94B0 1440003C */  bnez      $v0, .L802A95A4
/* 4297D4 802A94B4 3C040004 */   lui      $a0, 4
/* 4297D8 802A94B8 8E420210 */  lw        $v0, 0x210($s2)
/* 4297DC 802A94BC 00441024 */  and       $v0, $v0, $a0
/* 4297E0 802A94C0 10400005 */  beqz      $v0, .L802A94D8
/* 4297E4 802A94C4 24030001 */   addiu    $v1, $zero, 1
/* 4297E8 802A94C8 8E420210 */  lw        $v0, 0x210($s2)
/* 4297EC 802A94CC 00441024 */  and       $v0, $v0, $a0
/* 4297F0 802A94D0 1440001A */  bnez      $v0, .L802A953C
/* 4297F4 802A94D4 A223005C */   sb       $v1, 0x5c($s1)
.L802A94D8:
/* 4297F8 802A94D8 8222005C */  lb        $v0, 0x5c($s1)
/* 4297FC 802A94DC 10400017 */  beqz      $v0, .L802A953C
/* 429800 802A94E0 3C0451EB */   lui      $a0, 0x51eb
/* 429804 802A94E4 86220050 */  lh        $v0, 0x50($s1)
/* 429808 802A94E8 8E430434 */  lw        $v1, 0x434($s2)
/* 42980C 802A94EC 00021080 */  sll       $v0, $v0, 2
/* 429810 802A94F0 00431021 */  addu      $v0, $v0, $v1
/* 429814 802A94F4 8C430000 */  lw        $v1, ($v0)
/* 429818 802A94F8 3484851F */  ori       $a0, $a0, 0x851f
/* 42981C 802A94FC 00031040 */  sll       $v0, $v1, 1
/* 429820 802A9500 00431021 */  addu      $v0, $v0, $v1
/* 429824 802A9504 000210C0 */  sll       $v0, $v0, 3
/* 429828 802A9508 00431021 */  addu      $v0, $v0, $v1
/* 42982C 802A950C 00021900 */  sll       $v1, $v0, 4
/* 429830 802A9510 00431021 */  addu      $v0, $v0, $v1
/* 429834 802A9514 00021040 */  sll       $v0, $v0, 1
/* 429838 802A9518 00440018 */  mult      $v0, $a0
/* 42983C 802A951C A220005C */  sb        $zero, 0x5c($s1)
/* 429840 802A9520 000217C3 */  sra       $v0, $v0, 0x1f
/* 429844 802A9524 96230044 */  lhu       $v1, 0x44($s1)
/* 429848 802A9528 00004810 */  mfhi      $t1
/* 42984C 802A952C 00092143 */  sra       $a0, $t1, 5
/* 429850 802A9530 00822023 */  subu      $a0, $a0, $v0
/* 429854 802A9534 00641821 */  addu      $v1, $v1, $a0
/* 429858 802A9538 A6230044 */  sh        $v1, 0x44($s1)
.L802A953C:
/* 42985C 802A953C 8E420214 */  lw        $v0, 0x214($s2)
/* 429860 802A9540 3C030008 */  lui       $v1, 8
/* 429864 802A9544 00431024 */  and       $v0, $v0, $v1
/* 429868 802A9548 10400016 */  beqz      $v0, .L802A95A4
/* 42986C 802A954C 3C0451EB */   lui      $a0, 0x51eb
/* 429870 802A9550 86220050 */  lh        $v0, 0x50($s1)
/* 429874 802A9554 8E430434 */  lw        $v1, 0x434($s2)
/* 429878 802A9558 00021080 */  sll       $v0, $v0, 2
/* 42987C 802A955C 00431021 */  addu      $v0, $v0, $v1
/* 429880 802A9560 8C430000 */  lw        $v1, ($v0)
/* 429884 802A9564 3484851F */  ori       $a0, $a0, 0x851f
/* 429888 802A9568 00031040 */  sll       $v0, $v1, 1
/* 42988C 802A956C 00431021 */  addu      $v0, $v0, $v1
/* 429890 802A9570 000210C0 */  sll       $v0, $v0, 3
/* 429894 802A9574 00431021 */  addu      $v0, $v0, $v1
/* 429898 802A9578 00021900 */  sll       $v1, $v0, 4
/* 42989C 802A957C 00431021 */  addu      $v0, $v0, $v1
/* 4298A0 802A9580 00021040 */  sll       $v0, $v0, 1
/* 4298A4 802A9584 00440018 */  mult      $v0, $a0
/* 4298A8 802A9588 000217C3 */  sra       $v0, $v0, 0x1f
/* 4298AC 802A958C 96230044 */  lhu       $v1, 0x44($s1)
/* 4298B0 802A9590 00004810 */  mfhi      $t1
/* 4298B4 802A9594 00092143 */  sra       $a0, $t1, 5
/* 4298B8 802A9598 00822023 */  subu      $a0, $a0, $v0
/* 4298BC 802A959C 00641823 */  subu      $v1, $v1, $a0
/* 4298C0 802A95A0 A6230044 */  sh        $v1, 0x44($s1)
.L802A95A4:
/* 4298C4 802A95A4 86220044 */  lh        $v0, 0x44($s1)
/* 4298C8 802A95A8 04420001 */  bltzl     $v0, .L802A95B0
/* 4298CC 802A95AC A6200044 */   sh       $zero, 0x44($s1)
.L802A95B0:
/* 4298D0 802A95B0 86220044 */  lh        $v0, 0x44($s1)
/* 4298D4 802A95B4 28422711 */  slti      $v0, $v0, 0x2711
/* 4298D8 802A95B8 14400010 */  bnez      $v0, .L802A95FC
/* 4298DC 802A95BC 3C0451EB */   lui      $a0, 0x51eb
/* 4298E0 802A95C0 8E30000C */  lw        $s0, 0xc($s1)
/* 4298E4 802A95C4 86250056 */  lh        $a1, 0x56($s1)
/* 4298E8 802A95C8 86260058 */  lh        $a2, 0x58($s1)
/* 4298EC 802A95CC 24022710 */  addiu     $v0, $zero, 0x2710
/* 4298F0 802A95D0 A6220044 */  sh        $v0, 0x44($s1)
/* 4298F4 802A95D4 24020001 */  addiu     $v0, $zero, 1
/* 4298F8 802A95D8 A6220068 */  sh        $v0, 0x68($s1)
/* 4298FC 802A95DC 0200202D */  daddu     $a0, $s0, $zero
/* 429900 802A95E0 24A50032 */  addiu     $a1, $a1, 0x32
/* 429904 802A95E4 0C051261 */  jal       set_hud_element_render_pos
/* 429908 802A95E8 24C6001C */   addiu    $a2, $a2, 0x1c
/* 42990C 802A95EC 0200202D */  daddu     $a0, $s0, $zero
/* 429910 802A95F0 0C05128B */  jal       clear_hud_element_flags
/* 429914 802A95F4 24050002 */   addiu    $a1, $zero, 2
/* 429918 802A95F8 3C0451EB */  lui       $a0, 0x51eb
.L802A95FC:
/* 42991C 802A95FC 3484851F */  ori       $a0, $a0, 0x851f
/* 429920 802A9600 96230044 */  lhu       $v1, 0x44($s1)
/* 429924 802A9604 0000282D */  daddu     $a1, $zero, $zero
/* 429928 802A9608 00031C00 */  sll       $v1, $v1, 0x10
/* 42992C 802A960C 00031403 */  sra       $v0, $v1, 0x10
/* 429930 802A9610 00440018 */  mult      $v0, $a0
/* 429934 802A9614 00A0302D */  daddu     $a2, $a1, $zero
/* 429938 802A9618 3C048000 */  lui       $a0, 0x8000
/* 42993C 802A961C 34840041 */  ori       $a0, $a0, 0x41
/* 429940 802A9620 00031FC3 */  sra       $v1, $v1, 0x1f
/* 429944 802A9624 00004810 */  mfhi      $t1
/* 429948 802A9628 00094143 */  sra       $t0, $t1, 5
/* 42994C 802A962C 01034023 */  subu      $t0, $t0, $v1
/* 429950 802A9630 00081600 */  sll       $v0, $t0, 0x18
/* 429954 802A9634 00021603 */  sra       $v0, $v0, 0x18
/* 429958 802A9638 00023840 */  sll       $a3, $v0, 1
/* 42995C 802A963C 00E23821 */  addu      $a3, $a3, $v0
/* 429960 802A9640 00073880 */  sll       $a3, $a3, 2
/* 429964 802A9644 0C0526F9 */  jal       sfx_adjust_env_sound_params
/* 429968 802A9648 A2480084 */   sb       $t0, 0x84($s2)
/* 42996C 802A964C 8E620008 */  lw        $v0, 8($s3)
/* 429970 802A9650 90430006 */  lbu       $v1, 6($v0)
/* 429974 802A9654 24020001 */  addiu     $v0, $zero, 1
/* 429978 802A9658 10620019 */  beq       $v1, $v0, .L802A96C0
/* 42997C 802A965C 28620002 */   slti     $v0, $v1, 2
/* 429980 802A9660 10400005 */  beqz      $v0, .L802A9678
/* 429984 802A9664 24020002 */   addiu    $v0, $zero, 2
/* 429988 802A9668 10600007 */  beqz      $v1, .L802A9688
/* 42998C 802A966C 00000000 */   nop
/* 429990 802A9670 080AA5D7 */  j         .L802A975C
/* 429994 802A9674 00000000 */   nop
.L802A9678:
/* 429998 802A9678 1062001F */  beq       $v1, $v0, .L802A96F8
/* 42999C 802A967C 00000000 */   nop
/* 4299A0 802A9680 080AA5D7 */  j         .L802A975C
/* 4299A4 802A9684 00000000 */   nop
.L802A9688:
/* 4299A8 802A9688 82420085 */  lb        $v0, 0x85($s2)
/* 4299AC 802A968C 82430084 */  lb        $v1, 0x84($s2)
/* 4299B0 802A9690 00021080 */  sll       $v0, $v0, 2
/* 4299B4 802A9694 3C01802B */  lui       $at, %hi(D_802A9984_429CA4)
/* 4299B8 802A9698 00220821 */  addu      $at, $at, $v0
/* 4299BC 802A969C 8C229984 */  lw        $v0, %lo(D_802A9984_429CA4)($at)
/* 4299C0 802A96A0 3C05802B */  lui       $a1, %hi(D_802A9984_429CA4)
/* 4299C4 802A96A4 24A59984 */  addiu     $a1, $a1, %lo(D_802A9984_429CA4)
/* 4299C8 802A96A8 0062182A */  slt       $v1, $v1, $v0
/* 4299CC 802A96AC 92420085 */  lbu       $v0, 0x85($s2)
/* 4299D0 802A96B0 1460001E */  bnez      $v1, .L802A972C
/* 4299D4 802A96B4 24420001 */   addiu    $v0, $v0, 1
/* 4299D8 802A96B8 080AA5CB */  j         .L802A972C
/* 4299DC 802A96BC A2420085 */   sb       $v0, 0x85($s2)
.L802A96C0:
/* 4299E0 802A96C0 82420085 */  lb        $v0, 0x85($s2)
/* 4299E4 802A96C4 82430084 */  lb        $v1, 0x84($s2)
/* 4299E8 802A96C8 00021080 */  sll       $v0, $v0, 2
/* 4299EC 802A96CC 3C01802B */  lui       $at, %hi(D_802A9994_429CB4)
/* 4299F0 802A96D0 00220821 */  addu      $at, $at, $v0
/* 4299F4 802A96D4 8C229994 */  lw        $v0, %lo(D_802A9994_429CB4)($at)
/* 4299F8 802A96D8 3C05802B */  lui       $a1, %hi(D_802A9994_429CB4)
/* 4299FC 802A96DC 24A59994 */  addiu     $a1, $a1, %lo(D_802A9994_429CB4)
/* 429A00 802A96E0 0062182A */  slt       $v1, $v1, $v0
/* 429A04 802A96E4 92420085 */  lbu       $v0, 0x85($s2)
/* 429A08 802A96E8 14600010 */  bnez      $v1, .L802A972C
/* 429A0C 802A96EC 24420001 */   addiu    $v0, $v0, 1
/* 429A10 802A96F0 080AA5CB */  j         .L802A972C
/* 429A14 802A96F4 A2420085 */   sb       $v0, 0x85($s2)
.L802A96F8:
/* 429A18 802A96F8 82420085 */  lb        $v0, 0x85($s2)
/* 429A1C 802A96FC 82430084 */  lb        $v1, 0x84($s2)
/* 429A20 802A9700 00021080 */  sll       $v0, $v0, 2
/* 429A24 802A9704 3C01802B */  lui       $at, %hi(D_802A99A8_429CC8)
/* 429A28 802A9708 00220821 */  addu      $at, $at, $v0
/* 429A2C 802A970C 8C2299A8 */  lw        $v0, %lo(D_802A99A8_429CC8)($at)
/* 429A30 802A9710 3C05802B */  lui       $a1, %hi(D_802A99A8_429CC8)
/* 429A34 802A9714 24A599A8 */  addiu     $a1, $a1, %lo(D_802A99A8_429CC8)
/* 429A38 802A9718 0062182A */  slt       $v1, $v1, $v0
/* 429A3C 802A971C 92420085 */  lbu       $v0, 0x85($s2)
/* 429A40 802A9720 14600002 */  bnez      $v1, .L802A972C
/* 429A44 802A9724 24420001 */   addiu    $v0, $v0, 1
/* 429A48 802A9728 A2420085 */  sb        $v0, 0x85($s2)
.L802A972C:
/* 429A4C 802A972C 82420085 */  lb        $v0, 0x85($s2)
/* 429A50 802A9730 92440085 */  lbu       $a0, 0x85($s2)
/* 429A54 802A9734 18400009 */  blez      $v0, .L802A975C
/* 429A58 802A9738 2442FFFF */   addiu    $v0, $v0, -1
/* 429A5C 802A973C 00021080 */  sll       $v0, $v0, 2
/* 429A60 802A9740 00451021 */  addu      $v0, $v0, $a1
/* 429A64 802A9744 82430084 */  lb        $v1, 0x84($s2)
/* 429A68 802A9748 8C420000 */  lw        $v0, ($v0)
/* 429A6C 802A974C 0062182A */  slt       $v1, $v1, $v0
/* 429A70 802A9750 10600002 */  beqz      $v1, .L802A975C
/* 429A74 802A9754 2482FFFF */   addiu    $v0, $a0, -1
/* 429A78 802A9758 A2420085 */  sb        $v0, 0x85($s2)
.L802A975C:
/* 429A7C 802A975C 86220054 */  lh        $v0, 0x54($s1)
/* 429A80 802A9760 96230054 */  lhu       $v1, 0x54($s1)
/* 429A84 802A9764 1440002E */  bnez      $v0, .L802A9820
/* 429A88 802A9768 2462FFFF */   addiu    $v0, $v1, -1
/* 429A8C 802A976C 96220044 */  lhu       $v0, 0x44($s1)
/* 429A90 802A9770 00021C00 */  sll       $v1, $v0, 0x10
/* 429A94 802A9774 00032403 */  sra       $a0, $v1, 0x10
/* 429A98 802A9778 14800003 */  bnez      $a0, .L802A9788
/* 429A9C 802A977C 3C0251EB */   lui      $v0, 0x51eb
/* 429AA0 802A9780 080AA5E8 */  j         .L802A97A0
/* 429AA4 802A9784 2402FFFF */   addiu    $v0, $zero, -1
.L802A9788:
/* 429AA8 802A9788 3442851F */  ori       $v0, $v0, 0x851f
/* 429AAC 802A978C 00820018 */  mult      $a0, $v0
/* 429AB0 802A9790 00031FC3 */  sra       $v1, $v1, 0x1f
/* 429AB4 802A9794 00004810 */  mfhi      $t1
/* 429AB8 802A9798 00091143 */  sra       $v0, $t1, 5
/* 429ABC 802A979C 00431023 */  subu      $v0, $v0, $v1
.L802A97A0:
/* 429AC0 802A97A0 A2420081 */  sb        $v0, 0x81($s2)
/* 429AC4 802A97A4 82220080 */  lb        $v0, 0x80($s1)
/* 429AC8 802A97A8 2442FFFF */  addiu     $v0, $v0, -1
/* 429ACC 802A97AC 00021040 */  sll       $v0, $v0, 1
/* 429AD0 802A97B0 02221021 */  addu      $v0, $s1, $v0
/* 429AD4 802A97B4 84430074 */  lh        $v1, 0x74($v0)
/* 429AD8 802A97B8 82420081 */  lb        $v0, 0x81($s2)
/* 429ADC 802A97BC 0062102A */  slt       $v0, $v1, $v0
/* 429AE0 802A97C0 14400002 */  bnez      $v0, .L802A97CC
/* 429AE4 802A97C4 24020001 */   addiu    $v0, $zero, 1
/* 429AE8 802A97C8 2402FFFE */  addiu     $v0, $zero, -2
.L802A97CC:
/* 429AEC 802A97CC A2420086 */  sb        $v0, 0x86($s2)
/* 429AF0 802A97D0 82430081 */  lb        $v1, 0x81($s2)
/* 429AF4 802A97D4 24020064 */  addiu     $v0, $zero, 0x64
/* 429AF8 802A97D8 14620003 */  bne       $v1, $v0, .L802A97E8
/* 429AFC 802A97DC 00000000 */   nop
/* 429B00 802A97E0 0C09A458 */  jal       func_80269160
/* 429B04 802A97E4 00000000 */   nop
.L802A97E8:
/* 429B08 802A97E8 0C093EB1 */  jal       btl_set_popup_duration
/* 429B0C 802A97EC 0000202D */   daddu    $a0, $zero, $zero
/* 429B10 802A97F0 3C048000 */  lui       $a0, 0x8000
/* 429B14 802A97F4 0C05271B */  jal       sfx_stop_sound
/* 429B18 802A97F8 34840041 */   ori      $a0, $a0, 0x41
/* 429B1C 802A97FC 24020005 */  addiu     $v0, $zero, 5
/* 429B20 802A9800 A6220054 */  sh        $v0, 0x54($s1)
/* 429B24 802A9804 2402000C */  addiu     $v0, $zero, 0xc
/* 429B28 802A9808 080AA60C */  j         L802A9830_429B50
/* 429B2C 802A980C A622004C */   sh       $v0, 0x4c($s1)
dlabel L802A9810_429B30
/* 429B30 802A9810 86220054 */  lh        $v0, 0x54($s1)
/* 429B34 802A9814 96230054 */  lhu       $v1, 0x54($s1)
/* 429B38 802A9818 10400003 */  beqz      $v0, .L802A9828
/* 429B3C 802A981C 2462FFFF */   addiu    $v0, $v1, -1
.L802A9820:
/* 429B40 802A9820 080AA60C */  j         L802A9830_429B50
/* 429B44 802A9824 A6220054 */   sh       $v0, 0x54($s1)
.L802A9828:
/* 429B48 802A9828 0C09A327 */  jal       func_80268C9C
/* 429B4C 802A982C 00000000 */   nop
dlabel L802A9830_429B50
/* 429B50 802A9830 8FBF0020 */  lw        $ra, 0x20($sp)
/* 429B54 802A9834 8FB3001C */  lw        $s3, 0x1c($sp)
/* 429B58 802A9838 8FB20018 */  lw        $s2, 0x18($sp)
/* 429B5C 802A983C 8FB10014 */  lw        $s1, 0x14($sp)
/* 429B60 802A9840 8FB00010 */  lw        $s0, 0x10($sp)
/* 429B64 802A9844 03E00008 */  jr        $ra
/* 429B68 802A9848 27BD0028 */   addiu    $sp, $sp, 0x28
