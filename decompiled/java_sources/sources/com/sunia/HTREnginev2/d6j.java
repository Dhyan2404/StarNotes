package com.sunia.HTREnginev2;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;

/* loaded from: classes3.dex */
public interface d6j {
    @Nullable
    Bitmap get(int i, int i2, Bitmap.Config config);

    int getSize(Bitmap bitmap);

    String logBitmap(int i, int i2, Bitmap.Config config);

    String logBitmap(Bitmap bitmap);

    void put(Bitmap bitmap);

    @Nullable
    Bitmap removeLast();
}
