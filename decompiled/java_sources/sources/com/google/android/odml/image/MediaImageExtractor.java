package com.google.android.odml.image;

import android.media.Image;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.sunia.HTREnginev2.pkp;
import com.sunia.HTREnginev2.ulp;

@RequiresApi(19)
/* loaded from: classes6.dex */
public class MediaImageExtractor {
    @NonNull
    public static Image extract(@NonNull MlImage mlImage) {
        pkp m25654f = mlImage.m25654f();
        if (m25654f.zzb().getStorageType() == 3) {
            return ((ulp) m25654f).m57640a();
        }
        throw new IllegalArgumentException("Extract Media Image from an MlImage created by objects other than Media Image is not supported");
    }
}
