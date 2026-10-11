package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

/* loaded from: classes5.dex */
public final class zbni extends zbuf implements zbvn {
    private static final zbni zbb;
    private zbun zbd = zbuf.zby();

    static {
        zbni zbniVar = new zbni();
        zbb = zbniVar;
        zbuf.zbD(zbni.class, zbniVar);
    }

    private zbni() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zbd", zbnf.class});
        }
        if (i2 == 3) {
            return new zbni();
        }
        zbng zbngVar = null;
        if (i2 == 4) {
            return new zbnh(zbngVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
