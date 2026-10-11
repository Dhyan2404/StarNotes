package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzje;
import com.google.android.gms.measurement.internal.zzjq;

/* loaded from: classes5.dex */
public final class kop implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzje f75695e;

    /* renamed from: f */
    public final /* synthetic */ long f75696f;

    /* renamed from: g */
    public final /* synthetic */ boolean f75697g;

    /* renamed from: h */
    public final /* synthetic */ zzje f75698h;

    /* renamed from: i */
    public final /* synthetic */ zzjq f75699i;

    public kop(zzjq zzjqVar, zzje zzjeVar, long j, boolean z, zzje zzjeVar2) {
        this.f75695e = zzjeVar;
        this.f75696f = j;
        this.f75697g = z;
        this.f75698h = zzjeVar2;
        this.f75699i = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f75699i.m22549j(this.f75695e);
        zzjq.m22536m(this.f75699i, this.f75695e, this.f75696f, false, this.f75697g);
        zzjq.m22537n(this.f75699i, this.f75695e, this.f75698h);
    }
}
