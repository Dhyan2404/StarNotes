package com.sunia.HTREnginev2;

import android.view.animation.Interpolator;

/* loaded from: classes3.dex */
public abstract class a6j implements Interpolator {

    /* renamed from: a */
    public final float[] f64377a;

    /* renamed from: b */
    public final float f64378b;

    public a6j(float[] fArr) {
        this.f64377a = fArr;
        this.f64378b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.f64377a;
        int min = Math.min((int) ((fArr.length - 1) * f), fArr.length - 2);
        float f2 = this.f64378b;
        float f3 = (f - (min * f2)) / f2;
        float[] fArr2 = this.f64377a;
        float f4 = fArr2[min];
        return f4 + (f3 * (fArr2[min + 1] - f4));
    }
}
