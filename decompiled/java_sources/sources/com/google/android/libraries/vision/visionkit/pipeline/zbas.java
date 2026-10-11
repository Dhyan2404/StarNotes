package com.google.android.libraries.vision.visionkit.pipeline;

import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvn;
import com.sunia.HTREnginev2.lcp;

/* loaded from: classes5.dex */
public final class zbas extends zbuf implements zbvn {
    private static final zbas zbb;
    private int zbd;
    private float zbe;
    private long zbf;
    private long zbg;
    private long zbh;

    static {
        zbas zbasVar = new zbas();
        zbb = zbasVar;
        zbuf.zbD(zbas.class, zbasVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ခ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003", new Object[]{"zbd", "zbe", "zbf", "zbg", "zbh"});
        }
        if (i2 == 3) {
            return new zbas();
        }
        lcp lcpVar = null;
        if (i2 == 4) {
            return new zbar(lcpVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
