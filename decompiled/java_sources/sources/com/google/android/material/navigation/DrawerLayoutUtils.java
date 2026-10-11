package com.google.android.material.navigation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Color;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.navigation.DrawerLayoutUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class DrawerLayoutUtils {

    /* renamed from: a */
    public static final int f31763a = -1728053248;

    /* renamed from: b */
    public static final int f31764b = Color.alpha(-1728053248);

    /* renamed from: com.google.android.material.navigation.DrawerLayoutUtils$a */
    /* loaded from: classes6.dex */
    public class C5330a extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ DrawerLayout f31765e;

        /* renamed from: f */
        public final /* synthetic */ View f31766f;

        public C5330a(DrawerLayout drawerLayout, View view) {
            this.f31765e = drawerLayout;
            this.f31766f = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f31765e.closeDrawer(this.f31766f, false);
            this.f31765e.setScrimColor(-1728053248);
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m24348b(DrawerLayout drawerLayout, ValueAnimator valueAnimator) {
        drawerLayout.setScrimColor(ColorUtils.setAlphaComponent(-1728053248, AnimationUtils.lerp(f31764b, 0, valueAnimator.getAnimatedFraction())));
    }

    @NonNull
    public static Animator.AnimatorListener getScrimCloseAnimatorListener(@NonNull DrawerLayout drawerLayout, @NonNull View view) {
        return new C5330a(drawerLayout, view);
    }

    @NonNull
    public static ValueAnimator.AnimatorUpdateListener getScrimCloseAnimatorUpdateListener(@NonNull final DrawerLayout drawerLayout) {
        return new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.nif
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DrawerLayoutUtils.m24348b(DrawerLayout.this, valueAnimator);
            }
        };
    }
}
