package com.google.android.material.progressindicator;

import android.animation.Animator;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.progressindicator.DrawingDelegate;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.android.material.progressindicator.c */
/* loaded from: classes6.dex */
public abstract class AbstractC5352c<T extends Animator> {

    /* renamed from: a */
    public IndeterminateDrawable f31967a;

    /* renamed from: b */
    public final List<DrawingDelegate.ActiveIndicator> f31968b = new ArrayList();

    public AbstractC5352c(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            this.f31968b.add(new DrawingDelegate.ActiveIndicator());
        }
    }

    /* renamed from: a */
    public abstract void mo24483a();

    /* renamed from: b */
    public float m24501b(int i, int i2, int i3) {
        return (i - i2) / i3;
    }

    /* renamed from: c */
    public abstract void mo24484c();

    /* renamed from: d */
    public abstract void mo24485d(@NonNull Animatable2Compat.AnimationCallback animationCallback);

    /* renamed from: e */
    public void m24502e(@NonNull IndeterminateDrawable indeterminateDrawable) {
        this.f31967a = indeterminateDrawable;
    }

    /* renamed from: f */
    public abstract void mo24486f();

    @VisibleForTesting
    /* renamed from: g */
    public abstract void mo24487g();

    @VisibleForTesting
    /* renamed from: h */
    public abstract void mo24488h(float f);

    /* renamed from: i */
    public abstract void mo24489i();

    /* renamed from: j */
    public abstract void mo24490j();
}
