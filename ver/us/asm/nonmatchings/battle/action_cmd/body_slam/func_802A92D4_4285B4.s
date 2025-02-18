.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802A92D4_4285B4
/* 4285B4 802A92D4 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 4285B8 802A92D8 AFB10014 */  sw        $s1, 0x14($sp)
/* 4285BC 802A92DC 3C11802A */  lui       $s1, %hi(gActionCommandStatus)
/* 4285C0 802A92E0 2631FBE0 */  addiu     $s1, $s1, %lo(gActionCommandStatus)
/* 4285C4 802A92E4 AFBF0018 */  sw        $ra, 0x18($sp)
/* 4285C8 802A92E8 AFB00010 */  sw        $s0, 0x10($sp)
/* 4285CC 802A92EC 8623004C */  lh        $v1, 0x4c($s1)
/* 4285D0 802A92F0 3C10800E */  lui       $s0, %hi(gBattleStatus)
/* 4285D4 802A92F4 2610C070 */  addiu     $s0, $s0, %lo(gBattleStatus)
/* 4285D8 802A92F8 2C62000D */  sltiu     $v0, $v1, 0xd
/* 4285DC 802A92FC 104000D4 */  beqz      $v0, L802A9650_428930
/* 4285E0 802A9300 00031080 */   sll      $v0, $v1, 2
/* 4285E4 802A9304 3C01802B */  lui       $at, %hi(jtbl_802A9750_428A30)
/* 4285E8 802A9308 00220821 */  addu      $at, $at, $v0
/* 4285EC 802A930C 8C229750 */  lw        $v0, %lo(jtbl_802A9750_428A30)($at)
/* 4285F0 802A9310 00400008 */  jr        $v0
/* 4285F4 802A9314 00000000 */   nop
dlabel L802A9318_4285F8
/* 4285F8 802A9318 0C093EB1 */  jal       btl_set_popup_duration
/* 4285FC 802A931C 24040063 */   addiu    $a0, $zero, 0x63
/* 428600 802A9320 8E300004 */  lw        $s0, 4($s1)
/* 428604 802A9324 240500FF */  addiu     $a1, $zero, 0xff
/* 428608 802A9328 0C0513AC */  jal       set_hud_element_alpha
/* 42860C 802A932C 0200202D */   daddu    $a0, $s0, $zero
/* 428610 802A9330 82220061 */  lb        $v0, 0x61($s1)
/* 428614 802A9334 10400003 */  beqz      $v0, .L802A9344
/* 428618 802A9338 0200202D */   daddu    $a0, $s0, $zero
/* 42861C 802A933C 0C05128B */  jal       clear_hud_element_flags
/* 428620 802A9340 24050002 */   addiu    $a1, $zero, 2
.L802A9344:
/* 428624 802A9344 8E300008 */  lw        $s0, 8($s1)
/* 428628 802A9348 240500FF */  addiu     $a1, $zero, 0xff
/* 42862C 802A934C 0C0513AC */  jal       set_hud_element_alpha
/* 428630 802A9350 0200202D */   daddu    $a0, $s0, $zero
/* 428634 802A9354 82220061 */  lb        $v0, 0x61($s1)
/* 428638 802A9358 10400003 */  beqz      $v0, .L802A9368
/* 42863C 802A935C 0200202D */   daddu    $a0, $s0, $zero
/* 428640 802A9360 0C05128B */  jal       clear_hud_element_flags
/* 428644 802A9364 24050002 */   addiu    $a1, $zero, 2
.L802A9368:
/* 428648 802A9368 8E30000C */  lw        $s0, 0xc($s1)
/* 42864C 802A936C 240500FF */  addiu     $a1, $zero, 0xff
/* 428650 802A9370 0C0513AC */  jal       set_hud_element_alpha
/* 428654 802A9374 0200202D */   daddu    $a0, $s0, $zero
/* 428658 802A9378 82220061 */  lb        $v0, 0x61($s1)
/* 42865C 802A937C 10400003 */  beqz      $v0, .L802A938C
/* 428660 802A9380 0200202D */   daddu    $a0, $s0, $zero
/* 428664 802A9384 0C05128B */  jal       clear_hud_element_flags
/* 428668 802A9388 24050002 */   addiu    $a1, $zero, 2
.L802A938C:
/* 42866C 802A938C 8E300010 */  lw        $s0, 0x10($s1)
/* 428670 802A9390 240500FF */  addiu     $a1, $zero, 0xff
/* 428674 802A9394 0C0513AC */  jal       set_hud_element_alpha
/* 428678 802A9398 0200202D */   daddu    $a0, $s0, $zero
/* 42867C 802A939C 82220061 */  lb        $v0, 0x61($s1)
/* 428680 802A93A0 10400003 */  beqz      $v0, .L802A93B0
/* 428684 802A93A4 0200202D */   daddu    $a0, $s0, $zero
/* 428688 802A93A8 0C05128B */  jal       clear_hud_element_flags
/* 42868C 802A93AC 24050002 */   addiu    $a1, $zero, 2
.L802A93B0:
/* 428690 802A93B0 24020001 */  addiu     $v0, $zero, 1
/* 428694 802A93B4 080AA594 */  j         L802A9650_428930
/* 428698 802A93B8 A622004C */   sh       $v0, 0x4c($s1)
dlabel L802A93BC_42869C
/* 42869C 802A93BC 0C093EB1 */  jal       btl_set_popup_duration
/* 4286A0 802A93C0 24040063 */   addiu    $a0, $zero, 0x63
/* 4286A4 802A93C4 96220056 */  lhu       $v0, 0x56($s1)
/* 4286A8 802A93C8 24420014 */  addiu     $v0, $v0, 0x14
/* 4286AC 802A93CC A6220056 */  sh        $v0, 0x56($s1)
/* 4286B0 802A93D0 00021400 */  sll       $v0, $v0, 0x10
/* 4286B4 802A93D4 00021403 */  sra       $v0, $v0, 0x10
/* 4286B8 802A93D8 28420033 */  slti      $v0, $v0, 0x33
/* 4286BC 802A93DC 14400002 */  bnez      $v0, .L802A93E8
/* 4286C0 802A93E0 24020032 */   addiu    $v0, $zero, 0x32
/* 4286C4 802A93E4 A6220056 */  sh        $v0, 0x56($s1)
.L802A93E8:
/* 4286C8 802A93E8 8E240004 */  lw        $a0, 4($s1)
/* 4286CC 802A93EC 86250056 */  lh        $a1, 0x56($s1)
/* 4286D0 802A93F0 0C051261 */  jal       set_hud_element_render_pos
/* 4286D4 802A93F4 86260058 */   lh       $a2, 0x58($s1)
/* 4286D8 802A93F8 8E240008 */  lw        $a0, 8($s1)
/* 4286DC 802A93FC 86260058 */  lh        $a2, 0x58($s1)
/* 4286E0 802A9400 86250056 */  lh        $a1, 0x56($s1)
/* 4286E4 802A9404 0C051261 */  jal       set_hud_element_render_pos
/* 4286E8 802A9408 24C6001C */   addiu    $a2, $a2, 0x1c
/* 4286EC 802A940C 8E24000C */  lw        $a0, 0xc($s1)
/* 4286F0 802A9410 86250056 */  lh        $a1, 0x56($s1)
/* 4286F4 802A9414 86260058 */  lh        $a2, 0x58($s1)
/* 4286F8 802A9418 24A50029 */  addiu     $a1, $a1, 0x29
/* 4286FC 802A941C 0C051261 */  jal       set_hud_element_render_pos
/* 428700 802A9420 24C60016 */   addiu    $a2, $a2, 0x16
/* 428704 802A9424 8E240010 */  lw        $a0, 0x10($s1)
/* 428708 802A9428 86250056 */  lh        $a1, 0x56($s1)
/* 42870C 802A942C 86260058 */  lh        $a2, 0x58($s1)
/* 428710 802A9430 24A5002A */  addiu     $a1, $a1, 0x2a
/* 428714 802A9434 0C051261 */  jal       set_hud_element_render_pos
/* 428718 802A9438 24C60018 */   addiu    $a2, $a2, 0x18
/* 42871C 802A943C 080AA594 */  j         L802A9650_428930
/* 428720 802A9440 00000000 */   nop
dlabel L802A9444_428724
/* 428724 802A9444 0C093EB1 */  jal       btl_set_popup_duration
/* 428728 802A9448 24040063 */   addiu    $a0, $zero, 0x63
/* 42872C 802A944C 8622004E */  lh        $v0, 0x4e($s1)
/* 428730 802A9450 9623004E */  lhu       $v1, 0x4e($s1)
/* 428734 802A9454 10400003 */  beqz      $v0, .L802A9464
/* 428738 802A9458 2462FFFF */   addiu    $v0, $v1, -1
/* 42873C 802A945C 080AA594 */  j         L802A9650_428930
/* 428740 802A9460 A622004E */   sh       $v0, 0x4e($s1)
.L802A9464:
/* 428744 802A9464 8E240004 */  lw        $a0, 4($s1)
/* 428748 802A9468 3C058011 */  lui       $a1, %hi(HudScript_AButtonDown)
/* 42874C 802A946C 24A58B54 */  addiu     $a1, $a1, %lo(HudScript_AButtonDown)
/* 428750 802A9470 0C0511FF */  jal       set_hud_element_anim
/* 428754 802A9474 00000000 */   nop
/* 428758 802A9478 3C048000 */  lui       $a0, 0x8000
/* 42875C 802A947C 34840041 */  ori       $a0, $a0, 0x41
/* 428760 802A9480 0000282D */  daddu     $a1, $zero, $zero
/* 428764 802A9484 00A0302D */  daddu     $a2, $a1, $zero
/* 428768 802A9488 96220052 */  lhu       $v0, 0x52($s1)
/* 42876C 802A948C 00A0382D */  daddu     $a3, $a1, $zero
/* 428770 802A9490 A6200044 */  sh        $zero, 0x44($s1)
/* 428774 802A9494 A6200046 */  sh        $zero, 0x46($s1)
/* 428778 802A9498 0C0526AE */  jal       sfx_play_sound_with_params
/* 42877C 802A949C A6220054 */   sh       $v0, 0x54($s1)
/* 428780 802A94A0 2402000B */  addiu     $v0, $zero, 0xb
/* 428784 802A94A4 A622004C */  sh        $v0, 0x4c($s1)
dlabel L802A94A8_428788
/* 428788 802A94A8 0C093EB1 */  jal       btl_set_popup_duration
/* 42878C 802A94AC 24040063 */   addiu    $a0, $zero, 0x63
/* 428790 802A94B0 8E020210 */  lw        $v0, 0x210($s0)
/* 428794 802A94B4 30428000 */  andi      $v0, $v0, 0x8000
/* 428798 802A94B8 50400007 */  beql      $v0, $zero, .L802A94D8
/* 42879C 802A94BC A6200054 */   sh       $zero, 0x54($s1)
/* 4287A0 802A94C0 96220044 */  lhu       $v0, 0x44($s1)
/* 4287A4 802A94C4 96230046 */  lhu       $v1, 0x46($s1)
/* 4287A8 802A94C8 2442009A */  addiu     $v0, $v0, 0x9a
/* 4287AC 802A94CC 2463009A */  addiu     $v1, $v1, 0x9a
/* 4287B0 802A94D0 A6220044 */  sh        $v0, 0x44($s1)
/* 4287B4 802A94D4 A6230046 */  sh        $v1, 0x46($s1)
.L802A94D8:
/* 4287B8 802A94D8 86220044 */  lh        $v0, 0x44($s1)
/* 4287BC 802A94DC 28422710 */  slti      $v0, $v0, 0x2710
/* 4287C0 802A94E0 14400014 */  bnez      $v0, .L802A9534
/* 4287C4 802A94E4 3C0451EB */   lui      $a0, 0x51eb
/* 4287C8 802A94E8 3C058029 */  lui       $a1, %hi(HudScript_TimingReady)
/* 4287CC 802A94EC 24A52788 */  addiu     $a1, $a1, %lo(HudScript_TimingReady)
/* 4287D0 802A94F0 8E24000C */  lw        $a0, 0xc($s1)
/* 4287D4 802A94F4 24022710 */  addiu     $v0, $zero, 0x2710
/* 4287D8 802A94F8 0C0511FF */  jal       set_hud_element_anim
/* 4287DC 802A94FC A6220044 */   sh       $v0, 0x44($s1)
/* 4287E0 802A9500 8E240004 */  lw        $a0, 4($s1)
/* 4287E4 802A9504 3C058011 */  lui       $a1, %hi(HudScript_AButton)
/* 4287E8 802A9508 24A58B28 */  addiu     $a1, $a1, %lo(HudScript_AButton)
/* 4287EC 802A950C 0C0511FF */  jal       set_hud_element_anim
/* 4287F0 802A9510 00000000 */   nop
/* 4287F4 802A9514 86220068 */  lh        $v0, 0x68($s1)
/* 4287F8 802A9518 14400006 */  bnez      $v0, .L802A9534
/* 4287FC 802A951C 3C0451EB */   lui      $a0, 0x51eb
/* 428800 802A9520 0C05272D */  jal       sfx_play_sound
/* 428804 802A9524 24040234 */   addiu    $a0, $zero, 0x234
/* 428808 802A9528 24020001 */  addiu     $v0, $zero, 1
/* 42880C 802A952C A6220068 */  sh        $v0, 0x68($s1)
/* 428810 802A9530 3C0451EB */  lui       $a0, 0x51eb
.L802A9534:
/* 428814 802A9534 3484851F */  ori       $a0, $a0, 0x851f
/* 428818 802A9538 96230044 */  lhu       $v1, 0x44($s1)
/* 42881C 802A953C 0000282D */  daddu     $a1, $zero, $zero
/* 428820 802A9540 00031C00 */  sll       $v1, $v1, 0x10
/* 428824 802A9544 00031403 */  sra       $v0, $v1, 0x10
/* 428828 802A9548 00440018 */  mult      $v0, $a0
/* 42882C 802A954C 00A0302D */  daddu     $a2, $a1, $zero
/* 428830 802A9550 3C048000 */  lui       $a0, 0x8000
/* 428834 802A9554 34840041 */  ori       $a0, $a0, 0x41
/* 428838 802A9558 00031FC3 */  sra       $v1, $v1, 0x1f
/* 42883C 802A955C 00004810 */  mfhi      $t1
/* 428840 802A9560 00094143 */  sra       $t0, $t1, 5
/* 428844 802A9564 01034023 */  subu      $t0, $t0, $v1
/* 428848 802A9568 00081600 */  sll       $v0, $t0, 0x18
/* 42884C 802A956C 00021603 */  sra       $v0, $v0, 0x18
/* 428850 802A9570 00023840 */  sll       $a3, $v0, 1
/* 428854 802A9574 00E23821 */  addu      $a3, $a3, $v0
/* 428858 802A9578 00073880 */  sll       $a3, $a3, 2
/* 42885C 802A957C 0C0526F9 */  jal       sfx_adjust_env_sound_params
/* 428860 802A9580 A2080084 */   sb       $t0, 0x84($s0)
/* 428864 802A9584 86220054 */  lh        $v0, 0x54($s1)
/* 428868 802A9588 96230054 */  lhu       $v1, 0x54($s1)
/* 42886C 802A958C 10400005 */  beqz      $v0, .L802A95A4
/* 428870 802A9590 2462FFFF */   addiu    $v0, $v1, -1
/* 428874 802A9594 080AA594 */  j         L802A9650_428930
/* 428878 802A9598 A6220054 */   sh       $v0, 0x54($s1)
.L802A959C:
/* 42887C 802A959C 080AA57B */  j         .L802A95EC
/* 428880 802A95A0 2402FFFF */   addiu    $v0, $zero, -1
.L802A95A4:
/* 428884 802A95A4 86250046 */  lh        $a1, 0x46($s1)
/* 428888 802A95A8 28A22710 */  slti      $v0, $a1, 0x2710
/* 42888C 802A95AC 1440000F */  bnez      $v0, .L802A95EC
/* 428890 802A95B0 2402FFFF */   addiu    $v0, $zero, -1
/* 428894 802A95B4 86220050 */  lh        $v0, 0x50($s1)
/* 428898 802A95B8 8E030434 */  lw        $v1, 0x434($s0)
/* 42889C 802A95BC 00021080 */  sll       $v0, $v0, 2
/* 4288A0 802A95C0 00431021 */  addu      $v0, $v0, $v1
/* 4288A4 802A95C4 8C440000 */  lw        $a0, ($v0)
/* 4288A8 802A95C8 000410C0 */  sll       $v0, $a0, 3
/* 4288AC 802A95CC 00441021 */  addu      $v0, $v0, $a0
/* 4288B0 802A95D0 00021900 */  sll       $v1, $v0, 4
/* 4288B4 802A95D4 00431021 */  addu      $v0, $v0, $v1
/* 4288B8 802A95D8 00441021 */  addu      $v0, $v0, $a0
/* 4288BC 802A95DC 00A21023 */  subu      $v0, $a1, $v0
/* 4288C0 802A95E0 28422845 */  slti      $v0, $v0, 0x2845
/* 4288C4 802A95E4 1040FFED */  beqz      $v0, .L802A959C
/* 4288C8 802A95E8 24020001 */   addiu    $v0, $zero, 1
.L802A95EC:
/* 4288CC 802A95EC A2020081 */  sb        $v0, 0x81($s0)
/* 4288D0 802A95F0 82030081 */  lb        $v1, 0x81($s0)
/* 4288D4 802A95F4 24020001 */  addiu     $v0, $zero, 1
/* 4288D8 802A95F8 14620003 */  bne       $v1, $v0, .L802A9608
/* 4288DC 802A95FC A2000086 */   sb       $zero, 0x86($s0)
/* 4288E0 802A9600 0C09A458 */  jal       func_80269160
/* 4288E4 802A9604 00000000 */   nop
.L802A9608:
/* 4288E8 802A9608 0C093EB1 */  jal       btl_set_popup_duration
/* 4288EC 802A960C 0000202D */   daddu    $a0, $zero, $zero
/* 4288F0 802A9610 3C048000 */  lui       $a0, 0x8000
/* 4288F4 802A9614 0C05271B */  jal       sfx_stop_sound
/* 4288F8 802A9618 34840041 */   ori      $a0, $a0, 0x41
/* 4288FC 802A961C 24020005 */  addiu     $v0, $zero, 5
/* 428900 802A9620 A6220054 */  sh        $v0, 0x54($s1)
/* 428904 802A9624 2402000C */  addiu     $v0, $zero, 0xc
/* 428908 802A9628 080AA594 */  j         L802A9650_428930
/* 42890C 802A962C A622004C */   sh       $v0, 0x4c($s1)
dlabel L802A9630_428910
/* 428910 802A9630 86220054 */  lh        $v0, 0x54($s1)
/* 428914 802A9634 96230054 */  lhu       $v1, 0x54($s1)
/* 428918 802A9638 10400003 */  beqz      $v0, .L802A9648
/* 42891C 802A963C 2462FFFF */   addiu    $v0, $v1, -1
/* 428920 802A9640 080AA594 */  j         L802A9650_428930
/* 428924 802A9644 A6220054 */   sh       $v0, 0x54($s1)
.L802A9648:
/* 428928 802A9648 0C09A327 */  jal       func_80268C9C
/* 42892C 802A964C 00000000 */   nop
dlabel L802A9650_428930
/* 428930 802A9650 8FBF0018 */  lw        $ra, 0x18($sp)
/* 428934 802A9654 8FB10014 */  lw        $s1, 0x14($sp)
/* 428938 802A9658 8FB00010 */  lw        $s0, 0x10($sp)
/* 42893C 802A965C 03E00008 */  jr        $ra
/* 428940 802A9660 27BD0020 */   addiu    $sp, $sp, 0x20
