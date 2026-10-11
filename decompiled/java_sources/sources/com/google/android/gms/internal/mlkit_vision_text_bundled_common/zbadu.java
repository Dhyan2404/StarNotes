package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

/* loaded from: classes5.dex */
public final class zbadu extends zbuf implements zbvn {
    private static final zbadu zbb;
    private int zbd;
    private String zbe = "";
    private zbuk zbf = zbuf.zbv();
    private zbuk zbg = zbuf.zbv();
    private zbun zbh = zbuf.zby();

    static {
        zbadu zbaduVar = new zbadu();
        zbb = zbaduVar;
        zbuf.zbD(zbadu.class, zbaduVar);
    }

    private zbadu() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0003\u0000\u0001ဈ\u0000\u0002$\u0003$\u0004\u001a", new Object[]{"zbd", "zbe", "zbf", "zbg", "zbh"});
        }
        if (i2 == 3) {
            return new zbadu();
        }
        if (i2 == 4) {
            return new zbadt(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
