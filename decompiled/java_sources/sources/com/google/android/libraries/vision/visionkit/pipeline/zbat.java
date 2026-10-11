package com.google.android.libraries.vision.visionkit.pipeline;

import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbun;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvn;

/* loaded from: classes5.dex */
public final class zbat extends zbuf implements zbvn {
    private static final zbat zbb;
    private zbun zbd = zbuf.zby();

    static {
        zbat zbatVar = new zbat();
        zbb = zbatVar;
        zbuf.zbD(zbat.class, zbatVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zbd", zbaq.class});
        }
        if (i2 == 3) {
            return new zbat();
        }
        if (i2 == 4) {
            return new zbao(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
