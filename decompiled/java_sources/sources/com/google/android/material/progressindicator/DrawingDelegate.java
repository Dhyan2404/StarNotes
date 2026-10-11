package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Px;
import com.google.android.material.progressindicator.BaseProgressIndicatorSpec;

/* loaded from: classes6.dex */
public abstract class DrawingDelegate<S extends BaseProgressIndicatorSpec> {

    /* renamed from: a */
    public S f31928a;

    /* loaded from: classes6.dex */
    public static class ActiveIndicator {

        /* renamed from: a */
        @FloatRange(from = 0.0d, m280to = 1.0d)
        public float f31929a;

        /* renamed from: b */
        @FloatRange(from = 0.0d, m280to = 1.0d)
        public float f31930b;

        /* renamed from: c */
        @ColorInt
        public int f31931c;

        /* renamed from: d */
        @Px
        public int f31932d;
    }

    public DrawingDelegate(S s) {
        this.f31928a = s;
    }

    /* renamed from: a */
    public abstract void mo24457a(@NonNull Canvas canvas, @NonNull Rect rect, @FloatRange(from = -1.0d, m280to = 1.0d) float f, boolean z, boolean z2);

    /* renamed from: b */
    public abstract void mo24458b(@NonNull Canvas canvas, @NonNull Paint paint, @ColorInt int i, @IntRange(from = 0, m281to = 255) int i2);

    /* renamed from: c */
    public abstract void mo24459c(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull ActiveIndicator activeIndicator, @IntRange(from = 0, m281to = 255) int i);

    /* renamed from: d */
    public abstract void mo24460d(@NonNull Canvas canvas, @NonNull Paint paint, @FloatRange(from = 0.0d, m280to = 1.0d) float f, @FloatRange(from = 0.0d, m280to = 1.0d) float f2, @ColorInt int i, @IntRange(from = 0, m281to = 255) int i2, @Px int i3);

    /* renamed from: e */
    public abstract int mo24461e();

    /* renamed from: f */
    public abstract int mo24462f();

    /* renamed from: g */
    public void m24463g(@NonNull Canvas canvas, @NonNull Rect rect, @FloatRange(from = 0.0d, m280to = 1.0d) float f, boolean z, boolean z2) {
        this.f31928a.mo24441c();
        mo24457a(canvas, rect, f, z, z2);
    }
}
