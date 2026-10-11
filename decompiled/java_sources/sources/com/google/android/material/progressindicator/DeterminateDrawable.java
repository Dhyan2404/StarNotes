package com.google.android.material.progressindicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.math.MathUtils;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.progressindicator.BaseProgressIndicatorSpec;
import com.google.android.material.progressindicator.DrawingDelegate;
import com.sunia.HTREnginev2.mif;

/* loaded from: classes6.dex */
public final class DeterminateDrawable<S extends BaseProgressIndicatorSpec> extends mif {

    /* renamed from: J */
    public static final int f31919J = 10000;

    /* renamed from: O */
    public static final float f31920O = 50.0f;

    /* renamed from: Q */
    public static final float f31921Q = 0.01f;

    /* renamed from: Z */
    public static final FloatPropertyCompat<DeterminateDrawable<?>> f31922Z = new C5349a("indicatorLevel");

    /* renamed from: v */
    public DrawingDelegate<S> f31923v;

    /* renamed from: w */
    public final SpringForce f31924w;

    /* renamed from: x */
    public final SpringAnimation f31925x;

    /* renamed from: y */
    public final DrawingDelegate.ActiveIndicator f31926y;

    /* renamed from: z */
    public boolean f31927z;

    /* renamed from: com.google.android.material.progressindicator.DeterminateDrawable$a */
    /* loaded from: classes6.dex */
    public class C5349a extends FloatPropertyCompat<DeterminateDrawable<?>> {
        public C5349a(String str) {
            super(str);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(DeterminateDrawable<?> determinateDrawable) {
            return determinateDrawable.m24451w() * 10000.0f;
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(DeterminateDrawable<?> determinateDrawable, float f) {
            determinateDrawable.m24453y(f / 10000.0f);
        }
    }

    public DeterminateDrawable(@NonNull Context context, @NonNull BaseProgressIndicatorSpec baseProgressIndicatorSpec, @NonNull DrawingDelegate<S> drawingDelegate) {
        super(context, baseProgressIndicatorSpec);
        this.f31927z = false;
        m24452x(drawingDelegate);
        this.f31926y = new DrawingDelegate.ActiveIndicator();
        SpringForce springForce = new SpringForce();
        this.f31924w = springForce;
        springForce.setDampingRatio(1.0f);
        springForce.setStiffness(50.0f);
        SpringAnimation springAnimation = new SpringAnimation(this, (FloatPropertyCompat<DeterminateDrawable<S>>) f31922Z);
        this.f31925x = springAnimation;
        springAnimation.setSpring(springForce);
        m55636k(1.0f);
    }

    @NonNull
    public static DeterminateDrawable<CircularProgressIndicatorSpec> createCircularDrawable(@NonNull Context context, @NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        return m24447t(context, circularProgressIndicatorSpec, new C5350a(circularProgressIndicatorSpec));
    }

    @NonNull
    public static DeterminateDrawable<LinearProgressIndicatorSpec> createLinearDrawable(@NonNull Context context, @NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        return m24448u(context, linearProgressIndicatorSpec, new C5353d(linearProgressIndicatorSpec));
    }

    @NonNull
    /* renamed from: t */
    public static DeterminateDrawable<CircularProgressIndicatorSpec> m24447t(@NonNull Context context, @NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec, @NonNull C5350a c5350a) {
        return new DeterminateDrawable<>(context, circularProgressIndicatorSpec, c5350a);
    }

    @NonNull
    /* renamed from: u */
    public static DeterminateDrawable<LinearProgressIndicatorSpec> m24448u(@NonNull Context context, @NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec, @NonNull C5353d c5353d) {
        return new DeterminateDrawable<>(context, linearProgressIndicatorSpec, c5353d);
    }

    public void addSpringAnimationEndListener(@NonNull DynamicAnimation.OnAnimationEndListener onAnimationEndListener) {
        this.f31925x.addEndListener(onAnimationEndListener);
    }

    @Override // com.sunia.HTREnginev2.mif, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ void clearAnimationCallbacks() {
        super.clearAnimationCallbacks();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect rect = new Rect();
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(rect)) {
            canvas.save();
            this.f31923v.m24463g(canvas, getBounds(), m55633h(), isShowing(), isHiding());
            this.f77645q.setStyle(Paint.Style.FILL);
            this.f77645q.setAntiAlias(true);
            DrawingDelegate.ActiveIndicator activeIndicator = this.f31926y;
            BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f77634f;
            activeIndicator.f31931c = baseProgressIndicatorSpec.indicatorColors[0];
            int i = baseProgressIndicatorSpec.indicatorTrackGapSize;
            if (i > 0) {
                if (!(this.f31923v instanceof C5353d)) {
                    i = (int) ((i * MathUtils.clamp(m24451w(), 0.0f, 0.01f)) / 0.01f);
                }
                this.f31923v.mo24460d(canvas, this.f77645q, m24451w(), 1.0f, this.f77634f.trackColor, getAlpha(), i);
            } else {
                this.f31923v.mo24460d(canvas, this.f77645q, 0.0f, 1.0f, baseProgressIndicatorSpec.trackColor, getAlpha(), 0);
            }
            this.f31923v.mo24459c(canvas, this.f77645q, this.f31926y, getAlpha());
            this.f31923v.mo24458b(canvas, this.f77645q, this.f77634f.indicatorColors[0], getAlpha());
            canvas.restore();
        }
    }

    @Override // com.sunia.HTREnginev2.mif, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f31923v.mo24461e();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f31923v.mo24462f();
    }

    @Override // com.sunia.HTREnginev2.mif, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // com.sunia.HTREnginev2.mif
    public /* bridge */ /* synthetic */ boolean hideNow() {
        return super.hideNow();
    }

    @Override // com.sunia.HTREnginev2.mif
    public /* bridge */ /* synthetic */ boolean isHiding() {
        return super.isHiding();
    }

    @Override // com.sunia.HTREnginev2.mif, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ boolean isRunning() {
        return super.isRunning();
    }

    @Override // com.sunia.HTREnginev2.mif
    public /* bridge */ /* synthetic */ boolean isShowing() {
        return super.isShowing();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f31925x.skipToEnd();
        m24453y(getLevel() / 10000.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        if (this.f31927z) {
            this.f31925x.skipToEnd();
            m24453y(i / 10000.0f);
            return true;
        }
        this.f31925x.setStartValue(m24451w() * 10000.0f);
        this.f31925x.animateToFinalPosition(i);
        return true;
    }

    @Override // com.sunia.HTREnginev2.mif
    /* renamed from: q */
    public boolean mo24449q(boolean z, boolean z2, boolean z3) {
        boolean mo24449q = super.mo24449q(z, z2, z3);
        float systemAnimatorDurationScale = this.f77635g.getSystemAnimatorDurationScale(this.f77633e.getContentResolver());
        if (systemAnimatorDurationScale == 0.0f) {
            this.f31927z = true;
        } else {
            this.f31927z = false;
            this.f31924w.setStiffness(50.0f / systemAnimatorDurationScale);
        }
        return mo24449q;
    }

    @Override // com.sunia.HTREnginev2.mif, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        super.registerAnimationCallback(animationCallback);
    }

    public void removeSpringAnimationEndListener(@NonNull DynamicAnimation.OnAnimationEndListener onAnimationEndListener) {
        this.f31925x.removeEndListener(onAnimationEndListener);
    }

    @Override // com.sunia.HTREnginev2.mif, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(@IntRange(from = 0, m281to = 255) int i) {
        super.setAlpha(i);
    }

    @Override // com.sunia.HTREnginev2.mif, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(@Nullable ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // com.sunia.HTREnginev2.mif, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2);
    }

    @Override // com.sunia.HTREnginev2.mif, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ void start() {
        super.start();
    }

    @Override // com.sunia.HTREnginev2.mif, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ void stop() {
        super.stop();
    }

    @Override // com.sunia.HTREnginev2.mif, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        return super.unregisterAnimationCallback(animationCallback);
    }

    @NonNull
    /* renamed from: v */
    public DrawingDelegate<S> m24450v() {
        return this.f31923v;
    }

    /* renamed from: w */
    public final float m24451w() {
        return this.f31926y.f31930b;
    }

    /* renamed from: x */
    public void m24452x(@NonNull DrawingDelegate<S> drawingDelegate) {
        this.f31923v = drawingDelegate;
    }

    /* renamed from: y */
    public final void m24453y(float f) {
        this.f31926y.f31930b = f;
        invalidateSelf();
    }

    /* renamed from: z */
    public void m24454z(float f) {
        setLevel((int) (f * 10000.0f));
    }

    @Override // com.sunia.HTREnginev2.mif
    public /* bridge */ /* synthetic */ boolean setVisible(boolean z, boolean z2, boolean z3) {
        return super.setVisible(z, z2, z3);
    }
}
