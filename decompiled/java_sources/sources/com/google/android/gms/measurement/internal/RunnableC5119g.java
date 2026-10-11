package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.google.android.gms.measurement.internal.g */
/* loaded from: classes5.dex */
public final class RunnableC5119g implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ AtomicReference f29673e;

    /* renamed from: f */
    public final /* synthetic */ String f29674f = null;

    /* renamed from: g */
    public final /* synthetic */ String f29675g;

    /* renamed from: h */
    public final /* synthetic */ String f29676h;

    /* renamed from: i */
    public final /* synthetic */ boolean f29677i;

    /* renamed from: j */
    public final /* synthetic */ zzjq f29678j;

    public RunnableC5119g(zzjq zzjqVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.f29673e = atomicReference;
        this.f29675g = str2;
        this.f29676h = str3;
        this.f29677i = z;
        this.f29678j = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29678j.zzu.zzr().zza(this.f29673e, null, this.f29675g, this.f29676h, this.f29677i);
    }
}
