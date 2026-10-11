package com.sunia.HTREnginev2;

import androidx.annotation.FloatRange;

/* loaded from: classes6.dex */
public final class x8g {

    /* renamed from: a */
    public static final float f89384a = 0.5f;

    /* renamed from: a */
    public static void m58161a(@FloatRange(from = 0.0d, m280to = 1.0d) float f, float[] fArr) {
        if (f <= 0.5f) {
            fArr[0] = 1.0f - (f * 2.0f);
            fArr[1] = 0.0f;
        } else {
            fArr[0] = 0.0f;
            fArr[1] = (f * 2.0f) - 1.0f;
        }
    }
}
