package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.StateSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class StateListAnimator {

    /* renamed from: a */
    public final ArrayList<C5313b> f31658a = new ArrayList<>();

    /* renamed from: b */
    @Nullable
    public C5313b f31659b = null;

    /* renamed from: c */
    @Nullable
    public ValueAnimator f31660c = null;

    /* renamed from: d */
    public final Animator.AnimatorListener f31661d = new C5312a();

    /* renamed from: com.google.android.material.internal.StateListAnimator$a */
    /* loaded from: classes6.dex */
    public class C5312a extends AnimatorListenerAdapter {
        public C5312a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            StateListAnimator stateListAnimator = StateListAnimator.this;
            if (stateListAnimator.f31660c == animator) {
                stateListAnimator.f31660c = null;
            }
        }
    }

    /* renamed from: com.google.android.material.internal.StateListAnimator$b */
    /* loaded from: classes6.dex */
    public static class C5313b {

        /* renamed from: a */
        public final int[] f31663a;

        /* renamed from: b */
        public final ValueAnimator f31664b;

        public C5313b(int[] iArr, ValueAnimator valueAnimator) {
            this.f31663a = iArr;
            this.f31664b = valueAnimator;
        }
    }

    /* renamed from: a */
    public final void m24283a() {
        ValueAnimator valueAnimator = this.f31660c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f31660c = null;
        }
    }

    public void addState(int[] iArr, ValueAnimator valueAnimator) {
        C5313b c5313b = new C5313b(iArr, valueAnimator);
        valueAnimator.addListener(this.f31661d);
        this.f31658a.add(c5313b);
    }

    /* renamed from: b */
    public final void m24284b(@NonNull C5313b c5313b) {
        ValueAnimator valueAnimator = c5313b.f31664b;
        this.f31660c = valueAnimator;
        valueAnimator.start();
    }

    public void jumpToCurrentState() {
        ValueAnimator valueAnimator = this.f31660c;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f31660c = null;
        }
    }

    public void setState(int[] iArr) {
        C5313b c5313b;
        int size = this.f31658a.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                c5313b = null;
                break;
            }
            c5313b = this.f31658a.get(i);
            if (StateSet.stateSetMatches(c5313b.f31663a, iArr)) {
                break;
            } else {
                i++;
            }
        }
        C5313b c5313b2 = this.f31659b;
        if (c5313b == c5313b2) {
            return;
        }
        if (c5313b2 != null) {
            m24283a();
        }
        this.f31659b = c5313b;
        if (c5313b != null) {
            m24284b(c5313b);
        }
    }
}
