package com.google.android.material.transition.platform;

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
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.C5139R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@RequiresApi(21)
/* loaded from: classes6.dex */
public final class SlideDistanceProvider implements VisibilityAnimatorProvider {

    /* renamed from: c */
    public static final int f33332c = -1;

    /* renamed from: a */
    public int f33333a;

    /* renamed from: b */
    @Px
    public int f33334b = -1;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface GravityFlag {
    }

    /* renamed from: com.google.android.material.transition.platform.SlideDistanceProvider$a */
    /* loaded from: classes6.dex */
    public class C5479a extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ View f33335e;

        /* renamed from: f */
        public final /* synthetic */ float f33336f;

        public C5479a(View view, float f) {
            this.f33335e = view;
            this.f33336f = f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f33335e.setTranslationX(this.f33336f);
        }
    }

    /* renamed from: com.google.android.material.transition.platform.SlideDistanceProvider$b */
    /* loaded from: classes6.dex */
    public class C5480b extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ View f33337e;

        /* renamed from: f */
        public final /* synthetic */ float f33338f;

        public C5480b(View view, float f) {
            this.f33337e = view;
            this.f33338f = f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f33337e.setTranslationY(this.f33338f);
        }
    }

    public SlideDistanceProvider(int i) {
        this.f33333a = i;
    }

    /* renamed from: a */
    public static Animator m25641a(View view, View view2, int i, @Px int i2) {
        float translationX = view2.getTranslationX();
        float translationY = view2.getTranslationY();
        if (i == 3) {
            return m25643c(view2, i2 + translationX, translationX, translationX);
        }
        if (i == 5) {
            return m25643c(view2, translationX - i2, translationX, translationX);
        }
        if (i == 48) {
            return m25644d(view2, translationY - i2, translationY, translationY);
        }
        if (i == 80) {
            return m25644d(view2, i2 + translationY, translationY, translationY);
        }
        if (i == 8388611) {
            return m25643c(view2, m25645f(view) ? i2 + translationX : translationX - i2, translationX, translationX);
        }
        if (i == 8388613) {
            return m25643c(view2, m25645f(view) ? translationX - i2 : i2 + translationX, translationX, translationX);
        }
        throw new IllegalArgumentException("Invalid slide direction: " + i);
    }

    /* renamed from: b */
    public static Animator m25642b(View view, View view2, int i, @Px int i2) {
        float translationX = view2.getTranslationX();
        float translationY = view2.getTranslationY();
        if (i == 3) {
            return m25643c(view2, translationX, translationX - i2, translationX);
        }
        if (i == 5) {
            return m25643c(view2, translationX, i2 + translationX, translationX);
        }
        if (i == 48) {
            return m25644d(view2, translationY, i2 + translationY, translationY);
        }
        if (i == 80) {
            return m25644d(view2, translationY, translationY - i2, translationY);
        }
        if (i == 8388611) {
            return m25643c(view2, translationX, m25645f(view) ? translationX - i2 : i2 + translationX, translationX);
        }
        if (i == 8388613) {
            return m25643c(view2, translationX, m25645f(view) ? i2 + translationX : translationX - i2, translationX);
        }
        throw new IllegalArgumentException("Invalid slide direction: " + i);
    }

    /* renamed from: c */
    public static Animator m25643c(View view, float f, float f2, float f3) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, f, f2));
        ofPropertyValuesHolder.addListener(new C5479a(view, f3));
        return ofPropertyValuesHolder;
    }

    /* renamed from: d */
    public static Animator m25644d(View view, float f, float f2, float f3) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, f, f2));
        ofPropertyValuesHolder.addListener(new C5480b(view, f3));
        return ofPropertyValuesHolder;
    }

    /* renamed from: f */
    public static boolean m25645f(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return m25641a(viewGroup, view, this.f33333a, m25646e(view.getContext()));
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return m25642b(viewGroup, view, this.f33333a, m25646e(view.getContext()));
    }

    /* renamed from: e */
    public final int m25646e(Context context) {
        int i = this.f33334b;
        return i != -1 ? i : context.getResources().getDimensionPixelSize(C5139R.dimen.mtrl_transition_shared_axis_slide_distance);
    }

    @Px
    public int getSlideDistance() {
        return this.f33334b;
    }

    public int getSlideEdge() {
        return this.f33333a;
    }

    public void setSlideDistance(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Slide distance must be positive. If attempting to reverse the direction of the slide, use setSlideEdge(int) instead.");
        }
        this.f33334b = i;
    }

    public void setSlideEdge(int i) {
        this.f33333a = i;
    }
}
