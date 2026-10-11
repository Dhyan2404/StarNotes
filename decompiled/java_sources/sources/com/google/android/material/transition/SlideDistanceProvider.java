package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.C5139R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes6.dex */
public final class SlideDistanceProvider implements VisibilityAnimatorProvider {

    /* renamed from: c */
    public static final int f33173c = -1;

    /* renamed from: a */
    public int f33174a;

    /* renamed from: b */
    @Px
    public int f33175b = -1;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface GravityFlag {
    }

    /* renamed from: com.google.android.material.transition.SlideDistanceProvider$a */
    /* loaded from: classes6.dex */
    public class C5464a extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ View f33176e;

        /* renamed from: f */
        public final /* synthetic */ float f33177f;

        public C5464a(View view, float f) {
            this.f33176e = view;
            this.f33177f = f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f33176e.setTranslationX(this.f33177f);
        }
    }

    /* renamed from: com.google.android.material.transition.SlideDistanceProvider$b */
    /* loaded from: classes6.dex */
    public class C5465b extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ View f33178e;

        /* renamed from: f */
        public final /* synthetic */ float f33179f;

        public C5465b(View view, float f) {
            this.f33178e = view;
            this.f33179f = f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f33178e.setTranslationY(this.f33179f);
        }
    }

    public SlideDistanceProvider(int i) {
        this.f33174a = i;
    }

    /* renamed from: a */
    public static Animator m25573a(View view, View view2, int i, @Px int i2) {
        float translationX = view2.getTranslationX();
        float translationY = view2.getTranslationY();
        if (i == 3) {
            return m25575c(view2, i2 + translationX, translationX, translationX);
        }
        if (i == 5) {
            return m25575c(view2, translationX - i2, translationX, translationX);
        }
        if (i == 48) {
            return m25576d(view2, translationY - i2, translationY, translationY);
        }
        if (i == 80) {
            return m25576d(view2, i2 + translationY, translationY, translationY);
        }
        if (i == 8388611) {
            return m25575c(view2, m25577f(view) ? i2 + translationX : translationX - i2, translationX, translationX);
        }
        if (i == 8388613) {
            return m25575c(view2, m25577f(view) ? translationX - i2 : i2 + translationX, translationX, translationX);
        }
        throw new IllegalArgumentException("Invalid slide direction: " + i);
    }

    /* renamed from: b */
    public static Animator m25574b(View view, View view2, int i, @Px int i2) {
        float translationX = view2.getTranslationX();
        float translationY = view2.getTranslationY();
        if (i == 3) {
            return m25575c(view2, translationX, translationX - i2, translationX);
        }
        if (i == 5) {
            return m25575c(view2, translationX, i2 + translationX, translationX);
        }
        if (i == 48) {
            return m25576d(view2, translationY, i2 + translationY, translationY);
        }
        if (i == 80) {
            return m25576d(view2, translationY, translationY - i2, translationY);
        }
        if (i == 8388611) {
            return m25575c(view2, translationX, m25577f(view) ? translationX - i2 : i2 + translationX, translationX);
        }
        if (i == 8388613) {
            return m25575c(view2, translationX, m25577f(view) ? i2 + translationX : translationX - i2, translationX);
        }
        throw new IllegalArgumentException("Invalid slide direction: " + i);
    }

    /* renamed from: c */
    public static Animator m25575c(View view, float f, float f2, float f3) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, f, f2));
        ofPropertyValuesHolder.addListener(new C5464a(view, f3));
        return ofPropertyValuesHolder;
    }

    /* renamed from: d */
    public static Animator m25576d(View view, float f, float f2, float f3) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, f, f2));
        ofPropertyValuesHolder.addListener(new C5465b(view, f3));
        return ofPropertyValuesHolder;
    }

    /* renamed from: f */
    public static boolean m25577f(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return m25573a(viewGroup, view, this.f33174a, m25578e(view.getContext()));
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return m25574b(viewGroup, view, this.f33174a, m25578e(view.getContext()));
    }

    /* renamed from: e */
    public final int m25578e(Context context) {
        int i = this.f33175b;
        return i != -1 ? i : context.getResources().getDimensionPixelSize(C5139R.dimen.mtrl_transition_shared_axis_slide_distance);
    }

    @Px
    public int getSlideDistance() {
        return this.f33175b;
    }

    public int getSlideEdge() {
        return this.f33174a;
    }

    public void setSlideDistance(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Slide distance must be positive. If attempting to reverse the direction of the slide, use setSlideEdge(int) instead.");
        }
        this.f33175b = i;
    }

    public void setSlideEdge(int i) {
        this.f33174a = i;
    }
}
