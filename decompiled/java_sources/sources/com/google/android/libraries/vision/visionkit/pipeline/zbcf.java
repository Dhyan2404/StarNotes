package com.google.android.libraries.vision.visionkit.pipeline;

import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvn;
import com.sunia.HTREnginev2.cdp;

/* loaded from: classes5.dex */
public final class zbcf extends zbuf implements zbvn {
    private static final zbcf zbb;
    private int zbd;
    private boolean zbe;
    private String zbf = "";

    static {
        zbcf zbcfVar = new zbcf();
        zbb = zbcfVar;
        zbuf.zbD(zbcf.class, zbcfVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဈ\u0001", new Object[]{"zbd", "zbe", "zbf"});
        }
        if (i2 == 3) {
            return new zbcf();
        }
        cdp cdpVar = null;
        if (i2 == 4) {
            return new zbce(cdpVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
