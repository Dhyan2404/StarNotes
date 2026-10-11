package com.google.android.libraries.vision.visionkit.pipeline;

import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvn;
import com.sunia.HTREnginev2.ddp;

/* loaded from: classes5.dex */
public final class zbck extends zbuf implements zbvn {
    private static final zbck zbb;
    private int zbd;
    private long zbe;
    private long zbf;

    static {
        zbck zbckVar = new zbck();
        zbb = zbckVar;
        zbuf.zbD(zbck.class, zbckVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001", new Object[]{"zbd", "zbe", "zbf"});
        }
        if (i2 == 3) {
            return new zbck();
        }
        ddp ddpVar = null;
        if (i2 == 4) {
            return new zbcj(ddpVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
