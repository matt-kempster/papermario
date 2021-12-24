#include "common.h"
#include "hud_element.h"

extern s32 D_80107D48;
extern s32 D_80107D98;
extern s32 D_80107CA8;
extern s32 D_80107CD0;
extern s32 D_80107CF8;
extern s32 D_80107D20;
extern s32 D_80107D70;
extern s32 D_80107DC0;
extern s32 D_80107DE8;
extern s32 D_80107E10;
extern s32 D_80107E38;
extern s32 D_80107E60;
extern s32 D_80107E88;
extern s32 D_80107EB0;
extern s32 D_80107ED8;
extern s32 D_80107F00;
extern s32 D_80107F28;
extern s32 D_80107F50;
extern s32 D_80107FC8;
extern s32 D_80107FF0;
extern s32 D_80108974;

extern u8 D_802AD000;
extern u8 D_802AD001;
extern s16 D_802AD006;
extern s16 D_802AD008;
extern s32 D_802AD010[];
extern s32 D_802AD028[];
extern s32 D_802AD040;
extern s32 D_802AD044;
extern s32 D_802AD048;
extern s32 D_802AD04C;
extern s32 D_802AD05C;
extern s32 D_802AD050;
extern s32 D_802AD054;
extern s32 D_802AD058;
extern s8 D_802AD068;
extern s32 main_menu_numOptions;
extern s8 D_802AD10A;
extern s8 D_802AD10D;
extern s8 D_802AD10E;
extern s8 D_802AD10F;
extern s16 D_802AD112;
extern s32 battle_menu_moveOptionActive;
extern s8 battle_menu_moveScrollLine;
extern s16 battle_menu_moveScrollOffset;
extern u8 battle_menu_moveState;
extern s8 battle_menu_moveCursorPos;
extern s32 battle_menu_moveOptionDescriptions[24];
extern s32 battle_menu_moveOptionIndexMap[24];
extern s16 battle_menu_moveTextColor;
extern s16 battle_menu_moveTextOpacity;
extern s32 battle_menu_moveCursorIcon;
extern s32 battle_menu_moveUpArrowIcon;
extern s32 battle_menu_moveDownArrowIcon;
extern s32 battle_menu_moveOptionIconIDs[24];
extern s32 battle_menu_moveTitleIcon;
extern s32 battle_menu_moveOptionCostUnitIconIDs[24];

extern s32 D_802AD258;
extern s32 D_802AD4A8;
extern s32 battle_menu_hasSpiritsMenu;
extern s32 battle_menu_moveOptionCount;
extern s8 D_802AD604;
extern s8 D_802AD605;
extern u8 D_802AD606;
extern s8 D_802AD607;
extern s8 D_802AD608;
extern s8 D_802AD609;
extern s8 D_802AD60A;
extern s8 D_802AD60B;
extern s16 D_802AD60C;
extern s16 D_802AD60E;
extern s16 D_802AD610;
extern s8 D_802AD614;
extern s32 D_802AD618;
extern s32 D_802AD61C;
extern s32 D_802AD620;
extern s32 D_802AD624;
extern s32 D_802AD628[];
extern s32 D_802AD658[]; // msg IDs
extern s32 D_802AD66C;
extern s8 D_802AD673;
extern s32 D_802AD678[];
extern s32 D_802AD690[];
extern s32 D_802AD6C0[];
extern s32 D_802AD6D4;

extern s8 D_802AD002;
extern s8 D_802AD004;
extern s16 D_802AD00A;
extern s32 D_802AD060;
extern s32 D_802AD064;
extern s8 D_802AD06B;
extern f32 D_802AD06C;
extern f32 D_802AD070;
extern s32 D_802AD100;
extern s32 D_802AD104;

extern s32 battle_menu_messageIDs[];

s16 D_802AB340[] = { 0x001C, 0x0028 };

s16 D_802AB344[] = { 0, -2 };

s32 battle_menu_iconScripts[] = { 0x8010876C, 0x8010876C, 0x80108744, 0x8010876C, 0x80108794, 0x801087BC, 0x801087E4, 0x8010880C };

s32 D_802AB368[] = { 0x8010885C, 0x8010885C, 0x80108834, 0x8010885C, 0x80108884, 0x801088AC, 0x801088D4, 0x801088FC };

s32 D_802AB388[] = { 0x80108924, 0x8010894C };

s32 D_802AB390[] = { &D_80108974, 0x8010899C };

s32 D_802AB398[] = { &D_80108974, 0x8010899C, 0x80107990, 0x801079BC, 0x801079E8, 0x80107A14, 0x80107A40, 0x80107A6C, 0x80107A98, 0x80107AC4, 0x80107AF0, 0x80107B1C, 0x80107B48, 0x80107B74, 0x80107BA0, 0x80107BCC, 0x80107BF8, 0x80107C24, 0x80107C50, 0x80107C7C, &D_80108974, 0x8010899C, &D_80108974, 0x8010899C };

s32* D_802AB3F8[] = { &D_80107CA8, &D_80107CF8, &D_80107D48, &D_80107D98, &D_80107DE8, &D_80107CA8, &D_80107E88, &D_80107ED8, &D_80107F28, &D_80107E38, &D_80107FC8, &D_80107FC8, &D_80107FC8, &D_80107FC8, &D_80107FC8, &D_80107FC8 };

s32* D_802AB438[] = { &D_80107CD0, &D_80107D20, &D_80107D70, &D_80107DC0, &D_80107E10, &D_80107CD0, &D_80107EB0, &D_80107F00, &D_80107F50, &D_80107E60, &D_80107FF0, &D_80107FF0, &D_80107FF0, &D_80107FF0, &D_80107FF0, &D_80107FF0 };

s32 D_802AB478[] = { 0x80292200 };

s32 D_802AB47C[] = { 0x80292228 };

s32 D_802AB480[] = { 0x802922A0, 0x802922C8 };

s32 D_802AB488[] = { 0x80292160, 0x80292188 };

s32 battle_menu_leftJustfiedMessages[] = { 0x001D0039, 0x001D0038, 0x001D003F, 0x001D003B, 0x001D0044 };

s32 D_802AB4A4[] = { 0x001D003E, 0x001D0045, 0x001D0043, 0x001D003A };

s32 D_802AB4B4[] = { 0x001D003C, 0x001D0046, 0x001D0048 };

s32 battle_menu_centeredMessages[] = { 0x001D004B, 0x001D004A };

s32 D_802AB4C8[] = { 0x001D0050, 0x001D004D, 0x001D0052, 0x001D004F, 0x001D0053 };

s32 D_802AB4DC[] = { 0x001D0051 };

s32 D_802AB4E0[] = { 0x001D004C, 0x001D004E, 0x001D0056, 0x001D0055 };

s8 D_802AB4F0[] = { 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00, 0x37, };

// s8 D_802AB513

s32 D_802AB520[] = { 0x00000000, 0x00090012, 0x000A001A, 0x000B001C, 0x000C0017, 0x009D0001, 0x000E000B, 0x000F0012, 0x00100003, 0x000D0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 };

s32 D_802AB558[] = { 0x00000000, 0x00090002, 0x000A0005, 0x000B0006, 0x000C0002, 0x009D0002, 0x000E0002, 0x000F0002, 0x00100002, 0x000D0002, 0x00000000, 0x00000000, 0x00000000, 0x00000000 };

s32 D_802AB590[] = { 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, &D_80107CF8, &D_80107D20, 0x80109338, 0x801093D8, 0x80109360, 0x80109400, 0x80109388, 0x80109428, 0x801093B0, 0x80109450, &D_80107D48, &D_80107D70, 0x80109338, 0x801093D8, 0x80109360, 0x80109400, 0x80109388, 0x80109428, 0x801093B0, 0x80109450, &D_80107D98, &D_80107DC0, 0x80109338, 0x801093D8, 0x80109360, 0x80109400, 0x80109388, 0x80109428, 0x801093B0, 0x80109450, &D_80107DE8, &D_80107E10, 0x80109338, 0x801093D8, 0x80109360, 0x80109400, 0x80109388, 0x80109428, 0x801093B0, 0x80109450, &D_80107CA8, &D_80107CD0, 0x80109338, 0x801093D8, 0x80109360, 0x80109400, 0x80109388, 0x80109428, 0x801093B0, 0x80109450, &D_80107E88, &D_80107EB0, 0x80109338, 0x801093D8, 0x80109360, 0x80109400, 0x80109388, 0x80109428, 0x801093B0, 0x80109450, &D_80107ED8, &D_80107F00, 0x80109338, 0x801093D8, 0x80109360, 0x80109400, 0x80109388, 0x80109428, 0x801093B0, 0x80109450, &D_80107F28, &D_80107F50, 0x80109338, 0x801093D8, 0x80109360, 0x80109400, 0x80109388, 0x80109428, 0x801093B0, 0x80109450, &D_80107E38, &D_80107E60, 0x80109338, 0x801093D8, 0x80109360, 0x80109400, 0x80109388, 0x80109428, 0x801093B0, 0x80109450 };

s32 D_802AB720[] = { &D_80108974, 0x8010899C };

s32 D_802AB728[] = { 0x001D0055 };

s32 D_802AB72C[] = { &D_80108974, 0x8010899C };

s32 D_802AB734[] = { 0x001D0057 };

s32 D_802AB738[] = { 0x00000000, 0x001D0007, 0x001D0008, 0x001D0009, 0x001D000A, 0x001D000B, 0x001D000C, 0x001D000D, 0x001D000E, 0x001D000F, 0x001D0010, 0x001D0011, 0x001D0012, 0x00000000 };

void func_802A1000(void) {
    D_802AD006 = 255;
    D_802AD008 = 255;
    D_802AD000 = 0;
    D_802AD068 = -1;
}

void func_802A1030(void) {
    D_802AD001 = 3;
    D_802AD000 = 10;
}

void func_802A1050(void) {
    D_802AD000 = 2;
    D_802AD006 = 255;
    D_802AD008 = 255;
}

void func_802A1078(void) {
    D_802AD008 = 255;
    D_802AD000 = 20;
}

void func_802A1098(void) {
    D_802AD008 = 100;
    D_802AD000 = 30;
}

void func_802A10B8(void) {
    s32 i;

    for (i = 0; i < main_menu_numOptions; i++) {
        s32* icons1 = D_802AD010;
        s32* icons2 = D_802AD028;

        free_hud_element(icons1[i]);
        free_hud_element(icons2[i]);
    }

    free_hud_element(D_802AD040);
    free_hud_element(D_802AD044);
    free_hud_element(D_802AD048);
    free_hud_element(D_802AD04C);
    free_hud_element(D_802AD05C);
    free_hud_element(D_802AD050);
    free_hud_element(D_802AD054);
    free_hud_element(D_802AD058);
}

INCLUDE_ASM(s32, "415D90", func_802A11B0);

//void btl_draw_menu_wheel(void);
//INCLUDE_ASM(s32, "415D90", btl_draw_menu_wheel);
void btl_draw_menu_wheel(void) {
    f32 sp20; // x
    f32 sp24; // y
    s32 sp28;
    f32 temp_a1_2;
    f32 temp_a1_4;
    f32 temp_a2_3;
    f32 temp_a2_4;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f24;
    f32 temp_f2;
    f32 temp_f4;
    f32* temp_a0;
    f32* temp_a0_2;
    f32* temp_a0_3;
    f32* temp_a1;
    f32* temp_a1_3;
    f32* temp_a1_5;
    f64 temp_f0_3;
    f64 temp_f2_2;
    s16 temp_a2;
    s16 temp_a2_2;
    s16 temp_a2_5;
    s16 temp_a2_6;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_s0_3;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s3;
    s32 temp_s3_10;
    s32 temp_s3_11;
    s32 temp_s3_12;
    s32 temp_s3_2;
    s32 temp_s3_3;
    s32 temp_s3_4;
    s32 temp_s3_5;
    s32 temp_s3_6;
    s32 temp_s3_7;
    s32 temp_s3_8;
    s32 temp_s3_9;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_s5;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s8 temp_v0;
    s32 phi_condition_bit;
    s32 phi_s7;
    f32 phi_f24;
    s32 phi_s4;
    f32 phi_a1;
    f32 phi_f24_2;
    f32 phi_f24_3;
    //s32* phi_s2;
    s32 phi_s4_2; // i

    temp_v0 = D_802AD000 + 1;
    switch (temp_v0) {
        case 2:
            func_80144218(-1);
            temp_s3 = D_802AD048;
            set_hud_element_transform_rotation(temp_s3, 0.0f, 0.0f, 0.0f);
            set_hud_element_alpha(temp_s3, (D_802AD006 * 0xFE) / 255);
            temp_a2 = D_802AD00A;
            set_hud_element_render_pos(temp_s3, 0xF64 - temp_a2, temp_a2 + 0xD4);
            func_80144238(temp_s3);
            temp_s3_2 = D_802AD044;
            set_hud_element_alpha(temp_s3_2, (D_802AD006 * 0xFE) / 255);
            temp_a2_2 = D_802AD00A;
            set_hud_element_render_pos(temp_s3_2, 0x28 - temp_a2_2, temp_a2_2 + 0xD4);
            func_80144238(temp_s3_2);
            return;
        case 0:
        case 3:
        case 11:
        case 21:
        case 31:
            temp_s5 = (D_802AD006 * D_802AD008) / 255;
            func_80144218(-1);
            temp_f2 = D_802AD06C;
            temp_f24 = (f32) ((D_802AD100 - D_802AD002) * 0x1C);
            phi_s7 = 0;
            if (temp_f24 < temp_f2) {
                temp_f0 = temp_f2 - D_802AD070;
                D_802AD06C = temp_f0;
                phi_condition_bit = temp_f0 < temp_f24;
                goto block_7;
            }
            if (temp_f2 < temp_f24) {
                temp_f0_2 = temp_f2 + D_802AD070;
                D_802AD06C = temp_f0_2;
                phi_condition_bit = temp_f24 < temp_f0_2;
    block_7:
                if (phi_condition_bit) {
                    D_802AD06C = temp_f24;
                    phi_s7 = 1;
                }
            } else {
                phi_s7 = 1;
            }
            if (phi_s7 == 0) {
                temp_f0_3 = (f64) D_802AD070;
                temp_f2_2 = temp_f0_3 + 1.0;
                D_802AD070 = (f32) (temp_f0_3 * temp_f2_2 * temp_f2_2);
            } else {
                D_802AD004 = 0;
                D_802AD070 = 0.3f;
            }
            phi_f24 = D_802AD06C;
            phi_s4 = 0;
            phi_s4_2 = 0;
            if (main_menu_numOptions > 0) {
                do {
                    sp20 = 0.0f;
                    sp24 = 0.0f;
                    add_vec2D_polar(&sp20, &sp24, 87.0f, phi_f24);
                    temp_f0_4 = (f32) D_802AD064 + sp24;
                    temp_s3_3 = D_802AD028[phi_s4];
                    temp_a1_2 = (f32) D_802AD060 + sp20;
                    temp_a2_3 = -temp_f0_4;
                    sp24 = temp_f0_4;
                    sp20 = temp_a1_2;
                    set_hud_element_transform_pos(temp_s3_3, temp_a1_2, temp_a2_3, 0.0f);
                    set_hud_element_render_pos(temp_s3_3, 0, 0);
                    set_hud_element_alpha(temp_s3_3, (temp_s5 * 0x96) / 255);
                    phi_a1 = 1.0f;
                    if ((phi_f24 == 56.0f) && (phi_s7 == 1)) {
                        phi_a1 = 1.6f;
                    }
                    set_hud_element_scale(temp_s3_3, phi_a1);
                    func_80144238(temp_s3_3);
                    if (phi_s4 == (D_802AD06B + D_802AD002)) {
                        sp20 = 0.0f;
                        sp24 = 0.0f;
                        add_vec2D_polar(&sp20, &sp24, 87.0f, 56.0f);
                        temp_f0_5 = (f32) D_802AD064 + sp24;
                        temp_s3_4 = D_802AD040;
                        temp_a1_4 = (f32) D_802AD060 + sp20;
                        temp_a2_4 = -temp_f0_5;
                        sp24 = temp_f0_5;
                        sp20 = temp_a1_4;
                        set_hud_element_transform_pos(temp_s3_4, temp_a1_4, temp_a2_4, 0.0f);
                        set_hud_element_render_pos(temp_s3_4, 0, 0);
                        set_hud_element_alpha(temp_s3_4, (temp_s5 * 0xB4) / 255);
                        set_hud_element_scale(temp_s3_4, 1.2f);
                        if (phi_s7 == 0) {
                            set_hud_element_flags(temp_s3_4, 2);
                        } else {
                            clear_hud_element_flags(temp_s3_4, 2);
                        }
                        func_80144238(temp_s3_4);
                    }
                    temp_s4 = phi_s4 + 1;
                    phi_f24 += 28.0f;
                    phi_s4 = temp_s4;
                } while (temp_s4 < main_menu_numOptions);
            }
            phi_f24_2 = (f32) (((f64) fabsf((f32) ((f64) fabsf((f32) ((f64) (D_802AD06C - (f32) ((D_802AD100 - D_802AD002) * 0x1C)) * (45.0/28.0))) - 22.5)) / 22.5) + 0.01);
            if (phi_s7 != 0) {
                phi_f24_2 = 1.0f;
            }
            temp_s3_5 = D_802AD04C;
            set_hud_element_transform_rotation_pivot(temp_s3_5, 0, 0);
            set_hud_element_transform_rotation(temp_s3_5, 0.0f, 0.0f, -43.0f);
            set_hud_element_scale(temp_s3_5, phi_f24_2);
            set_hud_element_transform_scale(temp_s3_5, 1.0f, 1.8f, 1.0f);
            set_hud_element_alpha(temp_s3_5, (temp_s5 * 0xC8) / 255);
            set_hud_element_render_pos(temp_s3_5, 0x4F, 0xB0);
            func_80144238(temp_s3_5);
            temp_s3_6 = D_802AD048;
            set_hud_element_transform_rotation(temp_s3_6, 0.0f, 0.0f, -(f32) ((f64) (D_802AD06C - (f32) ((D_802AD100 - D_802AD002) * 0x1C)) * (45.0/28.0)));
            set_hud_element_transform_rotation_pivot(temp_s3_6, 0x12, -0x14);
            set_hud_element_scale(temp_s3_6, 0.95f);
            temp_s0 = (temp_s5 * 0xFE) / 255;
            set_hud_element_alpha(temp_s3_6, temp_s0);
            temp_a2_5 = D_802AD00A;
            set_hud_element_render_pos(temp_s3_6, 0x28 - temp_a2_5, temp_a2_5 + 0xD4);
            func_80144238(temp_s3_6);
            temp_s3_7 = D_802AD044;
            set_hud_element_alpha(temp_s3_7, temp_s0);
            temp_a2_6 = D_802AD00A;
            set_hud_element_render_pos(temp_s3_7, 0x28 - temp_a2_6, temp_a2_6 + 0xD4);
            set_hud_element_scale(temp_s3_7, 1.0f);
            func_80144238(temp_s3_7);
            phi_f24_3 = D_802AD06C;

            if (main_menu_numOptions > 0) {
                sp28 = (s32) (temp_s5 * 180) >> 0x1F;
                //phi_s2 = D_802AD010;

                for (temp_s4_2 = 0; temp_s4_2 < main_menu_numOptions; temp_s4_2++) {
                    sp20 = 0.0f;
                    sp24 = 0.0f;
                    add_vec2D_polar(&sp20, &sp24, 87.0f, phi_f24_3);
                    temp_f4 = (f32) D_802AD060 + sp20;
                    temp_f0_6 = (f32) D_802AD064 + sp24;
                    temp_s1 = (s32) temp_f4;
                    temp_s0_2 = (s32) temp_f0_6;
                    temp_v0_2 = (temp_s1 - 0xC) & 0xFFFF;
                    sp20 = temp_f4;
                    sp24 = temp_f0_6;
                    btl_draw_prim_quad(0, 0, 0, 0, temp_v0_2, (temp_s0_2 - 0xC) & 0xFFFF, 24, 24);
                    temp_s3_8 = D_802AD010[temp_s4_2];
                    set_hud_element_render_pos(temp_s3_8, temp_s1, temp_s0_2);
                    set_hud_element_alpha(temp_s3_8, ((temp_s5 * 180) / 255) - sp28);
                    if (phi_s4_2 == (D_802AD06B + D_802AD002)) {
                        set_hud_element_alpha(temp_s3_8, temp_s5);
                    }
                    draw_hud_element_clipped(temp_s3_8);
                    //temp_s4_2 = phi_s4_2 + 1;
                    phi_f24_3 += 28.0f;
                    //phi_s2 += 4;
                    //phi_s4_2 = temp_s4_2;
                }
            }

            if (phi_s7 != 0) {
                temp_v0_3 = D_802AD060;
                temp_s1_2 = temp_v0_3 + 0x14;
                temp_s0_3 = D_802AD064 - 0x22;
                btl_draw_prim_quad(0, 0, 0, 0, (temp_v0_3 + 0x2E) & 0xFFFF, temp_s0_3 & 0xFFFF, 0x30, 0x10);
                draw_msg(battle_menu_messageIDs[D_802AD002 + D_802AD06B], temp_s1_2, temp_s0_3, temp_s5, 0x35, (u8) 0);
            }
            if (((gBattleStatus.flags1 & 0x2000000) != 0) || ((gBattleStatus.flags2 & 0x40) != 0)) {
                D_802AD104 = 0;
            }
            if (D_802AD104 != 0) {
                temp_s3_9 = D_802AD05C;
                set_hud_element_alpha(temp_s3_9, (temp_s5 * 0xC8) / 255);
                draw_hud_element_clipped(temp_s3_9);
                temp_s3_10 = D_802AD050;
                set_hud_element_alpha(temp_s3_10, temp_s5);
                draw_hud_element_clipped(temp_s3_10);
                temp_s3_11 = D_802AD054;
                set_hud_element_alpha(temp_s3_11, temp_s5);
                draw_hud_element_clipped(temp_s3_11);
                temp_s3_12 = D_802AD058;
                set_hud_element_alpha(temp_s3_12, temp_s5);
                draw_hud_element_clipped(temp_s3_12);
            }
            break;
        default:
            break;
    }
}

// Very similar to func_802A45D8 - maybe can be used to reduce fake matches there
void func_802A2684(void) {
    if (D_802AD4A8 >= battle_menu_moveOptionCount) {
        D_802AD4A8 = battle_menu_moveOptionCount - 1;
    }

    battle_menu_moveState = 0;
    battle_menu_moveScrollLine = 0;
    battle_menu_moveCursorPos = D_802AD4A8;
    D_802AD10A = D_802AD4A8;
    D_802AD10E = battle_menu_moveOptionCount;

    if (D_802AD10E > 6) {
        D_802AD10E = 6;
    }

    D_802AD10D = 6;
    if (battle_menu_moveOptionCount < 6) {
        D_802AD10D = battle_menu_moveOptionCount;
    }

    battle_menu_moveTextOpacity = 255;
    D_802AD10F = 1;

    if (D_802AD10A < 0) {
        battle_menu_moveScrollLine = D_802AD10A;
    }
    if (D_802AD10A >= D_802AD10D) {
        battle_menu_moveScrollLine = D_802AD10A + 1 - D_802AD10E;
    }

    D_802AD10D = battle_menu_moveScrollLine + 6;
    if (D_802AD10D > battle_menu_moveOptionCount) {
        D_802AD10D = battle_menu_moveOptionCount;
    }

    battle_menu_moveScrollOffset = -battle_menu_moveScrollLine * 13;
    D_802AD112 = (D_802AD10A - battle_menu_moveScrollLine) * 13;
    battle_menu_moveOptionActive = 0;
}

void func_802A27D0(void) {
    battle_menu_moveState = 10;
}

void func_802A27E4(void) {
    s32 i;

    set_window_update(1, 2);

    if (!battle_menu_hasSpiritsMenu) {
        set_window_update(2, 2);
        set_window_update(3, 2);
    } else {
        set_window_update(4, 2);
        set_window_update(5, 2);
    }

    set_window_update(8, 2);

    for (i = 0; i < battle_menu_moveOptionCount; i++) {
        free_hud_element(battle_menu_moveOptionIconIDs[i]);
    }

    free_hud_element(battle_menu_moveCursorIcon);
    free_hud_element(battle_menu_moveUpArrowIcon);
    free_hud_element(battle_menu_moveDownArrowIcon);
    free_hud_element(battle_menu_moveTitleIcon);

    for (i = 0; i < battle_menu_moveOptionCount; i++) {
        free_hud_element(battle_menu_moveOptionCostUnitIconIDs[i]);
    }
}

void func_802A2910(void) {
    s32* moveOptionIconIDs;
    s32* moveOptionCostUnitIconIDs;
    s32 i;

    moveOptionIconIDs = battle_menu_moveOptionIconIDs;

    for (i = 0; i < battle_menu_moveOptionCount; i++) {
        set_hud_element_tint(moveOptionIconIDs[i], 255, 255, 255);
    }

    set_hud_element_tint(battle_menu_moveCursorIcon, 255, 255, 255);
    set_hud_element_tint(battle_menu_moveUpArrowIcon, 255, 255, 255);
    set_hud_element_tint(battle_menu_moveDownArrowIcon, 255, 255, 255);
    set_hud_element_tint(battle_menu_moveTitleIcon, 255, 255, 255);

    moveOptionCostUnitIconIDs = battle_menu_moveOptionCostUnitIconIDs;

    for (i = 0; i < battle_menu_moveOptionCount; i++) {
        set_hud_element_tint(moveOptionCostUnitIconIDs[i], 255, 255, 255);
    }

    set_hud_element_anim(battle_menu_moveCursorIcon, D_80104A28);
    set_window_update(1, 5);

    if (!battle_menu_hasSpiritsMenu) {
        set_window_update(2, 5);
        set_window_update(3, 5);
    } else {
        set_window_update(4, 5);
        set_window_update(5, 5);
    }

    set_window_update(8, 1);
    battle_menu_moveTextColor = 10;
    D_802AD10F = 1;
    battle_menu_moveTextOpacity = 255;
    battle_menu_moveState = 1;
}

void func_802A2AB8(void) {
    s32* moveOptionIconIDs;
    s32* moveOptionCostUnitIconIDs;
    s32 i;

    set_window_update(1, 5);

    if (!battle_menu_hasSpiritsMenu) {
        set_window_update(2, 5);
        set_window_update(3, 5);
    } else {
        set_window_update(4, 5);
        set_window_update(5, 5);
    }
    set_window_update(8, 1);

    moveOptionIconIDs = battle_menu_moveOptionIconIDs;

    for (i = 0; i < battle_menu_moveOptionCount; i++) {
        set_hud_element_tint(moveOptionIconIDs[i], 255, 255, 255);
    }

    set_hud_element_tint(battle_menu_moveCursorIcon, 255, 255, 255);
    set_hud_element_tint(battle_menu_moveUpArrowIcon, 255, 255, 255);
    set_hud_element_tint(battle_menu_moveDownArrowIcon, 255, 255, 255);
    set_hud_element_tint(battle_menu_moveTitleIcon, 255, 255, 255);

    moveOptionCostUnitIconIDs = battle_menu_moveOptionCostUnitIconIDs;

    for (i = 0; i < battle_menu_moveOptionCount; i++) {
        set_hud_element_tint(moveOptionCostUnitIconIDs[i], 255, 255, 255);
    }

    set_hud_element_anim(battle_menu_moveCursorIcon, D_80104A28);
    battle_menu_moveTextColor = 10;
    D_802AD10F = 1;
    battle_menu_moveState = 20;
}

void func_802A2C58(void) {
    set_window_update(8, 1);
    battle_menu_moveState = 30;
}

INCLUDE_ASM(s32, "415D90", func_802A2C84);

INCLUDE_ASM(s32, "415D90", func_802A3C98);

void func_802A43DC(s32 arg0, s32 x, s32 y) {
    s32 msgID;
    s32 posX;
    s32 posY;
    s32 opacity;
    s32 palette;

    if (!battle_menu_hasSpiritsMenu) {
        msgID = 0x1D0045;
        posX = x + 16;
        posY = y + 2;
        opacity = battle_menu_moveTextOpacity;
        palette = 0x30;
    } else {
        msgID = 0x1D003A;
        posX = x + 6;
        posY = y + 2;
        opacity = battle_menu_moveTextOpacity;
        palette = 0x31;
    }
    draw_msg(msgID, posX, posY, opacity, palette, 1);
}

void func_802A4448(s32 arg0, s32 x, s32 y) {
    s32 icon = battle_menu_moveTitleIcon;

    set_hud_element_render_pos(icon, x + 16, y + 15);
    set_hud_element_alpha(icon, battle_menu_moveTextOpacity);
    draw_hud_element_clipped(icon);
}

void func_802A4494(s32 arg0, s32 x, s32 y) {
    switch ((s8)battle_menu_moveState) {
        case -1:
        case 1:
        case 10:
        case 20:
        case 30:
            if (D_802AD10F != 0) {
                draw_msg(battle_menu_moveOptionDescriptions[battle_menu_moveOptionIndexMap[battle_menu_moveCursorPos]],
                            x + 8, y, battle_menu_moveTextOpacity, battle_menu_moveTextColor, 0);
            }
            break;
    }
}

void func_802A4534(s32 arg0, s32 x, s32 y) {
    s32 posY = y;
    s32 posX;
    s32 msgID;

    posY += 6;
    posX = x + 11;

    if (D_802AD258 != 0) {
        msgID = 0x1D00C3;
    } else if (battle_menu_hasSpiritsMenu == FALSE) {
        msgID = 0x1D009F;
    } else {
        msgID = 0x1D00A0;
    }
    draw_msg(msgID, posX, posY + D_802AB344[get_msg_lines(msgID) - 1], 255, 0xF, 0);
}

void func_802A45D8(void) {
    s32 sixTemp;
    s8 temp802AD673;

    D_802AD604 = 0;
    D_802AD605 = D_802AD673;
    D_802AD606 = D_802AD673;
    D_802AD608 = 0;
    D_802AD60A = D_802AD66C;

    if (D_802AD60A > 6) {
        D_802AD60A = 6;
    }

    D_802AD609 = sixTemp = 6;

    if (D_802AD609 > D_802AD66C) {
        D_802AD609 = D_802AD66C;
    }

    D_802AD624 = 255;
    D_802AD60B = 1;
    temp802AD673 = D_802AD673;

    if (D_802AD673 < 0) {
        D_802AD608 = D_802AD673;
    }
    if (D_802AD673 >= D_802AD609) {
        D_802AD608 = (temp802AD673 + 1 - D_802AD60A);
    }

    D_802AD609 = D_802AD608 + sixTemp;
    if (D_802AD609 > D_802AD66C) {
        D_802AD609 = D_802AD66C;
    }

    D_802AD60C = -D_802AD608 * 13;
    D_802AD60E = (D_802AD673 - D_802AD608) * 13;
    D_802AD607 = 0;
    D_802AD6D4 = 0;
}

void func_802A4718(void) {
    D_802AD604 = 10;
}

void func_802A472C(void) {
    s32 i;

    set_window_update(6, 2);
    set_window_update(7, 2);
    set_window_update(8, 2);

    for (i = 0; i < D_802AD66C; i++) {
        free_hud_element(D_802AD628[i]);
    }

    free_hud_element(D_802AD618);
    free_hud_element(D_802AD61C);
    free_hud_element(D_802AD620);
}

void func_802A47E0(void) {
    s32 i;

    for (i = 0; i < D_802AD66C; i++) {
        set_hud_element_tint(D_802AD628[i], 0xFF, 0xFF, 0xFF);
    }

    set_hud_element_tint(D_802AD618, 0xFF, 0xFF, 0xFF);
    set_hud_element_tint(D_802AD61C, 0xFF, 0xFF, 0xFF);
    set_hud_element_tint(D_802AD620, 0xFF, 0xFF, 0xFF);
    set_hud_element_anim(D_802AD618, D_80104A28);
    set_window_update(6, 5);
    set_window_update(7, 5);
    set_window_update(8, 1);
    D_802AD614 = 10;
    D_802AD60B = 1;
    D_802AD624 = 255;
    D_802AD604 = 1;
}

void func_802A48FC(void) {
    s32 i;

    set_window_update(6, 5);
    set_window_update(7, 5);
    set_window_update(8, 1);

    for (i = 0; i < D_802AD66C; i++) {
        set_hud_element_tint(D_802AD628[i], 0xFF, 0xFF, 0xFF);
    }

    set_hud_element_tint(D_802AD618, 0xFF, 0xFF, 0xFF);
    set_hud_element_tint(D_802AD61C, 0xFF, 0xFF, 0xFF);
    set_hud_element_tint(D_802AD620, 0xFF, 0xFF, 0xFF);
    set_hud_element_anim(D_802AD618, D_80104A28);
    D_802AD614 = 10;
    D_802AD60B = 1;
    D_802AD604 = 20;
}

void func_802A4A10(void) {
    set_window_update(6, 5);
    set_window_update(7, 5);
    set_window_update(8, 1);
    D_802AD604 = 30;
}

INCLUDE_ASM(s32, "415D90", func_802A4A54);

// getting there but needs work
#ifdef NON_EQUIVALENT
void func_802A5290(s32 arg0, s32 x, s32 y) {
    s16 temp_s1;
    s16 temp_s1_3;
    s32 temp_f6;
    s32 temp_f6_2;
    s32 phi_s1;
    s32 phi_s1_2;
    s32 t1;
    s32 xt;

    s32 lry;
    s32 yOffset;
    s32 uly;
    s32 xTemp;
    s32 iconIndex;
    s32 i;

    switch (D_802AD604) {
        case -1:
        case 1:
        case 10:
        case 20:
        case 30:
        case 40:
        case 41:
            temp_s1 = -D_802AD608 * 13;
            temp_f6 = (temp_s1 - D_802AD60C) * 0.5;
            D_802AD60C += temp_f6;
            if (temp_f6 == 0) {
                D_802AD60C = temp_s1;
            }
            t1 = D_802AD60A * 13;

            xTemp = x + 4;
            uly = y + 18;
            yOffset = 1 + t1;
            lry = yOffset + uly;
            gDPSetScissor(gMasterGfxPos++, G_SC_NON_INTERLACE, xTemp, uly, x + 142, lry);

            xTemp = x + 33;
            phi_s1 = y + (D_802AD60C + 19);
            for (i = 0; i < D_802AD66C; i++, phi_s1 += 0xD) {
                s32 palette = D_802AD614;

                if (D_802AD678[i] == 5 && is_ability_active(ABILITY_QUICK_CHANGE)) {
                    palette = 0x37;
                }
                if (D_802AD690[i] == 0) {
                    palette = 0xB;
                }
                draw_msg(D_802AD658[i], xTemp, phi_s1, D_802AD624, palette, 1);
            }

            xTemp = x + 24;
            phi_s1_2 = D_802AD60C + y + 24;
            for (i = 0; i < D_802AD66C; i++, phi_s1_2 += 0xD) {
                iconIndex = D_802AD628[i];

                set_hud_element_render_pos(iconIndex, xTemp, phi_s1_2);
                set_hud_element_alpha(iconIndex, D_802AD624);
                draw_hud_element_3(iconIndex);
            }

            temp_s1_3 = (D_802AD605 - D_802AD608) * 13;
            temp_f6_2 = (f64) (temp_s1_3 - D_802AD60E);
            if (temp_f6_2 != 0) {
                D_802AD60E += temp_f6_2;
            } else {
                D_802AD60E = temp_s1_3;
            }

            iconIndex = D_802AD618;
            set_hud_element_render_pos(iconIndex, x + 10, y + (D_802AD60E + 26));
            set_hud_element_alpha(iconIndex, D_802AD624);
            draw_hud_element_clipped(iconIndex);

            if (D_802AD608 > 0) {
                iconIndex = D_802AD61C;
                set_hud_element_render_pos(iconIndex, x + 67, y + 16);
                set_hud_element_alpha(iconIndex, D_802AD624);
                draw_hud_element_clipped(iconIndex);
            }

            if (D_802AD609 < D_802AD66C) {
                iconIndex = D_802AD620;
                set_hud_element_render_pos(iconIndex, x + 67, y + 100);
                set_hud_element_alpha(iconIndex, D_802AD624);
                draw_hud_element_clipped(iconIndex);
            }

            break;
    }
}
#else
INCLUDE_ASM(s32, "415D90", func_802A5290);
#endif

void func_802A56F8(s32 arg0, s32 x, s32 y) {
    draw_msg(0x1D0043, x + 15, y + 2, D_802AD624, 0x33, 1);
}

void func_802A5738(s32 arg0, s32 x, s32 y) {
    switch (D_802AD604) {
        case -1:
        case 1:
        case 10:
        case 20:
        case 30:
            if (D_802AD60B != 0) {
                draw_msg(D_802AD6C0[D_802AD605], x + 8, y, D_802AD624, D_802AD614, 0);
            }
            break;
    }
}

// regalloc, arg setting order dumbness
#ifdef NON_EQUIVALENT
void func_802A57C8(s32 arg0, s32 x, s32 y) {
    x += 11;
    y += 6;

    if (D_802AD610 == 0) {
        draw_msg(0x1D00CB, x, y, 255, 15, 0);
    } else {
        draw_msg(0x1D00CC, x, y, 255, 15, 0);
    }
}
#else
INCLUDE_ASM(s32, "415D90", func_802A57C8);
#endif

s32 can_btl_state_update_switch_to_player(void) {
    BattleStatus* battleStatus = &gBattleStatus;
    Actor* player = battleStatus->playerActor;

    if (battleStatus->flags2 & 2) {
        return FALSE;
    } else {
        s8 debuff = player->debuff;
        s32 ret = player->koStatus == 0xD;

        if (debuff == 9) {
            ret = FALSE;
        }
        if (debuff == 10) {
            ret = FALSE;
        }
        if (debuff == 6) {
            ret = TRUE;
        }
        if (debuff == 3) {
            ret = TRUE;
        }
        if (debuff == 4) {
            ret = TRUE;
        }
        if (debuff == 5) {
            ret = TRUE;
        }
        if (debuff == 7) {
            ret = TRUE;
        }
        if (debuff == 8) {
            ret = TRUE;
        }
        if (player->stoneStatus == 0xC) {
            ret = TRUE;
        }
        if (battleStatus->outtaSightActive) {
            ret = TRUE;
        }
        return !ret;
    }
}

s32 func_802A58D0(void) {
    BattleStatus* battleStatus = &gBattleStatus;
    Actor* partner = battleStatus->partnerActor;
    s8 partnerDebuff;
    s32 ret;

    if (battleStatus->flags2 & 4 || partner == PARTNER_NONE || partner->flags & 0x200000) {
        return FALSE;
    }

    partnerDebuff = partner->debuff;
    ret = partner->koStatus == 0xD;

    if (partnerDebuff == 9) {
        ret = FALSE;
    }
    if (partnerDebuff == 10) {
        ret = FALSE;
    }
    if (partnerDebuff == 6) {
        ret = TRUE;
    }
    if (partnerDebuff == 3) {
        ret = TRUE;
    }
    if (partnerDebuff == 5) {
        ret = TRUE;
    }
    if (partnerDebuff == 7) {
        ret = TRUE;
    }
    if (partnerDebuff == 8) {
        ret = TRUE;
    }
    if (partner->stoneStatus == 0xC) {
        ret = TRUE;
    }
    return !ret;
}

INCLUDE_ASM(s32, "415D90", btl_state_update_player_menu);

//requires above to be decomped
#ifdef NON_EQUIVALENT
void btl_state_draw_player_menu(void) {
    switch (gBattleState2) {
        case 1:
            btl_draw_menu_wheel();
            break;
        case 2:
        case 3:
        case 4:
        case 5:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
        case 40:
        case 41:
        case 42:
        case 43:
        case 44:
        case 51:
        case 52:
        case 53:
        case 54:
        case 61:
        case 62:
        case 63:
        case 64:
        case 65:
        case 200:
        case 201:
            btl_draw_menu_wheel();
            break;
        case 202:
            btl_draw_menu_wheel();
            break;
        case 203:
            btl_draw_menu_wheel();
            break;
        case 204:
            btl_draw_menu_wheel();
            break;
        case 205:
            btl_draw_menu_wheel();
            break;
    }
}
#else
INCLUDE_ASM(s32, "415D90", btl_state_draw_player_menu);
#endif

INCLUDE_ASM(s32, "415D90", btl_state_update_partner_menu);

void btl_state_draw_partner_menu(void) {
    switch (gBattleState2) {
        case 2:
            btl_draw_menu_wheel();
            break;
        case 3:
        case 4:
        case 5:
        case 6:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
        case 40:
        case 41:
        case 42:
        case 43:
        case 44:
        case 51:
        case 52:
        case 53:
        case 54:
        case 61:
        case 62:
        case 63:
        case 64:
        case 65:
        case 200:
        case 201:
            btl_draw_menu_wheel();
            break;
        case 202:
            btl_draw_menu_wheel();
            break;
        case 203:
            btl_draw_menu_wheel();
            break;
        case 204:
            btl_draw_menu_wheel();
            break;
        case 205:
            btl_draw_menu_wheel();
            break;
    }
}

s32 func_802A9B30(void) {
    return (gBattleStatus.flags2 & 4) <= 0;
}

INCLUDE_ASM(s32, "415D90", btl_state_update_peach_menu);

// Needs the above jtbl to be decompiled and then this will work
#ifdef NON_MATCHING
void btl_state_draw_peach_menu(void) {
    switch (gBattleState2) {
        case 1:
            btl_draw_menu_wheel();
            break;
        case 2:
            btl_draw_menu_wheel();
            break;
        case 3:
            btl_draw_menu_wheel();
            break;
        case 4:
            btl_draw_menu_wheel();
            break;
        case 5:
            btl_draw_menu_wheel();
            break;
        case 6:
        case 7:
        case 8:
        case 9:
            break;
    }
}
#else
INCLUDE_ASM(s32, "415D90", btl_state_draw_peach_menu);
#endif

s32 func_802AA0A4(void) {
    return (gBattleStatus.flags2 & 2) <= 0;
}

INCLUDE_ASM(s32, "415D90", btl_state_update_twink_menu); // look into m2c bug

void btl_state_draw_twink_menu(void) {
    switch (gBattleState2) {
        case 1:
            btl_draw_menu_wheel();
            break;
        case 2:
            btl_draw_menu_wheel();
            break;
        case 3:
            btl_draw_menu_wheel();
            break;
        case 4:
            btl_draw_menu_wheel();
            break;
        case 5:
            btl_draw_menu_wheel();
            break;
        case 6:
        case 7:
        case 8:
        case 9:
            break;
    }
}

INCLUDE_ASM(s32, "415D90", btl_state_update_select_target);

INCLUDE_ASM(s32, "415D90", btl_state_draw_select_target);

void btl_state_update_22(void) {
}

void btl_state_draw_22(void) {
}
