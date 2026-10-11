package com.google.android.libraries.vision.visionkit.pipeline;

import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbix;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbun;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvn;

/* loaded from: classes5.dex */
public final class zbaa extends zbuf implements zbvn {
    private static final zbaa zbb;
    private int zbd;
    private int zbf;
    private zbun zbe = zbuf.zby();
    private zbun zbg = zbuf.zby();

    static {
        zbaa zbaaVar = new zbaa();
        zbb = zbaaVar;
        zbuf.zbD(zbaa.class, zbaaVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf
    public final Object zbb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zbuf.zbA(zbb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0002\u0000\u0001\u001b\u0002င\u0000\u0003\u001a", new Object[]{"zbd", "zbe", zbix.class, "zbf", "zbg"});
        }
        if (i2 == 3) {
            return new zbaa();
        }
        if (i2 == 4) {
            return new zbz(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zbb;
    }
}
