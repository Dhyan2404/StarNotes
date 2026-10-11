package com.google.android.libraries.vision.visionkit.pipeline;

import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvn;
import com.sunia.HTREnginev2.pdp;

/* loaded from: classes5.dex */
public final class zbds extends zbuf implements zbvn {
    private static final zbds zbb;
    private int zbd;
    private String zbe = "";
    private int zbf;
    private float zbg;
    private long zbh;
    private boolean zbi;
    private float zbj;
    private float zbk;
    private long zbl;
    private int zbm;
    private long zbn;

    static {
        zbds zbdsVar = new zbds();
        zbb = zbdsVar;
        zbuf.zbD(zbds.class, zbdsVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0000\u0000\u0001ဈ\u0000\u0002င\u0001\u0003ခ\u0002\u0004ဂ\u0003\u0005ဇ\u0004\u0006ခ\u0005\u0007ခ\u0006\bဂ\u0007\tင\b\nဂ\t", new Object[]{"zbd", "zbe", "zbf", "zbg", "zbh", "zbi", "zbj", "zbk", "zbl", "zbm", "zbn"});
        }
        if (i2 == 3) {
            return new zbds();
        }
        pdp pdpVar = null;
        if (i2 == 4) {
            return new zbdr(pdpVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
