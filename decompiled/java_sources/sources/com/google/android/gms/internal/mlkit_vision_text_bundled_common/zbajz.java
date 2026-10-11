package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

/* loaded from: classes5.dex */
public final class zbajz extends zbuf implements zbvn {
    private static final zbajz zbb;
    private zbuk zbd = zbuf.zbv();

    static {
        zbajz zbajzVar = new zbajz();
        zbb = zbajzVar;
        zbuf.zbD(zbajz.class, zbajzVar);
    }

    private zbajz() {
    }

    public static /* synthetic */ zbajz zbc() {
        return zbb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001$", new Object[]{"zbd"});
        }
        if (i2 == 3) {
            return new zbajz();
        }
        if (i2 == 4) {
            return new zbajy(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
