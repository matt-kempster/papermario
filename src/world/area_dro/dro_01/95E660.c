#include "dro_01.h"

ApiStatus N(func_80243460_95E660)(Evt* script, s32 isInitialCall) {
    s32 i;

    if (N(D_8024B5B0_9667B0) == NULL) {
        N(D_8024B5B0_9667B0) = heap_malloc(16 * sizeof(s32));
        for (i = 0; i < 16; i++) {
            N(D_8024B5B0_9667B0)[i] = (s32*) script->varTable[i];
        }
    } else {
        for (i = 0; i < 16; i++) {
            script->varTable[i] = (s32) N(D_8024B5B0_9667B0)[i];
        }
        heap_free(N(D_8024B5B0_9667B0));
        N(D_8024B5B0_9667B0) = NULL;
    }
    return ApiStatus_DONE2;
}

#define NAMESPACE dro_01_dup
#include "world/common/GetItemName.inc.c"
#define NAMESPACE dro_01

ApiStatus N(func_80243578_95E778)(Evt* script, s32 isInitialCall) {
    func_800E96C8();
    return ApiStatus_DONE2;
}
