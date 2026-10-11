package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

/* loaded from: classes5.dex */
public final class zblp extends zbub implements zbvn {
    private static final zblp zbd;
    private int zbe;
    private boolean zbf;
    private byte zbg = 2;

    static {
        zblp zblpVar = new zblp();
        zbd = zblpVar;
        zbuf.zbD(zblp.class, zblpVar);
    }

    private zblp() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return Byte.valueOf(this.zbg);
        }
        if (i2 == 2) {
            return zbuf.zbA(zbd, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဇ\u0000", new Object[]{"zbe", "zbf"});
        }
        if (i2 == 3) {
            return new zblp();
        }
        if (i2 == 4) {
            return new zblo(null);
        }
        if (i2 == 5) {
            return zbd;
        }
        this.zbg = obj == null ? (byte) 0 : (byte) 1;
        return null;
    }
}
