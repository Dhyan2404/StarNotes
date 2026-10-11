package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzjq;

/* loaded from: classes5.dex */
public final class qnp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ String f82252e;

    /* renamed from: f */
    public final /* synthetic */ String f82253f;

    /* renamed from: g */
    public final /* synthetic */ Object f82254g;

    /* renamed from: h */
    public final /* synthetic */ long f82255h;

    /* renamed from: i */
    public final /* synthetic */ zzjq f82256i;

    public qnp(zzjq zzjqVar, String str, String str2, Object obj, long j) {
        this.f82252e = str;
        this.f82253f = str2;
        this.f82254g = obj;
        this.f82255h = j;
        this.f82256i = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f82256i.m22553t(this.f82252e, this.f82253f, this.f82254g, this.f82255h);
    }
}
