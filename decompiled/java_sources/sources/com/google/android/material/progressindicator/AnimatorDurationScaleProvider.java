package com.google.android.material.progressindicator;

import android.content.ContentResolver;
import android.provider.Settings;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class AnimatorDurationScaleProvider {

    /* renamed from: a */
    public static float f31896a = 1.0f;

    @VisibleForTesting
    public static void setDefaultSystemAnimatorDurationScale(float f) {
        f31896a = f;
    }

    public float getSystemAnimatorDurationScale(@NonNull ContentResolver contentResolver) {
        return Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f);
    }
}
