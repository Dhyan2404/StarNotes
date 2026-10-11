package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.google.android.gms.measurement.internal.h */
/* loaded from: classes5.dex */
public final class RunnableC5120h implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ AtomicReference f29679e;

    /* renamed from: f */
    public final /* synthetic */ String f29680f = null;

    /* renamed from: g */
    public final /* synthetic */ String f29681g;

    /* renamed from: h */
    public final /* synthetic */ String f29682h;

    /* renamed from: i */
    public final /* synthetic */ zzjq f29683i;

    public RunnableC5120h(zzjq zzjqVar, AtomicReference atomicReference, String str, String str2, String str3) {
        this.f29679e = atomicReference;
        this.f29681g = str2;
        this.f29682h = str3;
        this.f29683i = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29683i.zzu.zzr().zza(this.f29679e, (String) null, this.f29681g, this.f29682h);
    }
}
