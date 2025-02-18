#include "pause_common.h"

extern MenuPanel* gPausePanels[];
void pause_tabs_draw_stats(MenuPanel* menu, s32 baseX, s32 baseY, s32 width, s32 height, s32 opacity, s32 darkening);
void pause_tabs_draw_badges(MenuPanel* menu, s32 baseX, s32 baseY, s32 width, s32 height, s32 opacity, s32 darkening);
void pause_tabs_draw_items(MenuPanel* menu, s32 baseX, s32 baseY, s32 width, s32 height, s32 opacity, s32 darkening);
void pause_tabs_draw_party(MenuPanel* menu, s32 baseX, s32 baseY, s32 width, s32 height, s32 opacity, s32 darkening);
void pause_tabs_draw_spirits(MenuPanel* menu, s32 baseX, s32 baseY, s32 width, s32 height, s32 opacity, s32 darkening);
void pause_tabs_draw_map(MenuPanel* menu, s32 baseX, s32 baseY, s32 width, s32 height, s32 opacity, s32 darkening);
void pause_tabs_draw_invis(MenuPanel* menu, s32 baseX, s32 baseY, s32 width, s32 height, s32 opacity, s32 darkening);
void pause_tabs_init(MenuPanel* tab);
void pause_tabs_handle_input(MenuPanel* tab);
void pause_tabs_update(MenuPanel* tab);
void pause_tabs_cleanup(MenuPanel* tab);

static s32 gPauseTabsIconIDs[6];
static s32 gPauseTabsPreviousTab;
static s32 gPauseTabsHorizScrollPos;

HudScript* gPauseTabsHudScripts[] = { HudScript_HeaderStats, HudScript_HeaderBadges, HudScript_HeaderItems,
                            HudScript_HeaderParty, HudScript_HeaderSpirits, HudScript_HeaderMap };
s8 gPauseTabsGridData[] = { 0, 1, 2, 3, 4, 5 };
u8 gPauseTabsPanelIDs[] = { 1, 2, 3, 4, 5, 6 };
u8 gPauseTabsWindowIDs[] = { WINDOW_ID_PAUSE_TAB_STATS, WINDOW_ID_PAUSE_TAB_BADGES, WINDOW_ID_PAUSE_TAB_ITEMS, WINDOW_ID_PAUSE_TAB_PARTY, WINDOW_ID_PAUSE_TAB_SPIRITS, WINDOW_ID_PAUSE_TAB_MAP };
u8 gPauseTabsPageWindowIDs[] = { WINDOW_ID_PAUSE_STATS, WINDOW_ID_PAUSE_BADGES, WINDOW_ID_PAUSE_ITEMS, WINDOW_ID_PAUSE_PARTNERS, WINDOW_ID_PAUSE_SPIRITS, WINDOW_ID_PAUSE_MAP };
MenuWindowBP gPauseTabsWindowBPs[] = {
    {
        .windowID = WINDOW_ID_PAUSE_TAB_STATS,
        .unk_01 = 0,
        .pos = { .x = 0, .y = 7 },
        .width = 43,
        .height = 15,
        .priority = 64,
        .fpDrawContents = &pause_tabs_draw_stats,
        .tab = NULL,
        .parentID = WINDOW_ID_PAUSE_MAIN,
        .fpUpdate = { WINDOW_UPDATE_SHOW },
        .extraFlags = 0,
        .style = { .customStyle = &gPauseWS_3 }
    },
    {
        .windowID = WINDOW_ID_PAUSE_TAB_BADGES,
        .unk_01 = 0,
        .pos = { .x = 0, .y = 7 },
        .width = 43,
        .height = 15,
        .priority = 0,
        .fpDrawContents = &pause_tabs_draw_badges,
        .tab = NULL,
        .parentID = WINDOW_ID_PAUSE_MAIN,
        .fpUpdate = { .func = &pause_update_tab_default },
        .extraFlags = 0,
        .style = { .customStyle = &gPauseWS_4 }
    },
    {
        .windowID = WINDOW_ID_PAUSE_TAB_ITEMS,
        .unk_01 = 0,
        .pos = { .x = 0, .y = 7 },
        .width = 43,
        .height = 15,
        .priority = 0,
        .fpDrawContents = &pause_tabs_draw_items,
        .tab = NULL,
        .parentID = WINDOW_ID_PAUSE_MAIN,
        .fpUpdate = { .func = &pause_update_tab_default },
        .extraFlags = 0,
        .style = { .customStyle = &gPauseWS_5 }
    },
    {
        .windowID = WINDOW_ID_PAUSE_TAB_PARTY,
        .unk_01 = 0,
        .pos = { .x = 0, .y = 7 },
        .width = 43,
        .height = 15,
        .priority = 0,
        .fpDrawContents = &pause_tabs_draw_party,
        .tab = NULL,
        .parentID = WINDOW_ID_PAUSE_MAIN,
        .fpUpdate = { .func = &pause_update_tab_default },
        .extraFlags = 0,
        .style = { .customStyle = &gPauseWS_6 }
    },
    {
        .windowID = WINDOW_ID_PAUSE_TAB_SPIRITS,
        .unk_01 = 0,
        .pos = { .x = 0, .y = 7 },
        .width = 43,
        .height = 15,
        .priority = 0,
        .fpDrawContents = &pause_tabs_draw_spirits,
        .tab = NULL,
        .parentID = WINDOW_ID_PAUSE_MAIN,
        .fpUpdate = { .func = &pause_update_tab_default },
        .extraFlags = 0,
        .style = { .customStyle = &gPauseWS_7 }
    },
    {
        .windowID = WINDOW_ID_PAUSE_TAB_MAP,
        .unk_01 = 0,
        .pos = { .x = 0, .y = 7 },
        .width = 43,
        .height = 15,
        .priority = 0,
        .fpDrawContents = &pause_tabs_draw_map,
        .tab = NULL,
        .parentID = WINDOW_ID_PAUSE_MAIN,
        .fpUpdate = { .func = &pause_update_tab_default },
        .extraFlags = 0,
        .style = { .customStyle = &gPauseWS_8 }
    },
    {
        .windowID = WINDOW_ID_PAUSE_TAB_INVIS,
        .unk_01 = 0,
        .pos = { .x = 8, .y = 8 },
        .width = 16,
        .height = 16,
        .priority = 64,
        .fpDrawContents = &pause_tabs_draw_invis,
        .tab = NULL,
        .parentID = WINDOW_ID_NONE,
        .fpUpdate = { WINDOW_UPDATE_SHOW },
        .extraFlags = 0,
        .style = { .customStyle = &gPauseWS_9 }
    }
};
s32 gPauseTabsCurrentTab = 0;
s32 gPauseTabsMessages[] = { 27, 28, 29, 30, 31, 32 };
u8 gPauseTabsInterpTable[] = { 0, 1, 2, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8 };
s32 D_8024F310 = 1;
MenuPanel gPausePanelTabs = {
    .initialized = FALSE,
    .col = 0,
    .row = 0,
    .selected = 0,
    .page = 0,
    .numCols = 6,
    .numRows = 1,
    .numPages = 0,
    .gridData = gPauseTabsGridData,
    .fpInit = &pause_tabs_init,
    .fpHandleInput = &pause_tabs_handle_input,
    .fpUpdate = &pause_tabs_update,
    .fpCleanup = &pause_tabs_cleanup
};

void pause_tabs_draw_invis(MenuPanel* menu, s32 baseX, s32 baseY, s32 width, s32 height, s32 opacity, s32 darkening) {
}

void pause_tabs_draw_stats(MenuPanel* menu, s32 baseX, s32 baseY, s32 width, s32 height, s32 opacity, s32 darkening) {
    if (darkening != 0) {
        set_hud_element_flags(gPauseTabsIconIDs[0], 0x20);
        set_hud_element_alpha(gPauseTabsIconIDs[0], 255.0 - darkening * 0.5);
    } else {
        clear_hud_element_flags(gPauseTabsIconIDs[0], 0x20);
        set_hud_element_alpha(gPauseTabsIconIDs[0], 255);
    }

    set_hud_element_render_pos(gPauseTabsIconIDs[0], baseX + 22, baseY + 7);
    draw_hud_element_3(gPauseTabsIconIDs[0]);
    if (gPauseMenuCurrentTab == 0) {
        if (gPauseTabsWindowIDs[menu->col] == 25) {
            pause_set_cursor_pos(gPauseTabsWindowIDs[menu->col], baseX, baseY + 6);
        }
    }
}

void pause_tabs_draw_badges(MenuPanel* menu, s32 baseX, s32 baseY, s32 width, s32 height, s32 opacity, s32 darkening) {
    if (darkening != 0) {
        set_hud_element_flags(gPauseTabsIconIDs[1], 0x20);
        set_hud_element_alpha(gPauseTabsIconIDs[1], 255.0 - darkening * 0.5);
    } else {
        clear_hud_element_flags(gPauseTabsIconIDs[1], 0x20);
        set_hud_element_alpha(gPauseTabsIconIDs[1], 255);
    }

    set_hud_element_render_pos(gPauseTabsIconIDs[1], baseX + 22, baseY + 7);
    draw_hud_element_3(gPauseTabsIconIDs[1]);
    if (gPauseMenuCurrentTab == 0) {
        if (gPauseTabsWindowIDs[menu->col] == 26) {
            pause_set_cursor_pos(gPauseTabsWindowIDs[menu->col], baseX, baseY + 6);
        }
    }
}

void pause_tabs_draw_items(MenuPanel* menu, s32 baseX, s32 baseY, s32 width, s32 height, s32 opacity, s32 darkening) {
    if (darkening != 0) {
        set_hud_element_flags(gPauseTabsIconIDs[2], 0x20);
        set_hud_element_alpha(gPauseTabsIconIDs[2], 255.0 - darkening * 0.5);
    } else {
        clear_hud_element_flags(gPauseTabsIconIDs[2], 0x20);
        set_hud_element_alpha(gPauseTabsIconIDs[2], 255);
    }

    set_hud_element_render_pos(gPauseTabsIconIDs[2], baseX + 22, baseY + 7);
    draw_hud_element_3(gPauseTabsIconIDs[2]);
    if (gPauseMenuCurrentTab == 0) {
        if (gPauseTabsWindowIDs[menu->col] == 27) {
            pause_set_cursor_pos(gPauseTabsWindowIDs[menu->col], baseX, baseY + 6);
        }
    }
}

void pause_tabs_draw_party(MenuPanel* menu, s32 baseX, s32 baseY, s32 width, s32 height, s32 opacity, s32 darkening) {
    if (darkening != 0) {
        set_hud_element_flags(gPauseTabsIconIDs[3], 0x20);
        set_hud_element_alpha(gPauseTabsIconIDs[3], 255.0 - darkening * 0.5);
    } else {
        clear_hud_element_flags(gPauseTabsIconIDs[3], 0x20);
        set_hud_element_alpha(gPauseTabsIconIDs[3], 255);
    }

    set_hud_element_render_pos(gPauseTabsIconIDs[3], baseX + 22, baseY + 7);
    draw_hud_element_3(gPauseTabsIconIDs[3]);
    if (gPauseMenuCurrentTab == 0) {
        if (gPauseTabsWindowIDs[menu->col] == 28) {
            pause_set_cursor_pos(gPauseTabsWindowIDs[menu->col], baseX, baseY + 6);
        }
    }
}

void pause_tabs_draw_spirits(MenuPanel* menu, s32 baseX, s32 baseY, s32 width, s32 height, s32 opacity, s32 darkening) {
    if (darkening != 0) {
        set_hud_element_flags(gPauseTabsIconIDs[4], 0x20);
        set_hud_element_alpha(gPauseTabsIconIDs[4], 255.0 - darkening * 0.5);
    } else {
        clear_hud_element_flags(gPauseTabsIconIDs[4], 0x20);
        set_hud_element_alpha(gPauseTabsIconIDs[4], 255);
    }

    set_hud_element_render_pos(gPauseTabsIconIDs[4], baseX + 22, baseY + 7);
    draw_hud_element_3(gPauseTabsIconIDs[4]);
    if (gPauseMenuCurrentTab == 0) {
        if (gPauseTabsWindowIDs[menu->col] == 29) {
            pause_set_cursor_pos(gPauseTabsWindowIDs[menu->col], baseX, baseY + 6);
        }
    }
}

void pause_tabs_draw_map(MenuPanel* menu, s32 baseX, s32 baseY, s32 width, s32 height, s32 opacity, s32 darkening) {
    if (darkening != 0) {
        set_hud_element_flags(gPauseTabsIconIDs[5], 0x20);
        set_hud_element_alpha(gPauseTabsIconIDs[5], 255.0 - darkening * 0.5);
    } else {
        clear_hud_element_flags(gPauseTabsIconIDs[5], 0x20);
        set_hud_element_alpha(gPauseTabsIconIDs[5], 255);
    }

    set_hud_element_render_pos(gPauseTabsIconIDs[5], baseX + 23, baseY + 7);
    draw_hud_element_3(gPauseTabsIconIDs[5]);
    if (gPauseMenuCurrentTab == 0) {
        if (gPauseTabsWindowIDs[menu->col] == 30) {
            pause_set_cursor_pos(gPauseTabsWindowIDs[menu->col], baseX, baseY + 6);
        }
    }
}

void pause_tabs_init(MenuPanel* tab) {
    s32 i;

    for (i = 0; i < ARRAY_COUNT(gPauseTabsHudScripts); i++) {
        gPauseTabsIconIDs[i] = create_hud_element(gPauseTabsHudScripts[i]);
        set_hud_element_flags(gPauseTabsIconIDs[i], 0x80);
    }

    for (i = 0; i < ARRAY_COUNT(gPauseTabsWindowBPs); i++) {
        gPauseTabsWindowBPs[i].tab = tab;
    }

    setup_pause_menu_tab(gPauseTabsWindowBPs, ARRAY_COUNT(gPauseTabsWindowBPs));
    gWindows[WINDOW_ID_PAUSE_TAB_INVIS].pos.y = 25;
    gPauseTabsHorizScrollPos = 0;
    tab->initialized = TRUE;
    gPauseTabsPreviousTab = 5;
}

void pause_tabs_handle_input(MenuPanel* tab) {
    Window* pauseWindows;
    s32 x;

    if (gPauseHeldButtons & (BUTTON_STICK_LEFT | BUTTON_Z)) {
        do {
            if (--tab->col < 0) {
                tab->col = 5;
                if (gPauseTabsHorizScrollPos < 1800) {
                    gPauseTabsHorizScrollPos += 1800;
                }
            }
        } while (gPausePanels[gPauseTabsPanelIDs[tab->col]]->initialized == FALSE);
    }

    if (gPauseHeldButtons & (BUTTON_STICK_RIGHT | BUTTON_R)) {
        do {
            if (++tab->col >= 6) {
                tab->col = 0;
                if (gPauseTabsHorizScrollPos > 0) {
                    gPauseTabsHorizScrollPos -= 1800;
                }
            }
        } while (gPausePanels[gPauseTabsPanelIDs[tab->col]]->initialized == FALSE);
    }

    if (tab->col != gPauseTabsCurrentTab) {
        replace_window_update(gPauseTabsWindowIDs[tab->col], 0x40, pause_update_tab_active);
        replace_window_update(gPauseTabsWindowIDs[gPauseTabsCurrentTab], 0x40, pause_update_tab_inactive);

        pauseWindows = &gWindows[WINDOW_ID_PAUSE_TAB_STATS];
        x = pauseWindows[tab->col].pos.x;
        gWindows[WINDOW_ID_PAUSE_TAB_INVIS].pos.x = x + 6;
        gWindows[WINDOW_ID_PAUSE_TAB_INVIS].pos.y = 25;
        gPauseTabsPreviousTab = gPauseTabsCurrentTab;
        gPauseTabsCurrentTab = tab->col;
        sfx_play_sound(SOUND_MENU_CHANGE_TAB);
    }

    if ((gPausePressedButtons & BUTTON_A) && gPausePanels[gPauseTabsPanelIDs[tab->col]]->initialized == TRUE) {
        sfx_play_sound(SOUND_MENU_NEXT);
        gPauseMenuCurrentTab = gPauseTabsPanelIDs[tab->col];
    }

    gPauseCurrentDescMsg = pause_get_menu_msg(gPauseTabsMessages[tab->col]);
    gPauseCurrentDescIconScript = NULL;
}

void pause_tabs_update(MenuPanel* tab) {
    s32 absValue;
    f32 delta;
    f32 deltaBefore;
    f32 f7;
    void (*fpUpdateInactive)(s32 windowIndex, s32* flags, s32* posX, s32* posY, s32* posZ, f32* scaleX, f32* scaleY,
                                 f32* rotX, f32* rotY, f32* rotZ, s32* darkening, s32* opacity);
    void (*fpUpdateActive)(s32 windowIndex, s32* flags, s32* posX, s32* posY, s32* posZ, f32* scaleX, f32* scaleY,
                                 f32* rotX, f32* rotY, f32* rotZ, s32* darkening, s32* opacity);
    WindowUpdateFunc fpUpdate;
    s32 i;
    s32 flag;
    s32 sgn;

    deltaBefore = tab->col * 300 - gPauseTabsHorizScrollPos;
    absValue = abs(deltaBefore);
    sgn = sign(deltaBefore);

    if (absValue >= 16) {
        delta = absValue * 0.5;
        if (delta > 32.0f) {
            delta = 32.0f;
        }
    } else {
        delta = gPauseTabsInterpTable[absValue];
    }
    delta = delta * sgn;

    gPauseTabsHorizScrollPos += delta;

    if ((gPauseTabsPreviousTab != 0 || tab->col != 5) && (gPauseTabsPreviousTab < tab->col || gPauseTabsPreviousTab == 5 && tab->col == 0)) {
        fpUpdateActive = &pause_update_page_active_1;
        fpUpdateInactive = &pause_update_page_inactive_1;
    } else {
        fpUpdateActive = &pause_update_page_active_2;
        fpUpdateInactive = &pause_update_page_inactive_2;
    }

    flag = FALSE;
    for (i = 0; i < ARRAY_COUNT(gPauseTabsPanelIDs); i++) {
        if (gPausePanels[gPauseTabsPanelIDs[i]]->initialized && (gWindows[gPauseTabsPageWindowIDs[i]].flags & 8)) {
            flag = TRUE;
            break;
        }
    }

    if (!flag) {
        for (i = 0; i < ARRAY_COUNT(gPauseTabsPanelIDs); i++) {
            if (gPausePanels[gPauseTabsPanelIDs[i]]->initialized) {
                fpUpdate = gWindows[gPauseTabsPageWindowIDs[i]].fpUpdate;
                if (i != tab->col && (fpUpdate.func == pause_update_page_active_1 ||
                                      fpUpdate.func == pause_update_page_active_2 ||
                                      fpUpdate.func == basic_window_update ||
                                      fpUpdate.i == 1)) {
                    set_window_update(gPauseTabsPageWindowIDs[i], fpUpdateInactive);
                    flag = TRUE;
                }
            }
        }

        if (!flag) {
            if (gWindows[gPauseTabsPageWindowIDs[tab->col]].fpUpdate.func == pause_update_page_inactive_1 ||
                gWindows[gPauseTabsPageWindowIDs[tab->col]].fpUpdate.func == pause_update_page_inactive_2 ||
                gWindows[gPauseTabsPageWindowIDs[tab->col]].fpUpdate.i == 2) {
                if (D_8024F310 != 0) {
                    fpUpdateActive = &basic_window_update;
                    D_8024F310 = 0;
                }

                set_window_update(gPauseTabsPageWindowIDs[tab->col], fpUpdateActive);
            }
        }
    }
}

void pause_tabs_cleanup(MenuPanel* tab) {
    s32 i;

    for (i = 0; i < ARRAY_COUNT(gPauseTabsIconIDs); i++) {
        free_hud_element(gPauseTabsIconIDs[i]);
    }
}
