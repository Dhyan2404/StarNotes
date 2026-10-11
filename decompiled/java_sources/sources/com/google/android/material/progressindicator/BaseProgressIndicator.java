package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.C5139R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.progressindicator.BaseProgressIndicatorSpec;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.sunia.HTREnginev2.mif;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

/* loaded from: classes6.dex */
public abstract class BaseProgressIndicator<S extends BaseProgressIndicatorSpec> extends ProgressBar {
    public static final int HIDE_ESCAPE = 3;
    public static final int HIDE_INWARD = 2;
    public static final int HIDE_NONE = 0;
    public static final int HIDE_OUTWARD = 1;
    public static final int SHOW_INWARD = 2;
    public static final int SHOW_NONE = 0;
    public static final int SHOW_OUTWARD = 1;

    /* renamed from: s */
    public static final int f31897s = C5139R.style.Widget_MaterialComponents_ProgressIndicator;

    /* renamed from: t */
    public static final float f31898t = 0.2f;

    /* renamed from: u */
    public static final int f31899u = 255;

    /* renamed from: v */
    public static final int f31900v = 1000;

    /* renamed from: e */
    public S f31901e;

    /* renamed from: f */
    public int f31902f;

    /* renamed from: g */
    public boolean f31903g;

    /* renamed from: h */
    public boolean f31904h;

    /* renamed from: i */
    public final int f31905i;

    /* renamed from: j */
    public final int f31906j;

    /* renamed from: k */
    public long f31907k;

    /* renamed from: l */
    public AnimatorDurationScaleProvider f31908l;

    /* renamed from: m */
    public boolean f31909m;

    /* renamed from: n */
    public int f31910n;

    /* renamed from: o */
    public final Runnable f31911o;

    /* renamed from: p */
    public final Runnable f31912p;

    /* renamed from: q */
    public final Animatable2Compat.AnimationCallback f31913q;

    /* renamed from: r */
    public final Animatable2Compat.AnimationCallback f31914r;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface HideAnimationBehavior {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface ShowAnimationBehavior {
    }

    /* renamed from: com.google.android.material.progressindicator.BaseProgressIndicator$a */
    /* loaded from: classes6.dex */
    public class RunnableC5345a implements Runnable {
        public RunnableC5345a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseProgressIndicator.this.m24433j();
        }
    }

    /* renamed from: com.google.android.material.progressindicator.BaseProgressIndicator$b */
    /* loaded from: classes6.dex */
    public class RunnableC5346b implements Runnable {
        public RunnableC5346b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseProgressIndicator.this.m24432i();
            BaseProgressIndicator.this.f31907k = -1L;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.BaseProgressIndicator$c */
    /* loaded from: classes6.dex */
    public class C5347c extends Animatable2Compat.AnimationCallback {
        public C5347c() {
        }

        @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
        public void onAnimationEnd(Drawable drawable) {
            BaseProgressIndicator.this.setIndeterminate(false);
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            baseProgressIndicator.setProgressCompat(baseProgressIndicator.f31902f, BaseProgressIndicator.this.f31903g);
        }
    }

    /* renamed from: com.google.android.material.progressindicator.BaseProgressIndicator$d */
    /* loaded from: classes6.dex */
    public class C5348d extends Animatable2Compat.AnimationCallback {
        public C5348d() {
        }

        @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
        public void onAnimationEnd(Drawable drawable) {
            super.onAnimationEnd(drawable);
            if (BaseProgressIndicator.this.f31909m) {
                return;
            }
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            baseProgressIndicator.setVisibility(baseProgressIndicator.f31910n);
        }
    }

    public BaseProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, f31897s), attributeSet, i);
        this.f31907k = -1L;
        this.f31909m = false;
        this.f31910n = 4;
        this.f31911o = new RunnableC5345a();
        this.f31912p = new RunnableC5346b();
        this.f31913q = new C5347c();
        this.f31914r = new C5348d();
        Context context2 = getContext();
        this.f31901e = mo24431h(context2, attributeSet);
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, C5139R.styleable.BaseProgressIndicator, i, i2, new int[0]);
        this.f31905i = obtainStyledAttributes.getInt(C5139R.styleable.BaseProgressIndicator_showDelay, -1);
        this.f31906j = Math.min(obtainStyledAttributes.getInt(C5139R.styleable.BaseProgressIndicator_minHideDelay, -1), 1000);
        obtainStyledAttributes.recycle();
        this.f31908l = new AnimatorDurationScaleProvider();
        this.f31904h = true;
    }

    @Nullable
    private DrawingDelegate<S> getCurrentDrawingDelegate() {
        if (isIndeterminate()) {
            if (getIndeterminateDrawable() == null) {
                return null;
            }
            return getIndeterminateDrawable().m24467u();
        }
        if (getProgressDrawable() == null) {
            return null;
        }
        return getProgressDrawable().m24450v();
    }

    public void applyNewVisibility(boolean z) {
        if (this.f31904h) {
            ((mif) getCurrentDrawable()).setVisible(m24438o(), false, z);
        }
    }

    @Override // android.widget.ProgressBar
    @Nullable
    public Drawable getCurrentDrawable() {
        return isIndeterminate() ? getIndeterminateDrawable() : getProgressDrawable();
    }

    public int getHideAnimationBehavior() {
        return this.f31901e.hideAnimationBehavior;
    }

    @NonNull
    public int[] getIndicatorColor() {
        return this.f31901e.indicatorColors;
    }

    @Px
    public int getIndicatorTrackGapSize() {
        return this.f31901e.indicatorTrackGapSize;
    }

    public int getShowAnimationBehavior() {
        return this.f31901e.showAnimationBehavior;
    }

    @ColorInt
    public int getTrackColor() {
        return this.f31901e.trackColor;
    }

    @Px
    public int getTrackCornerRadius() {
        return this.f31901e.trackCornerRadius;
    }

    @Px
    public int getTrackThickness() {
        return this.f31901e.trackThickness;
    }

    /* renamed from: h */
    public abstract S mo24431h(@NonNull Context context, @NonNull AttributeSet attributeSet);

    public void hide() {
        if (getVisibility() != 0) {
            removeCallbacks(this.f31911o);
            return;
        }
        removeCallbacks(this.f31912p);
        long uptimeMillis = SystemClock.uptimeMillis() - this.f31907k;
        int i = this.f31906j;
        if (uptimeMillis >= ((long) i)) {
            this.f31912p.run();
        } else {
            postDelayed(this.f31912p, i - uptimeMillis);
        }
    }

    /* renamed from: i */
    public final void m24432i() {
        ((mif) getCurrentDrawable()).setVisible(false, false, true);
        if (m24435l()) {
            setVisibility(4);
        }
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        if (getCurrentDrawable() != null) {
            getCurrentDrawable().invalidateSelf();
        }
    }

    /* renamed from: j */
    public final void m24433j() {
        if (this.f31906j > 0) {
            this.f31907k = SystemClock.uptimeMillis();
        }
        setVisibility(0);
    }

    /* renamed from: k */
    public boolean m24434k() {
        View view = this;
        while (view.getVisibility() == 0) {
            Object parent = view.getParent();
            if (parent == null) {
                return getWindowVisibility() == 0;
            }
            if (!(parent instanceof View)) {
                return true;
            }
            view = (View) parent;
        }
        return false;
    }

    /* renamed from: l */
    public final boolean m24435l() {
        return (getProgressDrawable() == null || !getProgressDrawable().isVisible()) && (getIndeterminateDrawable() == null || !getIndeterminateDrawable().isVisible());
    }

    /* renamed from: m */
    public final void m24436m() {
        if (getProgressDrawable() != null && getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().m24466t().mo24485d(this.f31913q);
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().registerAnimationCallback(this.f31914r);
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().registerAnimationCallback(this.f31914r);
        }
    }

    /* renamed from: n */
    public final void m24437n() {
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().unregisterAnimationCallback(this.f31914r);
            getIndeterminateDrawable().m24466t().mo24490j();
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().unregisterAnimationCallback(this.f31914r);
        }
    }

    /* renamed from: o */
    public boolean m24438o() {
        return ViewCompat.isAttachedToWindow(this) && getWindowVisibility() == 0 && m24434k();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m24436m();
        if (m24438o()) {
            m24433j();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.f31912p);
        removeCallbacks(this.f31911o);
        ((mif) getCurrentDrawable()).hideNow();
        m24437n();
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public synchronized void onDraw(@NonNull Canvas canvas) {
        int save = canvas.save();
        if (getPaddingLeft() != 0 || getPaddingTop() != 0) {
            canvas.translate(getPaddingLeft(), getPaddingTop());
        }
        if (getPaddingRight() != 0 || getPaddingBottom() != 0) {
            canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
        }
        getCurrentDrawable().draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public synchronized void onMeasure(int i, int i2) {
        DrawingDelegate<S> currentDrawingDelegate = getCurrentDrawingDelegate();
        if (currentDrawingDelegate == null) {
            return;
        }
        setMeasuredDimension(currentDrawingDelegate.mo24462f() < 0 ? View.getDefaultSize(getSuggestedMinimumWidth(), i) : currentDrawingDelegate.mo24462f() + getPaddingLeft() + getPaddingRight(), currentDrawingDelegate.mo24461e() < 0 ? View.getDefaultSize(getSuggestedMinimumHeight(), i2) : currentDrawingDelegate.mo24461e() + getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        applyNewVisibility(i == 0);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        applyNewVisibility(false);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void setAnimatorDurationScaleProvider(@NonNull AnimatorDurationScaleProvider animatorDurationScaleProvider) {
        this.f31908l = animatorDurationScaleProvider;
        if (getProgressDrawable() != null) {
            getProgressDrawable().f77635g = animatorDurationScaleProvider;
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().f77635g = animatorDurationScaleProvider;
        }
    }

    public void setHideAnimationBehavior(int i) {
        this.f31901e.hideAnimationBehavior = i;
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public synchronized void setIndeterminate(boolean z) {
        if (z == isIndeterminate()) {
            return;
        }
        mif mifVar = (mif) getCurrentDrawable();
        if (mifVar != null) {
            mifVar.hideNow();
        }
        super.setIndeterminate(z);
        mif mifVar2 = (mif) getCurrentDrawable();
        if (mifVar2 != null) {
            mifVar2.setVisible(m24438o(), false, false);
        }
        if ((mifVar2 instanceof IndeterminateDrawable) && m24438o()) {
            ((IndeterminateDrawable) mifVar2).m24466t().mo24489i();
        }
        this.f31909m = false;
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(@Nullable Drawable drawable) {
        if (drawable == null) {
            super.setIndeterminateDrawable(null);
        } else {
            if (!(drawable instanceof IndeterminateDrawable)) {
                throw new IllegalArgumentException("Cannot set framework drawable as indeterminate drawable.");
            }
            ((mif) drawable).hideNow();
            super.setIndeterminateDrawable(drawable);
        }
    }

    public void setIndicatorColor(@ColorInt int... iArr) {
        if (iArr.length == 0) {
            iArr = new int[]{MaterialColors.getColor(getContext(), C5139R.attr.colorPrimary, -1)};
        }
        if (Arrays.equals(getIndicatorColor(), iArr)) {
            return;
        }
        this.f31901e.indicatorColors = iArr;
        getIndeterminateDrawable().m24466t().mo24484c();
        invalidate();
    }

    public void setIndicatorTrackGapSize(@Px int i) {
        S s = this.f31901e;
        if (s.indicatorTrackGapSize != i) {
            s.indicatorTrackGapSize = i;
            s.mo24441c();
            invalidate();
        }
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i) {
        if (isIndeterminate()) {
            return;
        }
        setProgressCompat(i, false);
    }

    public void setProgressCompat(int i, boolean z) {
        if (!isIndeterminate()) {
            super.setProgress(i);
            if (getProgressDrawable() == null || z) {
                return;
            }
            getProgressDrawable().jumpToCurrentState();
            return;
        }
        if (getProgressDrawable() != null) {
            this.f31902f = i;
            this.f31903g = z;
            this.f31909m = true;
            if (!getIndeterminateDrawable().isVisible() || this.f31908l.getSystemAnimatorDurationScale(getContext().getContentResolver()) == 0.0f) {
                this.f31913q.onAnimationEnd(getIndeterminateDrawable());
            } else {
                getIndeterminateDrawable().m24466t().mo24486f();
            }
        }
    }

    @Override // android.widget.ProgressBar
    public void setProgressDrawable(@Nullable Drawable drawable) {
        if (drawable == null) {
            super.setProgressDrawable(null);
        } else {
            if (!(drawable instanceof DeterminateDrawable)) {
                throw new IllegalArgumentException("Cannot set framework drawable as progress drawable.");
            }
            DeterminateDrawable determinateDrawable = (DeterminateDrawable) drawable;
            determinateDrawable.hideNow();
            super.setProgressDrawable(determinateDrawable);
            determinateDrawable.m24454z(getProgress() / getMax());
        }
    }

    public void setShowAnimationBehavior(int i) {
        this.f31901e.showAnimationBehavior = i;
        invalidate();
    }

    public void setTrackColor(@ColorInt int i) {
        S s = this.f31901e;
        if (s.trackColor != i) {
            s.trackColor = i;
            invalidate();
        }
    }

    public void setTrackCornerRadius(@Px int i) {
        S s = this.f31901e;
        if (s.trackCornerRadius != i) {
            s.trackCornerRadius = Math.min(i, s.trackThickness / 2);
            invalidate();
        }
    }

    public void setTrackThickness(@Px int i) {
        S s = this.f31901e;
        if (s.trackThickness != i) {
            s.trackThickness = i;
            requestLayout();
        }
    }

    public void setVisibilityAfterHide(int i) {
        if (i != 0 && i != 4 && i != 8) {
            throw new IllegalArgumentException("The component's visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View.");
        }
        this.f31910n = i;
    }

    public void show() {
        if (this.f31905i <= 0) {
            this.f31911o.run();
        } else {
            removeCallbacks(this.f31911o);
            postDelayed(this.f31911o, this.f31905i);
        }
    }

    @Override // android.widget.ProgressBar
    @Nullable
    public IndeterminateDrawable<S> getIndeterminateDrawable() {
        return (IndeterminateDrawable) super.getIndeterminateDrawable();
    }

    @Override // android.widget.ProgressBar
    @Nullable
    public DeterminateDrawable<S> getProgressDrawable() {
        return (DeterminateDrawable) super.getProgressDrawable();
    }
}
