package com.google.android.odml.image;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.sunia.HTREnginev2.pkp;
import com.sunia.HTREnginev2.yjp;

/* loaded from: classes6.dex */
public final class BitmapExtractor {
    @NonNull
    public static Bitmap extract(@NonNull MlImage mlImage) {
        pkp m25654f = mlImage.m25654f();
        if (m25654f.zzb().getStorageType() == 1) {
            return ((yjp) m25654f).m58448a();
        }
        throw new IllegalArgumentException("Extracting Bitmap from an MlImage created by objects other than Bitmap is not supported");
    }
}
