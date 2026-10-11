package com.google.android.libraries.vision.visionkit.pipeline;

import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvn;
import com.sunia.HTREnginev2.vdp;

/* loaded from: classes5.dex */
public final class zbeg extends zbuf implements zbvn {
    private static final zbeg zbb;
    private int zbd;
    private String zbe = "";

    static {
        zbeg zbegVar = new zbeg();
        zbb = zbegVar;
        zbuf.zbD(zbeg.class, zbegVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zbd", "zbe"});
        }
        if (i2 == 3) {
            return new zbeg();
        }
        vdp vdpVar = null;
        if (i2 == 4) {
            return new zbef(vdpVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
