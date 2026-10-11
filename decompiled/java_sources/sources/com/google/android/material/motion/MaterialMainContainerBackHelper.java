package com.google.android.material.motion;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.RoundedCorner;
import android.view.View;
import android.view.WindowInsets;
import androidx.activity.BackEventCompat;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MaterialMainContainerBackHelper;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class MaterialMainContainerBackHelper extends MaterialBackAnimationHelper<View> {

    /* renamed from: m */
    public static final float f31744m = 0.9f;

    /* renamed from: g */
    public final float f31745g;

    /* renamed from: h */
    public final float f31746h;

    /* renamed from: i */
    public float f31747i;

    /* renamed from: j */
    @Nullable
    public Rect f31748j;

    /* renamed from: k */
    @Nullable
    public Rect f31749k;

    /* renamed from: l */
    @Nullable
    public Integer f31750l;

    /* renamed from: com.google.android.material.motion.MaterialMainContainerBackHelper$a */
    /* loaded from: classes6.dex */
    public class C5328a extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ View f31751e;

        public C5328a(View view) {
            this.f31751e = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            View view = this.f31751e;
            if (view != null) {
                view.setVisibility(0);
            }
        }
    }

    public MaterialMainContainerBackHelper(@NonNull View view) {
        super(view);
        Resources resources = view.getResources();
        this.f31745g = resources.getDimension(C5139R.dimen.m3_back_progress_main_container_min_edge_gap);
        this.f31746h = resources.getDimension(C5139R.dimen.m3_back_progress_main_container_max_translation_y);
    }

    /* renamed from: g */
    public static /* synthetic */ void m24333g(ClippableRoundedCornerLayout clippableRoundedCornerLayout, ValueAnimator valueAnimator) {
        clippableRoundedCornerLayout.updateCornerRadius(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    @NonNull
    /* renamed from: b */
    public final ValueAnimator m24334b(final ClippableRoundedCornerLayout clippableRoundedCornerLayout) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(clippableRoundedCornerLayout.getCornerRadius(), getExpandedCornerSize());
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.ggj
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                MaterialMainContainerBackHelper.m24333g(ClippableRoundedCornerLayout.this, valueAnimator);
            }
        });
        return ofFloat;
    }

    @NonNull
    /* renamed from: c */
    public final AnimatorSet m24335c(@Nullable View view) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.view, (Property<V, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.view, (Property<V, Float>) View.SCALE_Y, 1.0f), ObjectAnimator.ofFloat(this.view, (Property<V, Float>) View.TRANSLATION_X, 0.0f), ObjectAnimator.ofFloat(this.view, (Property<V, Float>) View.TRANSLATION_Y, 0.0f));
        animatorSet.addListener(new C5328a(view));
        return animatorSet;
    }

    public void cancelBackProgress(@Nullable View view) {
        if (super.onCancelBackProgress() == null) {
            return;
        }
        AnimatorSet m24335c = m24335c(view);
        V v = this.view;
        if (v instanceof ClippableRoundedCornerLayout) {
            m24335c.playTogether(m24334b((ClippableRoundedCornerLayout) v));
        }
        m24335c.setDuration(this.cancelDuration);
        m24335c.start();
        m24339h();
    }

    /* renamed from: d */
    public final int m24336d() {
        WindowInsets rootWindowInsets;
        if (Build.VERSION.SDK_INT < 31 || (rootWindowInsets = this.view.getRootWindowInsets()) == null) {
            return 0;
        }
        return Math.max(Math.max(m24337e(rootWindowInsets, 0), m24337e(rootWindowInsets, 1)), Math.max(m24337e(rootWindowInsets, 3), m24337e(rootWindowInsets, 2)));
    }

    @RequiresApi(31)
    /* renamed from: e */
    public final int m24337e(WindowInsets windowInsets, int i) {
        RoundedCorner roundedCorner;
        int radius;
        roundedCorner = windowInsets.getRoundedCorner(i);
        if (roundedCorner == null) {
            return 0;
        }
        radius = roundedCorner.getRadius();
        return radius;
    }

    /* renamed from: f */
    public final boolean m24338f() {
        int[] iArr = new int[2];
        this.view.getLocationOnScreen(iArr);
        return iArr[1] == 0;
    }

    public void finishBackProgress(long j, @Nullable View view) {
        AnimatorSet m24335c = m24335c(view);
        m24335c.setDuration(j);
        m24335c.start();
        m24339h();
    }

    public int getExpandedCornerSize() {
        if (this.f31750l == null) {
            this.f31750l = Integer.valueOf(m24338f() ? m24336d() : 0);
        }
        return this.f31750l.intValue();
    }

    @Nullable
    public Rect getInitialHideFromClipBounds() {
        return this.f31749k;
    }

    @Nullable
    public Rect getInitialHideToClipBounds() {
        return this.f31748j;
    }

    /* renamed from: h */
    public final void m24339h() {
        this.f31747i = 0.0f;
        this.f31748j = null;
        this.f31749k = null;
    }

    public void startBackProgress(@NonNull BackEventCompat backEventCompat, @Nullable View view) {
        super.onStartBackProgress(backEventCompat);
        startBackProgress(backEventCompat.getTouchY(), view);
    }

    public void updateBackProgress(@NonNull BackEventCompat backEventCompat, @Nullable View view, float f) {
        if (super.onUpdateBackProgress(backEventCompat) == null) {
            return;
        }
        if (view != null && view.getVisibility() != 4) {
            view.setVisibility(4);
        }
        updateBackProgress(backEventCompat.getProgress(), backEventCompat.getSwipeEdge() == 0, backEventCompat.getTouchY(), f);
    }

    @VisibleForTesting
    public void startBackProgress(float f, @Nullable View view) {
        this.f31748j = ViewUtils.calculateRectFromBounds(this.view);
        if (view != null) {
            this.f31749k = ViewUtils.calculateOffsetRectFromBounds(this.view, view);
        }
        this.f31747i = f;
    }

    @VisibleForTesting
    public void updateBackProgress(float f, boolean z, float f2, float f3) {
        float interpolateProgress = interpolateProgress(f);
        float width = this.view.getWidth();
        float height = this.view.getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        float lerp = AnimationUtils.lerp(1.0f, 0.9f, interpolateProgress);
        float lerp2 = AnimationUtils.lerp(0.0f, Math.max(0.0f, ((width - (0.9f * width)) / 2.0f) - this.f31745g), interpolateProgress) * (z ? 1 : -1);
        float min = Math.min(Math.max(0.0f, ((height - (lerp * height)) / 2.0f) - this.f31745g), this.f31746h);
        float f4 = f2 - this.f31747i;
        float lerp3 = AnimationUtils.lerp(0.0f, min, Math.abs(f4) / height) * Math.signum(f4);
        this.view.setScaleX(lerp);
        this.view.setScaleY(lerp);
        this.view.setTranslationX(lerp2);
        this.view.setTranslationY(lerp3);
        V v = this.view;
        if (v instanceof ClippableRoundedCornerLayout) {
            ((ClippableRoundedCornerLayout) v).updateCornerRadius(AnimationUtils.lerp(getExpandedCornerSize(), f3, interpolateProgress));
        }
    }
}
