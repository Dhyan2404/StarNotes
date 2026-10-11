package com.google.android.material.progressindicator;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import com.google.android.material.C5139R;
import com.google.android.material.progressindicator.BaseProgressIndicatorSpec;
import com.google.android.material.progressindicator.DrawingDelegate;
import com.sunia.HTREnginev2.mif;

/* loaded from: classes6.dex */
public final class IndeterminateDrawable<S extends BaseProgressIndicatorSpec> extends mif {

    /* renamed from: v */
    public DrawingDelegate<S> f31933v;

    /* renamed from: w */
    public AbstractC5352c<ObjectAnimator> f31934w;

    /* renamed from: x */
    public Drawable f31935x;

    public IndeterminateDrawable(@NonNull Context context, @NonNull BaseProgressIndicatorSpec baseProgressIndicatorSpec, @NonNull DrawingDelegate<S> drawingDelegate, @NonNull AbstractC5352c<ObjectAnimator> abstractC5352c) {
        super(context, baseProgressIndicatorSpec);
        m24470x(drawingDelegate);
        m24469w(abstractC5352c);
    }

    @NonNull
    public static IndeterminateDrawable<CircularProgressIndicatorSpec> createCircularDrawable(@NonNull Context context, @NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        return m24464r(context, circularProgressIndicatorSpec, new C5350a(circularProgressIndicatorSpec));
    }

    @NonNull
    public static IndeterminateDrawable<LinearProgressIndicatorSpec> createLinearDrawable(@NonNull Context context, @NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        return m24465s(context, linearProgressIndicatorSpec, new C5353d(linearProgressIndicatorSpec));
    }

    @NonNull
    /* renamed from: r */
    public static IndeterminateDrawable<CircularProgressIndicatorSpec> m24464r(@NonNull Context context, @NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec, @NonNull C5350a c5350a) {
        IndeterminateDrawable<CircularProgressIndicatorSpec> indeterminateDrawable = new IndeterminateDrawable<>(context, circularProgressIndicatorSpec, c5350a, new C5351b(circularProgressIndicatorSpec));
        indeterminateDrawable.setStaticDummyDrawable(VectorDrawableCompat.create(context.getResources(), C5139R.drawable.indeterminate_static, null));
        return indeterminateDrawable;
    }

    @NonNull
    /* renamed from: s */
    public static IndeterminateDrawable<LinearProgressIndicatorSpec> m24465s(@NonNull Context context, @NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec, @NonNull C5353d c5353d) {
        return new IndeterminateDrawable<>(context, linearProgressIndicatorSpec, c5353d, linearProgressIndicatorSpec.indeterminateAnimationType == 0 ? new C5354e(linearProgressIndicatorSpec) : new C5355f(context, linearProgressIndicatorSpec));
    }

    @Override // com.sunia.HTREnginev2.mif, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ void clearAnimationCallbacks() {
        super.clearAnimationCallbacks();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Drawable drawable;
        Rect rect = new Rect();
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(rect)) {
            if (m24468v() && (drawable = this.f31935x) != null) {
                drawable.setBounds(getBounds());
                DrawableCompat.setTint(this.f31935x, this.f77634f.indicatorColors[0]);
                this.f31935x.draw(canvas);
                return;
            }
            canvas.save();
            this.f31933v.m24463g(canvas, getBounds(), m55633h(), isShowing(), isHiding());
            int i = this.f77634f.indicatorTrackGapSize;
            int alpha = getAlpha();
            if (i == 0) {
                this.f31933v.mo24460d(canvas, this.f77645q, 0.0f, 1.0f, this.f77634f.trackColor, alpha, 0);
            } else {
                DrawingDelegate.ActiveIndicator activeIndicator = this.f31934w.f31968b.get(0);
                DrawingDelegate.ActiveIndicator activeIndicator2 = this.f31934w.f31968b.get(r3.size() - 1);
                DrawingDelegate<S> drawingDelegate = this.f31933v;
                if (drawingDelegate instanceof C5353d) {
                    drawingDelegate.mo24460d(canvas, this.f77645q, 0.0f, activeIndicator.f31929a, this.f77634f.trackColor, alpha, i);
                    this.f31933v.mo24460d(canvas, this.f77645q, activeIndicator2.f31930b, 1.0f, this.f77634f.trackColor, alpha, i);
                } else {
                    alpha = 0;
                    drawingDelegate.mo24460d(canvas, this.f77645q, activeIndicator2.f31930b, 1.0f + activeIndicator.f31929a, this.f77634f.trackColor, 0, i);
                }
            }
            for (int i2 = 0; i2 < this.f31934w.f31968b.size(); i2++) {
                DrawingDelegate.ActiveIndicator activeIndicator3 = this.f31934w.f31968b.get(i2);
                this.f31933v.mo24459c(canvas, this.f77645q, activeIndicator3, getAlpha());
                if (i2 > 0 && i > 0) {
                    this.f31933v.mo24460d(canvas, this.f77645q, this.f31934w.f31968b.get(i2 - 1).f31930b, activeIndicator3.f31929a, this.f77634f.trackColor, alpha, i);
                }
            }
            canvas.restore();
        }
    }

    @Override // com.sunia.HTREnginev2.mif, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f31933v.mo24461e();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f31933v.mo24462f();
    }

    @Override // com.sunia.HTREnginev2.mif, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Drawable getStaticDummyDrawable() {
        return this.f31935x;
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

    @Override // com.sunia.HTREnginev2.mif
    /* renamed from: q */
    public boolean mo24449q(boolean z, boolean z2, boolean z3) {
        Drawable drawable;
        boolean mo24449q = super.mo24449q(z, z2, z3);
        if (m24468v() && (drawable = this.f31935x) != null) {
            return drawable.setVisible(z, z2);
        }
        if (!isRunning()) {
            this.f31934w.mo24483a();
        }
        if (z && z3) {
            this.f31934w.mo24489i();
        }
        return mo24449q;
    }

    @Override // com.sunia.HTREnginev2.mif, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        super.registerAnimationCallback(animationCallback);
    }

    @Override // com.sunia.HTREnginev2.mif, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(@IntRange(from = 0, m281to = 255) int i) {
        super.setAlpha(i);
    }

    @Override // com.sunia.HTREnginev2.mif, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(@Nullable ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void setStaticDummyDrawable(@Nullable Drawable drawable) {
        this.f31935x = drawable;
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

    @NonNull
    /* renamed from: t */
    public AbstractC5352c<ObjectAnimator> m24466t() {
        return this.f31934w;
    }

    @NonNull
    /* renamed from: u */
    public DrawingDelegate<S> m24467u() {
        return this.f31933v;
    }

    @Override // com.sunia.HTREnginev2.mif, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        return super.unregisterAnimationCallback(animationCallback);
    }

    /* renamed from: v */
    public final boolean m24468v() {
        AnimatorDurationScaleProvider animatorDurationScaleProvider = this.f77635g;
        return animatorDurationScaleProvider != null && animatorDurationScaleProvider.getSystemAnimatorDurationScale(this.f77633e.getContentResolver()) == 0.0f;
    }

    /* renamed from: w */
    public void m24469w(@NonNull AbstractC5352c<ObjectAnimator> abstractC5352c) {
        this.f31934w = abstractC5352c;
        abstractC5352c.m24502e(this);
    }

    /* renamed from: x */
    public void m24470x(@NonNull DrawingDelegate<S> drawingDelegate) {
        this.f31933v = drawingDelegate;
    }

    @Override // com.sunia.HTREnginev2.mif
    public /* bridge */ /* synthetic */ boolean setVisible(boolean z, boolean z2, boolean z3) {
        return super.setVisible(z, z2, z3);
    }
}
