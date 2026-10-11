package com.google.android.libraries.vision.visionkit.pipeline;

import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvn;
import com.sunia.HTREnginev2.jcp;

/* loaded from: classes5.dex */
public final class zbaj extends zbuf implements zbvn {
    private static final zbaj zbb;
    private int zbd;
    private String zbe = "";
    private int zbf;

    static {
        zbaj zbajVar = new zbaj();
        zbb = zbajVar;
        zbuf.zbD(zbaj.class, zbajVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002င\u0001", new Object[]{"zbd", "zbe", "zbf"});
        }
        if (i2 == 3) {
            return new zbaj();
        }
        jcp jcpVar = null;
        if (i2 == 4) {
            return new zbai(jcpVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
