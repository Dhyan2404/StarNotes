package com.google.android.material.motion;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.BackEventCompat;
import androidx.annotation.GravityInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class MaterialSideContainerBackHelper extends MaterialBackAnimationHelper<View> {

    /* renamed from: g */
    public final float f31753g;

    /* renamed from: h */
    public final float f31754h;

    /* renamed from: i */
    public final float f31755i;

    /* renamed from: com.google.android.material.motion.MaterialSideContainerBackHelper$a */
    /* loaded from: classes6.dex */
    public class C5329a extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ boolean f31756e;

        /* renamed from: f */
        public final /* synthetic */ int f31757f;

        public C5329a(boolean z, int i) {
            this.f31756e = z;
            this.f31757f = i;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            MaterialSideContainerBackHelper.this.view.setTranslationX(0.0f);
            MaterialSideContainerBackHelper.this.updateBackProgress(0.0f, this.f31756e, this.f31757f);
        }
    }

    public MaterialSideContainerBackHelper(@NonNull View view) {
        super(view);
        Resources resources = view.getResources();
        this.f31753g = resources.getDimension(C5139R.dimen.m3_back_progress_side_container_max_scale_x_distance_shrink);
        this.f31754h = resources.getDimension(C5139R.dimen.m3_back_progress_side_container_max_scale_x_distance_grow);
        this.f31755i = resources.getDimension(C5139R.dimen.m3_back_progress_side_container_max_scale_y_distance);
    }

    /* renamed from: a */
    public final boolean m24340a(@GravityInt int i, @GravityInt int i2) {
        return (GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this.view)) & i2) == i2;
    }

    /* renamed from: b */
    public final int m24341b(boolean z) {
        ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return 0;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return z ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
    }

    public void cancelBackProgress() {
        if (super.onCancelBackProgress() == null) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.view, (Property<V, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.view, (Property<V, Float>) View.SCALE_Y, 1.0f));
        V v = this.view;
        if (v instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) v;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(viewGroup.getChildAt(i), (Property<View, Float>) View.SCALE_Y, 1.0f));
            }
        }
        animatorSet.setDuration(this.cancelDuration);
        animatorSet.start();
    }

    public void finishBackProgress(@NonNull BackEventCompat backEventCompat, @GravityInt int i, @Nullable Animator.AnimatorListener animatorListener, @Nullable ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        boolean z = backEventCompat.getSwipeEdge() == 0;
        boolean m24340a = m24340a(i, 3);
        float width = (this.view.getWidth() * this.view.getScaleX()) + m24341b(m24340a);
        V v = this.view;
        Property property = View.TRANSLATION_X;
        float[] fArr = new float[1];
        if (m24340a) {
            width = -width;
        }
        fArr[0] = width;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(v, (Property<V, Float>) property, fArr);
        if (animatorUpdateListener != null) {
            ofFloat.addUpdateListener(animatorUpdateListener);
        }
        ofFloat.setInterpolator(new FastOutSlowInInterpolator());
        ofFloat.setDuration(AnimationUtils.lerp(this.hideDurationMax, this.hideDurationMin, backEventCompat.getProgress()));
        ofFloat.addListener(new C5329a(z, i));
        if (animatorListener != null) {
            ofFloat.addListener(animatorListener);
        }
        ofFloat.start();
    }

    public void startBackProgress(@NonNull BackEventCompat backEventCompat) {
        super.onStartBackProgress(backEventCompat);
    }

    public void updateBackProgress(@NonNull BackEventCompat backEventCompat, @GravityInt int i) {
        if (super.onUpdateBackProgress(backEventCompat) == null) {
            return;
        }
        updateBackProgress(backEventCompat.getProgress(), backEventCompat.getSwipeEdge() == 0, i);
    }

    @VisibleForTesting
    public void updateBackProgress(float f, boolean z, @GravityInt int i) {
        int i2;
        float interpolateProgress = interpolateProgress(f);
        boolean m24340a = m24340a(i, 3);
        boolean z2 = z == m24340a;
        int width = this.view.getWidth();
        int height = this.view.getHeight();
        float f2 = width;
        if (f2 > 0.0f) {
            float f3 = height;
            if (f3 <= 0.0f) {
                return;
            }
            float f4 = this.f31753g / f2;
            float f5 = this.f31754h / f2;
            float f6 = this.f31755i / f3;
            V v = this.view;
            if (m24340a) {
                f2 = 0.0f;
            }
            v.setPivotX(f2);
            if (!z2) {
                f5 = -f4;
            }
            float lerp = AnimationUtils.lerp(0.0f, f5, interpolateProgress);
            float f7 = lerp + 1.0f;
            this.view.setScaleX(f7);
            float lerp2 = 1.0f - AnimationUtils.lerp(0.0f, f6, interpolateProgress);
            this.view.setScaleY(lerp2);
            V v2 = this.view;
            if (v2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) v2;
                for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                    View childAt = viewGroup.getChildAt(i3);
                    if (m24340a) {
                        i2 = (width - childAt.getRight()) + childAt.getWidth();
                    } else {
                        i2 = -childAt.getLeft();
                    }
                    childAt.setPivotX(i2);
                    childAt.setPivotY(-childAt.getTop());
                    float f8 = z2 ? 1.0f - lerp : 1.0f;
                    float f9 = lerp2 != 0.0f ? (f7 / lerp2) * f8 : 1.0f;
                    childAt.setScaleX(f8);
                    childAt.setScaleY(f9);
                }
            }
        }
    }
}
