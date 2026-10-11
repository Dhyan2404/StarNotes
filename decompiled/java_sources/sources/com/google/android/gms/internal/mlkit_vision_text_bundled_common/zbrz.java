package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

/* loaded from: classes5.dex */
public final class zbrz extends zbuf implements zbvn {
    private static final zbrz zbb;
    private int zbd;
    private zbun zbe = zbuf.zby();
    private zbun zbf = zbuf.zby();
    private int zbg;

    static {
        zbrz zbrzVar = new zbrz();
        zbb = zbrzVar;
        zbuf.zbD(zbrz.class, zbrzVar);
    }

    private zbrz() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0002\u0000\u0001\u001b\u0002\u001b\u0003င\u0000", new Object[]{"zbd", "zbe", zbsb.class, "zbf", zbrv.class, "zbg"});
        }
        if (i2 == 3) {
            return new zbrz();
        }
        if (i2 == 4) {
            return new zbry(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
