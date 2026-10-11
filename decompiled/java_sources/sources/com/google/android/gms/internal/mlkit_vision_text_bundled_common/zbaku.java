package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

/* loaded from: classes5.dex */
public final class zbaku extends zbuf implements zbvn {
    private static final zbaku zbb;
    private int zbd;
    private zbbt zbe;
    private zbun zbf = zbuf.zby();

    static {
        zbaku zbakuVar = new zbaku();
        zbb = zbakuVar;
        zbuf.zbD(zbaku.class, zbakuVar);
    }

    private zbaku() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဉ\u0000\u0002\u001b", new Object[]{"zbd", "zbe", "zbf", zbajh.class});
        }
        if (i2 == 3) {
            return new zbaku();
        }
        if (i2 == 4) {
            return new zbakt(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
