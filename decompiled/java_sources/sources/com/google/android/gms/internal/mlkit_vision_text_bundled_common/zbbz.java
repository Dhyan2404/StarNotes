package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

/* loaded from: classes5.dex */
public final class zbbz extends zbuf implements zbvn {
    private static final zbbz zbb;
    private int zbd;
    private zbun zbe = zbuf.zby();
    private zbbw zbf;

    static {
        zbbz zbbzVar = new zbbz();
        zbb = zbbzVar;
        zbuf.zbD(zbbz.class, zbbzVar);
    }

    private zbbz() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000", new Object[]{"zbd", "zbe", zbgr.class, "zbf"});
        }
        if (i2 == 3) {
            return new zbbz();
        }
        if (i2 == 4) {
            return new zbby(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
