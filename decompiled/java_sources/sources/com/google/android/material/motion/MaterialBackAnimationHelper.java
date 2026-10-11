package com.google.android.material.motion;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.Log;
import android.view.View;
import androidx.activity.BackEventCompat;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.google.android.material.C5139R;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public abstract class MaterialBackAnimationHelper<V extends View> {

    /* renamed from: c */
    public static final String f31729c = "MaterialBackHelper";

    /* renamed from: d */
    public static final int f31730d = 300;

    /* renamed from: e */
    public static final int f31731e = 150;

    /* renamed from: f */
    public static final int f31732f = 100;

    /* renamed from: a */
    @NonNull
    public final TimeInterpolator f31733a;

    /* renamed from: b */
    @Nullable
    public BackEventCompat f31734b;
    protected final int cancelDuration;
    protected final int hideDurationMax;
    protected final int hideDurationMin;

    @NonNull
    protected final V view;

    public MaterialBackAnimationHelper(@NonNull V v) {
        this.view = v;
        Context context = v.getContext();
        this.f31733a = MotionUtils.resolveThemeInterpolator(context, C5139R.attr.motionEasingStandardDecelerateInterpolator, PathInterpolatorCompat.create(0.0f, 0.0f, 0.0f, 1.0f));
        this.hideDurationMax = MotionUtils.resolveThemeDuration(context, C5139R.attr.motionDurationMedium2, 300);
        this.hideDurationMin = MotionUtils.resolveThemeDuration(context, C5139R.attr.motionDurationShort3, 150);
        this.cancelDuration = MotionUtils.resolveThemeDuration(context, C5139R.attr.motionDurationShort2, 100);
    }

    public float interpolateProgress(float f) {
        return this.f31733a.getInterpolation(f);
    }

    @Nullable
    public BackEventCompat onCancelBackProgress() {
        if (this.f31734b == null) {
            Log.w(f31729c, "Must call startBackProgress() and updateBackProgress() before cancelBackProgress()");
        }
        BackEventCompat backEventCompat = this.f31734b;
        this.f31734b = null;
        return backEventCompat;
    }

    @Nullable
    public BackEventCompat onHandleBackInvoked() {
        BackEventCompat backEventCompat = this.f31734b;
        this.f31734b = null;
        return backEventCompat;
    }

    public void onStartBackProgress(@NonNull BackEventCompat backEventCompat) {
        this.f31734b = backEventCompat;
    }

    @Nullable
    public BackEventCompat onUpdateBackProgress(@NonNull BackEventCompat backEventCompat) {
        if (this.f31734b == null) {
            Log.w(f31729c, "Must call startBackProgress() before updateBackProgress()");
        }
        BackEventCompat backEventCompat2 = this.f31734b;
        this.f31734b = backEventCompat;
        return backEventCompat2;
    }
}
