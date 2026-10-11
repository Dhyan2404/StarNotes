package com.tencent.beacon.base.util;

import androidx.annotation.NonNull;

/* renamed from: com.tencent.beacon.base.util.f */
/* loaded from: classes10.dex */
public class C14957f<T> extends C14956e<T> {

    /* renamed from: c */
    private final Object f92916c;

    public C14957f(int i) {
        super(i);
        this.f92916c = new Object();
    }

    @Override // com.tencent.beacon.base.util.C14956e
    /* renamed from: a */
    public T mo59406a() {
        T t;
        synchronized (this.f92916c) {
            t = (T) super.mo59406a();
        }
        return t;
    }

    @Override // com.tencent.beacon.base.util.C14956e
    /* renamed from: a */
    public boolean mo59407a(@NonNull T t) {
        boolean mo59407a;
        synchronized (this.f92916c) {
            mo59407a = super.mo59407a(t);
        }
        return mo59407a;
    }
}
