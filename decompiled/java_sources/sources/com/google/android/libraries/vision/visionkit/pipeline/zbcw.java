package com.google.android.libraries.vision.visionkit.pipeline;

import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvn;
import com.sunia.HTREnginev2.gdp;

/* loaded from: classes5.dex */
public final class zbcw extends zbuf implements zbvn {
    private static final zbcw zbb;
    private int zbd;
    private int zbe;
    private int zbf = 2;
    private String zbg = "";

    static {
        zbcw zbcwVar = new zbcw();
        zbb = zbcwVar;
        zbuf.zbD(zbcw.class, zbcwVar);
    }

    /* renamed from: b */
    public static /* synthetic */ void m22813b(zbcw zbcwVar, int i) {
        zbcwVar.zbe = i - 1;
        zbcwVar.zbd |= 1;
    }

    public static zbct zba() {
        return (zbct) zbb.zbq();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001\u0003ဈ\u0002", new Object[]{"zbd", "zbe", gdp.f70939a, "zbf", "zbg"});
        }
        if (i2 == 3) {
            return new zbcw();
        }
        if (i2 == 4) {
            return new zbct(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
