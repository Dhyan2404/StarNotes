package com.google.android.material.carousel;

import android.content.Context;
import android.view.View;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import com.sunia.HTREnginev2.tnd;

/* loaded from: classes6.dex */
public abstract class CarouselStrategy {

    /* renamed from: a */
    public float f30652a;

    /* renamed from: b */
    public float f30653b;

    /* renamed from: a */
    public static int[] m23344a(int[] iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i = 0; i < length; i++) {
            iArr2[i] = iArr[i] * 2;
        }
        return iArr2;
    }

    @FloatRange(from = 0.0d, m280to = 1.0d)
    /* renamed from: b */
    public static float m23345b(float f, float f2, float f3) {
        return 1.0f - ((f - f3) / (f2 - f3));
    }

    /* renamed from: c */
    public void m23346c(Context context) {
        float f = this.f30652a;
        if (f <= 0.0f) {
            f = C5200a.m23367h(context);
        }
        this.f30652a = f;
        float f2 = this.f30653b;
        if (f2 <= 0.0f) {
            f2 = C5200a.m23366g(context);
        }
        this.f30653b = f2;
    }

    /* renamed from: d */
    public boolean mo23347d() {
        return true;
    }

    /* renamed from: e */
    public abstract C5201b mo23348e(@NonNull tnd tndVar, @NonNull View view);

    /* renamed from: f */
    public boolean mo23349f(tnd tndVar, int i) {
        return false;
    }

    public float getSmallItemSizeMax() {
        return this.f30653b;
    }

    public float getSmallItemSizeMin() {
        return this.f30652a;
    }

    public void setSmallItemSizeMax(float f) {
        this.f30653b = f;
    }

    public void setSmallItemSizeMin(float f) {
        this.f30652a = f;
    }
}
