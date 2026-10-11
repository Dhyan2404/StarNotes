package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

/* loaded from: classes5.dex */
public final class zbjx extends zbuf implements zbvn {
    private static final zbjx zbb;
    private int zbd;
    private int zbf;
    private int zbe = 1;
    private int zbg = 4;
    private int zbh = 240;
    private zbul zbi = zbuf.zbw();

    static {
        zbjx zbjxVar = new zbjx();
        zbb = zbjxVar;
        zbuf.zbD(zbjx.class, zbjxVar);
    }

    private zbjx() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0001\u0005\u0000\u0001\u0003\n\u0005\u0000\u0001\u0000\u0003᠌\u0000\u0007င\u0001\bင\u0002\tင\u0003\nࠬ", new Object[]{"zbd", "zbe", zbjw.zba, "zbf", "zbg", "zbh", "zbi", zbjv.zba});
        }
        if (i2 == 3) {
            return new zbjx();
        }
        if (i2 == 4) {
            return new zbju(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
