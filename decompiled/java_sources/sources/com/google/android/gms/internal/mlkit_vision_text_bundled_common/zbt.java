package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

/* loaded from: classes5.dex */
public final class zbt extends zbuf implements zbvn {
    private static final zbt zbb;
    private zbun zbd = zbuf.zby();

    static {
        zbt zbtVar = new zbt();
        zbb = zbtVar;
        zbuf.zbD(zbt.class, zbtVar);
    }

    private zbt() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zbd", zbw.class});
        }
        if (i2 == 3) {
            return new zbt();
        }
        zbr zbrVar = null;
        if (i2 == 4) {
            return new zbs(zbrVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
