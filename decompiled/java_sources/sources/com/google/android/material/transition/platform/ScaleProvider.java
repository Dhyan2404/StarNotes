package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes6.dex */
public final class ScaleProvider implements VisibilityAnimatorProvider {

    /* renamed from: a */
    public float f33323a;

    /* renamed from: b */
    public float f33324b;

    /* renamed from: c */
    public float f33325c;

    /* renamed from: d */
    public float f33326d;

    /* renamed from: e */
    public boolean f33327e;

    /* renamed from: f */
    public boolean f33328f;

    /* renamed from: com.google.android.material.transition.platform.ScaleProvider$a */
    /* loaded from: classes6.dex */
    public class C5478a extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ View f33329e;

        /* renamed from: f */
        public final /* synthetic */ float f33330f;

        /* renamed from: g */
        public final /* synthetic */ float f33331g;

        public C5478a(View view, float f, float f2) {
            this.f33329e = view;
            this.f33330f = f;
            this.f33331g = f2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f33329e.setScaleX(this.f33330f);
            this.f33329e.setScaleY(this.f33331g);
        }
    }

    public ScaleProvider() {
        this(true);
    }

    /* renamed from: a */
    public static Animator m25640a(View view, float f, float f2) {
        float scaleX = view.getScaleX();
        float scaleY = view.getScaleY();
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_X, scaleX * f, scaleX * f2), PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_Y, f * scaleY, f2 * scaleY));
        ofPropertyValuesHolder.addListener(new C5478a(view, scaleX, scaleY));
        return ofPropertyValuesHolder;
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return this.f33327e ? m25640a(view, this.f33325c, this.f33326d) : m25640a(view, this.f33324b, this.f33323a);
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        if (this.f33328f) {
            return this.f33327e ? m25640a(view, this.f33323a, this.f33324b) : m25640a(view, this.f33326d, this.f33325c);
        }
        return null;
    }

    public float getIncomingEndScale() {
        return this.f33326d;
    }

    public float getIncomingStartScale() {
        return this.f33325c;
    }

    public float getOutgoingEndScale() {
        return this.f33324b;
    }

    public float getOutgoingStartScale() {
        return this.f33323a;
    }

    public boolean isGrowing() {
        return this.f33327e;
    }

    public boolean isScaleOnDisappear() {
        return this.f33328f;
    }

    public void setGrowing(boolean z) {
        this.f33327e = z;
    }

    public void setIncomingEndScale(float f) {
        this.f33326d = f;
    }

    public void setIncomingStartScale(float f) {
        this.f33325c = f;
    }

    public void setOutgoingEndScale(float f) {
        this.f33324b = f;
    }

    public void setOutgoingStartScale(float f) {
        this.f33323a = f;
    }

    public void setScaleOnDisappear(boolean z) {
        this.f33328f = z;
    }

    public ScaleProvider(boolean z) {
        this.f33323a = 1.0f;
        this.f33324b = 1.1f;
        this.f33325c = 0.8f;
        this.f33326d = 1.0f;
        this.f33328f = true;
        this.f33327e = z;
    }
}
