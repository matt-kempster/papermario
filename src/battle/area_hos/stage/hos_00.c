#include "common.h"
#include "battle/battle.h"

#define NAMESPACE b_area_hos_hos_00

EvtScript N(802255E0) = {
    EVT_SET(LW(10), LW(0))
    EVT_LABEL(0)
    EVT_CALL(TranslateModel, LW(10), 0, 2, 0)
    EVT_WAIT_FRAMES(5)
    EVT_CALL(TranslateModel, LW(10), 0, 0, 0)
    EVT_WAIT_FRAMES(5)
    EVT_CALL(TranslateModel, LW(10), 0, 2, 0)
    EVT_WAIT_FRAMES(5)
    EVT_CALL(TranslateModel, LW(10), 0, 0, 0)
    EVT_WAIT_FRAMES(5)
    EVT_CALL(RandInt, 30, LW(0))
    EVT_ADD(LW(0), 30)
    EVT_WAIT_FRAMES(LW(0))
    EVT_GOTO(0)
    EVT_RETURN
    EVT_END
};

EvtScript N(beforeBattle_802256E8) = {
    EVT_CALL(SetSpriteShading, -1)
    EVT_THREAD
        EVT_SET(LW(0), 19)
        EVT_EXEC(N(802255E0))
        EVT_WAIT_FRAMES(5)
        EVT_SET(LW(0), 20)
        EVT_EXEC(N(802255E0))
        EVT_WAIT_FRAMES(5)
        EVT_SET(LW(0), 21)
        EVT_EXEC(N(802255E0))
        EVT_WAIT_FRAMES(5)
        EVT_SET(LW(0), 22)
        EVT_EXEC(N(802255E0))
        EVT_WAIT_FRAMES(5)
        EVT_SET(LW(0), 23)
        EVT_EXEC(N(802255E0))
        EVT_WAIT_FRAMES(5)
        EVT_SET(LW(0), 24)
        EVT_EXEC(N(802255E0))
        EVT_WAIT_FRAMES(5)
        EVT_SET(LW(0), 25)
        EVT_EXEC(N(802255E0))
        EVT_WAIT_FRAMES(5)
        EVT_SET(LW(0), 26)
        EVT_EXEC(N(802255E0))
        EVT_WAIT_FRAMES(5)
        EVT_SET(LW(0), 27)
        EVT_EXEC(N(802255E0))
        EVT_WAIT_FRAMES(5)
        EVT_SET(LW(0), 28)
        EVT_EXEC(N(802255E0))
    EVT_END_THREAD
    EVT_RETURN
    EVT_END
};

EvtScript N(afterBattle_8022589C) = {
    EVT_RETURN
    EVT_END
};

s32 N(foregroundModelList_802258AC)[] = {
    0x00000020, 0x0000001E, 0x00000000,
};

Stage NAMESPACE = {
    .texture = "nok_tex",
    .shape = "nok_bt02_shape",
    .hit = "nok_bt02_hit",
    .bg = "nok_bg",
    .preBattle = N(beforeBattle_802256E8),
    .postBattle = N(afterBattle_8022589C),
    .foregroundModelList = N(foregroundModelList_802258AC),
};
