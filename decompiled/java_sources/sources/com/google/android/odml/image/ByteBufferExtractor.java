package com.google.android.odml.image;

import androidx.annotation.NonNull;
import com.sunia.HTREnginev2.hkp;
import com.sunia.HTREnginev2.pkp;
import java.nio.ByteBuffer;

/* loaded from: classes6.dex */
public class ByteBufferExtractor {
    @NonNull
    public static ByteBuffer extract(@NonNull MlImage mlImage) {
        pkp m25654f = mlImage.m25654f();
        if (m25654f.zzb().getStorageType() == 2) {
            return ((hkp) m25654f).m54566a().asReadOnlyBuffer();
        }
        throw new IllegalArgumentException("Extract ByteBuffer from an MlImage created by objects other than Bytebuffer is not supported");
    }
}
