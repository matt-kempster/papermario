#include "common.h"
#include "camera.h"

EvtScript ShakeCam1 = {
    EVT_SET_GROUP(0)
    EVT_CALL(ShakeCam, EVT_VAR(0), EVT_VAR(1), EVT_VAR(2), EVT_FIXED(1.0))
    EVT_RETURN
    EVT_END
};

EvtScript ShakeCamX = {
    EVT_SET_GROUP(0)
    EVT_CALL(ShakeCam, EVT_VAR(0), EVT_VAR(1), EVT_VAR(2), EVT_VAR(3))
    EVT_RETURN
    EVT_END
};

ApiStatus SetCamEnabled(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    s32 enabled = evt_get_variable(script, *args++);

    if (!enabled) {
        gCameras[id].flags |= CAM_FLAG_ENABLED;
    } else {
        gCameras[id].flags &= ~CAM_FLAG_ENABLED;
    }
    return ApiStatus_DONE2;
}

ApiStatus SetCamFlag80(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    s32 enabled = evt_get_variable(script, *args++);

    if (!enabled) {
        gCameras[id].flags |= CAM_FLAG_80;
    } else {
        gCameras[id].flags &= ~CAM_FLAG_80;
    }
    return ApiStatus_DONE2;
}

ApiStatus SetCamPerspective(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    s16 mode = evt_get_variable(script, *args++);
    f32 vfov = evt_get_float_variable(script, *args++);
    s16 nearClip = evt_get_variable(script, *args++);
    s16 farClip = evt_get_variable(script, *args++);
    Camera* camera = &gCameras[id];

    camera->farClip = farClip;
    camera->updateMode = mode;
    camera->unk_06 = 1;
    camera->changingMap = TRUE;
    camera->vfov = vfov;
    camera->nearClip = nearClip;
    return ApiStatus_DONE2;
}

ApiStatus func_802CA90C(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    s16 mode = evt_get_variable(script, *args++);
    Camera* camera = &gCameras[id];

    camera->updateMode = mode;
    camera->unk_06 = 0;
    return ApiStatus_DONE2;
}

ApiStatus func_802CA988(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Bytecode id = evt_get_variable(script, *args++);
    Bytecode outVar1 = *args++;
    Bytecode outVar2 = *args++;
    Bytecode outVar3 = *args++;
    Bytecode outVar4 = *args++;
    f32 temp1, temp2, temp3;

    gCameras[id].updateMode = 2;
    gCameras[id].unk_06 = 0;
    gCameras[id].unk_1C = -round(gCameras[id].currentPitch);
    gCameras[id].unk_1E = -gCameras[id].currentBlendedYawNegated;

    temp1 = gCameras[id].lookAt_obj.x - gCameras[id].lookAt_eye.x;
    temp2 = gCameras[id].lookAt_obj.y - gCameras[id].lookAt_eye.y;
    temp3 = gCameras[id].lookAt_obj.z - gCameras[id].lookAt_eye.z;

    gCameras[id].unk_20 = round(sqrtf(SQ(temp1) + SQ(temp2) + SQ(temp3)));
    gCameras[id].unk_22 = 0;
    gCameras[id].unk_54 = gCameras[id].lookAt_obj.x;
    gCameras[id].unk_58 = gCameras[id].lookAt_obj.y;
    gCameras[id].unk_5C = gCameras[id].lookAt_obj.z;

    evt_set_variable(script, outVar1, gCameras[id].unk_1C);
    evt_set_variable(script, outVar2, gCameras[id].unk_1E);
    evt_set_variable(script, outVar3, gCameras[id].unk_20);
    evt_set_variable(script, outVar4, gCameras[id].unk_22);
    return ApiStatus_DONE2;
}

ApiStatus SetCamViewport(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    s32 x = evt_get_variable(script, *args++);
    s32 y = evt_get_variable(script, *args++);
    s16 width = evt_get_variable(script, *args++);
    s16 height = evt_get_variable(script, *args++);

    set_cam_viewport(id, x, y, width, height);
    return ApiStatus_DONE2;
}

ApiStatus func_802CABE8(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    s16 value1 = evt_get_variable(script, *args++);
    s32 value2 = evt_get_variable(script, *args++);
    s32 value3 = evt_get_variable(script, *args++);
    s16 value4 = evt_get_variable(script, *args++);
    Camera* camera = &gCameras[id];

    camera->unk_22 = value4;
    camera->unk_1C = value1;
    camera->unk_1E = value2;
    camera->unk_20 = value3;
    return ApiStatus_DONE2;
}

ApiStatus func_802CACC0(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    s16 value1 = evt_get_variable(script, *args++);
    s32 value2 = evt_get_variable(script, *args++);
    s32 value3 = evt_get_variable(script, *args++);
    s16 zoomPercent = evt_get_variable(script, *args++);
    Camera* camera = &gCameras[id];

    camera->zoomPercent = zoomPercent;
    camera->unk_24 = value1;
    camera->unk_26 = value2;
    camera->unk_28 = value3;
    return ApiStatus_DONE2;
}

ApiStatus SetCamBGColor(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    s16 r = evt_get_variable(script, *args++);
    s16 g = evt_get_variable(script, *args++);
    s16 b = evt_get_variable(script, *args++);
    Camera* camera = &gCameras[id];

    camera->bgColor[0] = r;
    camera->bgColor[1] = g;
    camera->bgColor[2] = b;
    return ApiStatus_DONE2;
}

ApiStatus func_802CAE50(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    s32 value1 = evt_get_variable(script, *args++);
    s32 value2 = evt_get_variable(script, *args++);
    s32 value3 = evt_get_variable(script, *args++);
    Camera* camera = &gCameras[id];

    camera->unk_54 = value1;
    camera->unk_58 = value2;
    camera->unk_5C = value3;
    return ApiStatus_DONE2;
}

ApiStatus SetCamTarget(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    s32 x = evt_get_variable(script, *args++);
    s32 y = evt_get_variable(script, *args++);
    s32 z = evt_get_variable(script, *args++);
    Camera* camera = &gCameras[id];

    camera->targetPos.x = x;
    camera->targetPos.y = y;
    camera->targetPos.z = z;
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "evt/cam_api", func_802CB008, Evt* script, s32 isInitialCall);

INCLUDE_ASM(s32, "evt/cam_api", ShakeCam, Evt* script, s32 isInitialCall);

void exec_ShakeCam1(s32 arg0, s32 arg1, s32 arg2) {
    Evt* script;

    script = start_script_in_group(&ShakeCam1, 1, 0, 4);
    script->varTable[0] = arg0;
    script->varTable[1] = arg1;
    script->varTable[2] = arg2;
}

void exec_ShakeCamX(s32 arg0, s32 arg1, s32 arg2, f32 arg3) {
    Evt* script;

    script = start_script_in_group(&ShakeCamX, 1, 0, 4);
    evt_set_variable(script, EVT_VAR(0), arg0);
    evt_set_variable(script, EVT_VAR(1), arg1);
    evt_set_variable(script, EVT_VAR(2), arg2);
    evt_set_float_variable(script, EVT_VAR(3), arg3);
}

ApiStatus SetCamLeadPlayer(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    s32 enabled = evt_get_variable(script, *args++);
    Camera* camera = &gCameras[id];

    if (enabled) {
        camera->flags |= CAM_FLAG_LEAD_PLAYER;
    } else {
        camera->flags &= ~CAM_FLAG_LEAD_PLAYER;
    }
    return ApiStatus_DONE2;
}

ApiStatus func_802CB710(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    f32 value = evt_get_variable(script, *args++);
    Camera* camera = &gCameras[id];

    camera->unk_520 = (value / 100.0f);
    return ApiStatus_DONE2;
}

ApiStatus PanToTarget(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    f32 panPhase = evt_get_float_variable(script, *args++);
    s32 targetType = evt_get_variable(script, *args++);
    Camera* camera = &gCameras[id];

    camera->unk_506 = 1;
    if (targetType != 0) {
        camera->followPlayer = 1;
        camera->panPhase = panPhase;
    } else {
        camera->followPlayer = 0;
        camera->panPhase = 0.0f;
        camera->moveSpeed = 1.0f;
    }
    return ApiStatus_DONE2;
}

ApiStatus UseSettingsFrom(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    Camera* camera = &gCameras[id];
    f32 startX = evt_get_float_variable(script, *args++);
    f32 startY = evt_get_float_variable(script, *args++);
    f32 startZ = evt_get_float_variable(script, *args++);
    f32 hitX, hitY, hitZ;
    f32 hitDepth = 32767.0f;
    f32 nx, ny, nz;
    s32 hitID = test_ray_zones(startX, startY + 10.0f, startZ, 0.0f, -1.0f, 0.0f, &hitX, &hitY, &hitZ, &hitDepth,
                               &nx, &ny, &nz);

    if (hitID >= 0) {
        camera->controlSettings = *D_800D91D4[hitID].unk_10;
    }
    return ApiStatus_DONE2;
}

ApiStatus LoadSettings(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    Camera* camera = &gCameras[id];
    CameraControlSettings* settings = evt_get_variable(script, *args++);

    camera->controlSettings = *settings;
    return ApiStatus_DONE2;
}

ApiStatus SetCamType(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    Camera* camera = &gCameras[id];
    s32 controllerType = evt_get_variable(script, *args++);
    s32 enabled = evt_get_variable(script, *args++);

    camera->controlSettings.flag = enabled;
    camera->controlSettings.type = controllerType;
    return ApiStatus_DONE2;
}

ApiStatus SetCamPitch(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    Camera* camera = &gCameras[id];
    f32 boomPitch = evt_get_float_variable(script, *args++);
    f32 viewPitch = evt_get_float_variable(script, *args++);

    camera->controlSettings.boomPitch = boomPitch;
    camera->controlSettings.viewPitch = viewPitch;
    return ApiStatus_DONE2;
}

ApiStatus SetCamDistance(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    Camera* camera = &gCameras[id];
    f32 boomLength = evt_get_float_variable(script, *args++);

    camera->controlSettings.boomLength = boomLength;
    return ApiStatus_DONE2;
}

ApiStatus SetCamPosA(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    Camera* camera = &gCameras[id];
    f32 x = evt_get_float_variable(script, *args++);
    f32 z = evt_get_float_variable(script, *args++);

    camera->controlSettings.posA.x = x;
    camera->controlSettings.posA.z = z;
    return ApiStatus_DONE2;
}

ApiStatus SetCamPosB(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    Camera* camera = &gCameras[id];
    f32 x = evt_get_float_variable(script, *args++);
    f32 z = evt_get_float_variable(script, *args++);

    camera->controlSettings.posB.x = x;
    camera->controlSettings.posB.z = z;
    return ApiStatus_DONE2;
}

ApiStatus SetCamPosC(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    Camera* camera = &gCameras[id];
    f32 y1 = evt_get_float_variable(script, *args++);
    f32 y2 = evt_get_float_variable(script, *args++);

    camera->controlSettings.posA.y = y1;
    camera->controlSettings.posB.y = y2;
    return ApiStatus_DONE2;
}

ApiStatus SetPanTarget(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    Camera* camera = &gCameras[id];
    f32 x = evt_get_float_variable(script, *args++);
    f32 y = evt_get_float_variable(script, *args++);
    f32 z = evt_get_float_variable(script, *args++);

    camera->movePos.x = x;
    camera->movePos.y = y;
    camera->movePos.z = z;
    camera->unk_506 = 1;
    return ApiStatus_DONE2;
}

ApiStatus SetCamSpeed(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    f32 speed = evt_get_float_variable(script, *args++);
    Camera* camera = &gCameras[id];

    camera->moveSpeed = speed;
    return ApiStatus_DONE2;
}

ApiStatus GetCamType(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    Bytecode outVar1 = *args++;
    Bytecode outVar2 = *args++;
    Camera* camera = &gCameras[id];

    evt_set_variable(script, outVar1, camera->controlSettings.type);
    evt_set_variable(script, outVar2, camera->controlSettings.flag);
    return ApiStatus_DONE2;
}

ApiStatus GetCamPitch(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    Bytecode outVar1 = *args++;
    Bytecode outVar2 = *args++;
    Camera* camera = &gCameras[id];

    evt_set_float_variable(script, outVar1, camera->controlSettings.boomPitch);
    evt_set_float_variable(script, outVar2, camera->controlSettings.viewPitch);
    return ApiStatus_DONE2;
}

ApiStatus GetCamDistance(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    Bytecode outVar1 = *args++;
    Camera* camera = &gCameras[id];

    evt_set_float_variable(script, outVar1, camera->controlSettings.boomLength);
    return ApiStatus_DONE2;
}

ApiStatus GetCamPosA(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    Bytecode outVar1 = *args++;
    Bytecode outVar2 = *args++;
    Camera* camera = &gCameras[id];

    evt_set_float_variable(script, outVar1, camera->controlSettings.posA.x);
    evt_set_float_variable(script, outVar2, camera->controlSettings.posA.z);
    return ApiStatus_DONE2;
}

ApiStatus GetCamPosB(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    Bytecode outVar1 = *args++;
    Bytecode outVar2 = *args++;
    Camera* camera = &gCameras[id];

    evt_set_float_variable(script, outVar1, camera->controlSettings.posB.x);
    evt_set_float_variable(script, outVar2, camera->controlSettings.posB.z);
    return ApiStatus_DONE2;
}

ApiStatus GetCamPosC(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    Bytecode outVar1 = *args++;
    Bytecode outVar2 = *args++;
    Camera* camera = &gCameras[id];

    evt_set_float_variable(script, outVar1, camera->controlSettings.posA.y);
    evt_set_float_variable(script, outVar2, camera->controlSettings.posB.y);
    return ApiStatus_DONE2;
}

ApiStatus GetCamPosition(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    Bytecode outVar1 = *args++;
    Bytecode outVar2 = *args++;
    Bytecode outVar3 = *args++;
    Camera* camera = &gCameras[id];

    evt_set_float_variable(script, outVar1, camera->movePos.x);
    evt_set_float_variable(script, outVar2, camera->movePos.y);
    evt_set_float_variable(script, outVar3, camera->movePos.z);
    return ApiStatus_DONE2;
}

ApiStatus WaitForCam(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, args[0]);
    f32 endInterpValue = evt_get_float_variable(script, args[1]);
    Camera* camera = &gCameras[id];

    if (isInitialCall || !(endInterpValue <= camera->interpAlpha)) {
        return ApiStatus_BLOCK;
    }
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "evt/cam_api", SetCamProperties, Evt* script, s32 isInitialCall);

INCLUDE_ASM(s32, "evt/cam_api", AdjustCam, Evt* script, s32 isInitialCall);

ApiStatus ResetCam(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 id = evt_get_variable(script, *args++);
    Camera* camera = &gCameras[id];
    f32 moveSpeed = evt_get_float_variable(script, *args++);
    PlayerStatus* playerStatus = &gPlayerStatus;

    if (isInitialCall) {
        f32 x = playerStatus->position.x;
        f32 y = playerStatus->position.y;
        f32 z = playerStatus->position.z;
        f32 hitX, hitY, hitZ;
        f32 hitDepth = 32767.0f;
        f32 nx, ny, nz;
        s32 hitID;

        hitID = test_ray_zones(x, y + 10.0f, z, 0.0f, -1.0f, 0.0f, &hitX, &hitY, &hitZ, &hitDepth,
                               &nx, &ny, &nz);

        if (hitID >= 0) {
            camera->controlSettings = *D_800D91D4[hitID].unk_10;
        }

        camera->movePos.x = x;
        camera->movePos.y = y;
        camera->movePos.z = z;
        camera->moveSpeed = moveSpeed;
        camera->unk_506 = 1;
        camera->followPlayer = TRUE;
        camera->panPhase = 0.0f;
        return ApiStatus_BLOCK;
    }

    if (camera->interpAlpha >= 1.0f) {
        camera->unk_506 = 1;
        camera->followPlayer = FALSE;
        camera->moveSpeed = 1.0f;
        camera->panPhase = 0.0f;
        return ApiStatus_DONE2;
    }

    return ApiStatus_BLOCK;
}
