package com.google.android.libraries.vision.visionkit.pipeline;

import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvn;
import com.sunia.HTREnginev2.mcp;

/* loaded from: classes5.dex */
public final class zbaw extends zbuf implements zbvn {
    private static final zbaw zbb;
    private int zbd;
    private int zbe;

    static {
        zbaw zbawVar = new zbaw();
        zbb = zbawVar;
        zbuf.zbD(zbaw.class, zbawVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001င\u0000", new Object[]{"zbd", "zbe"});
        }
        if (i2 == 3) {
            return new zbaw();
        }
        mcp mcpVar = null;
        if (i2 == 4) {
            return new zbav(mcpVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
