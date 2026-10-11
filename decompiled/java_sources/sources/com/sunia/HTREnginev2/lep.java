package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbcr;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbnx;
import com.google.android.libraries.vision.visionkit.pipeline.zbbd;
import com.google.android.libraries.vision.visionkit.pipeline.zbbe;
import java.nio.ByteBuffer;

/* loaded from: classes6.dex */
public final class lep {
    /* renamed from: a */
    public static zbbe m55413a(@NonNull ByteBuffer byteBuffer, @NonNull zbnx zbnxVar) {
        zbbd zbbdVar = new zbbd();
        zbbdVar.zba(byteBuffer.array());
        zbbdVar.zbf(m55414b(zbnxVar.zbc()));
        zbbdVar.zbb(new zbcr(zbnxVar.zbd(), zbnxVar.zba()));
        zbbdVar.zbc(zbnxVar.zbe() * 1000);
        zbbdVar.zbe(2);
        return zbbdVar.zbd();
    }

    /* renamed from: b */
    public static int m55414b(int i) {
        if (i == 1) {
            return 4;
        }
        if (i != 2) {
            return i != 3 ? 1 : 2;
        }
        return 3;
    }
}
