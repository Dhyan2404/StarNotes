package com.google.android.libraries.vision.visionkit.pipeline;

import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbun;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvn;
import com.sunia.HTREnginev2.pdp;

/* loaded from: classes5.dex */
public final class zbdt extends zbuf implements zbvn {
    private static final zbdt zbb;
    private zbun zbd = zbuf.zby();

    static {
        zbdt zbdtVar = new zbdt();
        zbb = zbdtVar;
        zbuf.zbD(zbdt.class, zbdtVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zbd", zbds.class});
        }
        if (i2 == 3) {
            return new zbdt();
        }
        pdp pdpVar = null;
        if (i2 == 4) {
            return new zbdq(pdpVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
