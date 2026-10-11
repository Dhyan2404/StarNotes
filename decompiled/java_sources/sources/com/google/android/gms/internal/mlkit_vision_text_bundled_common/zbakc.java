package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

import org.apache.commons.compress.archivers.tar.TarConstants;

/* loaded from: classes5.dex */
public final class zbakc extends zbuf implements zbvn {
    private static final zbakc zbb;

    static {
        zbakc zbakcVar = new zbakc();
        zbb = zbakcVar;
        zbuf.zbD(zbakc.class, zbakcVar);
    }

    private zbakc() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        zbaka zbakaVar = null;
        if (i2 == 2) {
            return zbuf.zbA(zbb, TarConstants.VERSION_ANT, null);
        }
        if (i2 == 3) {
            return new zbakc();
        }
        if (i2 == 4) {
            return new zbakb(zbakaVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
