package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

/* loaded from: classes5.dex */
public final class zbaey extends zbuf implements zbvn {
    private static final zbaey zbb;
    private zbuk zbd = zbuf.zbv();
    private zbuk zbe = zbuf.zbv();
    private zbuk zbf = zbuf.zbv();
    private zbuk zbg = zbuf.zbv();
    private zbuk zbh = zbuf.zbv();
    private zbuk zbi = zbuf.zbv();

    static {
        zbaey zbaeyVar = new zbaey();
        zbb = zbaeyVar;
        zbuf.zbD(zbaey.class, zbaeyVar);
    }

    private zbaey() {
    }

    public static /* synthetic */ zbaey zbc() {
        return zbb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0001\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0006\u0000\u0001\u0013\u0002\u0013\u0003\u0013\u0004\u0013\u0005\u0013\u0006\u0013", new Object[]{"zbd", "zbe", "zbf", "zbg", "zbh", "zbi"});
        }
        if (i2 == 3) {
            return new zbaey();
        }
        if (i2 == 4) {
            return new zbaex(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
