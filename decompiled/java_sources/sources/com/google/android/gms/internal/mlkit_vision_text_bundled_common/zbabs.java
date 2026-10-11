package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

/* loaded from: classes5.dex */
public final class zbabs extends zbuf implements zbvn {
    private static final zbabs zbb;
    private int zbd;
    private zbuk zbe = zbuf.zbv();
    private zbuk zbf = zbuf.zbv();
    private int zbg;
    private int zbh;
    private int zbi;
    private int zbj;

    static {
        zbabs zbabsVar = new zbabs();
        zbb = zbabsVar;
        zbuf.zbD(zbabs.class, zbabsVar);
    }

    private zbabs() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0002\u0000\u0001\u0013\u0002\u0013\u0003ဋ\u0000\u0004ဋ\u0001\u0005ဋ\u0002\u0006ဋ\u0003", new Object[]{"zbd", "zbe", "zbf", "zbg", "zbh", "zbi", "zbj"});
        }
        if (i2 == 3) {
            return new zbabs();
        }
        if (i2 == 4) {
            return new zbabr(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
