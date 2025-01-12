#ifndef _CF_MAIN_HPP
#define _CF_MAIN_HPP

#include "types.h"
#include "kyoshin/appgame/code_802AEB74.hpp"
#include "monolithlib/code_80450B14.hpp"
#include "monolithlib/Unknown1.hpp"

struct FunctionStruct{
    char* name;
    void* function;
};

extern "C"{
extern void func_80057CDC();
extern void SetArenaMemorySize(u32, u32);
extern void CWorkRoot_Run();
extern void func_80448E78(u32);
extern void func_804559A8(u32, u32);
extern void CDesktop_SaveStartFunctionCallback(FunctionStruct*, u32);
extern void func_8045D5C8(u32);
extern void func_8045FBB0(u32*);
extern void CLibVM_SetCallbacks(void*, void*);
extern void func_804DAA90(u32**);
extern void func_804DAA98(u32**);
extern void func_804DAAA0(u32**);
extern void SavePkhFilenamesArrayPtr(char*[]);
extern void SaveStaticArcFilenameStringPtr(const char* const*);
extern void func_80039F6C();
extern void func_80039F90();
extern void func_8003AA50();
extern void func_8003AA78(u32, s32);
extern void func_8003AA8C(u32);
extern void func_8014A86C();
extern void func_8014A8F8();
extern void func_8045D480();
extern void func_8045D4FC();
extern void func_8049FCAC();
extern void func_80045814();
void main(int argc, char* argv[]);
}



#endif
