package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes6.dex */
public final class ScaleProvider implements VisibilityAnimatorProvider {

    /* renamed from: a */
    public float f33164a;

    /* renamed from: b */
    public float f33165b;

    /* renamed from: c */
    public float f33166c;

    /* renamed from: d */
    public float f33167d;

    /* renamed from: e */
    public boolean f33168e;

    /* renamed from: f */
    public boolean f33169f;

    /* renamed from: com.google.android.material.transition.ScaleProvider$a */
    /* loaded from: classes6.dex */
    public class C5463a extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ View f33170e;

        /* renamed from: f */
        public final /* synthetic */ float f33171f;

        /* renamed from: g */
        public final /* synthetic */ float f33172g;

        public C5463a(View view, float f, float f2) {
            this.f33170e = view;
            this.f33171f = f;
            this.f33172g = f2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f33170e.setScaleX(this.f33171f);
            this.f33170e.setScaleY(this.f33172g);
        }
    }

    public ScaleProvider() {
        this(true);
    }

    /* renamed from: a */
    public static Animator m25572a(View view, float f, float f2) {
        float scaleX = view.getScaleX();
        float scaleY = view.getScaleY();
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_X, scaleX * f, scaleX * f2), PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_Y, f * scaleY, f2 * scaleY));
        ofPropertyValuesHolder.addListener(new C5463a(view, scaleX, scaleY));
        return ofPropertyValuesHolder;
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return this.f33168e ? m25572a(view, this.f33166c, this.f33167d) : m25572a(view, this.f33165b, this.f33164a);
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        if (this.f33169f) {
            return this.f33168e ? m25572a(view, this.f33164a, this.f33165b) : m25572a(view, this.f33167d, this.f33166c);
        }
        return null;
    }

    public float getIncomingEndScale() {
        return this.f33167d;
    }

    public float getIncomingStartScale() {
        return this.f33166c;
    }

    public float getOutgoingEndScale() {
        return this.f33165b;
    }

    public float getOutgoingStartScale() {
        return this.f33164a;
    }

    public boolean isGrowing() {
        return this.f33168e;
    }

    public boolean isScaleOnDisappear() {
        return this.f33169f;
    }

    public void setGrowing(boolean z) {
        this.f33168e = z;
    }

    public void setIncomingEndScale(float f) {
        this.f33167d = f;
    }

    public void setIncomingStartScale(float f) {
        this.f33166c = f;
    }

    public void setOutgoingEndScale(float f) {
        this.f33165b = f;
    }

    public void setOutgoingStartScale(float f) {
        this.f33164a = f;
    }

    public void setScaleOnDisappear(boolean z) {
        this.f33169f = z;
    }

    public ScaleProvider(boolean z) {
        this.f33164a = 1.0f;
        this.f33165b = 1.1f;
        this.f33166c = 0.8f;
        this.f33167d = 1.0f;
        this.f33169f = true;
        this.f33168e = z;
    }
}
