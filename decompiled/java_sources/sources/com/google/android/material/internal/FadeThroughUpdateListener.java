package com.google.android.material.internal;

import android.animation.ValueAnimator;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.sunia.HTREnginev2.x8g;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class FadeThroughUpdateListener implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: e */
    @Nullable
    public final View f31566e;

    /* renamed from: f */
    @Nullable
    public final View f31567f;

    /* renamed from: g */
    public final float[] f31568g = new float[2];

    public FadeThroughUpdateListener(@Nullable View view, @Nullable View view2) {
        this.f31566e = view;
        this.f31567f = view2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
        x8g.m58161a(((Float) valueAnimator.getAnimatedValue()).floatValue(), this.f31568g);
        View view = this.f31566e;
        if (view != null) {
            view.setAlpha(this.f31568g[0]);
        }
        View view2 = this.f31567f;
        if (view2 != null) {
            view2.setAlpha(this.f31568g[1]);
        }
    }
}
