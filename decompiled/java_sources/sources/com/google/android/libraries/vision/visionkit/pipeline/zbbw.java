package com.google.android.libraries.vision.visionkit.pipeline;

import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbun;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvn;
import com.sunia.HTREnginev2.adp;

/* loaded from: classes5.dex */
public final class zbbw extends zbuf implements zbvn {
    private static final zbbw zbb;
    private int zbd;
    private zbun zbe = zbuf.zby();
    private long zbf;

    static {
        zbbw zbbwVar = new zbbw();
        zbb = zbbwVar;
        zbuf.zbD(zbbw.class, zbbwVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001a\u0002ဂ\u0000", new Object[]{"zbd", "zbe", "zbf"});
        }
        if (i2 == 3) {
            return new zbbw();
        }
        adp adpVar = null;
        if (i2 == 4) {
            return new zbbv(adpVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
