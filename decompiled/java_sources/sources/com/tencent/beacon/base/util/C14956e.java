package com.tencent.beacon.base.util;

import androidx.annotation.NonNull;

/* renamed from: com.tencent.beacon.base.util.e */
/* loaded from: classes10.dex */
public class C14956e<T> implements InterfaceC14955d<T> {

    /* renamed from: a */
    private final Object[] f92914a;

    /* renamed from: b */
    private int f92915b;

    public C14956e(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f92914a = new Object[i];
    }

    /* renamed from: b */
    private boolean m59405b(@NonNull T t) {
        for (int i = 0; i < this.f92915b; i++) {
            if (this.f92914a[i] == t) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public T mo59406a() {
        int i = this.f92915b;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object[] objArr = this.f92914a;
        T t = (T) objArr[i2];
        objArr[i2] = null;
        this.f92915b = i2;
        return t;
    }

    /* renamed from: a */
    public boolean mo59407a(@NonNull T t) {
        if (!m59405b(t)) {
            int i = this.f92915b;
            Object[] objArr = this.f92914a;
            if (i >= objArr.length) {
                return false;
            }
            objArr[i] = t;
            this.f92915b = i + 1;
            return true;
        }
        throw new IllegalStateException("Already in the pool!");
    }
}
