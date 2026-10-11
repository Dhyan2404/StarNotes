package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class r5o<T> extends WeakReference<ViewDataBinding> {

    /* renamed from: a */
    public final pek<T> f82777a;

    /* renamed from: b */
    public final int f82778b;

    /* renamed from: c */
    public T f82779c;

    public r5o(ViewDataBinding viewDataBinding, int i, pek<T> pekVar, ReferenceQueue<ViewDataBinding> referenceQueue) {
        super(viewDataBinding, referenceQueue);
        this.f82778b = i;
        this.f82777a = pekVar;
    }

    @Nullable
    /* renamed from: a */
    public ViewDataBinding m56910a() {
        ViewDataBinding viewDataBinding = (ViewDataBinding) get();
        if (viewDataBinding == null) {
            m56914e();
        }
        return viewDataBinding;
    }

    /* renamed from: b */
    public T m56911b() {
        return this.f82779c;
    }

    /* renamed from: c */
    public void m56912c(LifecycleOwner lifecycleOwner) {
        this.f82777a.setLifecycleOwner(lifecycleOwner);
    }

    /* renamed from: d */
    public void m56913d(T t) {
        m56914e();
        this.f82779c = t;
        if (t != null) {
            this.f82777a.addListener(t);
        }
    }

    /* renamed from: e */
    public boolean m56914e() {
        boolean z;
        T t = this.f82779c;
        if (t != null) {
            this.f82777a.removeListener(t);
            z = true;
        } else {
            z = false;
        }
        this.f82779c = null;
        return z;
    }
}
