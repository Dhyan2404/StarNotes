package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

/* loaded from: classes5.dex */
public final class zbahr extends zbuf implements zbvn {
    private static final zbahr zbb;
    private int zbd = 0;
    private Object zbe;
    private float zbf;

    static {
        zbahr zbahrVar = new zbahr();
        zbb = zbahrVar;
        zbuf.zbD(zbahr.class, zbahrVar);
    }

    private zbahr() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u00017\u0000\u00024\u0000\u0003Ȼ\u0000\u0004\u0001", new Object[]{"zbe", "zbd", "zbf"});
        }
        if (i2 == 3) {
            return new zbahr();
        }
        zbagx zbagxVar = null;
        if (i2 == 4) {
            return new zbahq(zbagxVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
