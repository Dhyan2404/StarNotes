package com.google.android.libraries.vision.visionkit.pipeline;

import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvn;
import com.sunia.HTREnginev2.ldp;

/* loaded from: classes5.dex */
public final class zbdj extends zbuf implements zbvn {
    private static final zbdj zbb;
    private int zbd;
    private boolean zbe;

    static {
        zbdj zbdjVar = new zbdj();
        zbb = zbdjVar;
        zbuf.zbD(zbdj.class, zbdjVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဇ\u0000", new Object[]{"zbd", "zbe"});
        }
        if (i2 == 3) {
            return new zbdj();
        }
        ldp ldpVar = null;
        if (i2 == 4) {
            return new zbdi(ldpVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
