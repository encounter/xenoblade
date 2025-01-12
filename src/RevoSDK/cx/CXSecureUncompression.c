#include "RevoSDK/cx/CXSecureUncompression.h"

inline void someInline(u16* r3, u8 array[0x80], u32 offset, u32 i, u32 r29, u16 mask){
    if((r3[0] & mask) != 0){
		u32 r10 = (i & ~1) + r29 + offset;
		array[r10/8] |= 1 << (r10 & 0x7);
	}
}

//Doesn't match on the 1.0 compiler
BOOL CXiLHVerifyTable(u16* r3, u32 r4) {
    u16* r30 = r3;
    u16* r31_28 = r30 + 1;
    u32 r31_24 = r30[0];
    u16* r31_20 = r31_24 + r3;
    u16 r7 = (1 << (r4 - 2)) - 1;
    u16 r8 = 1 << (r4 - 1);
    u16 r9 = 1 << (r4 - 2);

    u8 array[0x80];
    
    for(u32 j = 0; j < 0x80; j++){
        array[j] = 0;
    }

	if(r31_24 > (1 << (r4 + 1))){
		return FALSE;
	}

    u32 i = 1;
    r30 = r31_28;
    
	while (r30 < r31_20) {
		if((array[i/8] & (1 << (i & 0x7))) == 0){
			u32 r29 = ((r30[0] & r7) + 1) * 2;
            u32 r11 = ((u32)r30 & ~0x3) + r29 * 2;
            
			if(r30[0] != 0 || i < r31_24 - 4){
			    if(r11 >= (u32)r31_20){
				    return FALSE;
			    }
 
                someInline(r30,array,0,i,r29,r8);
			    someInline(r30,array,1,i,r29,r9);
            }
		}

		i++;
		r30++;
	}

	return TRUE;
}