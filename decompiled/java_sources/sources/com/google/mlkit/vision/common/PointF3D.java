package com.google.mlkit.vision.common;

import androidx.annotation.NonNull;
import com.sunia.HTREnginev2.zep;

/* loaded from: classes6.dex */
public abstract class PointF3D {
    @NonNull
    public static PointF3D from(float f, float f2, float f3) {
        return new zep(f, f2, f3);
    }

    public abstract float getX();

    public abstract float getY();

    public abstract float getZ();
}
