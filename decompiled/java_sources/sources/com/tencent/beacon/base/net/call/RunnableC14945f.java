package com.tencent.beacon.base.net.call;

/* renamed from: com.tencent.beacon.base.net.call.f */
/* loaded from: classes10.dex */
public class RunnableC14945f implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Callback f92894a;

    /* renamed from: b */
    final /* synthetic */ C14948i f92895b;

    public RunnableC14945f(C14948i c14948i, Callback callback) {
        this.f92895b = c14948i;
        this.f92894a = callback;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f92895b.m59351b(this.f92894a);
    }
}
