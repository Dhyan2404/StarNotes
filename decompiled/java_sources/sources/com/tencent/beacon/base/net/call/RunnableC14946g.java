package com.tencent.beacon.base.net.call;

/* renamed from: com.tencent.beacon.base.net.call.g */
/* loaded from: classes10.dex */
public class RunnableC14946g implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Callback f92896a;

    /* renamed from: b */
    final /* synthetic */ C14948i f92897b;

    public RunnableC14946g(C14948i c14948i, Callback callback) {
        this.f92897b = c14948i;
        this.f92896a = callback;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f92897b.m59351b(this.f92896a);
    }
}
